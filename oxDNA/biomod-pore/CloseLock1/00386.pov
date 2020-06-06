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
	<24.076292, 35.001434, 34.548210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315701, 35.098755, 34.853516>,  <24.459347, 35.157146, 35.036697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315701, 35.098755, 34.853516>,  <24.076292, 35.001434, 34.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315701, 35.098755, 34.853516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600653, -0.766725, -0.226601,
		0.530081, 0.594083, -0.605045,
		0.598523, 0.243305, 0.763265,
		24.495258, 35.171745, 35.082497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798243, 35.028728, 34.301731>,  <24.076292, 35.001434, 34.548210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798243, 35.028728, 34.301731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765596, 34.908733, 34.681911>,  <24.746010, 34.836739, 34.910019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765596, 34.908733, 34.681911>,  <24.798243, 35.028728, 34.301731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765596, 34.908733, 34.681911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282620, -0.921450, -0.266564,
		0.955754, 0.246860, 0.159985,
		-0.081614, -0.299985, 0.950446,
		24.741112, 34.818737, 34.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418398, 34.814945, 34.474064>,  <24.798243, 35.028728, 34.301731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418398, 34.814945, 34.474064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139124, 34.626446, 34.689640>,  <24.971560, 34.513344, 34.818985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139124, 34.626446, 34.689640>,  <25.418398, 34.814945, 34.474064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139124, 34.626446, 34.689640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368704, -0.881977, -0.293555,
		0.613671, -0.006247, 0.789537,
		-0.698187, -0.471252, 0.538941,
		24.929668, 34.485069, 34.851322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705364, 34.318718, 34.881603>,  <25.418398, 34.814945, 34.474064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705364, 34.318718, 34.881603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341951, 34.177624, 34.792030>,  <25.123903, 34.092968, 34.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341951, 34.177624, 34.792030>,  <25.705364, 34.318718, 34.881603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341951, 34.177624, 34.792030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390753, -0.907090, -0.156525,
		-0.147915, -0.229711, 0.961953,
		-0.908534, -0.352734, -0.223932,
		25.069391, 34.071804, 34.724850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950541, 34.426514, 35.541946>,  <25.705364, 34.318718, 34.881603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950541, 34.426514, 35.541946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340811, 34.496990, 35.489773>,  <26.574974, 34.539276, 35.458469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340811, 34.496990, 35.489773>,  <25.950541, 34.426514, 35.541946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340811, 34.496990, 35.489773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097306, 0.881252, 0.462521,
		0.196432, -0.438580, 0.876962,
		0.975677, 0.176188, -0.130430,
		26.633514, 34.549847, 35.450645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283325, 34.699070, 36.207207>,  <25.950541, 34.426514, 35.541946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283325, 34.699070, 36.207207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479292, 34.826660, 35.882679>,  <26.596872, 34.903214, 35.687962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479292, 34.826660, 35.882679>,  <26.283325, 34.699070, 36.207207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479292, 34.826660, 35.882679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005206, 0.929568, 0.368614,
		0.871753, -0.184814, 0.453751,
		0.489917, 0.318978, -0.811316,
		26.626266, 34.922352, 35.639286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000530, 35.044106, 36.449726>,  <26.283325, 34.699070, 36.207207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000530, 35.044106, 36.449726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892067, 35.189426, 36.093189>,  <26.826988, 35.276619, 35.879269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892067, 35.189426, 36.093189>,  <27.000530, 35.044106, 36.449726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892067, 35.189426, 36.093189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228086, 0.923912, 0.307187,
		0.935120, -0.120006, -0.333390,
		-0.271158, 0.363298, -0.891340,
		26.810719, 35.298416, 35.825787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440165, 35.608829, 36.464485>,  <27.000530, 35.044106, 36.449726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440165, 35.608829, 36.464485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148861, 35.656906, 36.194614>,  <26.974079, 35.685753, 36.032692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148861, 35.656906, 36.194614>,  <27.440165, 35.608829, 36.464485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148861, 35.656906, 36.194614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073387, 0.965161, 0.251156,
		0.681362, 0.232419, -0.694065,
		-0.728258, 0.120193, -0.674681,
		26.930384, 35.692963, 35.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596004, 36.214390, 36.129925>,  <27.440165, 35.608829, 36.464485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596004, 36.214390, 36.129925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206831, 36.175968, 36.045853>,  <26.973328, 36.152916, 35.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206831, 36.175968, 36.045853>,  <27.596004, 36.214390, 36.129925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206831, 36.175968, 36.045853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167700, 0.919238, 0.356199,
		0.158988, 0.381805, -0.910466,
		-0.972934, -0.096053, -0.210176,
		26.914951, 36.147152, 35.982800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434589, 36.829231, 35.739040>,  <27.596004, 36.214390, 36.129925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434589, 36.829231, 35.739040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077627, 36.707172, 35.872005>,  <26.863449, 36.633938, 35.951782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077627, 36.707172, 35.872005>,  <27.434589, 36.829231, 35.739040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077627, 36.707172, 35.872005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290948, 0.952206, 0.093026,
		-0.344908, -0.013696, -0.938536,
		-0.892406, -0.305151, 0.332408,
		26.809906, 36.615627, 35.971729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983952, 37.325558, 35.495285>,  <27.434589, 36.829231, 35.739040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983952, 37.325558, 35.495285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790119, 37.148056, 35.796818>,  <26.673820, 37.041553, 35.977737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790119, 37.148056, 35.796818>,  <26.983952, 37.325558, 35.495285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790119, 37.148056, 35.796818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288015, 0.894658, 0.341517,
		-0.825972, -0.051622, -0.561343,
		-0.484580, -0.443759, 0.753830,
		26.644745, 37.014927, 36.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222921, 37.590530, 35.549168>,  <26.983952, 37.325558, 35.495285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222921, 37.590530, 35.549168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304161, 37.449081, 35.914398>,  <26.352905, 37.364212, 36.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304161, 37.449081, 35.914398>,  <26.222921, 37.590530, 35.549168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304161, 37.449081, 35.914398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218403, 0.892654, 0.394296,
		-0.954489, -0.279499, 0.104067,
		0.203101, -0.353623, 0.913072,
		26.365091, 37.342995, 36.188320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707567, 38.012611, 35.942940>,  <26.222921, 37.590530, 35.549168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707567, 38.012611, 35.942940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975164, 37.847382, 36.190105>,  <26.135723, 37.748241, 36.338406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975164, 37.847382, 36.190105>,  <25.707567, 38.012611, 35.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975164, 37.847382, 36.190105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019607, 0.821248, 0.570235,
		-0.743009, -0.393599, 0.541310,
		0.668994, -0.413076, 0.617912,
		26.175863, 37.723457, 36.375481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506866, 38.270962, 36.543541>,  <25.707567, 38.012611, 35.942940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506866, 38.270962, 36.543541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894077, 38.176113, 36.576275>,  <26.126404, 38.119205, 36.595917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894077, 38.176113, 36.576275>,  <25.506866, 38.270962, 36.543541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894077, 38.176113, 36.576275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130811, 0.755557, 0.641890,
		-0.214036, -0.610662, 0.762417,
		0.968027, -0.237120, 0.081835,
		26.184486, 38.104977, 36.600826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665964, 38.481171, 37.313534>,  <25.506866, 38.270962, 36.543541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665964, 38.481171, 37.313534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031000, 38.446442, 37.153709>,  <26.250021, 38.425606, 37.057816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031000, 38.446442, 37.153709>,  <25.665964, 38.481171, 37.313534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031000, 38.446442, 37.153709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330856, 0.730968, 0.596842,
		0.240245, -0.676866, 0.695797,
		0.912588, -0.086820, -0.399557,
		26.304777, 38.420395, 37.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159027, 38.541553, 37.935917>,  <25.665964, 38.481171, 37.313534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159027, 38.541553, 37.935917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360067, 38.637020, 37.603550>,  <26.480692, 38.694298, 37.404129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360067, 38.637020, 37.603550>,  <26.159027, 38.541553, 37.935917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360067, 38.637020, 37.603550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412137, 0.778745, 0.472969,
		0.759955, -0.580169, 0.293039,
		0.502605, 0.238663, -0.830920,
		26.510849, 38.708618, 37.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848545, 38.642860, 38.164219>,  <26.159027, 38.541553, 37.935917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848545, 38.642860, 38.164219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795162, 38.832188, 37.815929>,  <26.763132, 38.945786, 37.606956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795162, 38.832188, 37.815929>,  <26.848545, 38.642860, 38.164219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795162, 38.832188, 37.815929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403317, 0.828476, 0.388540,
		0.905276, -0.299322, -0.301466,
		-0.133458, 0.473322, -0.870721,
		26.755125, 38.974186, 37.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543993, 38.962612, 38.004787>,  <26.848545, 38.642860, 38.164219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543993, 38.962612, 38.004787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256308, 39.146259, 37.796196>,  <27.083696, 39.256447, 37.671040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256308, 39.146259, 37.796196>,  <27.543993, 38.962612, 38.004787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256308, 39.146259, 37.796196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381114, 0.888260, 0.256412,
		0.580932, -0.014328, -0.813826,
		-0.719215, 0.459118, -0.521479,
		27.040543, 39.283997, 37.639751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826525, 39.625866, 37.923233>,  <27.543993, 38.962612, 38.004787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826525, 39.625866, 37.923233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437120, 39.666210, 37.841160>,  <27.203478, 39.690418, 37.791916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437120, 39.666210, 37.841160>,  <27.826525, 39.625866, 37.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437120, 39.666210, 37.841160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016832, 0.863371, 0.504288,
		0.228011, 0.494385, -0.838805,
		-0.973513, 0.100864, -0.205180,
		27.145067, 39.696468, 37.779606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712063, 40.356705, 37.674011>,  <27.826525, 39.625866, 37.923233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712063, 40.356705, 37.674011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356131, 40.215099, 37.789165>,  <27.142570, 40.130138, 37.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356131, 40.215099, 37.789165>,  <27.712063, 40.356705, 37.674011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356131, 40.215099, 37.789165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190009, 0.861106, 0.471587,
		-0.414846, 0.364931, -0.833503,
		-0.889831, -0.354009, 0.287886,
		27.089182, 40.108898, 37.875530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413536, 40.953770, 37.836426>,  <27.712063, 40.356705, 37.674011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413536, 40.953770, 37.836426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158800, 40.712559, 38.028587>,  <27.005959, 40.567833, 38.143883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158800, 40.712559, 38.028587>,  <27.413536, 40.953770, 37.836426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158800, 40.712559, 38.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306910, 0.769879, 0.559547,
		-0.707277, 0.208901, -0.675366,
		-0.636840, -0.603031, 0.480404,
		26.967749, 40.531651, 38.172710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789961, 41.370384, 37.949463>,  <27.413536, 40.953770, 37.836426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789961, 41.370384, 37.949463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781181, 41.047211, 38.185009>,  <26.775913, 40.853306, 38.326336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781181, 41.047211, 38.185009>,  <26.789961, 41.370384, 37.949463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781181, 41.047211, 38.185009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298385, 0.567457, 0.767437,
		-0.954193, -0.158864, -0.253530,
		-0.021949, -0.807933, 0.588866,
		26.774597, 40.804832, 38.361668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097422, 41.316956, 38.186398>,  <26.789961, 41.370384, 37.949463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097422, 41.316956, 38.186398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362326, 41.175373, 38.450558>,  <26.521269, 41.090424, 38.609055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362326, 41.175373, 38.450558>,  <26.097422, 41.316956, 38.186398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362326, 41.175373, 38.450558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394450, 0.584661, 0.708929,
		-0.637041, -0.729989, 0.247579,
		0.662260, -0.353959, 0.660397,
		26.561005, 41.069187, 38.648678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739313, 41.441071, 38.857449>,  <26.097422, 41.316956, 38.186398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739313, 41.441071, 38.857449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122952, 41.354568, 38.930519>,  <26.353134, 41.302666, 38.974361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122952, 41.354568, 38.930519>,  <25.739313, 41.441071, 38.857449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122952, 41.354568, 38.930519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026407, 0.574150, 0.818324,
		-0.281851, -0.789674, 0.544954,
		0.959095, -0.216255, 0.182677,
		26.410681, 41.289692, 38.985321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764324, 41.172718, 39.544975>,  <25.739313, 41.441071, 38.857449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764324, 41.172718, 39.544975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137857, 41.301197, 39.482002>,  <26.361979, 41.378284, 39.444218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137857, 41.301197, 39.482002>,  <25.764324, 41.172718, 39.544975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137857, 41.301197, 39.482002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022070, 0.491013, 0.870872,
		0.357023, -0.809776, 0.465614,
		0.933835, 0.321198, -0.157431,
		26.418007, 41.397556, 39.434772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105322, 40.930283, 40.097324>,  <25.764324, 41.172718, 39.544975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105322, 40.930283, 40.097324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292894, 41.253906, 39.955605>,  <26.405437, 41.448082, 39.870575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292894, 41.253906, 39.955605>,  <26.105322, 40.930283, 40.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292894, 41.253906, 39.955605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134076, 0.461693, 0.876849,
		0.872999, -0.363680, 0.324978,
		0.468932, 0.809059, -0.354297,
		26.433575, 41.496624, 39.849316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087477, 40.260414, 39.924877>,  <26.105322, 40.930283, 40.097324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087477, 40.260414, 39.924877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426144, 40.246201, 40.137249>,  <26.629343, 40.237675, 40.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426144, 40.246201, 40.137249>,  <26.087477, 40.260414, 39.924877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426144, 40.246201, 40.137249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434007, -0.623410, 0.650383,
		0.307882, -0.781087, -0.543241,
		0.846668, -0.035530, 0.530934,
		26.680143, 40.235542, 40.296528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279829, 39.488010, 40.034981>,  <26.087477, 40.260414, 39.924877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279829, 39.488010, 40.034981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467012, 39.714249, 40.306602>,  <26.579323, 39.849991, 40.469578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467012, 39.714249, 40.306602>,  <26.279829, 39.488010, 40.034981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467012, 39.714249, 40.306602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594464, -0.367109, 0.715433,
		0.653933, -0.738467, 0.164435,
		0.467958, 0.565596, 0.679056,
		26.607399, 39.883926, 40.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756702, 39.191460, 40.503811>,  <26.279829, 39.488010, 40.034981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756702, 39.191460, 40.503811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562441, 39.490147, 40.685600>,  <26.445885, 39.669361, 40.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562441, 39.490147, 40.685600>,  <26.756702, 39.191460, 40.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562441, 39.490147, 40.685600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085721, -0.558080, 0.825347,
		0.869939, 0.361874, 0.335042,
		-0.485652, 0.746722, 0.454476,
		26.416746, 39.714165, 40.821941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096567, 39.448807, 41.161022>,  <26.756702, 39.191460, 40.503811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096567, 39.448807, 41.161022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698462, 39.482677, 41.180115>,  <26.459599, 39.503002, 41.191570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698462, 39.482677, 41.180115>,  <27.096567, 39.448807, 41.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698462, 39.482677, 41.180115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003267, -0.461623, 0.887070,
		0.097152, 0.883025, 0.459160,
		-0.995264, 0.084680, 0.047732,
		26.399881, 39.508083, 41.194435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999701, 39.666206, 41.820026>,  <27.096567, 39.448807, 41.161022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999701, 39.666206, 41.820026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660496, 39.483944, 41.711765>,  <26.456972, 39.374588, 41.646809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660496, 39.483944, 41.711765>,  <26.999701, 39.666206, 41.820026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660496, 39.483944, 41.711765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104178, -0.357412, 0.928118,
		-0.519634, 0.815254, 0.255621,
		-0.848014, -0.455652, -0.270655,
		26.406092, 39.347248, 41.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288857, 39.909248, 42.230671>,  <26.999701, 39.666206, 41.820026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288857, 39.909248, 42.230671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284769, 39.526836, 42.113434>,  <26.282316, 39.297390, 42.043091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284769, 39.526836, 42.113434>,  <26.288857, 39.909248, 42.230671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284769, 39.526836, 42.113434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035296, -0.293273, 0.955377,
		-0.999325, -0.000584, 0.036740,
		-0.010217, -0.956029, -0.293095,
		26.281704, 39.240028, 42.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719984, 39.538654, 42.482773>,  <26.288857, 39.909248, 42.230671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719984, 39.538654, 42.482773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042156, 39.310524, 42.418266>,  <26.235460, 39.173645, 42.379562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042156, 39.310524, 42.418266>,  <25.719984, 39.538654, 42.482773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042156, 39.310524, 42.418266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047138, -0.209589, 0.976653,
		-0.590812, -0.794228, -0.141925,
		0.805431, -0.570328, -0.161266,
		26.283785, 39.139427, 42.369888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737823, 38.872036, 42.899715>,  <25.719984, 39.538654, 42.482773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737823, 38.872036, 42.899715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118361, 38.955925, 42.809414>,  <26.346684, 39.006256, 42.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118361, 38.955925, 42.809414>,  <25.737823, 38.872036, 42.899715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118361, 38.955925, 42.809414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266297, -0.190991, 0.944780,
		0.155023, -0.958926, -0.237546,
		0.951343, 0.209720, -0.225751,
		26.403763, 39.018841, 42.741688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354401, 38.540665, 43.526398>,  <25.737823, 38.872036, 42.899715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354401, 38.540665, 43.526398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251497, 38.165462, 43.433475>,  <25.189754, 37.940342, 43.377724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251497, 38.165462, 43.433475>,  <25.354401, 38.540665, 43.526398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251497, 38.165462, 43.433475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686316, -0.008118, -0.727258,
		0.680285, -0.346529, 0.645856,
		-0.257259, -0.938004, -0.232306,
		25.174320, 37.884060, 43.363785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983635, 38.111515, 43.319744>,  <25.354401, 38.540665, 43.526398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983635, 38.111515, 43.319744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692875, 37.886738, 43.161839>,  <25.518419, 37.751873, 43.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692875, 37.886738, 43.161839>,  <25.983635, 38.111515, 43.319744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692875, 37.886738, 43.161839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584982, -0.205549, -0.784567,
		0.359736, -0.801233, 0.478138,
		-0.726902, -0.561939, -0.394763,
		25.474804, 37.718155, 43.043411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309454, 37.512619, 43.036304>,  <25.983635, 38.111515, 43.319744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309454, 37.512619, 43.036304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962797, 37.570263, 42.845238>,  <25.754803, 37.604851, 42.730598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962797, 37.570263, 42.845238>,  <26.309454, 37.512619, 43.036304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962797, 37.570263, 42.845238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435799, -0.247472, -0.865353,
		-0.242885, -0.958122, 0.151683,
		-0.866652, 0.144078, -0.477657,
		25.702805, 37.613499, 42.701939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989746, 36.854679, 42.742050>,  <26.309454, 37.512619, 43.036304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989746, 36.854679, 42.742050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851770, 37.154495, 42.516056>,  <25.768984, 37.334385, 42.380459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851770, 37.154495, 42.516056>,  <25.989746, 36.854679, 42.742050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851770, 37.154495, 42.516056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380363, -0.438673, -0.814181,
		-0.858103, -0.495744, -0.133780,
		-0.344940, 0.749536, -0.564989,
		25.748289, 37.379356, 42.346558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912910, 36.596836, 42.122932>,  <25.989746, 36.854679, 42.742050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912910, 36.596836, 42.122932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898422, 36.985336, 42.028816>,  <25.889730, 37.218437, 41.972347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898422, 36.985336, 42.028816>,  <25.912910, 36.596836, 42.122932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898422, 36.985336, 42.028816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544577, -0.178235, -0.819554,
		-0.837928, -0.157819, -0.522465,
		-0.036219, 0.971250, -0.235292,
		25.887556, 37.276711, 41.958229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520517, 36.655388, 41.492920>,  <25.912910, 36.596836, 42.122932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520517, 36.655388, 41.492920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728680, 36.996387, 41.512596>,  <25.853577, 37.200989, 41.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728680, 36.996387, 41.512596>,  <25.520517, 36.655388, 41.492920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728680, 36.996387, 41.512596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260012, -0.103322, -0.960061,
		-0.813371, 0.512412, -0.275430,
		0.520405, 0.852502, 0.049194,
		25.884802, 37.252136, 41.527355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398800, 37.010201, 40.840881>,  <25.520517, 36.655388, 41.492920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398800, 37.010201, 40.840881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735533, 37.163857, 40.992538>,  <25.937572, 37.256050, 41.083534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735533, 37.163857, 40.992538>,  <25.398800, 37.010201, 40.840881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735533, 37.163857, 40.992538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408542, 0.005544, -0.912723,
		-0.352719, 0.923257, -0.152272,
		0.841833, 0.384144, 0.379145,
		25.988083, 37.279099, 41.106281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531006, 37.517212, 40.391098>,  <25.398800, 37.010201, 40.840881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531006, 37.517212, 40.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879801, 37.434589, 40.568626>,  <26.089077, 37.385014, 40.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879801, 37.434589, 40.568626>,  <25.531006, 37.517212, 40.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879801, 37.434589, 40.568626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433430, -0.095653, -0.896096,
		0.227549, 0.973747, 0.006121,
		0.871986, -0.206559, 0.443817,
		26.141397, 37.372623, 40.701771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050030, 37.958725, 39.994591>,  <25.531006, 37.517212, 40.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050030, 37.958725, 39.994591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234194, 37.653751, 40.176453>,  <26.344692, 37.470768, 40.285568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234194, 37.653751, 40.176453>,  <26.050030, 37.958725, 39.994591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234194, 37.653751, 40.176453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726268, 0.029020, -0.686799,
		0.510446, 0.646412, 0.567094,
		0.460412, -0.762436, 0.454655,
		26.372318, 37.425022, 40.312851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725956, 38.075413, 39.950897>,  <26.050030, 37.958725, 39.994591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725956, 38.075413, 39.950897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705578, 37.678986, 40.000191>,  <26.693350, 37.441128, 40.029766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705578, 37.678986, 40.000191>,  <26.725956, 38.075413, 39.950897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705578, 37.678986, 40.000191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604190, -0.128839, -0.786356,
		0.795210, 0.034394, 0.605358,
		-0.050947, -0.991069, 0.123234,
		26.690294, 37.381664, 40.037163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369333, 37.878807, 39.691620>,  <26.725956, 38.075413, 39.950897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369333, 37.878807, 39.691620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186476, 37.526760, 39.742874>,  <27.076761, 37.315533, 39.773628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186476, 37.526760, 39.742874>,  <27.369333, 37.878807, 39.691620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186476, 37.526760, 39.742874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371434, -0.319832, -0.871633,
		0.808119, -0.350866, 0.473113,
		-0.457144, -0.880114, 0.128139,
		27.049334, 37.262726, 39.781315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935867, 37.284161, 39.671707>,  <27.369333, 37.878807, 39.691620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935867, 37.284161, 39.671707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579466, 37.115547, 39.604271>,  <27.365623, 37.014381, 39.563808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579466, 37.115547, 39.604271>,  <27.935867, 37.284161, 39.671707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579466, 37.115547, 39.604271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363570, -0.440128, -0.821039,
		0.271892, -0.792843, 0.545412,
		-0.891006, -0.421529, -0.168586,
		27.312164, 36.989090, 39.553696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027933, 36.539165, 39.661705>,  <27.935867, 37.284161, 39.671707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027933, 36.539165, 39.661705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699884, 36.632034, 39.452518>,  <27.503056, 36.687756, 39.327007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699884, 36.632034, 39.452518>,  <28.027933, 36.539165, 39.661705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699884, 36.632034, 39.452518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270364, -0.648274, -0.711789,
		-0.504287, -0.725145, 0.468891,
		-0.820121, 0.232175, -0.522969,
		27.453848, 36.701687, 39.295628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798412, 35.833019, 39.471424>,  <28.027933, 36.539165, 39.661705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798412, 35.833019, 39.471424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642582, 36.109108, 39.227516>,  <27.549084, 36.274761, 39.081169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642582, 36.109108, 39.227516>,  <27.798412, 35.833019, 39.471424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642582, 36.109108, 39.227516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119442, -0.618627, -0.776553,
		-0.913217, -0.375358, 0.158560,
		-0.389575, 0.690222, -0.609774,
		27.525709, 36.316174, 39.044582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415968, 35.485004, 39.019779>,  <27.798412, 35.833019, 39.471424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415968, 35.485004, 39.019779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500031, 35.826859, 38.829865>,  <27.550468, 36.031971, 38.715916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500031, 35.826859, 38.829865>,  <27.415968, 35.485004, 39.019779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500031, 35.826859, 38.829865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060884, -0.496133, -0.866109,
		-0.975770, 0.153110, -0.156299,
		0.210155, 0.854640, -0.474790,
		27.563078, 36.083252, 38.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112499, 35.483860, 38.328373>,  <27.415968, 35.485004, 39.019779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112499, 35.483860, 38.328373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409311, 35.747036, 38.276974>,  <27.587399, 35.904942, 38.246136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409311, 35.747036, 38.276974>,  <27.112499, 35.483860, 38.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409311, 35.747036, 38.276974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297430, -0.494899, -0.816462,
		-0.600773, 0.567620, -0.562920,
		0.742029, 0.657938, -0.128495,
		27.631920, 35.944416, 38.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155787, 35.441093, 37.559441>,  <27.112499, 35.483860, 38.328373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155787, 35.441093, 37.559441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448181, 35.681431, 37.688835>,  <27.623617, 35.825634, 37.766472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448181, 35.681431, 37.688835>,  <27.155787, 35.441093, 37.559441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448181, 35.681431, 37.688835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515100, -0.174911, -0.839093,
		-0.447583, 0.779994, -0.437353,
		0.730986, 0.600845, 0.323488,
		27.667477, 35.861683, 37.785881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348543, 36.100399, 37.038246>,  <27.155787, 35.441093, 37.559441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348543, 36.100399, 37.038246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660049, 36.011482, 37.272888>,  <27.846952, 35.958130, 37.413673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660049, 36.011482, 37.272888>,  <27.348543, 36.100399, 37.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660049, 36.011482, 37.272888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607404, 0.033476, -0.793687,
		0.156795, 0.974405, 0.161093,
		0.778765, -0.222295, 0.586609,
		27.893679, 35.944794, 37.448872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885771, 36.561996, 36.884579>,  <27.348543, 36.100399, 37.038246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885771, 36.561996, 36.884579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059637, 36.240425, 37.046940>,  <28.163958, 36.047482, 37.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059637, 36.240425, 37.046940>,  <27.885771, 36.561996, 36.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059637, 36.240425, 37.046940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587619, -0.088376, -0.804297,
		0.682472, 0.588118, 0.433992,
		0.434667, -0.803932, 0.405903,
		28.190037, 35.999245, 37.168713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572268, 36.677727, 36.745495>,  <27.885771, 36.561996, 36.884579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572268, 36.677727, 36.745495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534418, 36.285854, 36.816231>,  <28.511707, 36.050732, 36.858673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534418, 36.285854, 36.816231>,  <28.572268, 36.677727, 36.745495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534418, 36.285854, 36.816231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554698, -0.199394, -0.807807,
		0.826654, 0.021656, 0.562294,
		-0.094624, -0.979680, 0.176842,
		28.506031, 35.991951, 36.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173382, 36.463493, 36.687542>,  <28.572268, 36.677727, 36.745495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173382, 36.463493, 36.687542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983141, 36.116234, 36.630806>,  <28.868998, 35.907879, 36.596764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983141, 36.116234, 36.630806>,  <29.173382, 36.463493, 36.687542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983141, 36.116234, 36.630806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564716, -0.177698, -0.805928,
		0.674464, -0.463396, 0.574772,
		-0.475600, -0.868152, -0.141836,
		28.840462, 35.855789, 36.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467815, 35.753506, 36.807961>,  <29.173382, 36.463493, 36.687542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467815, 35.753506, 36.807961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240347, 35.695744, 36.484043>,  <29.103867, 35.661087, 36.289692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240347, 35.695744, 36.484043>,  <29.467815, 35.753506, 36.807961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240347, 35.695744, 36.484043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818867, -0.192629, -0.540695,
		-0.077907, -0.970587, 0.227795,
		-0.568672, -0.144410, -0.809789,
		29.069746, 35.652420, 36.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573473, 35.193909, 36.611233>,  <29.467815, 35.753506, 36.807961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573473, 35.193909, 36.611233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443913, 35.369877, 36.276196>,  <29.366177, 35.475456, 36.075172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443913, 35.369877, 36.276196>,  <29.573473, 35.193909, 36.611233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443913, 35.369877, 36.276196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840077, -0.273468, -0.468495,
		-0.435155, -0.855385, -0.280992,
		-0.323901, 0.439922, -0.837590,
		29.346743, 35.501854, 36.024918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538794, 34.659325, 36.073666>,  <29.573473, 35.193909, 36.611233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538794, 34.659325, 36.073666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615374, 35.045143, 36.000996>,  <29.661322, 35.276634, 35.957394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615374, 35.045143, 36.000996>,  <29.538794, 34.659325, 36.073666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615374, 35.045143, 36.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977245, -0.204546, -0.056147,
		-0.091317, -0.166793, -0.981754,
		0.191449, 0.964542, -0.181676,
		29.672808, 35.334507, 35.946491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825693, 34.898293, 35.381126>,  <29.538794, 34.659325, 36.073666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825693, 34.898293, 35.381126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935902, 35.123432, 35.692841>,  <30.002028, 35.258514, 35.879871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935902, 35.123432, 35.692841>,  <29.825693, 34.898293, 35.381126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935902, 35.123432, 35.692841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955291, -0.250773, -0.156626,
		0.107268, 0.787602, -0.606776,
		0.275522, 0.562847, 0.779289,
		30.018559, 35.292286, 35.926628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302961, 35.320019, 35.144524>,  <29.825693, 34.898293, 35.381126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302961, 35.320019, 35.144524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332874, 35.241734, 35.535645>,  <30.350822, 35.194763, 35.770317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332874, 35.241734, 35.535645>,  <30.302961, 35.320019, 35.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332874, 35.241734, 35.535645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983847, -0.145444, -0.104356,
		0.162640, 0.969816, 0.181673,
		0.074783, -0.195711, 0.977806,
		30.355309, 35.183022, 35.828987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754320, 35.796196, 35.597229>,  <30.302961, 35.320019, 35.144524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754320, 35.796196, 35.597229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761742, 35.413971, 35.714912>,  <30.766195, 35.184635, 35.785522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761742, 35.413971, 35.714912>,  <30.754320, 35.796196, 35.597229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761742, 35.413971, 35.714912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990889, -0.021687, -0.132923,
		0.133396, 0.293994, 0.946453,
		0.018553, -0.955561, 0.294209,
		30.767307, 35.127304, 35.803177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211250, 35.715893, 36.152905>,  <30.754320, 35.796196, 35.597229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211250, 35.715893, 36.152905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158587, 35.407269, 35.903950>,  <31.126987, 35.222095, 35.754578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158587, 35.407269, 35.903950>,  <31.211250, 35.715893, 36.152905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158587, 35.407269, 35.903950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986575, -0.040788, -0.158135,
		0.096624, -0.634851, 0.766569,
		-0.131659, -0.771557, -0.622387,
		31.119089, 35.175800, 35.717232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510029, 35.068520, 36.440601>,  <31.211250, 35.715893, 36.152905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510029, 35.068520, 36.440601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526548, 35.117027, 36.043896>,  <31.536461, 35.146133, 35.805874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526548, 35.117027, 36.043896>,  <31.510029, 35.068520, 36.440601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526548, 35.117027, 36.043896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980430, 0.186310, 0.063610,
		0.192489, -0.974978, -0.111200,
		0.041300, 0.121268, -0.991760,
		31.538939, 35.153408, 35.746368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306694, 34.991257, 36.249916>,  <31.510029, 35.068520, 36.440601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306694, 34.991257, 36.249916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471664, 34.718872, 36.491974>,  <32.570648, 34.555443, 36.637207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471664, 34.718872, 36.491974>,  <32.306694, 34.991257, 36.249916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471664, 34.718872, 36.491974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335439, 0.731116, 0.594096,
		-0.846985, -0.042032, 0.529952,
		0.412427, -0.680957, 0.605146,
		32.595394, 34.514584, 36.673519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278858, 35.305271, 36.956253>,  <32.306694, 34.991257, 36.249916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278858, 35.305271, 36.956253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598194, 35.066769, 36.922489>,  <32.789795, 34.923668, 36.902233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598194, 35.066769, 36.922489>,  <32.278858, 35.305271, 36.956253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598194, 35.066769, 36.922489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505689, 0.587666, 0.631607,
		-0.326997, -0.546923, 0.770680,
		0.798343, -0.596258, -0.084408,
		32.837696, 34.887890, 36.897167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572876, 35.045677, 37.567875>,  <32.278858, 35.305271, 36.956253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572876, 35.045677, 37.567875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883785, 35.064533, 37.316917>,  <33.070332, 35.075848, 37.166344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883785, 35.064533, 37.316917>,  <32.572876, 35.045677, 37.567875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883785, 35.064533, 37.316917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453034, 0.650031, 0.610098,
		0.436584, -0.758444, 0.483898,
		0.777274, 0.047137, -0.627394,
		33.116966, 35.078674, 37.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152260, 34.909569, 37.993336>,  <32.572876, 35.045677, 37.567875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152260, 34.909569, 37.993336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266724, 35.118729, 37.672165>,  <33.335403, 35.244225, 37.479462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266724, 35.118729, 37.672165>,  <33.152260, 34.909569, 37.993336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266724, 35.118729, 37.672165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512570, 0.624449, 0.589351,
		0.809558, -0.580203, -0.089332,
		0.286160, 0.522902, -0.802923,
		33.352573, 35.275600, 37.431290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848076, 34.968136, 38.034966>,  <33.152260, 34.909569, 37.993336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848076, 34.968136, 38.034966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768436, 35.262241, 37.775814>,  <33.720654, 35.438705, 37.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768436, 35.262241, 37.775814>,  <33.848076, 34.968136, 38.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768436, 35.262241, 37.775814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595941, 0.615666, 0.515568,
		0.777955, -0.283448, -0.560752,
		-0.199100, 0.735264, -0.647879,
		33.708706, 35.482819, 37.581451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519302, 35.361401, 38.097511>,  <33.848076, 34.968136, 38.034966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519302, 35.361401, 38.097511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234245, 35.594982, 37.942009>,  <34.063210, 35.735130, 37.848709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234245, 35.594982, 37.942009>,  <34.519302, 35.361401, 38.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234245, 35.594982, 37.942009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350643, 0.776476, 0.523579,
		0.607606, 0.236812, -0.758113,
		-0.712646, 0.583957, -0.388755,
		34.020451, 35.770168, 37.825382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895031, 35.970280, 37.966446>,  <34.519302, 35.361401, 38.097511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895031, 35.970280, 37.966446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508881, 36.074364, 37.973797>,  <34.277191, 36.136814, 37.978207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508881, 36.074364, 37.973797>,  <34.895031, 35.970280, 37.966446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508881, 36.074364, 37.973797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205503, 0.715245, 0.667977,
		0.160668, 0.648627, -0.743955,
		-0.965378, 0.260207, 0.018377,
		34.219269, 36.152428, 37.979309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881218, 36.604031, 37.947212>,  <34.895031, 35.970280, 37.966446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881218, 36.604031, 37.947212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518372, 36.538643, 38.102348>,  <34.300663, 36.499413, 38.195431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518372, 36.538643, 38.102348>,  <34.881218, 36.604031, 37.947212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518372, 36.538643, 38.102348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161024, 0.716594, 0.678649,
		-0.388861, 0.678064, -0.623711,
		-0.907115, -0.163467, 0.387840,
		34.246239, 36.489601, 38.218700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593952, 37.289658, 38.142101>,  <34.881218, 36.604031, 37.947212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593952, 37.289658, 38.142101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397434, 37.015793, 38.357460>,  <34.279522, 36.851475, 38.486675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397434, 37.015793, 38.357460>,  <34.593952, 37.289658, 38.142101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397434, 37.015793, 38.357460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065977, 0.587111, 0.806813,
		-0.868489, 0.431907, -0.243274,
		-0.491298, -0.684658, 0.538396,
		34.250046, 36.810394, 38.518978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087757, 37.701218, 38.473213>,  <34.593952, 37.289658, 38.142101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087757, 37.701218, 38.473213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156044, 37.361824, 38.673588>,  <34.197014, 37.158188, 38.793812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156044, 37.361824, 38.673588>,  <34.087757, 37.701218, 38.473213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156044, 37.361824, 38.673588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201999, 0.527739, 0.825038,
		-0.964392, -0.039658, 0.261485,
		0.170715, -0.848480, 0.500937,
		34.207260, 37.107281, 38.823868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751007, 37.844357, 39.083408>,  <34.087757, 37.701218, 38.473213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751007, 37.844357, 39.083408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946072, 37.510128, 39.184605>,  <34.063110, 37.309589, 39.245323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946072, 37.510128, 39.184605>,  <33.751007, 37.844357, 39.083408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946072, 37.510128, 39.184605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077333, 0.329984, 0.940814,
		-0.869601, -0.439234, 0.225538,
		0.487662, -0.835574, 0.252986,
		34.092369, 37.259457, 39.260502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423626, 37.525913, 39.691418>,  <33.751007, 37.844357, 39.083408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423626, 37.525913, 39.691418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804340, 37.404816, 39.671654>,  <34.032768, 37.332157, 39.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804340, 37.404816, 39.671654>,  <33.423626, 37.525913, 39.691418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804340, 37.404816, 39.671654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109352, 0.184383, 0.976752,
		-0.286595, -0.935067, 0.208599,
		0.951791, -0.302743, -0.049408,
		34.089878, 37.313992, 39.656830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582500, 37.029415, 40.212574>,  <33.423626, 37.525913, 39.691418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582500, 37.029415, 40.212574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960869, 37.123829, 40.123569>,  <34.187889, 37.180477, 40.070168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960869, 37.123829, 40.123569>,  <33.582500, 37.029415, 40.212574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960869, 37.123829, 40.123569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199191, 0.118743, 0.972740,
		0.256026, -0.964461, 0.065305,
		0.945924, 0.236038, -0.222513,
		34.244648, 37.194641, 40.056816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054157, 36.481777, 40.601727>,  <33.582500, 37.029415, 40.212574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054157, 36.481777, 40.601727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216614, 36.834072, 40.504272>,  <34.314087, 37.045448, 40.445801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216614, 36.834072, 40.504272>,  <34.054157, 36.481777, 40.601727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216614, 36.834072, 40.504272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216662, 0.166203, 0.961995,
		0.887754, -0.443491, -0.123320,
		0.406140, 0.880734, -0.243635,
		34.338455, 37.098293, 40.431183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674652, 36.380501, 40.833054>,  <34.054157, 36.481777, 40.601727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674652, 36.380501, 40.833054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592117, 36.771160, 40.809097>,  <34.542595, 37.005554, 40.794724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592117, 36.771160, 40.809097>,  <34.674652, 36.380501, 40.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592117, 36.771160, 40.809097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135399, 0.089123, 0.986775,
		0.969067, 0.195503, -0.150627,
		-0.206342, 0.976645, -0.059895,
		34.530216, 37.064156, 40.791130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247826, 36.664692, 41.236889>,  <34.674652, 36.380501, 40.833054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247826, 36.664692, 41.236889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962814, 36.943825, 41.207676>,  <34.791805, 37.111305, 41.190147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962814, 36.943825, 41.207676>,  <35.247826, 36.664692, 41.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962814, 36.943825, 41.207676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030394, 0.073295, 0.996847,
		0.700981, 0.712505, -0.031015,
		-0.712532, 0.697829, -0.073034,
		34.749054, 37.153172, 41.185764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441639, 37.200588, 41.619839>,  <35.247826, 36.664692, 41.236889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441639, 37.200588, 41.619839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064190, 37.310127, 41.545448>,  <34.837723, 37.375851, 41.500813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064190, 37.310127, 41.545448>,  <35.441639, 37.200588, 41.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064190, 37.310127, 41.545448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121506, 0.236073, 0.964109,
		0.307925, 0.932350, -0.189488,
		-0.943620, 0.273849, -0.185979,
		34.781105, 37.392281, 41.489655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499477, 37.791313, 41.920944>,  <35.441639, 37.200588, 41.619839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499477, 37.791313, 41.920944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124752, 37.653412, 41.897194>,  <34.899918, 37.570671, 41.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124752, 37.653412, 41.897194>,  <35.499477, 37.791313, 41.920944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124752, 37.653412, 41.897194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105486, 0.116545, 0.987568,
		-0.333551, 0.931429, -0.145548,
		-0.936812, -0.344757, -0.059379,
		34.843708, 37.549984, 41.879379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022083, 38.256996, 42.188568>,  <35.499477, 37.791313, 41.920944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022083, 38.256996, 42.188568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821388, 37.913410, 42.229435>,  <34.700974, 37.707256, 42.253956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821388, 37.913410, 42.229435>,  <35.022083, 38.256996, 42.188568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821388, 37.913410, 42.229435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098109, 0.173860, 0.979871,
		-0.859440, 0.481611, -0.171504,
		-0.501734, -0.858967, 0.102172,
		34.670868, 37.655720, 42.260086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389160, 38.419857, 42.563961>,  <35.022083, 38.256996, 42.188568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389160, 38.419857, 42.563961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453835, 38.027576, 42.607944>,  <34.492638, 37.792210, 42.634335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453835, 38.027576, 42.607944>,  <34.389160, 38.419857, 42.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453835, 38.027576, 42.607944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004029, 0.112081, 0.993691,
		-0.986834, -0.160224, 0.022073,
		0.161687, -0.980697, 0.109960,
		34.502342, 37.733368, 42.640934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044399, 38.272728, 43.101974>,  <34.389160, 38.419857, 42.563961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044399, 38.272728, 43.101974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275948, 37.946575, 43.098808>,  <34.414875, 37.750885, 43.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275948, 37.946575, 43.098808>,  <34.044399, 38.272728, 43.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275948, 37.946575, 43.098808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101360, -0.081582, 0.991499,
		-0.809097, -0.573146, -0.129872,
		0.578868, -0.815383, -0.007914,
		34.449608, 37.701962, 43.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823883, 37.843830, 43.713428>,  <34.044399, 38.272728, 43.101974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823883, 37.843830, 43.713428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180149, 37.683388, 43.627796>,  <34.393909, 37.587120, 43.576416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180149, 37.683388, 43.627796>,  <33.823883, 37.843830, 43.713428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180149, 37.683388, 43.627796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183584, -0.113499, 0.976430,
		-0.415953, -0.908972, -0.027452,
		0.890663, -0.401109, -0.214083,
		34.447350, 37.563057, 43.563572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857273, 37.304642, 43.970615>,  <33.823883, 37.843830, 43.713428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857273, 37.304642, 43.970615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247158, 37.390743, 43.946640>,  <34.481091, 37.442406, 43.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247158, 37.390743, 43.946640>,  <33.857273, 37.304642, 43.970615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247158, 37.390743, 43.946640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061894, -0.002346, 0.998080,
		0.214702, -0.976555, -0.015609,
		0.974717, 0.215256, -0.059939,
		34.539574, 37.455318, 43.928658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037407, 36.942814, 44.450546>,  <33.857273, 37.304642, 43.970615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037407, 36.942814, 44.450546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344307, 37.196056, 44.409554>,  <34.528446, 37.348003, 44.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344307, 37.196056, 44.409554>,  <34.037407, 36.942814, 44.450546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344307, 37.196056, 44.409554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085150, 0.057813, 0.994689,
		0.635668, -0.771903, -0.009552,
		0.767252, 0.633106, -0.102478,
		34.574482, 37.385986, 44.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515366, 36.683708, 44.962322>,  <34.037407, 36.942814, 44.450546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515366, 36.683708, 44.962322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671280, 37.045490, 44.893013>,  <34.764828, 37.262558, 44.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671280, 37.045490, 44.893013>,  <34.515366, 36.683708, 44.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671280, 37.045490, 44.893013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220380, 0.091077, 0.971153,
		0.894146, -0.416732, -0.163823,
		0.389790, 0.904456, -0.173275,
		34.788216, 37.316826, 44.841030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136799, 36.642796, 45.260601>,  <34.515366, 36.683708, 44.962322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136799, 36.642796, 45.260601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034023, 37.027309, 45.220779>,  <34.972359, 37.258018, 45.196888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034023, 37.027309, 45.220779>,  <35.136799, 36.642796, 45.260601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034023, 37.027309, 45.220779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174072, 0.147355, 0.973646,
		0.950623, 0.232834, -0.205194,
		-0.256935, 0.961288, -0.099549,
		34.956944, 37.315697, 45.190914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694878, 37.099243, 45.586899>,  <35.136799, 36.642796, 45.260601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694878, 37.099243, 45.586899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354408, 37.309177, 45.589779>,  <35.150127, 37.435139, 45.591507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354408, 37.309177, 45.589779>,  <35.694878, 37.099243, 45.586899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354408, 37.309177, 45.589779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085821, 0.125623, 0.988359,
		0.517822, 0.841882, -0.151969,
		-0.851173, 0.524837, 0.007200,
		35.099056, 37.466629, 45.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873207, 37.735394, 45.982086>,  <35.694878, 37.099243, 45.586899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873207, 37.735394, 45.982086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473625, 37.751343, 45.973213>,  <35.233875, 37.760914, 45.967888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473625, 37.751343, 45.973213>,  <35.873207, 37.735394, 45.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473625, 37.751343, 45.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008829, 0.308100, 0.951313,
		0.044768, 0.950518, -0.307427,
		-0.998958, 0.039874, -0.022185,
		35.173939, 37.763306, 45.966557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703613, 38.335529, 46.296741>,  <35.873207, 37.735394, 45.982086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703613, 38.335529, 46.296741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390846, 38.087917, 46.326153>,  <35.203186, 37.939350, 46.343800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390846, 38.087917, 46.326153>,  <35.703613, 38.335529, 46.296741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390846, 38.087917, 46.326153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028085, 0.152806, 0.987857,
		-0.622752, 0.770355, -0.136867,
		-0.781915, -0.619034, 0.073525,
		35.156273, 37.902206, 46.348209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305969, 38.653114, 46.705009>,  <35.703613, 38.335529, 46.296741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305969, 38.653114, 46.705009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151184, 38.284416, 46.715206>,  <35.058311, 38.063198, 46.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151184, 38.284416, 46.715206>,  <35.305969, 38.653114, 46.705009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151184, 38.284416, 46.715206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097253, -0.013307, 0.995171,
		-0.916952, 0.387573, 0.094792,
		-0.386963, -0.921743, 0.025491,
		35.035095, 38.007893, 46.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730492, 38.626839, 47.166828>,  <35.305969, 38.653114, 46.705009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730492, 38.626839, 47.166828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880280, 38.258671, 47.121941>,  <34.970154, 38.037769, 47.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880280, 38.258671, 47.121941>,  <34.730492, 38.626839, 47.166828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880280, 38.258671, 47.121941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119370, -0.072161, 0.990224,
		-0.919524, -0.384202, 0.082849,
		0.374468, -0.920424, -0.112216,
		34.992619, 37.982544, 47.088276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659267, 38.423943, 47.754539>,  <34.730492, 38.626839, 47.166828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659267, 38.423943, 47.754539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906239, 38.122417, 47.664616>,  <35.054420, 37.941502, 47.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906239, 38.122417, 47.664616>,  <34.659267, 38.423943, 47.754539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906239, 38.122417, 47.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244062, -0.088114, 0.965748,
		-0.747805, -0.651152, 0.129573,
		0.617432, -0.753815, -0.224814,
		35.091469, 37.896275, 47.597172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443619, 37.935810, 48.160423>,  <34.659267, 38.423943, 47.754539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443619, 37.935810, 48.160423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812199, 37.813423, 48.064663>,  <35.033348, 37.739990, 48.007206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812199, 37.813423, 48.064663>,  <34.443619, 37.935810, 48.160423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812199, 37.813423, 48.064663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256620, 0.016722, 0.966368,
		-0.291672, -0.951896, 0.093926,
		0.921452, -0.305965, -0.239398,
		35.088634, 37.721634, 47.992844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603306, 37.137112, 48.374714>,  <34.443619, 37.935810, 48.160423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603306, 37.137112, 48.374714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928505, 37.367317, 48.339340>,  <35.123623, 37.505440, 48.318115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928505, 37.367317, 48.339340>,  <34.603306, 37.137112, 48.374714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928505, 37.367317, 48.339340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213696, -0.153639, 0.964743,
		0.541636, -0.803230, -0.247893,
		0.812997, 0.575514, -0.088431,
		35.172405, 37.539970, 48.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116554, 36.870895, 48.858521>,  <34.603306, 37.137112, 48.374714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116554, 36.870895, 48.858521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302406, 37.220554, 48.801968>,  <35.413918, 37.430347, 48.768036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302406, 37.220554, 48.801968>,  <35.116554, 36.870895, 48.858521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302406, 37.220554, 48.801968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518400, -0.139070, 0.843755,
		0.717902, -0.465327, -0.517773,
		0.464628, 0.874146, -0.141387,
		35.441795, 37.482800, 48.759552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741589, 36.673775, 49.014191>,  <35.116554, 36.870895, 48.858521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741589, 36.673775, 49.014191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765972, 37.072746, 49.029305>,  <35.780602, 37.312130, 49.038372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765972, 37.072746, 49.029305>,  <35.741589, 36.673775, 49.014191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765972, 37.072746, 49.029305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599572, -0.066856, 0.797523,
		0.797996, -0.025960, -0.602104,
		0.060958, 0.997425, 0.037786,
		35.784260, 37.371975, 49.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425804, 36.860104, 49.044830>,  <35.741589, 36.673775, 49.014191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425804, 36.860104, 49.044830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262825, 37.196598, 49.186993>,  <36.165039, 37.398495, 49.272289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262825, 37.196598, 49.186993>,  <36.425804, 36.860104, 49.044830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262825, 37.196598, 49.186993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577215, -0.064355, 0.814053,
		0.707680, 0.536829, -0.459350,
		-0.407446, 0.841233, 0.355409,
		36.140591, 37.448967, 49.293613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960945, 37.174393, 49.367355>,  <36.425804, 36.860104, 49.044830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960945, 37.174393, 49.367355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640221, 37.355061, 49.523869>,  <36.447788, 37.463463, 49.617775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640221, 37.355061, 49.523869>,  <36.960945, 37.174393, 49.367355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640221, 37.355061, 49.523869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499517, 0.147181, 0.853710,
		0.328007, 0.879960, -0.343629,
		-0.801806, 0.451672, 0.391279,
		36.399677, 37.490562, 49.641251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234417, 37.795609, 49.666714>,  <36.960945, 37.174393, 49.367355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234417, 37.795609, 49.666714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884426, 37.740742, 49.852444>,  <36.674431, 37.707821, 49.963882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884426, 37.740742, 49.852444>,  <37.234417, 37.795609, 49.666714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884426, 37.740742, 49.852444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444452, 0.152797, 0.882675,
		-0.192021, 0.978692, -0.072731,
		-0.874980, -0.137167, 0.464322,
		36.621933, 37.699593, 49.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116947, 38.369614, 50.193779>,  <37.234417, 37.795609, 49.666714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116947, 38.369614, 50.193779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877563, 38.072968, 50.315002>,  <36.733932, 37.894978, 50.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877563, 38.072968, 50.315002>,  <37.116947, 38.369614, 50.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877563, 38.072968, 50.315002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229348, 0.203850, 0.951759,
		-0.767621, 0.639097, 0.048092,
		-0.598463, -0.741620, 0.303055,
		36.698025, 37.850483, 50.405918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837971, 38.704914, 50.726536>,  <37.116947, 38.369614, 50.193779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837971, 38.704914, 50.726536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754776, 38.315689, 50.766300>,  <36.704857, 38.082153, 50.790161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754776, 38.315689, 50.766300>,  <36.837971, 38.704914, 50.726536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754776, 38.315689, 50.766300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088867, 0.082418, 0.992628,
		-0.974086, 0.215290, 0.069332,
		-0.207989, -0.973066, 0.099415,
		36.692379, 38.023769, 50.796124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362999, 38.600967, 51.355011>,  <36.837971, 38.704914, 50.726536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362999, 38.600967, 51.355011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609890, 38.293224, 51.289143>,  <36.758026, 38.108578, 51.249622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609890, 38.293224, 51.289143>,  <36.362999, 38.600967, 51.355011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609890, 38.293224, 51.289143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269857, 0.010418, 0.962844,
		-0.739055, -0.638734, 0.214047,
		0.617232, -0.769357, -0.164667,
		36.795059, 38.062416, 51.239742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229294, 38.191868, 51.889175>,  <36.362999, 38.600967, 51.355011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229294, 38.191868, 51.889175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602921, 38.123554, 51.763733>,  <36.827099, 38.082565, 51.688469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602921, 38.123554, 51.763733>,  <36.229294, 38.191868, 51.889175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602921, 38.123554, 51.763733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330346, 0.079787, 0.940482,
		-0.135596, -0.982073, 0.130944,
		0.934069, -0.170783, -0.313605,
		36.883141, 38.072319, 51.669651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537743, 37.676167, 52.300838>,  <36.229294, 38.191868, 51.889175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537743, 37.676167, 52.300838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831726, 37.885456, 52.128292>,  <37.008118, 38.011028, 52.024765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831726, 37.885456, 52.128292>,  <36.537743, 37.676167, 52.300838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831726, 37.885456, 52.128292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461352, 0.080392, 0.883567,
		0.496982, -0.848395, -0.182305,
		0.734958, 0.523224, -0.431362,
		37.052212, 38.042423, 51.998882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196590, 37.317287, 52.594162>,  <36.537743, 37.676167, 52.300838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196590, 37.317287, 52.594162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278366, 37.678543, 52.443138>,  <37.327431, 37.895294, 52.352524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278366, 37.678543, 52.443138>,  <37.196590, 37.317287, 52.594162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278366, 37.678543, 52.443138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561311, 0.207834, 0.801084,
		0.801958, -0.375697, -0.464452,
		0.204436, 0.903137, -0.377557,
		37.339699, 37.949486, 52.329872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683800, 37.232098, 53.068642>,  <37.196590, 37.317287, 52.594162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683800, 37.232098, 53.068642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651840, 37.414753, 52.714218>,  <37.632664, 37.524345, 52.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651840, 37.414753, 52.714218>,  <37.683800, 37.232098, 53.068642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651840, 37.414753, 52.714218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981782, -0.117680, -0.149181,
		-0.172392, -0.881837, -0.438914,
		-0.079902, 0.456635, -0.886059,
		37.627869, 37.551743, 52.448402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043861, 36.615421, 53.302086>,  <37.683800, 37.232098, 53.068642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043861, 36.615421, 53.302086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087952, 36.233154, 53.411308>,  <38.114407, 36.003796, 53.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087952, 36.233154, 53.411308>,  <38.043861, 36.615421, 53.302086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087952, 36.233154, 53.411308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413178, -0.293923, -0.861912,
		0.903955, -0.017819, -0.427256,
		0.110222, -0.955663, 0.273056,
		38.121017, 35.946457, 53.493225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199902, 36.333130, 52.666515>,  <38.043861, 36.615421, 53.302086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199902, 36.333130, 52.666515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116524, 36.032871, 52.917297>,  <38.066498, 35.852715, 53.067768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116524, 36.032871, 52.917297>,  <38.199902, 36.333130, 52.666515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116524, 36.032871, 52.917297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230913, -0.585144, -0.777358,
		0.950385, -0.306806, -0.051367,
		-0.208441, -0.750651, 0.626958,
		38.053993, 35.807674, 53.105385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567154, 35.754189, 52.557335>,  <38.199902, 36.333130, 52.666515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567154, 35.754189, 52.557335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194988, 35.684017, 52.686054>,  <37.971687, 35.641914, 52.763287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194988, 35.684017, 52.686054>,  <38.567154, 35.754189, 52.557335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194988, 35.684017, 52.686054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296153, -0.157416, -0.942079,
		0.215928, -0.971825, 0.094507,
		-0.930413, -0.175433, 0.321800,
		37.915863, 35.631386, 52.782593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327984, 35.105553, 52.286240>,  <38.567154, 35.754189, 52.557335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327984, 35.105553, 52.286240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996197, 35.312473, 52.370518>,  <37.797127, 35.436626, 52.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996197, 35.312473, 52.370518>,  <38.327984, 35.105553, 52.286240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996197, 35.312473, 52.370518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392270, -0.270952, -0.879039,
		-0.397637, -0.811781, 0.427665,
		-0.829463, 0.517298, 0.210697,
		37.747356, 35.467663, 52.433727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747677, 34.662544, 52.247414>,  <38.327984, 35.105553, 52.286240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747677, 34.662544, 52.247414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652607, 35.038052, 52.147636>,  <37.595566, 35.263355, 52.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652607, 35.038052, 52.147636>,  <37.747677, 34.662544, 52.247414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652607, 35.038052, 52.147636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308036, -0.316388, -0.897225,
		-0.921209, -0.136408, 0.364372,
		-0.237671, 0.938771, -0.249441,
		37.581306, 35.319683, 52.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631866, 34.446865, 51.607082>,  <37.747677, 34.662544, 52.247414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631866, 34.446865, 51.607082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508022, 34.823799, 51.657902>,  <37.433716, 35.049961, 51.688393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508022, 34.823799, 51.657902>,  <37.631866, 34.446865, 51.607082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508022, 34.823799, 51.657902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387488, -0.003024, -0.921870,
		-0.868329, -0.334648, 0.366081,
		-0.309609, 0.942339, 0.127047,
		37.415138, 35.106503, 51.696014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939312, 34.579922, 51.398254>,  <37.631866, 34.446865, 51.607082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939312, 34.579922, 51.398254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099869, 34.940384, 51.332775>,  <37.196201, 35.156662, 51.293488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099869, 34.940384, 51.332775>,  <36.939312, 34.579922, 51.398254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099869, 34.940384, 51.332775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530219, 0.082893, -0.843799,
		-0.746828, 0.425488, 0.511085,
		0.401392, 0.901160, -0.163695,
		37.220287, 35.210732, 51.283669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402245, 34.919323, 51.089920>,  <36.939312, 34.579922, 51.398254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402245, 34.919323, 51.089920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738007, 35.119434, 51.004955>,  <36.939465, 35.239502, 50.953976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738007, 35.119434, 51.004955>,  <36.402245, 34.919323, 51.089920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738007, 35.119434, 51.004955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228700, -0.029412, -0.973052,
		-0.493048, 0.865363, 0.089726,
		0.839404, 0.500282, -0.212410,
		36.989826, 35.269520, 50.941231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224670, 35.400539, 50.557064>,  <36.402245, 34.919323, 51.089920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224670, 35.400539, 50.557064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623096, 35.367687, 50.543713>,  <36.862152, 35.347977, 50.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623096, 35.367687, 50.543713>,  <36.224670, 35.400539, 50.557064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623096, 35.367687, 50.543713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026395, 0.084636, -0.996062,
		0.084636, 0.993021, 0.082135,
		0.996062, -0.082135, -0.033374,
		36.921917, 35.343048, 50.533699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461540, 35.929577, 50.032967>,  <36.224670, 35.400539, 50.557064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461540, 35.929577, 50.032967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737259, 35.645527, 50.090366>,  <36.902691, 35.475098, 50.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737259, 35.645527, 50.090366>,  <36.461540, 35.929577, 50.032967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737259, 35.645527, 50.090366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121497, -0.081955, -0.989202,
		0.714220, 0.699287, 0.029787,
		0.689296, -0.710127, 0.143495,
		36.944046, 35.432487, 50.133415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082352, 36.129734, 49.535480>,  <36.461540, 35.929577, 50.032967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082352, 36.129734, 49.535480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148300, 35.742180, 49.609318>,  <37.187870, 35.509647, 49.653622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148300, 35.742180, 49.609318>,  <37.082352, 36.129734, 49.535480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148300, 35.742180, 49.609318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054958, -0.195892, -0.979084,
		0.984782, 0.151282, -0.085546,
		0.164875, -0.968886, 0.184597,
		37.197762, 35.451515, 49.664696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565937, 35.900497, 48.976604>,  <37.082352, 36.129734, 49.535480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565937, 35.900497, 48.976604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415321, 35.553215, 49.105865>,  <37.324951, 35.344845, 49.183422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415321, 35.553215, 49.105865>,  <37.565937, 35.900497, 48.976604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415321, 35.553215, 49.105865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037043, -0.362661, -0.931184,
		0.925660, -0.338656, 0.168717,
		-0.376538, -0.868210, 0.323156,
		37.302361, 35.292751, 49.202812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983662, 35.391235, 48.786442>,  <37.565937, 35.900497, 48.976604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983662, 35.391235, 48.786442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641201, 35.201515, 48.868462>,  <37.435726, 35.087685, 48.917671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641201, 35.201515, 48.868462>,  <37.983662, 35.391235, 48.786442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641201, 35.201515, 48.868462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052646, -0.474820, -0.878507,
		0.514035, -0.741341, 0.431488,
		-0.856152, -0.474300, 0.205046,
		37.384354, 35.059227, 48.929974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108608, 34.647678, 48.743721>,  <37.983662, 35.391235, 48.786442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108608, 34.647678, 48.743721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716427, 34.703285, 48.688034>,  <37.481117, 34.736649, 48.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716427, 34.703285, 48.688034>,  <38.108608, 34.647678, 48.743721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716427, 34.703285, 48.688034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030285, -0.592558, -0.804959,
		-0.194399, -0.793442, 0.576766,
		-0.980455, 0.139016, -0.139222,
		37.422291, 34.744991, 48.646267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909779, 33.931007, 48.624477>,  <38.108608, 34.647678, 48.743721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909779, 33.931007, 48.624477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595932, 34.140171, 48.491245>,  <37.407623, 34.265671, 48.411304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595932, 34.140171, 48.491245>,  <37.909779, 33.931007, 48.624477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595932, 34.140171, 48.491245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055558, -0.594387, -0.802258,
		-0.617496, -0.610953, 0.495414,
		-0.784609, 0.522915, -0.333088,
		37.360546, 34.297043, 48.391319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356731, 33.442802, 48.571331>,  <37.909779, 33.931007, 48.624477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356731, 33.442802, 48.571331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288418, 33.752869, 48.328037>,  <37.247429, 33.938908, 48.182060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288418, 33.752869, 48.328037>,  <37.356731, 33.442802, 48.571331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288418, 33.752869, 48.328037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062851, -0.607473, -0.791850,
		-0.983302, -0.173461, 0.055025,
		-0.170781, 0.775170, -0.608231,
		37.237183, 33.985420, 48.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062523, 33.078079, 47.995415>,  <37.356731, 33.442802, 48.571331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062523, 33.078079, 47.995415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122784, 33.444309, 47.846272>,  <37.158939, 33.664047, 47.756786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122784, 33.444309, 47.846272>,  <37.062523, 33.078079, 47.995415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122784, 33.444309, 47.846272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168702, -0.395438, -0.902867,
		-0.974086, 0.073120, -0.214034,
		0.150655, 0.915578, -0.372855,
		37.167980, 33.718983, 47.734413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847260, 32.967815, 47.255219>,  <37.062523, 33.078079, 47.995415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847260, 32.967815, 47.255219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052498, 33.309124, 47.292439>,  <37.175640, 33.513908, 47.314770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052498, 33.309124, 47.292439>,  <36.847260, 32.967815, 47.255219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052498, 33.309124, 47.292439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445058, -0.171785, -0.878870,
		-0.733929, 0.492362, -0.467897,
		0.513100, 0.853270, 0.093051,
		37.206429, 33.565105, 47.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660133, 33.460869, 46.603687>,  <36.847260, 32.967815, 47.255219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660133, 33.460869, 46.603687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012527, 33.572899, 46.756226>,  <37.223965, 33.640118, 46.847748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012527, 33.572899, 46.756226>,  <36.660133, 33.460869, 46.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012527, 33.572899, 46.756226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358795, 0.129963, -0.924325,
		-0.308442, 0.951140, 0.014005,
		0.880982, 0.280076, 0.381350,
		37.276821, 33.656921, 46.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725441, 34.139690, 46.268715>,  <36.660133, 33.460869, 46.603687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725441, 34.139690, 46.268715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059021, 33.961639, 46.399181>,  <37.259171, 33.854809, 46.477463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059021, 33.961639, 46.399181>,  <36.725441, 34.139690, 46.268715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059021, 33.961639, 46.399181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338805, -0.053535, -0.939332,
		0.435583, 0.893866, 0.106166,
		0.833954, -0.445127, 0.326165,
		37.309208, 33.828102, 46.497032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323551, 34.493660, 46.096893>,  <36.725441, 34.139690, 46.268715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323551, 34.493660, 46.096893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467487, 34.124268, 46.150116>,  <37.553848, 33.902634, 46.182049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467487, 34.124268, 46.150116>,  <37.323551, 34.493660, 46.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467487, 34.124268, 46.150116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330815, -0.007061, -0.943669,
		0.872398, 0.383584, 0.302960,
		0.359837, -0.923479, 0.133055,
		37.575439, 33.847225, 46.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033909, 34.499557, 45.766140>,  <37.323551, 34.493660, 46.096893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033909, 34.499557, 45.766140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932919, 34.116337, 45.820389>,  <37.872326, 33.886406, 45.852940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932919, 34.116337, 45.820389>,  <38.033909, 34.499557, 45.766140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932919, 34.116337, 45.820389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443133, -0.239086, -0.863986,
		0.860169, -0.158032, 0.484907,
		-0.252472, -0.958052, 0.135625,
		37.857178, 33.828922, 45.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622875, 34.079128, 45.540401>,  <38.033909, 34.499557, 45.766140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622875, 34.079128, 45.540401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296871, 33.851025, 45.499287>,  <38.101269, 33.714161, 45.474617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296871, 33.851025, 45.499287>,  <38.622875, 34.079128, 45.540401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296871, 33.851025, 45.499287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312248, -0.282791, -0.906934,
		0.488123, -0.771253, 0.408540,
		-0.815007, -0.570262, -0.102785,
		38.052368, 33.679947, 45.468452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840023, 33.458057, 45.017368>,  <38.622875, 34.079128, 45.540401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840023, 33.458057, 45.017368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447865, 33.382809, 45.040810>,  <38.212570, 33.337662, 45.054874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447865, 33.382809, 45.040810>,  <38.840023, 33.458057, 45.017368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447865, 33.382809, 45.040810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051653, -0.041649, -0.997796,
		0.190145, -0.981263, 0.031115,
		-0.980396, -0.188119, 0.058605,
		38.153748, 33.326374, 45.058392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682480, 32.728954, 44.774757>,  <38.840023, 33.458057, 45.017368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682480, 32.728954, 44.774757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362213, 32.964146, 44.728779>,  <38.170052, 33.105259, 44.701191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362213, 32.964146, 44.728779>,  <38.682480, 32.728954, 44.774757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362213, 32.964146, 44.728779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025029, -0.224519, -0.974148,
		-0.598584, -0.777093, 0.194482,
		-0.800668, 0.587978, -0.114943,
		38.122013, 33.140537, 44.694294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178864, 32.330399, 44.276684>,  <38.682480, 32.728954, 44.774757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178864, 32.330399, 44.276684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074097, 32.716259, 44.265041>,  <38.011238, 32.947777, 44.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074097, 32.716259, 44.265041>,  <38.178864, 32.330399, 44.276684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074097, 32.716259, 44.265041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196816, -0.082910, -0.976929,
		-0.944809, -0.250146, 0.211575,
		-0.261916, 0.964652, -0.029101,
		37.995522, 33.005653, 44.256310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497776, 32.427376, 43.870758>,  <38.178864, 32.330399, 44.276684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497776, 32.427376, 43.870758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673569, 32.785927, 43.847523>,  <37.779045, 33.001057, 43.833584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673569, 32.785927, 43.847523>,  <37.497776, 32.427376, 43.870758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673569, 32.785927, 43.847523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315037, 0.093254, -0.944487,
		-0.841196, 0.433381, 0.323374,
		0.439479, 0.896373, -0.058086,
		37.805412, 33.054840, 43.830097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160053, 32.889069, 43.412399>,  <37.497776, 32.427376, 43.870758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160053, 32.889069, 43.412399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500847, 33.097088, 43.436653>,  <37.705322, 33.221897, 43.451206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500847, 33.097088, 43.436653>,  <37.160053, 32.889069, 43.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500847, 33.097088, 43.436653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028087, 0.161043, -0.986547,
		-0.522813, 0.838820, 0.151813,
		0.851984, 0.520044, 0.060636,
		37.756443, 33.253101, 43.454845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951199, 33.395306, 42.967800>,  <37.160053, 32.889069, 43.412399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951199, 33.395306, 42.967800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349297, 33.416424, 43.000534>,  <37.588158, 33.429092, 43.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349297, 33.416424, 43.000534>,  <36.951199, 33.395306, 42.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349297, 33.416424, 43.000534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071434, 0.175361, -0.981909,
		-0.066187, 0.983088, 0.170756,
		0.995247, 0.052792, 0.081832,
		37.647869, 33.432262, 43.025085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165825, 34.038654, 42.675880>,  <36.951199, 33.395306, 42.967800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165825, 34.038654, 42.675880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481670, 33.793446, 42.686504>,  <37.671177, 33.646320, 42.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481670, 33.793446, 42.686504>,  <37.165825, 34.038654, 42.675880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481670, 33.793446, 42.686504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105657, 0.093194, -0.990026,
		0.604434, 0.784549, 0.138358,
		0.789618, -0.613023, 0.026564,
		37.718555, 33.609539, 42.694473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785950, 34.410011, 42.355247>,  <37.165825, 34.038654, 42.675880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785950, 34.410011, 42.355247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790154, 34.010204, 42.343506>,  <37.792675, 33.770321, 42.336460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790154, 34.010204, 42.343506>,  <37.785950, 34.410011, 42.355247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790154, 34.010204, 42.343506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049948, 0.029843, -0.998306,
		0.998697, 0.009022, 0.050238,
		0.010506, -0.999514, -0.029354,
		37.793304, 33.710350, 42.334702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214191, 34.333675, 41.737312>,  <37.785950, 34.410011, 42.355247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214191, 34.333675, 41.737312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052788, 33.978085, 41.823944>,  <37.955944, 33.764732, 41.875923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052788, 33.978085, 41.823944>,  <38.214191, 34.333675, 41.737312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052788, 33.978085, 41.823944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082708, -0.200301, -0.976237,
		0.911230, -0.411832, 0.007298,
		-0.403508, -0.888973, 0.216583,
		37.931736, 33.711391, 41.888920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565804, 33.930637, 41.437843>,  <38.214191, 34.333675, 41.737312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565804, 33.930637, 41.437843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223286, 33.726612, 41.470322>,  <38.017776, 33.604195, 41.489807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223286, 33.726612, 41.470322>,  <38.565804, 33.930637, 41.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223286, 33.726612, 41.470322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015097, -0.181861, -0.983208,
		0.516270, -0.840688, 0.163427,
		-0.856293, -0.510068, 0.081197,
		37.966396, 33.573593, 41.494682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691967, 33.302425, 41.109470>,  <38.565804, 33.930637, 41.437843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691967, 33.302425, 41.109470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292336, 33.319447, 41.111897>,  <38.052559, 33.329659, 41.113354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292336, 33.319447, 41.111897>,  <38.691967, 33.302425, 41.109470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292336, 33.319447, 41.111897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014024, -0.189238, -0.981831,
		-0.040632, -0.981009, 0.189660,
		-0.999076, 0.042554, 0.006068,
		37.992611, 33.332214, 41.113716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423233, 32.920971, 40.577183>,  <38.691967, 33.302425, 41.109470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423233, 32.920971, 40.577183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074856, 33.104595, 40.647293>,  <37.865829, 33.214771, 40.689358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074856, 33.104595, 40.647293>,  <38.423233, 32.920971, 40.577183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074856, 33.104595, 40.647293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295971, -0.205351, -0.932862,
		-0.392251, -0.864344, 0.314719,
		-0.870942, 0.459064, 0.175271,
		37.813572, 33.242313, 40.699875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893219, 32.540291, 40.158234>,  <38.423233, 32.920971, 40.577183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893219, 32.540291, 40.158234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716484, 32.890106, 40.238186>,  <37.610443, 33.099995, 40.286156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716484, 32.890106, 40.238186>,  <37.893219, 32.540291, 40.158234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716484, 32.890106, 40.238186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333427, 0.046755, -0.941616,
		-0.832829, -0.482689, 0.270938,
		-0.441840, 0.874543, 0.199880,
		37.583931, 33.152470, 40.298149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221676, 32.411991, 39.949753>,  <37.893219, 32.540291, 40.158234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221676, 32.411991, 39.949753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285984, 32.806782, 39.951633>,  <37.324570, 33.043655, 39.952763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285984, 32.806782, 39.951633>,  <37.221676, 32.411991, 39.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285984, 32.806782, 39.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400518, 0.069588, -0.913643,
		-0.902075, 0.145001, 0.406492,
		0.160766, 0.986981, 0.004698,
		37.334213, 33.102875, 39.953041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617023, 32.809734, 39.667992>,  <37.221676, 32.411991, 39.949753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617023, 32.809734, 39.667992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946701, 33.031231, 39.620529>,  <37.144508, 33.164127, 39.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946701, 33.031231, 39.620529>,  <36.617023, 32.809734, 39.667992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946701, 33.031231, 39.620529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269041, 0.198500, -0.942451,
		-0.498321, 0.808684, 0.312581,
		0.824193, 0.553740, -0.118652,
		37.193958, 33.197353, 39.584934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361141, 33.245186, 39.259804>,  <36.617023, 32.809734, 39.667992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361141, 33.245186, 39.259804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760334, 33.257374, 39.237518>,  <36.999851, 33.264687, 39.224148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760334, 33.257374, 39.237518>,  <36.361141, 33.245186, 39.259804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760334, 33.257374, 39.237518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058785, 0.111357, -0.992040,
		-0.024020, 0.993313, 0.112923,
		0.997982, 0.030467, -0.055717,
		37.059727, 33.266514, 39.220802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415627, 33.855564, 38.894447>,  <36.361141, 33.245186, 39.259804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415627, 33.855564, 38.894447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758770, 33.657085, 38.840984>,  <36.964657, 33.537998, 38.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758770, 33.657085, 38.840984>,  <36.415627, 33.855564, 38.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758770, 33.657085, 38.840984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251066, -0.177760, -0.951508,
		0.448374, 0.849819, -0.277071,
		0.857861, -0.496195, -0.133658,
		37.016129, 33.508228, 38.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773594, 34.164722, 38.311966>,  <36.415627, 33.855564, 38.894447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773594, 34.164722, 38.311966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928505, 33.796452, 38.331421>,  <37.021450, 33.575489, 38.343094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928505, 33.796452, 38.331421>,  <36.773594, 34.164722, 38.311966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928505, 33.796452, 38.331421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155557, -0.117247, -0.980844,
		0.908747, 0.372290, -0.188625,
		0.387274, -0.920681, 0.048635,
		37.044685, 33.520248, 38.346012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488132, 34.188820, 37.949268>,  <36.773594, 34.164722, 38.311966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488132, 34.188820, 37.949268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326107, 33.823997, 37.974815>,  <37.228893, 33.605103, 37.990143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326107, 33.823997, 37.974815>,  <37.488132, 34.188820, 37.949268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326107, 33.823997, 37.974815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061587, -0.096911, -0.993386,
		0.912212, -0.398450, 0.095426,
		-0.405063, -0.912056, 0.063864,
		37.204590, 33.550381, 37.993973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738682, 33.812313, 37.311291>,  <37.488132, 34.188820, 37.949268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738682, 33.812313, 37.311291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443695, 33.574703, 37.439838>,  <37.266705, 33.432137, 37.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443695, 33.574703, 37.439838>,  <37.738682, 33.812313, 37.311291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443695, 33.574703, 37.439838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110179, -0.363641, -0.925000,
		0.666336, -0.717564, 0.202724,
		-0.737466, -0.594026, 0.321368,
		37.222454, 33.396496, 37.536247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899998, 33.037247, 37.222282>,  <37.738682, 33.812313, 37.311291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899998, 33.037247, 37.222282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505383, 33.101810, 37.232750>,  <37.268612, 33.140549, 37.239029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505383, 33.101810, 37.232750>,  <37.899998, 33.037247, 37.222282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505383, 33.101810, 37.232750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075885, -0.310197, -0.947639,
		-0.144843, -0.936869, 0.318270,
		-0.986540, 0.161411, 0.026165,
		37.209419, 33.150234, 37.240601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135117, 32.741680, 36.535496>,  <37.899998, 33.037247, 37.222282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135117, 32.741680, 36.535496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470821, 32.635365, 36.345760>,  <38.672245, 32.571575, 36.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470821, 32.635365, 36.345760>,  <38.135117, 32.741680, 36.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470821, 32.635365, 36.345760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541390, 0.489309, 0.683720,
		0.050376, -0.830623, 0.554552,
		0.839261, -0.265786, -0.474340,
		38.722599, 32.555630, 36.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780254, 32.329250, 36.761414>,  <38.135117, 32.741680, 36.535496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780254, 32.329250, 36.761414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123352, 32.183861, 36.616001>,  <39.329212, 32.096626, 36.528755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123352, 32.183861, 36.616001>,  <38.780254, 32.329250, 36.761414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123352, 32.183861, 36.616001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298489, -0.223599, 0.927851,
		-0.418538, -0.904371, -0.083297,
		0.857747, -0.363478, -0.363529,
		39.380676, 32.074818, 36.506943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850178, 31.750938, 37.160927>,  <38.780254, 32.329250, 36.761414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850178, 31.750938, 37.160927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213146, 31.894274, 37.073124>,  <39.430927, 31.980274, 37.020443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213146, 31.894274, 37.073124>,  <38.850178, 31.750938, 37.160927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213146, 31.894274, 37.073124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318340, -0.245202, 0.915716,
		0.274311, -0.900817, -0.336575,
		0.907421, 0.358336, -0.219504,
		39.485374, 32.001774, 37.007271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347214, 31.187496, 37.297195>,  <38.850178, 31.750938, 37.160927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347214, 31.187496, 37.297195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532188, 31.541357, 37.320992>,  <39.643173, 31.753674, 37.335270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532188, 31.541357, 37.320992>,  <39.347214, 31.187496, 37.297195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532188, 31.541357, 37.320992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244259, -0.191611, 0.950591,
		0.852343, -0.425058, -0.304693,
		0.462438, 0.884653, 0.059494,
		39.670921, 31.806753, 37.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960423, 31.119848, 37.704323>,  <39.347214, 31.187496, 37.297195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960423, 31.119848, 37.704323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974918, 31.518589, 37.732517>,  <39.983616, 31.757833, 37.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974918, 31.518589, 37.732517>,  <39.960423, 31.119848, 37.704323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974918, 31.518589, 37.732517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341886, -0.078647, 0.936445,
		0.939042, -0.009838, -0.343661,
		0.036241, 0.996854, 0.070489,
		39.985790, 31.817646, 37.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622562, 31.242519, 38.094425>,  <39.960423, 31.119848, 37.704323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622562, 31.242519, 38.094425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399349, 31.573561, 38.118687>,  <40.265423, 31.772184, 38.133244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399349, 31.573561, 38.118687>,  <40.622562, 31.242519, 38.094425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399349, 31.573561, 38.118687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362079, 0.177071, 0.915175,
		0.746661, 0.532655, -0.398468,
		-0.558029, 0.827602, 0.060651,
		40.231941, 31.821842, 38.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063946, 31.597075, 38.409214>,  <40.622562, 31.242519, 38.094425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063946, 31.597075, 38.409214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708931, 31.773027, 38.464043>,  <40.495922, 31.878599, 38.496941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708931, 31.773027, 38.464043>,  <41.063946, 31.597075, 38.409214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708931, 31.773027, 38.464043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238638, 0.184399, 0.953441,
		0.394125, 0.878921, -0.268632,
		-0.887534, 0.439880, 0.137068,
		40.442669, 31.904991, 38.505161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158043, 32.312645, 38.774155>,  <41.063946, 31.597075, 38.409214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158043, 32.312645, 38.774155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782780, 32.200809, 38.855820>,  <40.557621, 32.133709, 38.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782780, 32.200809, 38.855820>,  <41.158043, 32.312645, 38.774155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782780, 32.200809, 38.855820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168796, 0.145481, 0.974855,
		-0.302261, 0.949034, -0.089291,
		-0.938161, -0.279589, 0.204167,
		40.501331, 32.116932, 38.917068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826012, 32.739079, 39.305691>,  <41.158043, 32.312645, 38.774155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826012, 32.739079, 39.305691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583820, 32.420876, 39.315266>,  <40.438507, 32.229954, 39.321011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583820, 32.420876, 39.315266>,  <40.826012, 32.739079, 39.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583820, 32.420876, 39.315266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140211, -0.077019, 0.987122,
		-0.783417, 0.601032, 0.158171,
		-0.605474, -0.795505, 0.023933,
		40.402180, 32.182224, 39.322445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419613, 32.770847, 39.826054>,  <40.826012, 32.739079, 39.305691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419613, 32.770847, 39.826054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365292, 32.377743, 39.775890>,  <40.332699, 32.141880, 39.745792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365292, 32.377743, 39.775890>,  <40.419613, 32.770847, 39.826054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365292, 32.377743, 39.775890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020754, -0.129379, 0.991378,
		-0.990518, 0.132031, 0.037966,
		-0.135804, -0.982766, -0.125412,
		40.324551, 32.082912, 39.738266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828476, 32.602264, 40.142872>,  <40.419613, 32.770847, 39.826054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828476, 32.602264, 40.142872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033989, 32.259216, 40.133835>,  <40.157295, 32.053387, 40.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033989, 32.259216, 40.133835>,  <39.828476, 32.602264, 40.142872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033989, 32.259216, 40.133835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087200, -0.078406, 0.993101,
		-0.853477, -0.508267, -0.115068,
		0.513783, -0.857623, -0.022597,
		40.188126, 32.001930, 40.127056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499966, 32.201870, 40.562012>,  <39.828476, 32.602264, 40.142872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499966, 32.201870, 40.562012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860703, 32.029545, 40.548832>,  <40.077145, 31.926149, 40.540924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860703, 32.029545, 40.548832>,  <39.499966, 32.201870, 40.562012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860703, 32.029545, 40.548832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009447, -0.095893, 0.995347,
		-0.431973, -0.897329, -0.090550,
		0.901837, -0.430818, -0.032946,
		40.131252, 31.900299, 40.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469807, 31.759310, 41.128525>,  <39.499966, 32.201870, 40.562012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469807, 31.759310, 41.128525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854176, 31.801004, 41.025944>,  <40.084797, 31.826021, 40.964394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854176, 31.801004, 41.025944>,  <39.469807, 31.759310, 41.128525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854176, 31.801004, 41.025944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267336, -0.108892, 0.957431,
		0.071873, -0.988573, -0.132503,
		0.960919, 0.104237, -0.256455,
		40.142452, 31.832275, 40.949009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771683, 31.212988, 41.412815>,  <39.469807, 31.759310, 41.128525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771683, 31.212988, 41.412815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046284, 31.501034, 41.372532>,  <40.211044, 31.673862, 41.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046284, 31.501034, 41.372532>,  <39.771683, 31.212988, 41.412815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046284, 31.501034, 41.372532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300819, -0.155187, 0.940970,
		0.661980, -0.676276, -0.323161,
		0.686506, 0.720116, -0.100707,
		40.252235, 31.717068, 41.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310616, 30.932615, 41.747841>,  <39.771683, 31.212988, 41.412815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310616, 30.932615, 41.747841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358189, 31.329575, 41.735214>,  <40.386734, 31.567751, 41.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358189, 31.329575, 41.735214>,  <40.310616, 30.932615, 41.747841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358189, 31.329575, 41.735214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073867, 0.022860, 0.997006,
		0.990150, -0.120911, -0.070587,
		0.118936, 0.992400, -0.031566,
		40.393871, 31.627295, 41.725746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673897, 31.070015, 42.325821>,  <40.310616, 30.932615, 41.747841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673897, 31.070015, 42.325821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547787, 31.441544, 42.247959>,  <40.472122, 31.664461, 42.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547787, 31.441544, 42.247959>,  <40.673897, 31.070015, 42.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547787, 31.441544, 42.247959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099959, 0.236473, 0.966483,
		0.943722, 0.285249, -0.167398,
		-0.315273, 0.928824, -0.194652,
		40.453205, 31.720190, 42.189564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111885, 31.499681, 42.584801>,  <40.673897, 31.070015, 42.325821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111885, 31.499681, 42.584801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778034, 31.716064, 42.543308>,  <40.577724, 31.845894, 42.518414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778034, 31.716064, 42.543308>,  <41.111885, 31.499681, 42.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778034, 31.716064, 42.543308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104010, 0.339719, 0.934758,
		0.540905, 0.769386, -0.339805,
		-0.834628, 0.540958, -0.103732,
		40.527645, 31.878351, 42.512188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202251, 32.185596, 42.816612>,  <41.111885, 31.499681, 42.584801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202251, 32.185596, 42.816612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804394, 32.148609, 42.835083>,  <40.565678, 32.126415, 42.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804394, 32.148609, 42.835083>,  <41.202251, 32.185596, 42.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804394, 32.148609, 42.835083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009848, 0.359936, 0.932925,
		-0.102889, 0.928383, -0.357098,
		-0.994644, -0.092471, 0.046176,
		40.506001, 32.120869, 42.848934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070602, 32.820843, 43.202778>,  <41.202251, 32.185596, 42.816612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070602, 32.820843, 43.202778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750324, 32.582233, 43.224834>,  <40.558159, 32.439068, 43.238068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750324, 32.582233, 43.224834>,  <41.070602, 32.820843, 43.202778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750324, 32.582233, 43.224834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091361, 0.212556, 0.972868,
		-0.592063, 0.773934, -0.224692,
		-0.800696, -0.596528, 0.055139,
		40.510117, 32.403275, 43.241375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443867, 33.211903, 43.430992>,  <41.070602, 32.820843, 43.202778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443867, 33.211903, 43.430992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411133, 32.822445, 43.516148>,  <40.391491, 32.588772, 43.567242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411133, 32.822445, 43.516148>,  <40.443867, 33.211903, 43.430992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411133, 32.822445, 43.516148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150586, 0.223234, 0.963063,
		-0.985204, 0.046755, -0.164886,
		-0.081836, -0.973643, 0.212891,
		40.386581, 32.530354, 43.580013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862221, 33.174637, 43.975460>,  <40.443867, 33.211903, 43.430992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862221, 33.174637, 43.975460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061657, 32.829655, 44.010307>,  <40.181316, 32.622665, 44.031216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061657, 32.829655, 44.010307>,  <39.862221, 33.174637, 43.975460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061657, 32.829655, 44.010307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027126, 0.115979, 0.992881,
		-0.866416, -0.492673, 0.081220,
		0.498586, -0.862451, 0.087122,
		40.211231, 32.570919, 44.036446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452396, 32.738449, 44.340611>,  <39.862221, 33.174637, 43.975460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452396, 32.738449, 44.340611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803898, 32.551880, 44.381096>,  <40.014797, 32.439938, 44.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803898, 32.551880, 44.381096>,  <39.452396, 32.738449, 44.340611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803898, 32.551880, 44.381096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142993, -0.054961, 0.988196,
		-0.455358, -0.882851, -0.114993,
		0.878750, -0.466427, 0.101215,
		40.067524, 32.411953, 44.411461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272076, 32.099144, 44.766754>,  <39.452396, 32.738449, 44.340611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272076, 32.099144, 44.766754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662819, 32.177662, 44.800728>,  <39.897266, 32.224773, 44.821110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662819, 32.177662, 44.800728>,  <39.272076, 32.099144, 44.766754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662819, 32.177662, 44.800728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055504, -0.150828, 0.987001,
		0.206554, -0.968875, -0.136443,
		0.976860, 0.196296, 0.084931,
		39.955875, 32.236549, 44.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533943, 31.849676, 45.422630>,  <39.272076, 32.099144, 44.766754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533943, 31.849676, 45.422630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832836, 32.095306, 45.320995>,  <40.012173, 32.242683, 45.260014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832836, 32.095306, 45.320995>,  <39.533943, 31.849676, 45.422630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832836, 32.095306, 45.320995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215167, 0.138188, 0.966751,
		0.628768, -0.777057, -0.028870,
		0.747231, 0.614074, -0.254085,
		40.057007, 32.279530, 45.244770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068741, 31.671936, 45.818306>,  <39.533943, 31.849676, 45.422630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068741, 31.671936, 45.818306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137455, 32.049572, 45.705742>,  <40.178684, 32.276154, 45.638203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137455, 32.049572, 45.705742>,  <40.068741, 31.671936, 45.818306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137455, 32.049572, 45.705742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114160, 0.264650, 0.957563,
		0.978498, -0.196618, -0.062314,
		0.171783, 0.944088, -0.281405,
		40.188992, 32.332798, 45.621319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554989, 31.927675, 46.381241>,  <40.068741, 31.671936, 45.818306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554989, 31.927675, 46.381241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386646, 32.239513, 46.195721>,  <40.285641, 32.426617, 46.084408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386646, 32.239513, 46.195721>,  <40.554989, 31.927675, 46.381241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386646, 32.239513, 46.195721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110379, 0.463475, 0.879208,
		0.900385, 0.421217, -0.109007,
		-0.420860, 0.779594, -0.463799,
		40.260387, 32.473392, 46.056580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805786, 32.536438, 46.820454>,  <40.554989, 31.927675, 46.381241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805786, 32.536438, 46.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489590, 32.656265, 46.606770>,  <40.299870, 32.728161, 46.478561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489590, 32.656265, 46.606770>,  <40.805786, 32.536438, 46.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489590, 32.656265, 46.606770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198633, 0.699679, 0.686290,
		0.579365, 0.648620, -0.493588,
		-0.790494, 0.299569, -0.534207,
		40.252441, 32.746136, 46.446507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836674, 33.216984, 46.860390>,  <40.805786, 32.536438, 46.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836674, 33.216984, 46.860390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452217, 33.162525, 46.764332>,  <40.221542, 33.129852, 46.706696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452217, 33.162525, 46.764332>,  <40.836674, 33.216984, 46.860390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452217, 33.162525, 46.764332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269567, 0.650375, 0.710174,
		0.059500, 0.747314, -0.661802,
		-0.961142, -0.136144, -0.240148,
		40.163876, 33.121681, 46.692287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564205, 33.839252, 46.741325>,  <40.836674, 33.216984, 46.860390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564205, 33.839252, 46.741325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246338, 33.607826, 46.814819>,  <40.055618, 33.468971, 46.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246338, 33.607826, 46.814819>,  <40.564205, 33.839252, 46.741325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246338, 33.607826, 46.814819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284863, 0.622698, 0.728766,
		-0.536056, 0.526787, -0.659651,
		-0.794668, -0.578570, 0.183740,
		40.007938, 33.434254, 46.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069210, 34.402214, 46.851929>,  <40.564205, 33.839252, 46.741325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069210, 34.402214, 46.851929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901276, 34.066238, 46.989471>,  <39.800514, 33.864655, 47.071999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901276, 34.066238, 46.989471>,  <40.069210, 34.402214, 46.851929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901276, 34.066238, 46.989471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322997, 0.492338, 0.808255,
		-0.848180, 0.228269, -0.478000,
		-0.419837, -0.839938, 0.343861,
		39.775326, 33.814259, 47.092628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328659, 34.514111, 47.038929>,  <40.069210, 34.402214, 46.851929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328659, 34.514111, 47.038929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471165, 34.205742, 47.250118>,  <39.556667, 34.020721, 47.376831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471165, 34.205742, 47.250118>,  <39.328659, 34.514111, 47.038929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471165, 34.205742, 47.250118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151726, 0.509818, 0.846797,
		-0.921983, -0.381793, 0.064663,
		0.356268, -0.770921, 0.527971,
		39.578045, 33.974464, 47.408508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940781, 34.597908, 47.648533>,  <39.328659, 34.514111, 47.038929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940781, 34.597908, 47.648533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224667, 34.337845, 47.757046>,  <39.395000, 34.181808, 47.822155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224667, 34.337845, 47.757046>,  <38.940781, 34.597908, 47.648533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224667, 34.337845, 47.757046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148177, 0.514230, 0.844755,
		-0.688727, -0.559339, 0.461297,
		0.709717, -0.650159, 0.271282,
		39.437580, 34.142796, 47.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722260, 34.446487, 48.240120>,  <38.940781, 34.597908, 47.648533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722260, 34.446487, 48.240120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111130, 34.352810, 48.237740>,  <39.344452, 34.296604, 48.236309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111130, 34.352810, 48.237740>,  <38.722260, 34.446487, 48.240120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111130, 34.352810, 48.237740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104013, 0.408722, 0.906713,
		-0.209913, -0.882100, 0.421707,
		0.972172, -0.234193, -0.005954,
		39.402782, 34.282551, 48.235954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988537, 34.191566, 48.867290>,  <38.722260, 34.446487, 48.240120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988537, 34.191566, 48.867290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362026, 34.266727, 48.745407>,  <39.586121, 34.311825, 48.672276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362026, 34.266727, 48.745407>,  <38.988537, 34.191566, 48.867290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362026, 34.266727, 48.745407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223848, 0.357778, 0.906580,
		0.279366, -0.914706, 0.292005,
		0.933727, 0.187903, -0.304706,
		39.642143, 34.323097, 48.653996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397808, 33.970753, 49.442936>,  <38.988537, 34.191566, 48.867290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397808, 33.970753, 49.442936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612316, 34.235962, 49.234009>,  <39.741020, 34.395088, 49.108654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612316, 34.235962, 49.234009>,  <39.397808, 33.970753, 49.442936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612316, 34.235962, 49.234009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409310, 0.336909, 0.847914,
		0.738159, -0.668501, -0.090707,
		0.536271, 0.663023, -0.522316,
		39.773197, 34.434868, 49.077312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062016, 34.010986, 49.679859>,  <39.397808, 33.970753, 49.442936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062016, 34.010986, 49.679859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079643, 34.365105, 49.494686>,  <40.090221, 34.577576, 49.383583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079643, 34.365105, 49.494686>,  <40.062016, 34.010986, 49.679859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079643, 34.365105, 49.494686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484771, 0.386221, 0.784749,
		0.873530, -0.259001, -0.412146,
		0.044071, 0.885298, -0.462931,
		40.092865, 34.630695, 49.355808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844292, 34.199230, 49.676949>,  <40.062016, 34.010986, 49.679859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844292, 34.199230, 49.676949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637028, 34.538563, 49.633411>,  <40.512669, 34.742161, 49.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637028, 34.538563, 49.633411>,  <40.844292, 34.199230, 49.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637028, 34.538563, 49.633411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615908, 0.458404, 0.640721,
		0.593439, 0.264955, -0.760019,
		-0.518159, 0.848330, -0.108847,
		40.481579, 34.793060, 49.600758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340542, 34.739761, 49.738510>,  <40.844292, 34.199230, 49.676949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340542, 34.739761, 49.738510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974247, 34.878464, 49.819691>,  <40.754471, 34.961685, 49.868401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974247, 34.878464, 49.819691>,  <41.340542, 34.739761, 49.738510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974247, 34.878464, 49.819691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346863, 0.427362, 0.834894,
		0.202767, 0.834940, -0.511626,
		-0.915735, 0.346753, 0.202955,
		40.699528, 34.982491, 49.880577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431747, 35.426872, 49.878811>,  <41.340542, 34.739761, 49.738510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431747, 35.426872, 49.878811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081795, 35.336182, 50.050007>,  <40.871822, 35.281765, 50.152725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081795, 35.336182, 50.050007>,  <41.431747, 35.426872, 49.878811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081795, 35.336182, 50.050007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372805, 0.248880, 0.893910,
		-0.309195, 0.941622, -0.133214,
		-0.874880, -0.226730, 0.427993,
		40.819332, 35.268162, 50.178406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270447, 35.999584, 50.270699>,  <41.431747, 35.426872, 49.878811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270447, 35.999584, 50.270699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060242, 35.705822, 50.442501>,  <40.934116, 35.529564, 50.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060242, 35.705822, 50.442501>,  <41.270447, 35.999584, 50.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060242, 35.705822, 50.442501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174738, 0.400908, 0.899300,
		-0.832647, 0.547647, -0.082354,
		-0.525515, -0.734408, 0.429509,
		40.902588, 35.485500, 50.571354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189991, 36.507790, 50.787411>,  <41.270447, 35.999584, 50.270699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189991, 36.507790, 50.787411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232105, 36.902531, 50.738361>,  <41.257374, 37.139374, 50.708931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232105, 36.902531, 50.738361>,  <41.189991, 36.507790, 50.787411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232105, 36.902531, 50.738361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362677, -0.076710, -0.928752,
		-0.925948, 0.142259, 0.349832,
		0.105288, 0.986852, -0.122623,
		41.263691, 37.198586, 50.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570805, 36.784557, 50.377621>,  <41.189991, 36.507790, 50.787411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570805, 36.784557, 50.377621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859707, 37.055000, 50.319344>,  <41.033047, 37.217266, 50.284378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859707, 37.055000, 50.319344>,  <40.570805, 36.784557, 50.377621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859707, 37.055000, 50.319344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231313, 0.037609, -0.972152,
		-0.651798, 0.735845, 0.183555,
		0.722256, 0.676105, -0.145697,
		41.076385, 37.257832, 50.275635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379761, 37.207825, 49.765697>,  <40.570805, 36.784557, 50.377621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379761, 37.207825, 49.765697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770264, 37.292637, 49.783379>,  <41.004566, 37.343525, 49.793987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770264, 37.292637, 49.783379>,  <40.379761, 37.207825, 49.765697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770264, 37.292637, 49.783379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053100, -0.036442, -0.997924,
		-0.209983, 0.976583, -0.046836,
		0.976262, 0.212034, 0.044204,
		41.063141, 37.356247, 49.796638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544529, 37.824234, 49.287468>,  <40.379761, 37.207825, 49.765697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544529, 37.824234, 49.287468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881912, 37.617317, 49.345398>,  <41.084343, 37.493168, 49.380157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881912, 37.617317, 49.345398>,  <40.544529, 37.824234, 49.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881912, 37.617317, 49.345398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137536, -0.052665, -0.989096,
		0.519283, 0.854184, 0.026726,
		0.843462, -0.517296, 0.144829,
		41.134953, 37.462128, 49.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043068, 38.128574, 48.794998>,  <40.544529, 37.824234, 49.287468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043068, 38.128574, 48.794998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167259, 37.764454, 48.904503>,  <41.241776, 37.545982, 48.970207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167259, 37.764454, 48.904503>,  <41.043068, 38.128574, 48.794998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167259, 37.764454, 48.904503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213755, -0.213763, -0.953213,
		0.926234, 0.354474, 0.128213,
		0.310482, -0.910304, 0.273766,
		41.260403, 37.491364, 48.986633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484341, 38.020576, 48.289894>,  <41.043068, 38.128574, 48.794998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484341, 38.020576, 48.289894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413853, 37.648552, 48.418850>,  <41.371559, 37.425339, 48.496223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413853, 37.648552, 48.418850>,  <41.484341, 38.020576, 48.289894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413853, 37.648552, 48.418850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114121, -0.344607, -0.931785,
		0.977714, -0.127404, 0.166865,
		-0.176216, -0.930062, 0.322387,
		41.360989, 37.369534, 48.515568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879204, 37.602318, 47.822861>,  <41.484341, 38.020576, 48.289894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879204, 37.602318, 47.822861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629578, 37.340282, 47.993225>,  <41.479801, 37.183064, 48.095444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629578, 37.340282, 47.993225>,  <41.879204, 37.602318, 47.822861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629578, 37.340282, 47.993225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134408, -0.446958, -0.884400,
		0.769723, -0.609171, 0.190884,
		-0.624068, -0.655087, 0.425912,
		41.442356, 37.143757, 48.120998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125240, 36.995052, 47.517857>,  <41.879204, 37.602318, 47.822861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125240, 36.995052, 47.517857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761539, 36.929123, 47.670742>,  <41.543320, 36.889565, 47.762474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761539, 36.929123, 47.670742>,  <42.125240, 36.995052, 47.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761539, 36.929123, 47.670742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167805, -0.695172, -0.698983,
		0.380912, -0.699692, 0.604432,
		-0.909257, -0.164824, 0.382211,
		41.488762, 36.879677, 47.785404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034443, 36.251743, 47.534130>,  <42.125240, 36.995052, 47.517857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034443, 36.251743, 47.534130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663887, 36.401119, 47.553516>,  <41.441555, 36.490746, 47.565147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663887, 36.401119, 47.553516>,  <42.034443, 36.251743, 47.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663887, 36.401119, 47.553516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322059, -0.718983, -0.615907,
		-0.195159, -0.586178, 0.786326,
		-0.926386, 0.373443, 0.048468,
		41.385971, 36.513153, 47.568058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617687, 35.712608, 47.343685>,  <42.034443, 36.251743, 47.534130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617687, 35.712608, 47.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377911, 36.027580, 47.286251>,  <41.234043, 36.216564, 47.251789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377911, 36.027580, 47.286251>,  <41.617687, 35.712608, 47.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377911, 36.027580, 47.286251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507241, -0.512483, -0.692869,
		-0.619173, -0.342503, 0.706623,
		-0.599442, 0.787434, -0.143584,
		41.198078, 36.263809, 47.243176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873653, 35.522511, 47.388191>,  <41.617687, 35.712608, 47.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873653, 35.522511, 47.388191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888176, 35.858112, 47.171028>,  <40.896889, 36.059475, 47.040730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888176, 35.858112, 47.171028>,  <40.873653, 35.522511, 47.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888176, 35.858112, 47.171028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263030, -0.516086, -0.815151,
		-0.964104, 0.172399, 0.201945,
		0.036310, 0.839008, -0.542906,
		40.899071, 36.109814, 47.008156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543755, 35.362637, 46.781601>,  <40.873653, 35.522511, 47.388191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543755, 35.362637, 46.781601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702816, 35.710209, 46.663734>,  <40.798252, 35.918751, 46.593014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702816, 35.710209, 46.663734>,  <40.543755, 35.362637, 46.781601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702816, 35.710209, 46.663734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007259, -0.318160, -0.948009,
		-0.917507, 0.379119, -0.120210,
		0.397654, 0.868932, -0.294666,
		40.822113, 35.970890, 46.575336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118118, 35.650623, 46.333153>,  <40.543755, 35.362637, 46.781601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118118, 35.650623, 46.333153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478905, 35.793034, 46.235416>,  <40.695377, 35.878479, 46.176773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478905, 35.793034, 46.235416>,  <40.118118, 35.650623, 46.333153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478905, 35.793034, 46.235416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082595, -0.413166, -0.906902,
		-0.423837, 0.838175, -0.343255,
		0.901964, 0.356028, -0.244344,
		40.749493, 35.899841, 46.162113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022453, 36.040977, 45.703655>,  <40.118118, 35.650623, 46.333153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022453, 36.040977, 45.703655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403290, 35.918659, 45.703278>,  <40.631794, 35.845268, 45.703049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403290, 35.918659, 45.703278>,  <40.022453, 36.040977, 45.703655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403290, 35.918659, 45.703278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101217, -0.312213, -0.944605,
		0.288564, 0.899450, -0.328209,
		0.952096, -0.305799, -0.000946,
		40.688919, 35.826920, 45.702995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302711, 36.421402, 45.114193>,  <40.022453, 36.040977, 45.703655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302711, 36.421402, 45.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552959, 36.115009, 45.173340>,  <40.703110, 35.931171, 45.208828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552959, 36.115009, 45.173340>,  <40.302711, 36.421402, 45.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552959, 36.115009, 45.173340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016878, -0.202785, -0.979078,
		0.779944, 0.610037, -0.139795,
		0.625622, -0.765985, 0.147865,
		40.740646, 35.885212, 45.217701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679214, 36.356987, 44.502056>,  <40.302711, 36.421402, 45.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679214, 36.356987, 44.502056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755661, 36.006069, 44.678162>,  <40.801529, 35.795517, 44.783825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755661, 36.006069, 44.678162>,  <40.679214, 36.356987, 44.502056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755661, 36.006069, 44.678162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318762, -0.368749, -0.873164,
		0.928367, 0.307213, 0.209175,
		0.191114, -0.877294, 0.440263,
		40.812996, 35.742882, 44.810242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421516, 36.154476, 44.336456>,  <40.679214, 36.356987, 44.502056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421516, 36.154476, 44.336456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198330, 35.836918, 44.433121>,  <41.064419, 35.646381, 44.491119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198330, 35.836918, 44.433121>,  <41.421516, 36.154476, 44.336456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198330, 35.836918, 44.433121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257226, -0.442318, -0.859180,
		0.788995, -0.417227, 0.451009,
		-0.557962, -0.793899, 0.241665,
		41.030941, 35.598747, 44.505619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909195, 35.614960, 44.162529>,  <41.421516, 36.154476, 44.336456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909195, 35.614960, 44.162529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525269, 35.503235, 44.173397>,  <41.294914, 35.436199, 44.179916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525269, 35.503235, 44.173397>,  <41.909195, 35.614960, 44.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525269, 35.503235, 44.173397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122026, -0.502567, -0.855883,
		0.252716, -0.818174, 0.516455,
		-0.959815, -0.279316, 0.027168,
		41.237324, 35.419441, 44.181549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979858, 34.988968, 43.914036>,  <41.909195, 35.614960, 44.162529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979858, 34.988968, 43.914036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586681, 35.058300, 43.889469>,  <41.350773, 35.099899, 43.874729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586681, 35.058300, 43.889469>,  <41.979858, 34.988968, 43.914036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586681, 35.058300, 43.889469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037752, -0.517091, -0.855097,
		-0.179975, -0.838196, 0.514817,
		-0.982947, 0.173331, -0.061420,
		41.291798, 35.110298, 43.871044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621716, 34.377468, 43.790016>,  <41.979858, 34.988968, 43.914036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621716, 34.377468, 43.790016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357204, 34.643909, 43.652023>,  <41.198498, 34.803776, 43.569225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357204, 34.643909, 43.652023>,  <41.621716, 34.377468, 43.790016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357204, 34.643909, 43.652023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015470, -0.471907, -0.881513,
		-0.749981, -0.577588, 0.322366,
		-0.661278, 0.666105, -0.344986,
		41.158821, 34.843742, 43.548527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961773, 33.967979, 43.493382>,  <41.621716, 34.377468, 43.790016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961773, 33.967979, 43.493382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974838, 34.344944, 43.360233>,  <40.982677, 34.571121, 43.280346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974838, 34.344944, 43.360233>,  <40.961773, 33.967979, 43.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974838, 34.344944, 43.360233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183444, -0.321735, -0.928889,
		-0.982487, 0.091402, 0.162371,
		0.032662, 0.942408, -0.332868,
		40.984638, 34.627666, 43.260372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434227, 33.994343, 43.047428>,  <40.961773, 33.967979, 43.493382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434227, 33.994343, 43.047428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688946, 34.293911, 42.974106>,  <40.841778, 34.473652, 42.930111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688946, 34.293911, 42.974106>,  <40.434227, 33.994343, 43.047428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688946, 34.293911, 42.974106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104287, -0.319219, -0.941925,
		-0.763945, 0.580700, -0.281381,
		0.636798, 0.748924, -0.183306,
		40.879986, 34.518589, 42.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203400, 34.239079, 42.487644>,  <40.434227, 33.994343, 43.047428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203400, 34.239079, 42.487644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576229, 34.383572, 42.476685>,  <40.799927, 34.470268, 42.470108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576229, 34.383572, 42.476685>,  <40.203400, 34.239079, 42.487644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576229, 34.383572, 42.476685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039753, -0.177163, -0.983378,
		-0.360080, 0.915492, -0.179489,
		0.932074, 0.361230, -0.027400,
		40.855850, 34.491940, 42.468464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250134, 34.664970, 41.870255>,  <40.203400, 34.239079, 42.487644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250134, 34.664970, 41.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633835, 34.593075, 41.957447>,  <40.864056, 34.549938, 42.009762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633835, 34.593075, 41.957447>,  <40.250134, 34.664970, 41.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633835, 34.593075, 41.957447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184580, -0.185436, -0.965165,
		0.213903, 0.966078, -0.144704,
		0.959258, -0.179742, 0.217984,
		40.921612, 34.539154, 42.022842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612675, 34.946899, 41.304794>,  <40.250134, 34.664970, 41.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612675, 34.946899, 41.304794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861637, 34.682384, 41.472275>,  <41.011013, 34.523678, 41.572765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861637, 34.682384, 41.472275>,  <40.612675, 34.946899, 41.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861637, 34.682384, 41.472275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303029, -0.289638, -0.907900,
		0.721653, 0.691962, 0.020116,
		0.622406, -0.661285, 0.418703,
		41.048359, 34.483997, 41.597885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279400, 35.065311, 41.029461>,  <40.612675, 34.946899, 41.304794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279400, 35.065311, 41.029461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329342, 34.692616, 41.165852>,  <41.359306, 34.468998, 41.247684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329342, 34.692616, 41.165852>,  <41.279400, 35.065311, 41.029461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329342, 34.692616, 41.165852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481612, -0.243547, -0.841864,
		0.867445, 0.269333, 0.418330,
		0.124858, -0.931743, 0.340978,
		41.366798, 34.413094, 41.268147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010834, 34.947266, 41.035419>,  <41.279400, 35.065311, 41.029461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010834, 34.947266, 41.035419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834057, 34.588848, 41.018459>,  <41.727989, 34.373798, 41.008282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834057, 34.588848, 41.018459>,  <42.010834, 34.947266, 41.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834057, 34.588848, 41.018459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520415, -0.217600, -0.825723,
		0.730655, -0.386989, 0.562480,
		-0.441941, -0.896041, -0.042404,
		41.701473, 34.320034, 41.005737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557327, 34.466881, 40.806938>,  <42.010834, 34.947266, 41.035419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557327, 34.466881, 40.806938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196938, 34.304352, 40.746082>,  <41.980705, 34.206837, 40.709568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196938, 34.304352, 40.746082>,  <42.557327, 34.466881, 40.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196938, 34.304352, 40.746082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298327, -0.325559, -0.897225,
		0.315030, -0.853765, 0.414537,
		-0.900976, -0.406320, -0.152140,
		41.926643, 34.182457, 40.700439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801018, 33.880756, 40.378944>,  <42.557327, 34.466881, 40.806938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801018, 33.880756, 40.378944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408329, 33.933128, 40.323685>,  <42.172718, 33.964554, 40.290527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408329, 33.933128, 40.323685>,  <42.801018, 33.880756, 40.378944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408329, 33.933128, 40.323685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129143, -0.075019, -0.988784,
		-0.139829, -0.988549, 0.056739,
		-0.981718, 0.130933, -0.138154,
		42.113815, 33.972408, 40.282238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646038, 33.536713, 39.811417>,  <42.801018, 33.880756, 40.378944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646038, 33.536713, 39.811417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326088, 33.776741, 39.807343>,  <42.134117, 33.920757, 39.804897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326088, 33.776741, 39.807343>,  <42.646038, 33.536713, 39.811417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326088, 33.776741, 39.807343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042175, -0.073136, -0.996430,
		-0.598677, -0.796594, 0.083808,
		-0.799879, 0.600074, -0.010189,
		42.086124, 33.956764, 39.804287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191612, 33.179497, 39.317204>,  <42.646038, 33.536713, 39.811417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191612, 33.179497, 39.317204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082798, 33.562904, 39.351250>,  <42.017509, 33.792950, 39.371677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082798, 33.562904, 39.351250>,  <42.191612, 33.179497, 39.317204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082798, 33.562904, 39.351250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065044, 0.069931, -0.995429,
		-0.960086, -0.276330, 0.043322,
		-0.272038, 0.958515, 0.085113,
		42.001186, 33.850460, 39.376785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670959, 33.316696, 38.779320>,  <42.191612, 33.179497, 39.317204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670959, 33.316696, 38.779320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764404, 33.693378, 38.876167>,  <41.820473, 33.919388, 38.934277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764404, 33.693378, 38.876167>,  <41.670959, 33.316696, 38.779320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764404, 33.693378, 38.876167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186740, 0.287827, -0.939299,
		-0.954229, 0.174221, 0.243094,
		0.233614, 0.941702, 0.242119,
		41.834488, 33.975887, 38.948803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167046, 33.778908, 38.495670>,  <41.670959, 33.316696, 38.779320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167046, 33.778908, 38.495670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498917, 33.998474, 38.536335>,  <41.698040, 34.130215, 38.560734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498917, 33.998474, 38.536335>,  <41.167046, 33.778908, 38.495670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498917, 33.998474, 38.536335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217924, 0.486123, -0.846282,
		-0.513953, 0.679985, 0.522945,
		0.829675, 0.548912, 0.101659,
		41.747818, 34.163147, 38.566833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975613, 34.492813, 38.503716>,  <41.167046, 33.778908, 38.495670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975613, 34.492813, 38.503716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359692, 34.467075, 38.394985>,  <41.590137, 34.451633, 38.329746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359692, 34.467075, 38.394985>,  <40.975613, 34.492813, 38.503716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359692, 34.467075, 38.394985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175891, 0.616692, -0.767303,
		0.217003, 0.784571, 0.580826,
		0.960194, -0.064345, -0.271823,
		41.647751, 34.447773, 38.313438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048691, 34.930771, 38.016777>,  <40.975613, 34.492813, 38.503716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048691, 34.930771, 38.016777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422901, 34.797169, 37.970768>,  <41.647427, 34.717007, 37.943161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422901, 34.797169, 37.970768>,  <41.048691, 34.930771, 38.016777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422901, 34.797169, 37.970768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054941, 0.459221, -0.886621,
		0.348961, 0.823137, 0.447964,
		0.935525, -0.334008, -0.115026,
		41.703560, 34.696968, 37.936260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530643, 35.482227, 37.881756>,  <41.048691, 34.930771, 38.016777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530643, 35.482227, 37.881756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663292, 35.141125, 37.720345>,  <41.742882, 34.936462, 37.623497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663292, 35.141125, 37.720345>,  <41.530643, 35.482227, 37.881756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663292, 35.141125, 37.720345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037467, 0.415491, -0.908825,
		0.942668, 0.316505, 0.105836,
		0.331621, -0.852755, -0.403529,
		41.762779, 34.885300, 37.599285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118752, 35.606098, 37.370434>,  <41.530643, 35.482227, 37.881756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118752, 35.606098, 37.370434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006924, 35.242138, 37.247849>,  <41.939827, 35.023762, 37.174297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006924, 35.242138, 37.247849>,  <42.118752, 35.606098, 37.370434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006924, 35.242138, 37.247849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138179, 0.277738, -0.950667,
		0.950131, -0.308120, 0.048084,
		-0.279565, -0.909903, -0.306463,
		41.923054, 34.969166, 37.155910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480324, 35.537834, 36.690357>,  <42.118752, 35.606098, 37.370434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480324, 35.537834, 36.690357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168190, 35.287689, 36.690037>,  <41.980911, 35.137600, 36.689846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168190, 35.287689, 36.690037>,  <42.480324, 35.537834, 36.690357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168190, 35.287689, 36.690037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126629, 0.159258, -0.979082,
		0.612411, -0.763908, -0.203463,
		-0.780332, -0.625365, -0.000799,
		41.934090, 35.100079, 36.689796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646431, 35.004017, 36.219017>,  <42.480324, 35.537834, 36.690357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646431, 35.004017, 36.219017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247242, 34.995533, 36.243053>,  <42.007729, 34.990444, 36.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247242, 34.995533, 36.243053>,  <42.646431, 35.004017, 36.219017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247242, 34.995533, 36.243053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062851, 0.172343, -0.983030,
		0.010488, -0.984809, -0.173325,
		-0.997968, -0.021204, 0.060089,
		41.947853, 34.989170, 36.261082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380497, 34.627808, 35.686138>,  <42.646431, 35.004017, 36.219017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380497, 34.627808, 35.686138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096695, 34.898216, 35.765732>,  <41.926414, 35.060463, 35.813488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096695, 34.898216, 35.765732>,  <42.380497, 34.627808, 35.686138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096695, 34.898216, 35.765732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144013, 0.137307, -0.980004,
		-0.689826, -0.723975, -0.000065,
		-0.709507, 0.676023, 0.198979,
		41.883842, 35.101025, 35.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674557, 34.458157, 35.275383>,  <42.380497, 34.627808, 35.686138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674557, 34.458157, 35.275383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687504, 34.844036, 35.379925>,  <41.695271, 35.075565, 35.442650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687504, 34.844036, 35.379925>,  <41.674557, 34.458157, 35.275383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687504, 34.844036, 35.379925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314203, 0.258056, -0.913610,
		-0.948804, -0.052546, 0.311465,
		0.032369, 0.964700, 0.261355,
		41.697216, 35.133446, 35.458332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156750, 34.603474, 34.930393>,  <41.674557, 34.458157, 35.275383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156750, 34.603474, 34.930393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187706, 34.241611, 34.762768>,  <41.206280, 34.024494, 34.662193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187706, 34.241611, 34.762768>,  <41.156750, 34.603474, 34.930393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187706, 34.241611, 34.762768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996913, -0.064645, -0.044547,
		0.013210, 0.421219, -0.906863,
		0.077388, -0.904652, -0.419065,
		41.210922, 33.970215, 34.637047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730930, 34.550526, 34.338226>,  <41.156750, 34.603474, 34.930393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730930, 34.550526, 34.338226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794716, 34.185139, 34.487976>,  <40.832985, 33.965908, 34.577824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794716, 34.185139, 34.487976>,  <40.730930, 34.550526, 34.338226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794716, 34.185139, 34.487976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974759, -0.205717, -0.086754,
		0.156261, -0.351088, -0.923211,
		0.159462, -0.913465, 0.374372,
		40.842556, 33.911098, 34.600288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532703, 33.952293, 33.815712>,  <40.730930, 34.550526, 34.338226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532703, 33.952293, 33.815712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513767, 33.819504, 34.192551>,  <40.502407, 33.739830, 34.418655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513767, 33.819504, 34.192551>,  <40.532703, 33.952293, 33.815712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513767, 33.819504, 34.192551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928178, -0.333904, -0.164299,
		0.369114, -0.882214, -0.292324,
		-0.047339, -0.331974, 0.942100,
		40.499565, 33.719913, 34.475182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382042, 33.537189, 33.261356>,  <40.532703, 33.952293, 33.815712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382042, 33.537189, 33.261356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516808, 33.356487, 32.930923>,  <40.597668, 33.248066, 32.732666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516808, 33.356487, 32.930923>,  <40.382042, 33.537189, 33.261356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516808, 33.356487, 32.930923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080726, 0.860283, -0.503385,
		0.938069, 0.236282, 0.253371,
		0.336911, -0.451756, -0.826079,
		40.617882, 33.220959, 32.683098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039097, 33.949196, 32.903263>,  <40.382042, 33.537189, 33.261356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039097, 33.949196, 32.903263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795029, 33.741032, 32.664310>,  <40.648590, 33.616131, 32.520939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795029, 33.741032, 32.664310>,  <41.039097, 33.949196, 32.903263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795029, 33.741032, 32.664310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060367, 0.721281, -0.690006,
		0.789970, -0.457081, -0.408686,
		-0.610166, -0.520413, -0.597383,
		40.611977, 33.584908, 32.485096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339024, 34.052757, 32.243416>,  <41.039097, 33.949196, 32.903263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339024, 34.052757, 32.243416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962643, 33.922867, 32.205124>,  <40.736813, 33.844933, 32.182148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962643, 33.922867, 32.205124>,  <41.339024, 34.052757, 32.243416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962643, 33.922867, 32.205124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123629, 0.592845, -0.795771,
		0.315160, -0.736946, -0.597983,
		-0.940951, -0.324723, -0.095733,
		40.680359, 33.825451, 32.176403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898788, 34.026546, 32.858303>,  <41.339024, 34.052757, 32.243416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898788, 34.026546, 32.858303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295418, 34.027912, 32.806503>,  <42.533394, 34.028732, 32.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295418, 34.027912, 32.806503>,  <41.898788, 34.026546, 32.858303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295418, 34.027912, 32.806503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117494, 0.444699, -0.887940,
		0.054552, 0.895674, 0.441353,
		0.991574, 0.003418, -0.129496,
		42.592892, 34.028938, 32.767654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045567, 34.746998, 32.737846>,  <41.898788, 34.026546, 32.858303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045567, 34.746998, 32.737846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349308, 34.535988, 32.585476>,  <42.531551, 34.409382, 32.494053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349308, 34.535988, 32.585476>,  <42.045567, 34.746998, 32.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349308, 34.535988, 32.585476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101360, 0.482377, -0.870080,
		0.642739, 0.699306, 0.312823,
		0.759350, -0.527526, -0.380924,
		42.577114, 34.377731, 32.471199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389431, 35.192345, 32.404400>,  <42.045567, 34.746998, 32.737846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389431, 35.192345, 32.404400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571281, 34.873703, 32.245029>,  <42.680389, 34.682518, 32.149406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571281, 34.873703, 32.245029>,  <42.389431, 35.192345, 32.404400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571281, 34.873703, 32.245029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060289, 0.418782, -0.906083,
		0.888642, 0.435946, 0.142361,
		0.454622, -0.796601, -0.398430,
		42.707668, 34.634724, 32.125500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885307, 35.457275, 31.902380>,  <42.389431, 35.192345, 32.404400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885307, 35.457275, 31.902380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811775, 35.077164, 31.801842>,  <42.767654, 34.849098, 31.741518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811775, 35.077164, 31.801842>,  <42.885307, 35.457275, 31.902380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811775, 35.077164, 31.801842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096200, 0.271868, -0.957514,
		0.978239, -0.151840, -0.141394,
		-0.183830, -0.950280, -0.251345,
		42.756626, 34.792080, 31.726439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305981, 35.338009, 31.257946>,  <42.885307, 35.457275, 31.902380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305981, 35.338009, 31.257946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018517, 35.059883, 31.254717>,  <42.846039, 34.893009, 31.252779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018517, 35.059883, 31.254717>,  <43.305981, 35.338009, 31.257946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018517, 35.059883, 31.254717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212043, 0.230190, -0.949763,
		0.662243, -0.680845, -0.312865,
		-0.718660, -0.695315, -0.008073,
		42.802917, 34.851288, 31.252295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446106, 34.984749, 30.760008>,  <43.305981, 35.338009, 31.257946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446106, 34.984749, 30.760008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065056, 34.869289, 30.798342>,  <42.836426, 34.800014, 30.821342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065056, 34.869289, 30.798342>,  <43.446106, 34.984749, 30.760008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065056, 34.869289, 30.798342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208707, 0.391194, -0.896331,
		0.221235, -0.873870, -0.432904,
		-0.952626, -0.288650, 0.095837,
		42.779266, 34.782696, 30.827093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253483, 34.752609, 30.038048>,  <43.446106, 34.984749, 30.760008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253483, 34.752609, 30.038048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911652, 34.823406, 30.233339>,  <42.706551, 34.865883, 30.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911652, 34.823406, 30.233339>,  <43.253483, 34.752609, 30.038048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911652, 34.823406, 30.233339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272463, 0.647540, -0.711657,
		-0.442104, -0.741193, -0.505151,
		-0.854581, 0.176991, 0.488227,
		42.655277, 34.876503, 30.379808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770451, 34.655739, 29.515974>,  <43.253483, 34.752609, 30.038048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770451, 34.655739, 29.515974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582764, 34.866989, 29.799076>,  <42.470150, 34.993740, 29.968937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582764, 34.866989, 29.799076>,  <42.770451, 34.655739, 29.515974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582764, 34.866989, 29.799076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442922, 0.552613, -0.706001,
		-0.763973, -0.644749, -0.025377,
		-0.469218, 0.528126, 0.707756,
		42.441998, 35.025429, 30.011402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031715, 34.844574, 29.321793>,  <42.770451, 34.655739, 29.515974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031715, 34.844574, 29.321793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156307, 35.116951, 29.586912>,  <42.231064, 35.280376, 29.745983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156307, 35.116951, 29.586912>,  <42.031715, 34.844574, 29.321793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156307, 35.116951, 29.586912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401882, 0.726447, -0.557463,
		-0.861086, -0.092727, 0.499933,
		0.311483, 0.680938, 0.662799,
		42.249752, 35.321232, 29.785751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375217, 35.276783, 29.436953>,  <42.031715, 34.844574, 29.321793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375217, 35.276783, 29.436953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683517, 35.487762, 29.579912>,  <41.868500, 35.614349, 29.665688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683517, 35.487762, 29.579912>,  <41.375217, 35.276783, 29.436953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683517, 35.487762, 29.579912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359168, 0.823019, -0.440042,
		-0.526247, 0.210798, 0.823789,
		0.770754, 0.527450, 0.357400,
		41.914745, 35.645996, 29.687132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067066, 35.851177, 29.791111>,  <41.375217, 35.276783, 29.436953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067066, 35.851177, 29.791111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429920, 35.941349, 29.648960>,  <41.647633, 35.995453, 29.563669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429920, 35.941349, 29.648960>,  <41.067066, 35.851177, 29.791111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429920, 35.941349, 29.648960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406872, 0.685561, -0.603707,
		0.107539, 0.692235, 0.713615,
		0.907133, 0.225428, -0.355375,
		41.702061, 36.008976, 29.542347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863525, 36.513664, 29.504192>,  <41.067066, 35.851177, 29.791111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863525, 36.513664, 29.504192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242405, 36.468693, 29.384079>,  <41.469734, 36.441711, 29.312010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242405, 36.468693, 29.384079>,  <40.863525, 36.513664, 29.504192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242405, 36.468693, 29.384079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033218, 0.897071, -0.440636,
		0.318916, 0.427346, 0.845972,
		0.947201, -0.112425, -0.300286,
		41.526566, 36.434967, 29.293993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202930, 37.139523, 29.608692>,  <40.863525, 36.513664, 29.504192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202930, 37.139523, 29.608692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436199, 36.936306, 29.355141>,  <41.576160, 36.814377, 29.203009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436199, 36.936306, 29.355141>,  <41.202930, 37.139523, 29.608692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436199, 36.936306, 29.355141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205817, 0.847251, -0.489699,
		0.785842, 0.155117, 0.598658,
		0.583174, -0.508040, -0.633880,
		41.611153, 36.783894, 29.164976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830654, 37.448959, 29.662537>,  <41.202930, 37.139523, 29.608692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830654, 37.448959, 29.662537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802494, 37.260300, 29.310947>,  <41.785599, 37.147106, 29.099995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802494, 37.260300, 29.310947>,  <41.830654, 37.448959, 29.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802494, 37.260300, 29.310947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140845, 0.867632, -0.476841,
		0.987526, -0.157367, 0.005350,
		-0.070398, -0.471647, -0.878973,
		41.781376, 37.118805, 29.047255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444344, 37.653168, 29.202694>,  <41.830654, 37.448959, 29.662537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444344, 37.653168, 29.202694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139732, 37.545898, 28.966675>,  <41.956966, 37.481537, 28.825064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139732, 37.545898, 28.966675>,  <42.444344, 37.653168, 29.202694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139732, 37.545898, 28.966675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245783, 0.722899, -0.645762,
		0.599718, -0.636791, -0.484598,
		-0.761531, -0.268169, -0.590048,
		41.911274, 37.465446, 28.789660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650192, 37.747013, 28.521908>,  <42.444344, 37.653168, 29.202694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650192, 37.747013, 28.521908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254726, 37.741348, 28.462130>,  <42.017445, 37.737949, 28.426264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254726, 37.741348, 28.462130>,  <42.650192, 37.747013, 28.521908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254726, 37.741348, 28.462130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121544, 0.508720, -0.852309,
		0.088096, -0.860815, -0.501234,
		-0.988669, -0.014163, -0.149443,
		41.958126, 37.737099, 28.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562038, 37.623970, 27.756447>,  <42.650192, 37.747013, 28.521908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562038, 37.623970, 27.756447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244598, 37.801491, 27.922935>,  <42.054134, 37.908005, 28.022829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244598, 37.801491, 27.922935>,  <42.562038, 37.623970, 27.756447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244598, 37.801491, 27.922935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047512, 0.727193, -0.684786,
		-0.606582, -0.523671, -0.598187,
		-0.793600, 0.443801, 0.416222,
		42.006519, 37.934631, 28.047802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257290, 37.866699, 27.118986>,  <42.562038, 37.623970, 27.756447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257290, 37.866699, 27.118986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062706, 38.061710, 27.409000>,  <41.945957, 38.178719, 27.583010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062706, 38.061710, 27.409000>,  <42.257290, 37.866699, 27.118986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062706, 38.061710, 27.409000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041568, 0.841816, -0.538162,
		-0.872716, -0.231653, -0.429772,
		-0.486455, 0.487527, 0.725037,
		41.916771, 38.207970, 27.626511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714630, 38.398029, 26.790442>,  <42.257290, 37.866699, 27.118986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714630, 38.398029, 26.790442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796467, 38.520622, 27.162294>,  <41.845570, 38.594177, 27.385406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796467, 38.520622, 27.162294>,  <41.714630, 38.398029, 26.790442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796467, 38.520622, 27.162294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019224, 0.950794, -0.309226,
		-0.978659, 0.045393, 0.200414,
		0.204590, 0.306480, 0.929631,
		41.857845, 38.612568, 27.441183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340637, 39.034172, 26.929953>,  <41.714630, 38.398029, 26.790442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340637, 39.034172, 26.929953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614574, 39.066193, 27.219664>,  <41.778938, 39.085403, 27.393490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614574, 39.066193, 27.219664>,  <41.340637, 39.034172, 26.929953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614574, 39.066193, 27.219664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067829, 0.982629, -0.172742,
		-0.725524, 0.167429, 0.667520,
		0.684846, 0.080051, 0.724277,
		41.820026, 39.090206, 27.436947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142826, 39.549759, 27.354292>,  <41.340637, 39.034172, 26.929953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142826, 39.549759, 27.354292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541241, 39.524860, 27.379707>,  <41.780289, 39.509922, 27.394957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541241, 39.524860, 27.379707>,  <41.142826, 39.549759, 27.354292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541241, 39.524860, 27.379707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074030, 0.976134, -0.204163,
		-0.049313, 0.208058, 0.976873,
		0.996036, -0.062250, 0.063538,
		41.840050, 39.506184, 27.398769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430973, 40.055866, 27.807732>,  <41.142826, 39.549759, 27.354292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430973, 40.055866, 27.807732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730228, 39.967499, 27.557459>,  <41.909782, 39.914478, 27.407295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730228, 39.967499, 27.557459>,  <41.430973, 40.055866, 27.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730228, 39.967499, 27.557459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255152, 0.966228, -0.036065,
		0.612521, -0.132663, 0.779243,
		0.748142, -0.220916, -0.625684,
		41.954670, 39.901222, 27.369753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076256, 40.300133, 28.094528>,  <41.430973, 40.055866, 27.807732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076256, 40.300133, 28.094528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086594, 40.314285, 27.694912>,  <42.092796, 40.322777, 27.455143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086594, 40.314285, 27.694912>,  <42.076256, 40.300133, 28.094528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086594, 40.314285, 27.694912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132715, 0.990406, 0.038510,
		0.990817, -0.133583, 0.020910,
		0.025854, 0.035381, -0.999039,
		42.094349, 40.324902, 27.395201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162354, 40.954006, 28.261652>,  <42.076256, 40.300133, 28.094528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162354, 40.954006, 28.261652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260288, 41.329033, 28.162838>,  <42.319050, 41.554050, 28.103550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260288, 41.329033, 28.162838>,  <42.162354, 40.954006, 28.261652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260288, 41.329033, 28.162838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175718, -0.293477, -0.939678,
		-0.953509, 0.186656, -0.236601,
		0.244833, 0.937566, -0.247034,
		42.333736, 41.610302, 28.088728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820744, 41.239315, 27.593838>,  <42.162354, 40.954006, 28.261652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820744, 41.239315, 27.593838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182232, 41.389103, 27.676849>,  <42.399124, 41.478977, 27.726656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182232, 41.389103, 27.676849>,  <41.820744, 41.239315, 27.593838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182232, 41.389103, 27.676849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370221, -0.440086, -0.818084,
		-0.215020, 0.816146, -0.536351,
		0.903716, 0.374472, 0.207527,
		42.453346, 41.501446, 27.739107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197742, 41.644421, 27.032822>,  <41.820744, 41.239315, 27.593838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197742, 41.644421, 27.032822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499557, 41.497646, 27.250460>,  <42.680645, 41.409580, 27.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499557, 41.497646, 27.250460>,  <42.197742, 41.644421, 27.032822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499557, 41.497646, 27.250460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474584, -0.267537, -0.838567,
		0.453265, 0.890944, -0.027723,
		0.754533, -0.366936, 0.544093,
		42.725918, 41.387566, 27.413687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918064, 41.945744, 26.893265>,  <42.197742, 41.644421, 27.032822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918064, 41.945744, 26.893265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949184, 41.563686, 27.007563>,  <42.967857, 41.334454, 27.076141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949184, 41.563686, 27.007563>,  <42.918064, 41.945744, 26.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949184, 41.563686, 27.007563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594601, -0.185608, -0.782304,
		0.800249, 0.230766, 0.553488,
		0.077797, -0.955142, 0.285746,
		42.972523, 41.277145, 27.093287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584393, 41.957256, 26.868977>,  <42.918064, 41.945744, 26.893265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584393, 41.957256, 26.868977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446461, 41.582245, 26.887459>,  <43.363701, 41.357239, 26.898548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446461, 41.582245, 26.887459>,  <43.584393, 41.957256, 26.868977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446461, 41.582245, 26.887459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779483, -0.313432, -0.542372,
		0.522970, -0.151009, 0.838867,
		-0.344831, -0.937527, 0.046206,
		43.343010, 41.300987, 26.901321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074898, 41.440010, 27.184572>,  <43.584393, 41.957256, 26.868977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074898, 41.440010, 27.184572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818645, 41.311127, 26.905781>,  <43.664894, 41.233799, 26.738506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818645, 41.311127, 26.905781>,  <44.074898, 41.440010, 27.184572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818645, 41.311127, 26.905781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749180, -0.063327, -0.659332,
		0.168302, -0.944549, 0.281959,
		-0.640627, -0.322205, -0.696980,
		43.626457, 41.214466, 26.696688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826817, 41.658852, 27.917700>,  <44.074898, 41.440010, 27.184572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826817, 41.658852, 27.917700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193920, 41.718952, 27.770653>,  <44.414181, 41.755013, 27.682425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193920, 41.718952, 27.770653>,  <43.826817, 41.658852, 27.917700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193920, 41.718952, 27.770653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244229, 0.516403, 0.820780,
		0.313160, -0.843062, 0.437239,
		0.917760, 0.150249, -0.367617,
		44.469250, 41.764027, 27.660368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455044, 41.282192, 28.175884>,  <43.826817, 41.658852, 27.917700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455044, 41.282192, 28.175884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535309, 41.653469, 28.050539>,  <44.583466, 41.876236, 27.975332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535309, 41.653469, 28.050539>,  <44.455044, 41.282192, 28.175884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535309, 41.653469, 28.050539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197513, 0.351632, 0.915065,
		0.959544, -0.121723, 0.253888,
		0.200659, 0.928191, -0.313364,
		44.595509, 41.931927, 27.956530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117680, 40.946991, 28.055971>,  <44.455044, 41.282192, 28.175884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117680, 40.946991, 28.055971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917755, 40.609039, 27.979687>,  <44.797798, 40.406269, 27.933916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917755, 40.609039, 27.979687>,  <45.117680, 40.946991, 28.055971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917755, 40.609039, 27.979687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054059, -0.250190, 0.966686,
		-0.864444, 0.472853, 0.170722,
		-0.499813, -0.844876, -0.190713,
		44.767811, 40.355576, 27.922472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903664, 40.731083, 28.743753>,  <45.117680, 40.946991, 28.055971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903664, 40.731083, 28.743753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778763, 40.401562, 28.554501>,  <44.703823, 40.203850, 28.440948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778763, 40.401562, 28.554501>,  <44.903664, 40.731083, 28.743753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778763, 40.401562, 28.554501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010239, -0.495084, 0.868785,
		-0.949946, 0.276120, 0.146154,
		-0.312247, -0.823802, -0.473131,
		44.685089, 40.154423, 28.412561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267113, 40.399670, 29.075525>,  <44.903664, 40.731083, 28.743753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267113, 40.399670, 29.075525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465206, 40.113914, 28.877783>,  <44.584061, 39.942459, 28.759136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465206, 40.113914, 28.877783>,  <44.267113, 40.399670, 29.075525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465206, 40.113914, 28.877783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047333, -0.590381, 0.805736,
		-0.867470, -0.375628, -0.326190,
		0.495233, -0.714391, -0.494358,
		44.613777, 39.899597, 28.729475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020679, 39.836872, 29.370607>,  <44.267113, 40.399670, 29.075525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020679, 39.836872, 29.370607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322063, 39.671799, 29.165865>,  <44.502892, 39.572754, 29.043020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322063, 39.671799, 29.165865>,  <44.020679, 39.836872, 29.370607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322063, 39.671799, 29.165865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159013, -0.641007, 0.750882,
		-0.637923, -0.647180, -0.417387,
		0.753504, -0.412635, -0.511823,
		44.548100, 39.547993, 29.012308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873283, 39.172245, 29.378014>,  <44.020679, 39.836872, 29.370607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873283, 39.172245, 29.378014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270023, 39.192493, 29.331247>,  <44.508068, 39.204643, 29.303186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270023, 39.192493, 29.331247>,  <43.873283, 39.172245, 29.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270023, 39.192493, 29.331247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121105, -0.659657, 0.741746,
		-0.039575, -0.749860, -0.660411,
		0.991850, 0.050624, -0.116918,
		44.567577, 39.207680, 29.296171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058987, 38.441055, 29.245564>,  <43.873283, 39.172245, 29.378014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058987, 38.441055, 29.245564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395027, 38.623287, 29.363323>,  <44.596653, 38.732628, 29.433979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395027, 38.623287, 29.363323>,  <44.058987, 38.441055, 29.245564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395027, 38.623287, 29.363323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166605, -0.733235, 0.659249,
		0.516205, -0.504789, -0.691896,
		0.840104, 0.455581, 0.294399,
		44.647057, 38.759960, 29.451643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552456, 37.920277, 29.163994>,  <44.058987, 38.441055, 29.245564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552456, 37.920277, 29.163994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719551, 38.193016, 29.404188>,  <44.819809, 38.356659, 29.548306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719551, 38.193016, 29.404188>,  <44.552456, 37.920277, 29.163994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719551, 38.193016, 29.404188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260711, -0.723078, 0.639678,
		0.870359, -0.110664, -0.479821,
		0.417738, 0.681844, 0.600487,
		44.844872, 38.397568, 29.584333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066338, 37.561852, 29.285046>,  <44.552456, 37.920277, 29.163994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066338, 37.561852, 29.285046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029221, 37.844162, 29.565979>,  <45.006950, 38.013550, 29.734539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029221, 37.844162, 29.565979>,  <45.066338, 37.561852, 29.285046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029221, 37.844162, 29.565979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377162, -0.627895, 0.680806,
		0.921487, 0.328066, -0.207929,
		-0.092792, 0.705777, 0.702331,
		45.001385, 38.055897, 29.776678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671860, 37.552708, 29.781898>,  <45.066338, 37.561852, 29.285046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671860, 37.552708, 29.781898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383842, 37.720310, 30.003155>,  <45.211033, 37.820873, 30.135908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383842, 37.720310, 30.003155>,  <45.671860, 37.552708, 29.781898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383842, 37.720310, 30.003155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176133, -0.660657, 0.729733,
		0.671202, 0.622867, 0.401901,
		-0.720045, 0.419010, 0.553141,
		45.167828, 37.846012, 30.169098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973949, 37.368233, 30.354443>,  <45.671860, 37.552708, 29.781898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973949, 37.368233, 30.354443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603256, 37.492878, 30.438406>,  <45.380840, 37.567665, 30.488783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603256, 37.492878, 30.438406>,  <45.973949, 37.368233, 30.354443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603256, 37.492878, 30.438406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051884, -0.447193, 0.892932,
		0.372116, 0.838402, 0.398261,
		-0.926735, 0.311611, 0.209908,
		45.325237, 37.586361, 30.501379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009529, 37.648960, 30.972462>,  <45.973949, 37.368233, 30.354443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009529, 37.648960, 30.972462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629406, 37.542419, 30.907997>,  <45.401333, 37.478497, 30.869318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629406, 37.542419, 30.907997>,  <46.009529, 37.648960, 30.972462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629406, 37.542419, 30.907997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002849, -0.510218, 0.860040,
		-0.311296, 0.817763, 0.484106,
		-0.950309, -0.266348, -0.161159,
		45.344315, 37.462517, 30.859650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801407, 37.715240, 31.545099>,  <46.009529, 37.648960, 30.972462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801407, 37.715240, 31.545099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527431, 37.487343, 31.363440>,  <45.363045, 37.350605, 31.254444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527431, 37.487343, 31.363440>,  <45.801407, 37.715240, 31.545099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527431, 37.487343, 31.363440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040565, -0.652170, 0.756986,
		-0.727471, 0.500066, 0.469808,
		-0.684938, -0.569743, -0.454150,
		45.321949, 37.316422, 31.227194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285198, 37.564072, 32.071873>,  <45.801407, 37.715240, 31.545099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285198, 37.564072, 32.071873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261143, 37.276505, 31.794880>,  <45.246712, 37.103962, 31.628683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261143, 37.276505, 31.794880>,  <45.285198, 37.564072, 32.071873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261143, 37.276505, 31.794880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108730, -0.684895, 0.720483,
		-0.992251, 0.118620, -0.036982,
		-0.060135, -0.718921, -0.692485,
		45.243103, 37.060829, 31.587133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905991, 37.110764, 32.379921>,  <45.285198, 37.564072, 32.071873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905991, 37.110764, 32.379921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075672, 36.888977, 32.093533>,  <45.177483, 36.755905, 31.921698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075672, 36.888977, 32.093533>,  <44.905991, 37.110764, 32.379921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075672, 36.888977, 32.093533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056268, -0.772972, 0.631940,
		-0.903816, -0.308359, -0.296701,
		0.424206, -0.554462, -0.715976,
		45.202934, 36.722637, 31.878740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486076, 36.524826, 32.249157>,  <44.905991, 37.110764, 32.379921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486076, 36.524826, 32.249157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862137, 36.444164, 32.139290>,  <45.087776, 36.395767, 32.073368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862137, 36.444164, 32.139290>,  <44.486076, 36.524826, 32.249157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862137, 36.444164, 32.139290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022814, -0.767029, 0.641207,
		-0.339980, -0.609101, -0.716526,
		0.940156, -0.201650, -0.274670,
		45.144184, 36.383671, 32.056889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406418, 35.777321, 32.044216>,  <44.486076, 36.524826, 32.249157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406418, 35.777321, 32.044216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802036, 35.833485, 32.062412>,  <45.039410, 35.867184, 32.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802036, 35.833485, 32.062412>,  <44.406418, 35.777321, 32.044216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802036, 35.833485, 32.062412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110026, -0.906850, 0.406839,
		0.098380, -0.397377, -0.912367,
		0.989048, 0.140409, 0.045494,
		45.098751, 35.875607, 32.076061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617249, 35.200653, 31.814533>,  <44.406418, 35.777321, 32.044216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617249, 35.200653, 31.814533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907124, 35.370712, 32.031448>,  <45.081047, 35.472748, 32.161598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907124, 35.370712, 32.031448>,  <44.617249, 35.200653, 31.814533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907124, 35.370712, 32.031448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097014, -0.842085, 0.530547,
		0.682214, -0.331872, -0.651494,
		0.724687, 0.425151, 0.542287,
		45.124531, 35.498257, 32.194134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257664, 34.719215, 31.794317>,  <44.617249, 35.200653, 31.814533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257664, 34.719215, 31.794317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303627, 34.926601, 32.133255>,  <45.331207, 35.051033, 32.336617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303627, 34.926601, 32.133255>,  <45.257664, 34.719215, 31.794317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303627, 34.926601, 32.133255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358965, -0.817026, 0.451234,
		0.926250, 0.252314, -0.279997,
		0.114913, 0.518465, 0.847343,
		45.338100, 35.082142, 32.387459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786163, 34.413044, 32.178181>,  <45.257664, 34.719215, 31.794317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786163, 34.413044, 32.178181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618526, 34.651276, 32.452305>,  <45.517944, 34.794212, 32.616779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618526, 34.651276, 32.452305>,  <45.786163, 34.413044, 32.178181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618526, 34.651276, 32.452305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186918, -0.682033, 0.707031,
		0.888497, 0.424406, 0.174508,
		-0.419088, 0.595576, 0.685313,
		45.492802, 34.829948, 32.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305023, 34.491402, 32.721794>,  <45.786163, 34.413044, 32.178181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305023, 34.491402, 32.721794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943325, 34.568340, 32.874287>,  <45.726307, 34.614506, 32.965782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943325, 34.568340, 32.874287>,  <46.305023, 34.491402, 32.721794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943325, 34.568340, 32.874287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147507, -0.697123, 0.701613,
		0.400719, 0.690667, 0.602000,
		-0.904249, 0.192351, 0.381229,
		45.672050, 34.626045, 32.988655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474998, 34.400372, 33.415092>,  <46.305023, 34.491402, 32.721794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474998, 34.400372, 33.415092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076141, 34.379242, 33.393463>,  <45.836826, 34.366566, 33.380486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076141, 34.379242, 33.393463>,  <46.474998, 34.400372, 33.415092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076141, 34.379242, 33.393463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000367, -0.711960, 0.702220,
		-0.075594, 0.700231, 0.709903,
		-0.997139, -0.052823, -0.054077,
		45.777000, 34.363396, 33.377239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283302, 34.311684, 34.132454>,  <46.474998, 34.400372, 33.415092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283302, 34.311684, 34.132454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423000, 34.631275, 34.328278>,  <46.506821, 34.823029, 34.445770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423000, 34.631275, 34.328278>,  <46.283302, 34.311684, 34.132454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423000, 34.631275, 34.328278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850565, -0.489516, 0.192126,
		0.393149, 0.349300, -0.850543,
		0.349245, 0.798977, 0.489555,
		46.527775, 34.870968, 34.475143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021946, 34.637161, 33.942852>,  <46.283302, 34.311684, 34.132454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021946, 34.637161, 33.942852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967438, 34.733486, 34.327236>,  <46.934734, 34.791279, 34.557865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967438, 34.733486, 34.327236>,  <47.021946, 34.637161, 33.942852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967438, 34.733486, 34.327236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884393, -0.407527, 0.227532,
		0.446408, 0.880871, -0.157438,
		-0.136266, 0.240809, 0.960959,
		46.926559, 34.805729, 34.615524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666061, 35.029243, 34.216297>,  <47.021946, 34.637161, 33.942852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666061, 35.029243, 34.216297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464336, 34.838455, 34.504230>,  <47.343300, 34.723980, 34.676991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464336, 34.838455, 34.504230>,  <47.666061, 35.029243, 34.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.464336, 34.838455, 34.504230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852334, -0.408699, 0.326332,
		0.138543, 0.778113, 0.612655,
		-0.504314, -0.476975, 0.719835,
		47.313042, 34.695362, 34.720181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930092, 35.296692, 34.821072>,  <47.666061, 35.029243, 34.216297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930092, 35.296692, 34.821072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785919, 34.926010, 34.863613>,  <47.699413, 34.703602, 34.889137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785919, 34.926010, 34.863613>,  <47.930092, 35.296692, 34.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785919, 34.926010, 34.863613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889863, -0.307420, 0.337102,
		-0.279699, 0.216140, 0.935442,
		-0.360434, -0.926702, 0.106350,
		47.677788, 34.647999, 34.895519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.364437, 39.917957, 43.700066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967480, 39.918861, 43.749298>,  <36.729305, 39.919403, 43.778835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967480, 39.918861, 43.749298>,  <37.364437, 39.917957, 43.700066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967480, 39.918861, 43.749298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119551, -0.255952, -0.959268,
		0.029338, -0.966687, 0.254275,
		-0.992394, 0.002255, 0.123078,
		36.669762, 39.919537, 43.786221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116825, 39.346977, 43.338547>,  <37.364437, 39.917957, 43.700066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116825, 39.346977, 43.338547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797256, 39.584026, 43.379585>,  <36.605515, 39.726254, 43.404209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797256, 39.584026, 43.379585>,  <37.116825, 39.346977, 43.338547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797256, 39.584026, 43.379585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283170, -0.220148, -0.933461,
		-0.530602, -0.774814, 0.343693,
		-0.798922, 0.592621, 0.102593,
		36.557579, 39.761814, 43.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470192, 39.015934, 43.240032>,  <37.116825, 39.346977, 43.338547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470192, 39.015934, 43.240032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376450, 39.394634, 43.151722>,  <36.320206, 39.621853, 43.098736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376450, 39.394634, 43.151722>,  <36.470192, 39.015934, 43.240032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376450, 39.394634, 43.151722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238547, -0.276160, -0.931037,
		-0.942430, -0.165526, 0.290564,
		-0.234353, 0.946751, -0.220776,
		36.306145, 39.678658, 43.085487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848579, 39.031784, 42.830750>,  <36.470192, 39.015934, 43.240032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848579, 39.031784, 42.830750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012699, 39.386230, 42.744534>,  <36.111172, 39.598900, 42.692802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012699, 39.386230, 42.744534>,  <35.848579, 39.031784, 42.830750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012699, 39.386230, 42.744534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199377, -0.143476, -0.969362,
		-0.889891, 0.440700, 0.117804,
		0.410296, 0.886114, -0.215543,
		36.135788, 39.652065, 42.679871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338928, 39.340199, 42.481640>,  <35.848579, 39.031784, 42.830750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338928, 39.340199, 42.481640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656525, 39.553276, 42.364460>,  <35.847080, 39.681122, 42.294151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656525, 39.553276, 42.364460>,  <35.338928, 39.340199, 42.481640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656525, 39.553276, 42.364460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274822, -0.115318, -0.954555,
		-0.542270, 0.838413, 0.054836,
		0.793987, 0.532697, -0.292948,
		35.894722, 39.713085, 42.276577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049129, 39.855354, 41.921360>,  <35.338928, 39.340199, 42.481640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049129, 39.855354, 41.921360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445042, 39.803257, 41.898132>,  <35.682590, 39.771999, 41.884197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445042, 39.803257, 41.898132>,  <35.049129, 39.855354, 41.921360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445042, 39.803257, 41.898132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074284, -0.123307, -0.989584,
		0.121722, 0.983785, -0.131721,
		0.989781, -0.130239, -0.058070,
		35.741978, 39.764187, 41.880711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197067, 40.171593, 41.305889>,  <35.049129, 39.855354, 41.921360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197067, 40.171593, 41.305889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524006, 39.947205, 41.358448>,  <35.720169, 39.812572, 41.389984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524006, 39.947205, 41.358448>,  <35.197067, 40.171593, 41.305889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524006, 39.947205, 41.358448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125445, -0.395865, -0.909700,
		0.562328, 0.727054, -0.393928,
		0.817344, -0.560966, 0.131400,
		35.769211, 39.778915, 41.397869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552422, 40.167435, 40.633942>,  <35.197067, 40.171593, 41.305889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552422, 40.167435, 40.633942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687168, 39.859188, 40.850338>,  <35.768017, 39.674240, 40.980175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687168, 39.859188, 40.850338>,  <35.552422, 40.167435, 40.633942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687168, 39.859188, 40.850338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060131, -0.555793, -0.829143,
		0.939629, 0.311845, -0.140892,
		0.336871, -0.770615, 0.540990,
		35.788231, 39.628002, 41.012634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109436, 40.108273, 40.294983>,  <35.552422, 40.167435, 40.633942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109436, 40.108273, 40.294983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048222, 39.763622, 40.488548>,  <36.011494, 39.556831, 40.604687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048222, 39.763622, 40.488548>,  <36.109436, 40.108273, 40.294983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048222, 39.763622, 40.488548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132591, -0.503158, -0.853962,
		0.979285, -0.066526, 0.191247,
		-0.153039, -0.861630, 0.483914,
		36.002312, 39.505135, 40.633724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681389, 39.684746, 40.140465>,  <36.109436, 40.108273, 40.294983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681389, 39.684746, 40.140465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401138, 39.431450, 40.271999>,  <36.232986, 39.279472, 40.350922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401138, 39.431450, 40.271999>,  <36.681389, 39.684746, 40.140465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401138, 39.431450, 40.271999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167134, -0.593687, -0.787148,
		0.693677, -0.496537, 0.521788,
		-0.700627, -0.633235, 0.328839,
		36.190948, 39.241478, 40.370651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097588, 39.074348, 40.336285>,  <36.681389, 39.684746, 40.140465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097588, 39.074348, 40.336285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716164, 38.998104, 40.242996>,  <36.487309, 38.952358, 40.187023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716164, 38.998104, 40.242996>,  <37.097588, 39.074348, 40.336285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716164, 38.998104, 40.242996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301165, -0.616349, -0.727608,
		-0.005056, -0.764055, 0.645131,
		-0.953559, -0.190612, -0.233223,
		36.430096, 38.940922, 40.173031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027092, 38.395565, 40.299606>,  <37.097588, 39.074348, 40.336285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027092, 38.395565, 40.299606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700169, 38.491329, 40.089962>,  <36.504017, 38.548786, 39.964176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700169, 38.491329, 40.089962>,  <37.027092, 38.395565, 40.299606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700169, 38.491329, 40.089962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297320, -0.603921, -0.739514,
		-0.493568, -0.760239, 0.422408,
		-0.817307, 0.239410, -0.524110,
		36.454975, 38.563152, 39.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721478, 37.779224, 40.038948>,  <37.027092, 38.395565, 40.299606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721478, 37.779224, 40.038948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564514, 38.055553, 39.796040>,  <36.470337, 38.221352, 39.650295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564514, 38.055553, 39.796040>,  <36.721478, 37.779224, 40.038948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564514, 38.055553, 39.796040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226855, -0.567146, -0.791759,
		-0.891378, -0.448454, 0.065834,
		-0.392405, 0.690821, -0.607276,
		36.446793, 38.262798, 39.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356743, 37.378040, 39.536095>,  <36.721478, 37.779224, 40.038948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356743, 37.378040, 39.536095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408886, 37.737457, 39.368465>,  <36.440174, 37.953110, 39.267887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408886, 37.737457, 39.368465>,  <36.356743, 37.378040, 39.536095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408886, 37.737457, 39.368465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135529, -0.434863, -0.890239,
		-0.982160, 0.059256, -0.178469,
		0.130362, 0.898545, -0.419074,
		36.447994, 38.007019, 39.242744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091217, 37.269241, 38.819195>,  <36.356743, 37.378040, 39.536095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091217, 37.269241, 38.819195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290668, 37.615696, 38.805477>,  <36.410339, 37.823570, 38.797245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290668, 37.615696, 38.805477>,  <36.091217, 37.269241, 38.819195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290668, 37.615696, 38.805477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188699, -0.147081, -0.970958,
		-0.846025, 0.477678, -0.236779,
		0.498631, 0.866135, -0.034297,
		36.440258, 37.875538, 38.795189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859131, 37.581821, 38.175797>,  <36.091217, 37.269241, 38.819195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859131, 37.581821, 38.175797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212536, 37.741989, 38.273010>,  <36.424580, 37.838089, 38.331341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212536, 37.741989, 38.273010>,  <35.859131, 37.581821, 38.175797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212536, 37.741989, 38.273010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349991, -0.219497, -0.910674,
		-0.311308, 0.889653, -0.334073,
		0.883512, 0.400423, 0.243039,
		36.477589, 37.862118, 38.345921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112499, 37.953491, 37.623577>,  <35.859131, 37.581821, 38.175797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112499, 37.953491, 37.623577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449860, 37.894844, 37.830334>,  <36.652275, 37.859653, 37.954388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449860, 37.894844, 37.830334>,  <36.112499, 37.953491, 37.623577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449860, 37.894844, 37.830334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495270, -0.160793, -0.853729,
		0.208289, 0.976036, -0.062995,
		0.843400, -0.146623, 0.516893,
		36.702881, 37.850857, 37.985401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582455, 38.398952, 37.201199>,  <36.112499, 37.953491, 37.623577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582455, 38.398952, 37.201199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795967, 38.120312, 37.392960>,  <36.924076, 37.953129, 37.508015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795967, 38.120312, 37.392960>,  <36.582455, 38.398952, 37.201199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795967, 38.120312, 37.392960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553485, -0.140810, -0.820870,
		0.639322, 0.703506, 0.310396,
		0.533781, -0.696600, 0.479403,
		36.956100, 37.911331, 37.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196472, 38.522102, 36.940952>,  <36.582455, 38.398952, 37.201199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196472, 38.522102, 36.940952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237568, 38.161179, 37.108418>,  <37.262226, 37.944622, 37.208897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237568, 38.161179, 37.108418>,  <37.196472, 38.522102, 36.940952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237568, 38.161179, 37.108418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692916, -0.237049, -0.680937,
		0.713661, 0.360054, 0.600873,
		0.102738, -0.902313, 0.418660,
		37.268391, 37.890484, 37.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922039, 38.430138, 37.028248>,  <37.196472, 38.522102, 36.940952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922039, 38.430138, 37.028248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786022, 38.054260, 37.042973>,  <37.704414, 37.828735, 37.051807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786022, 38.054260, 37.042973>,  <37.922039, 38.430138, 37.028248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786022, 38.054260, 37.042973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758957, -0.297329, -0.579292,
		0.555300, -0.169047, 0.814288,
		-0.340039, -0.939691, 0.036807,
		37.684010, 37.772354, 37.054016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508625, 37.967934, 37.148308>,  <37.922039, 38.430138, 37.028248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508625, 37.967934, 37.148308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236561, 37.733932, 36.971607>,  <38.073322, 37.593533, 36.865589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236561, 37.733932, 36.971607>,  <38.508625, 37.967934, 37.148308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236561, 37.733932, 36.971607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659770, -0.225884, -0.716715,
		0.319499, -0.778937, 0.539610,
		-0.680164, -0.585008, -0.441749,
		38.032513, 37.558430, 36.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859402, 37.413040, 36.987701>,  <38.508625, 37.967934, 37.148308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859402, 37.413040, 36.987701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536041, 37.421932, 36.752415>,  <38.342026, 37.427265, 36.611240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536041, 37.421932, 36.752415>,  <38.859402, 37.413040, 36.987701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536041, 37.421932, 36.752415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543608, -0.355134, -0.760507,
		-0.225799, -0.934551, 0.275008,
		-0.808397, 0.022225, -0.588218,
		38.293522, 37.428600, 36.575951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878578, 37.512222, 36.293144>,  <38.859402, 37.413040, 36.987701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878578, 37.512222, 36.293144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243988, 37.349522, 36.295403>,  <39.463234, 37.251900, 36.296757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243988, 37.349522, 36.295403>,  <38.878578, 37.512222, 36.293144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243988, 37.349522, 36.295403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290497, -0.642582, 0.709014,
		-0.284761, -0.649341, -0.705172,
		0.913523, -0.406750, 0.005649,
		39.518044, 37.227497, 36.297096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809963, 36.768875, 36.168983>,  <38.878578, 37.512222, 36.293144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809963, 36.768875, 36.168983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158932, 36.799496, 36.362076>,  <39.368313, 36.817867, 36.477932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158932, 36.799496, 36.362076>,  <38.809963, 36.768875, 36.168983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158932, 36.799496, 36.362076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276595, -0.736962, 0.616751,
		0.402968, -0.671585, -0.621764,
		0.872418, 0.076554, 0.482729,
		39.420658, 36.822460, 36.506893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993603, 36.137821, 36.271130>,  <38.809963, 36.768875, 36.168983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993603, 36.137821, 36.271130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223808, 36.345001, 36.524273>,  <39.361931, 36.469307, 36.676159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223808, 36.345001, 36.524273>,  <38.993603, 36.137821, 36.271130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223808, 36.345001, 36.524273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101914, -0.722407, 0.683917,
		0.811415, -0.458103, -0.362971,
		0.575517, 0.517948, 0.632859,
		39.396461, 36.500385, 36.714130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311764, 35.617256, 36.757263>,  <38.993603, 36.137821, 36.271130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311764, 35.617256, 36.757263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323631, 35.957287, 36.967594>,  <39.330753, 36.161304, 37.093792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323631, 35.957287, 36.967594>,  <39.311764, 35.617256, 36.757263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323631, 35.957287, 36.967594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, -0.492867, 0.814118,
		0.951223, -0.185626, 0.246411,
		0.029673, 0.850074, 0.525827,
		39.332535, 36.212311, 37.125343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426250, 35.268509, 37.434956>,  <39.311764, 35.617256, 36.757263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426250, 35.268509, 37.434956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.346703, 35.651760, 37.517357>,  <39.298973, 35.881710, 37.566799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.346703, 35.651760, 37.517357>,  <39.426250, 35.268509, 37.434956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346703, 35.651760, 37.517357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211399, -0.247196, 0.945624,
		0.956954, 0.144508, 0.251708,
		-0.198871, 0.958129, 0.206006,
		39.287041, 35.939198, 37.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807537, 35.437912, 38.064522>,  <39.426250, 35.268509, 37.434956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807537, 35.437912, 38.064522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520687, 35.716152, 38.047195>,  <39.348579, 35.883095, 38.036800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520687, 35.716152, 38.047195>,  <39.807537, 35.437912, 38.064522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520687, 35.716152, 38.047195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240424, -0.188574, 0.952174,
		0.654166, 0.693238, 0.302470,
		-0.717121, 0.695601, -0.043313,
		39.305550, 35.924831, 38.034203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875568, 35.902531, 38.602283>,  <39.807537, 35.437912, 38.064522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875568, 35.902531, 38.602283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494926, 35.959774, 38.493500>,  <39.266541, 35.994122, 38.428230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494926, 35.959774, 38.493500>,  <39.875568, 35.902531, 38.602283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494926, 35.959774, 38.493500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294473, -0.171429, 0.940158,
		0.087922, 0.974747, 0.205275,
		-0.951607, 0.143109, -0.271964,
		39.209446, 36.002708, 38.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685902, 36.402882, 38.998508>,  <39.875568, 35.902531, 38.602283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685902, 36.402882, 38.998508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363670, 36.207386, 38.864532>,  <39.170334, 36.090088, 38.784145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363670, 36.207386, 38.864532>,  <39.685902, 36.402882, 38.998508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363670, 36.207386, 38.864532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389333, 0.010528, 0.921037,
		-0.446618, 0.872368, -0.198762,
		-0.805575, -0.488737, -0.334940,
		39.121998, 36.060764, 38.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094429, 36.885574, 38.992680>,  <39.685902, 36.402882, 38.998508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094429, 36.885574, 38.992680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963627, 36.508511, 39.019398>,  <38.885147, 36.282272, 39.035431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963627, 36.508511, 39.019398>,  <39.094429, 36.885574, 38.992680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963627, 36.508511, 39.019398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380524, 0.196044, 0.903752,
		-0.865025, 0.270115, -0.422812,
		-0.327006, -0.942658, 0.066798,
		38.865524, 36.225712, 39.039436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596230, 37.013863, 39.418098>,  <39.094429, 36.885574, 38.992680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596230, 37.013863, 39.418098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596661, 36.614105, 39.404190>,  <38.596920, 36.374252, 39.395844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596661, 36.614105, 39.404190>,  <38.596230, 37.013863, 39.418098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596661, 36.614105, 39.404190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534725, -0.029957, 0.844495,
		-0.845025, 0.017682, -0.534434,
		0.001078, -0.999395, -0.034770,
		38.596985, 36.314285, 39.393761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930470, 36.829941, 39.475601>,  <38.596230, 37.013863, 39.418098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930470, 36.829941, 39.475601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144600, 36.510422, 39.585403>,  <38.273079, 36.318710, 39.651283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144600, 36.510422, 39.585403>,  <37.930470, 36.829941, 39.475601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144600, 36.510422, 39.585403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221269, 0.181017, 0.958266,
		-0.815149, -0.573722, -0.079846,
		0.535324, -0.798797, 0.274503,
		38.305199, 36.270782, 39.667755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511650, 36.321182, 39.843605>,  <37.930470, 36.829941, 39.475601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511650, 36.321182, 39.843605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893612, 36.268055, 39.949818>,  <38.122791, 36.236179, 40.013546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893612, 36.268055, 39.949818>,  <37.511650, 36.321182, 39.843605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893612, 36.268055, 39.949818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241316, 0.173815, 0.954754,
		-0.172965, -0.975780, 0.133925,
		0.954908, -0.132821, 0.265535,
		38.180084, 36.228210, 40.029480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393059, 35.863529, 40.385998>,  <37.511650, 36.321182, 39.843605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393059, 35.863529, 40.385998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719162, 36.095158, 40.388241>,  <37.914825, 36.234135, 40.389587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719162, 36.095158, 40.388241>,  <37.393059, 35.863529, 40.385998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719162, 36.095158, 40.388241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079022, 0.101657, 0.991676,
		0.573680, -0.808915, 0.128636,
		0.815259, 0.579070, 0.005604,
		37.963741, 36.268879, 40.389923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744980, 35.670570, 41.008789>,  <37.393059, 35.863529, 40.385998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744980, 35.670570, 41.008789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838287, 36.041130, 40.890553>,  <37.894272, 36.263466, 40.819611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838287, 36.041130, 40.890553>,  <37.744980, 35.670570, 41.008789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838287, 36.041130, 40.890553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034558, 0.295889, 0.954597,
		0.971799, -0.232891, 0.037007,
		0.233267, 0.926397, -0.295592,
		37.908268, 36.319050, 40.801876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198635, 35.862896, 41.467209>,  <37.744980, 35.670570, 41.008789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198635, 35.862896, 41.467209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112873, 36.232861, 41.341629>,  <38.061417, 36.454842, 41.266281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112873, 36.232861, 41.341629>,  <38.198635, 35.862896, 41.467209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112873, 36.232861, 41.341629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173200, 0.352332, 0.919708,
		0.961267, 0.142810, -0.235736,
		-0.214401, 0.924915, -0.313951,
		38.048553, 36.510334, 41.247444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753342, 36.327137, 41.701630>,  <38.198635, 35.862896, 41.467209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753342, 36.327137, 41.701630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425301, 36.545483, 41.632980>,  <38.228474, 36.676491, 41.591789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425301, 36.545483, 41.632980>,  <38.753342, 36.327137, 41.701630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425301, 36.545483, 41.632980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205259, 0.560608, 0.802239,
		0.534131, 0.622693, -0.571802,
		-0.820105, 0.545868, -0.171625,
		38.179268, 36.709244, 41.581493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050930, 36.950352, 41.750782>,  <38.753342, 36.327137, 41.701630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050930, 36.950352, 41.750782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656002, 36.987228, 41.802464>,  <38.419044, 37.009354, 41.833473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656002, 36.987228, 41.802464>,  <39.050930, 36.950352, 41.750782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656002, 36.987228, 41.802464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157647, 0.474907, 0.865800,
		0.018461, 0.875193, -0.483421,
		-0.987323, 0.092194, 0.129204,
		38.359806, 37.014885, 41.841225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830910, 37.699821, 41.821083>,  <39.050930, 36.950352, 41.750782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830910, 37.699821, 41.821083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540661, 37.489952, 41.999161>,  <38.366512, 37.364029, 42.106007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540661, 37.489952, 41.999161>,  <38.830910, 37.699821, 41.821083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540661, 37.489952, 41.999161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084557, 0.574095, 0.814411,
		-0.682881, 0.628596, -0.372210,
		-0.725619, -0.524673, 0.445191,
		38.322975, 37.332550, 42.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.344219, 38.206612, 42.015491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258232, 37.885483, 42.237938>,  <38.206638, 37.692806, 42.371407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258232, 37.885483, 42.237938>,  <38.344219, 38.206612, 42.015491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258232, 37.885483, 42.237938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077507, 0.553610, 0.829162,
		-0.973541, 0.221345, -0.056783,
		-0.214966, -0.802822, 0.556118,
		38.193741, 37.644638, 42.404774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871845, 38.445339, 42.439472>,  <38.344219, 38.206612, 42.015491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871845, 38.445339, 42.439472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044098, 38.128887, 42.613216>,  <38.147449, 37.939014, 42.717464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044098, 38.128887, 42.613216>,  <37.871845, 38.445339, 42.439472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044098, 38.128887, 42.613216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161750, 0.541128, 0.825238,
		-0.887917, -0.285112, 0.360990,
		0.430627, -0.791133, 0.434360,
		38.173286, 37.891548, 42.743523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623375, 38.507332, 43.115055>,  <37.871845, 38.445339, 42.439472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623375, 38.507332, 43.115055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937450, 38.261135, 43.142311>,  <38.125896, 38.113415, 43.158665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937450, 38.261135, 43.142311>,  <37.623375, 38.507332, 43.115055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937450, 38.261135, 43.142311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129737, 0.271089, 0.953771,
		-0.605511, -0.740052, 0.292709,
		0.785191, -0.615494, 0.068135,
		38.173008, 38.076488, 43.162750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535538, 38.124069, 43.773136>,  <37.623375, 38.507332, 43.115055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535538, 38.124069, 43.773136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920853, 38.095322, 43.669674>,  <38.152042, 38.078072, 43.607597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920853, 38.095322, 43.669674>,  <37.535538, 38.124069, 43.773136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920853, 38.095322, 43.669674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268428, 0.243853, 0.931924,
		-0.003906, -0.967145, 0.254194,
		0.963292, -0.071873, -0.258657,
		38.209839, 38.073761, 43.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705551, 37.761189, 44.268974>,  <37.535538, 38.124069, 43.773136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705551, 37.761189, 44.268974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033855, 37.920242, 44.104908>,  <38.230839, 38.015675, 44.006470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033855, 37.920242, 44.104908>,  <37.705551, 37.761189, 44.268974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033855, 37.920242, 44.104908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296689, 0.316862, 0.900874,
		0.488185, -0.861095, 0.142094,
		0.820762, 0.397636, -0.410164,
		38.280083, 38.039532, 43.981857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224575, 37.534016, 44.767437>,  <37.705551, 37.761189, 44.268974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224575, 37.534016, 44.767437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393093, 37.840755, 44.573753>,  <38.494202, 38.024799, 44.457542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393093, 37.840755, 44.573753>,  <38.224575, 37.534016, 44.767437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393093, 37.840755, 44.573753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381230, 0.334696, 0.861766,
		0.822907, -0.547650, -0.151341,
		0.421293, 0.766849, -0.484205,
		38.519482, 38.070808, 44.428493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826145, 37.502899, 45.039333>,  <38.224575, 37.534016, 44.767437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826145, 37.502899, 45.039333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801380, 37.868679, 44.879356>,  <38.786522, 38.088146, 44.783371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801380, 37.868679, 44.879356>,  <38.826145, 37.502899, 45.039333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801380, 37.868679, 44.879356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504329, 0.374457, 0.778096,
		0.861289, -0.153531, -0.484365,
		-0.061912, 0.914445, -0.399946,
		38.782806, 38.143013, 44.759373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451263, 37.731319, 45.093395>,  <38.826145, 37.502899, 45.039333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451263, 37.731319, 45.093395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204201, 38.043621, 45.055607>,  <39.055962, 38.231003, 45.032932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204201, 38.043621, 45.055607>,  <39.451263, 37.731319, 45.093395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204201, 38.043621, 45.055607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382189, 0.402977, 0.831589,
		0.687334, 0.477533, -0.547297,
		-0.617659, 0.780751, -0.094472,
		39.018902, 38.277847, 45.027264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967358, 38.298370, 45.227299>,  <39.451263, 37.731319, 45.093395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967358, 38.298370, 45.227299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590298, 38.423180, 45.274719>,  <39.364063, 38.498066, 45.303173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590298, 38.423180, 45.274719>,  <39.967358, 38.298370, 45.227299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590298, 38.423180, 45.274719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254680, 0.442767, 0.859707,
		0.215758, 0.840594, -0.496840,
		-0.942649, 0.312024, 0.118552,
		39.307503, 38.516788, 45.310284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114090, 38.932827, 45.512077>,  <39.967358, 38.298370, 45.227299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114090, 38.932827, 45.512077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738987, 38.807102, 45.571163>,  <39.513924, 38.731667, 45.606613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738987, 38.807102, 45.571163>,  <40.114090, 38.932827, 45.512077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738987, 38.807102, 45.571163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021064, 0.373064, 0.927566,
		-0.346651, 0.872944, -0.343223,
		-0.937758, -0.314312, 0.147711,
		39.457661, 38.712807, 45.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726315, 39.528275, 45.853687>,  <40.114090, 38.932827, 45.512077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726315, 39.528275, 45.853687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519821, 39.202553, 45.959827>,  <39.395927, 39.007118, 46.023510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519821, 39.202553, 45.959827>,  <39.726315, 39.528275, 45.853687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519821, 39.202553, 45.959827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012441, 0.316919, 0.948371,
		-0.856359, 0.486278, -0.173735,
		-0.516231, -0.814307, 0.265347,
		39.364952, 38.958260, 46.039433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091606, 39.780857, 46.239601>,  <39.726315, 39.528275, 45.853687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091606, 39.780857, 46.239601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151497, 39.397385, 46.336357>,  <39.187431, 39.167301, 46.394409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151497, 39.397385, 46.336357>,  <39.091606, 39.780857, 46.239601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151497, 39.397385, 46.336357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110270, 0.226928, 0.967649,
		-0.982560, -0.171552, -0.071738,
		0.149722, -0.958683, 0.241888,
		39.196415, 39.109779, 46.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599686, 39.670105, 46.825779>,  <39.091606, 39.780857, 46.239601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599686, 39.670105, 46.825779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892437, 39.397537, 46.823917>,  <39.068089, 39.233997, 46.822800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892437, 39.397537, 46.823917>,  <38.599686, 39.670105, 46.825779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892437, 39.397537, 46.823917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143133, 0.147041, 0.978719,
		-0.666237, -0.716967, 0.205150,
		0.731875, -0.681422, -0.004658,
		39.112000, 39.193111, 46.822521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420288, 39.266354, 47.432800>,  <38.599686, 39.670105, 46.825779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420288, 39.266354, 47.432800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807880, 39.200542, 47.359047>,  <39.040436, 39.161057, 47.314796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807880, 39.200542, 47.359047>,  <38.420288, 39.266354, 47.432800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807880, 39.200542, 47.359047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189469, 0.015639, 0.981762,
		-0.158646, -0.986248, 0.046327,
		0.968985, -0.164530, -0.184383,
		39.098576, 39.151184, 47.303734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641144, 38.690018, 47.749580>,  <38.420288, 39.266354, 47.432800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641144, 38.690018, 47.749580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983395, 38.894779, 47.718983>,  <39.188747, 39.017635, 47.700626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983395, 38.894779, 47.718983>,  <38.641144, 38.690018, 47.749580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983395, 38.894779, 47.718983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104578, -0.026247, 0.994170,
		0.506912, -0.858642, -0.075992,
		0.855631, 0.511904, -0.076490,
		39.240086, 39.048351, 47.696037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015259, 38.422421, 48.275745>,  <38.641144, 38.690018, 47.749580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015259, 38.422421, 48.275745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260880, 38.726517, 48.190910>,  <39.408253, 38.908974, 48.140007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260880, 38.726517, 48.190910>,  <39.015259, 38.422421, 48.275745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260880, 38.726517, 48.190910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370571, -0.040442, 0.927923,
		0.696864, -0.648386, -0.306555,
		0.614050, 0.760237, -0.212091,
		39.445095, 38.954586, 48.127285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695454, 38.279705, 48.544926>,  <39.015259, 38.422421, 48.275745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695454, 38.279705, 48.544926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671413, 38.677479, 48.510326>,  <39.656990, 38.916145, 48.489567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671413, 38.677479, 48.510326>,  <39.695454, 38.279705, 48.544926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671413, 38.677479, 48.510326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410271, 0.103607, 0.906059,
		0.909981, 0.018966, -0.414215,
		-0.060100, 0.994438, -0.086499,
		39.653385, 38.975811, 48.484375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245029, 38.637585, 48.912258>,  <39.695454, 38.279705, 48.544926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245029, 38.637585, 48.912258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988483, 38.942986, 48.882004>,  <39.834557, 39.126225, 48.863853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988483, 38.942986, 48.882004>,  <40.245029, 38.637585, 48.912258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988483, 38.942986, 48.882004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293368, 0.335133, 0.895333,
		0.708933, 0.552047, -0.438929,
		-0.641365, 0.763498, -0.075634,
		39.796074, 39.172035, 48.859314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697636, 39.224693, 49.102726>,  <40.245029, 38.637585, 48.912258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697636, 39.224693, 49.102726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320511, 39.344490, 49.161243>,  <40.094234, 39.416367, 49.196354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320511, 39.344490, 49.161243>,  <40.697636, 39.224693, 49.102726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320511, 39.344490, 49.161243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244736, 0.324044, 0.913838,
		0.226281, 0.897385, -0.378810,
		-0.942816, 0.299492, 0.146297,
		40.037666, 39.434338, 49.205132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869419, 39.699905, 49.527477>,  <40.697636, 39.224693, 49.102726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869419, 39.699905, 49.527477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485260, 39.604919, 49.585770>,  <40.254765, 39.547928, 49.620743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485260, 39.604919, 49.585770>,  <40.869419, 39.699905, 49.527477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485260, 39.604919, 49.585770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150832, -0.003374, 0.988554,
		-0.234258, 0.971390, 0.039058,
		-0.960402, -0.237468, 0.145727,
		40.197140, 39.533680, 49.629486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712582, 40.157051, 50.067646>,  <40.869419, 39.699905, 49.527477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712582, 40.157051, 50.067646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.430515, 39.874317, 50.045300>,  <40.261276, 39.704678, 50.031891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.430515, 39.874317, 50.045300>,  <40.712582, 40.157051, 50.067646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430515, 39.874317, 50.045300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125072, -0.201562, 0.971457,
		-0.697920, 0.678055, 0.230541,
		-0.705170, -0.706834, -0.055868,
		40.218964, 39.662266, 50.028538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287205, 40.266094, 50.675434>,  <40.712582, 40.157051, 50.067646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287205, 40.266094, 50.675434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193993, 39.899296, 50.545940>,  <40.138065, 39.679214, 50.468243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193993, 39.899296, 50.545940>,  <40.287205, 40.266094, 50.675434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193993, 39.899296, 50.545940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093211, -0.352433, 0.931184,
		-0.967991, 0.186820, 0.167603,
		-0.233033, -0.917000, -0.323738,
		40.124084, 39.624195, 50.448818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868187, 39.929127, 51.156887>,  <40.287205, 40.266094, 50.675434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868187, 39.929127, 51.156887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060001, 39.654079, 50.938812>,  <40.175091, 39.489052, 50.807968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060001, 39.654079, 50.938812>,  <39.868187, 39.929127, 51.156887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060001, 39.654079, 50.938812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340268, -0.426970, 0.837803,
		-0.808866, -0.587266, 0.029226,
		0.479535, -0.687615, -0.545190,
		40.203861, 39.447796, 50.775257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541645, 40.737038, 51.217445>,  <39.868187, 39.929127, 51.156887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541645, 40.737038, 51.217445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421753, 41.001728, 51.492336>,  <39.349819, 41.160542, 51.657272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421753, 41.001728, 51.492336>,  <39.541645, 40.737038, 51.217445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421753, 41.001728, 51.492336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878361, 0.472556, -0.071927,
		-0.372351, 0.582077, -0.722870,
		-0.299729, 0.661723, 0.687230,
		39.331833, 41.200245, 51.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957611, 40.293964, 51.123165>,  <39.541645, 40.737038, 51.217445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957611, 40.293964, 51.123165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581642, 40.363819, 51.240501>,  <38.356060, 40.405731, 51.310905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581642, 40.363819, 51.240501>,  <38.957611, 40.293964, 51.123165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581642, 40.363819, 51.240501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331216, -0.258233, -0.907531,
		-0.082736, -0.950168, 0.300560,
		-0.939921, 0.174636, 0.293345,
		38.299667, 40.416210, 51.328506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540588, 39.705990, 50.997696>,  <38.957611, 40.293964, 51.123165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540588, 39.705990, 50.997696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274849, 40.003986, 51.021751>,  <38.115406, 40.182785, 51.036182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274849, 40.003986, 51.021751>,  <38.540588, 39.705990, 50.997696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274849, 40.003986, 51.021751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608834, -0.492748, -0.621708,
		-0.433538, -0.449647, 0.780937,
		-0.664354, 0.744995, 0.060135,
		38.075542, 40.227486, 51.039791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865368, 39.454155, 50.921356>,  <38.540588, 39.705990, 50.997696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865368, 39.454155, 50.921356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815838, 39.840237, 50.829227>,  <37.786121, 40.071884, 50.773949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815838, 39.840237, 50.829227>,  <37.865368, 39.454155, 50.921356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815838, 39.840237, 50.829227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390069, -0.260769, -0.883089,
		-0.912422, -0.019506, 0.408786,
		-0.123825, 0.965204, -0.230322,
		37.778690, 40.129799, 50.760132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289490, 39.408890, 50.585190>,  <37.865368, 39.454155, 50.921356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289490, 39.408890, 50.585190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412922, 39.776775, 50.488113>,  <37.486980, 39.997509, 50.429867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412922, 39.776775, 50.488113>,  <37.289490, 39.408890, 50.585190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412922, 39.776775, 50.488113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361516, -0.122603, -0.924270,
		-0.879822, 0.372947, 0.294659,
		0.308577, 0.919717, -0.242695,
		37.505497, 40.052689, 50.415306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698399, 39.802677, 50.387123>,  <37.289490, 39.408890, 50.585190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698399, 39.802677, 50.387123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999710, 40.008507, 50.223278>,  <37.180496, 40.132004, 50.124969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999710, 40.008507, 50.223278>,  <36.698399, 39.802677, 50.387123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999710, 40.008507, 50.223278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439429, -0.069628, -0.895575,
		-0.489361, 0.854614, 0.173670,
		0.753279, 0.514575, -0.409615,
		37.225693, 40.162880, 50.100395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361553, 40.413074, 49.971497>,  <36.698399, 39.802677, 50.387123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361553, 40.413074, 49.971497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734966, 40.338673, 49.848919>,  <36.959015, 40.294033, 49.775372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734966, 40.338673, 49.848919>,  <36.361553, 40.413074, 49.971497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734966, 40.338673, 49.848919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326015, -0.085026, -0.941533,
		0.149075, 0.978863, -0.140015,
		0.933537, -0.186006, -0.306449,
		37.015026, 40.282871, 49.756985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382645, 40.713531, 49.314228>,  <36.361553, 40.413074, 49.971497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382645, 40.713531, 49.314228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683247, 40.449745, 49.321732>,  <36.863605, 40.291473, 49.326233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683247, 40.449745, 49.321732>,  <36.382645, 40.713531, 49.314228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683247, 40.449745, 49.321732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302927, -0.370188, -0.878178,
		0.586074, 0.654267, -0.477966,
		0.751500, -0.659466, 0.018763,
		36.908695, 40.251904, 49.327362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829582, 40.855453, 48.723076>,  <36.382645, 40.713531, 49.314228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829582, 40.855453, 48.723076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917625, 40.479103, 48.826077>,  <36.970451, 40.253292, 48.887875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917625, 40.479103, 48.826077>,  <36.829582, 40.855453, 48.723076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917625, 40.479103, 48.826077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018914, -0.259806, -0.965475,
		0.975291, 0.217384, -0.039391,
		0.220113, -0.940875, 0.257499,
		36.983658, 40.196842, 48.903328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393852, 40.517681, 48.282082>,  <36.829582, 40.855453, 48.723076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393852, 40.517681, 48.282082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172916, 40.219521, 48.431374>,  <37.040356, 40.040627, 48.520947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172916, 40.219521, 48.431374>,  <37.393852, 40.517681, 48.282082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172916, 40.219521, 48.431374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241067, -0.285767, -0.927483,
		0.798001, -0.602261, -0.021849,
		-0.552342, -0.745399, 0.373227,
		37.007214, 39.995899, 48.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690704, 40.038799, 47.968117>,  <37.393852, 40.517681, 48.282082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690704, 40.038799, 47.968117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356136, 39.871025, 48.109241>,  <37.155396, 39.770359, 48.193916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356136, 39.871025, 48.109241>,  <37.690704, 40.038799, 47.968117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356136, 39.871025, 48.109241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156182, -0.434627, -0.886964,
		0.525370, -0.796975, 0.298021,
		-0.836417, -0.419439, 0.352814,
		37.105209, 39.745193, 48.215084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757698, 39.349785, 47.789291>,  <37.690704, 40.038799, 47.968117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757698, 39.349785, 47.789291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368488, 39.417313, 47.852184>,  <37.134964, 39.457829, 47.889919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368488, 39.417313, 47.852184>,  <37.757698, 39.349785, 47.789291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368488, 39.417313, 47.852184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199924, -0.276937, -0.939860,
		-0.115126, -0.945941, 0.303218,
		-0.973025, 0.168823, 0.157234,
		37.076580, 39.467960, 47.899353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452187, 38.837704, 47.357868>,  <37.757698, 39.349785, 47.789291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452187, 38.837704, 47.357868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188637, 39.132904, 47.416149>,  <37.030506, 39.310024, 47.451118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188637, 39.132904, 47.416149>,  <37.452187, 38.837704, 47.357868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188637, 39.132904, 47.416149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292992, -0.073376, -0.953295,
		-0.692846, -0.670794, 0.264575,
		-0.658878, 0.738005, 0.145700,
		36.990974, 39.354305, 47.459858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928925, 38.574993, 47.041988>,  <37.452187, 38.837704, 47.357868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928925, 38.574993, 47.041988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861477, 38.968632, 47.064369>,  <36.821007, 39.204815, 47.077797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861477, 38.968632, 47.064369>,  <36.928925, 38.574993, 47.041988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861477, 38.968632, 47.064369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137216, 0.032778, -0.989999,
		-0.976084, -0.174609, 0.129506,
		-0.168618, 0.984092, 0.055954,
		36.810890, 39.263859, 47.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201756, 38.702915, 46.744457>,  <36.928925, 38.574993, 47.041988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201756, 38.702915, 46.744457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412075, 39.041756, 46.713585>,  <36.538265, 39.245060, 46.695061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412075, 39.041756, 46.713585>,  <36.201756, 38.702915, 46.744457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412075, 39.041756, 46.713585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279417, 0.086307, -0.956283,
		-0.803406, 0.524378, 0.282074,
		0.525799, 0.847100, -0.077181,
		36.569813, 39.295887, 46.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843296, 39.103153, 46.330944>,  <36.201756, 38.702915, 46.744457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843296, 39.103153, 46.330944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180237, 39.316093, 46.297363>,  <36.382401, 39.443859, 46.277214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180237, 39.316093, 46.297363>,  <35.843296, 39.103153, 46.330944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180237, 39.316093, 46.297363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233273, 0.219736, -0.947259,
		-0.485827, 0.817508, 0.309278,
		0.842351, 0.532350, -0.083949,
		36.432941, 39.475800, 46.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635033, 39.686684, 45.944775>,  <35.843296, 39.103153, 46.330944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635033, 39.686684, 45.944775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031696, 39.687572, 45.893227>,  <36.269695, 39.688107, 45.862297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031696, 39.687572, 45.893227>,  <35.635033, 39.686684, 45.944775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031696, 39.687572, 45.893227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121291, 0.354315, -0.927227,
		0.043599, 0.935123, 0.351629,
		0.991659, 0.002224, -0.128870,
		36.329193, 39.688240, 45.854565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776108, 40.303455, 45.725563>,  <35.635033, 39.686684, 45.944775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776108, 40.303455, 45.725563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091145, 40.097012, 45.590904>,  <36.280167, 39.973145, 45.510109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091145, 40.097012, 45.590904>,  <35.776108, 40.303455, 45.725563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091145, 40.097012, 45.590904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117952, 0.409951, -0.904449,
		0.604798, 0.752047, 0.261999,
		0.787595, -0.516106, -0.336643,
		36.327423, 39.942181, 45.489910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118683, 40.813221, 45.304596>,  <35.776108, 40.303455, 45.725563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118683, 40.813221, 45.304596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252232, 40.456516, 45.182419>,  <36.332359, 40.242493, 45.109112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252232, 40.456516, 45.182419>,  <36.118683, 40.813221, 45.304596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252232, 40.456516, 45.182419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143836, 0.272040, -0.951475,
		0.931580, 0.361604, -0.037441,
		0.333872, -0.891761, -0.305439,
		36.352394, 40.188988, 45.090786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490303, 41.034756, 44.784279>,  <36.118683, 40.813221, 45.304596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490303, 41.034756, 44.784279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448093, 40.642231, 44.719921>,  <36.422768, 40.406715, 44.681309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448093, 40.642231, 44.719921>,  <36.490303, 41.034756, 44.784279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448093, 40.642231, 44.719921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082408, 0.152607, -0.984845,
		0.990997, -0.117182, 0.064765,
		-0.105523, -0.981315, -0.160890,
		36.416435, 40.347836, 44.671654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976566, 40.977962, 44.201107>,  <36.490303, 41.034756, 44.784279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976566, 40.977962, 44.201107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749195, 40.649517, 44.221741>,  <36.612774, 40.452450, 44.234119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749195, 40.649517, 44.221741>,  <36.976566, 40.977962, 44.201107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749195, 40.649517, 44.221741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080942, -0.006583, -0.996697,
		0.818745, -0.570722, -0.062721,
		-0.568423, -0.821117, 0.051585,
		36.578667, 40.403183, 44.237217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.054417, 39.421364, 27.932707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694317, 39.450012, 27.760933>,  <42.478256, 39.467201, 27.657867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694317, 39.450012, 27.760933>,  <43.054417, 39.421364, 27.932707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694317, 39.450012, 27.760933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223488, -0.922521, 0.314656,
		-0.373628, 0.379244, 0.846508,
		-0.900253, 0.071620, -0.429436,
		42.424240, 39.471497, 27.632103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636467, 39.150711, 28.443407>,  <43.054417, 39.421364, 27.932707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636467, 39.150711, 28.443407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384483, 39.140434, 28.132927>,  <42.233292, 39.134270, 27.946638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384483, 39.140434, 28.132927>,  <42.636467, 39.150711, 28.443407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384483, 39.140434, 28.132927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287879, -0.920530, 0.264104,
		-0.721301, 0.389827, 0.572503,
		-0.629961, -0.025687, -0.776202,
		42.195496, 39.132729, 27.900066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963966, 39.107052, 28.648390>,  <42.636467, 39.150711, 28.443407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963966, 39.107052, 28.648390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904163, 38.974991, 28.275585>,  <41.868282, 38.895756, 28.051903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904163, 38.974991, 28.275585>,  <41.963966, 39.107052, 28.648390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904163, 38.974991, 28.275585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309196, -0.879723, 0.361229,
		-0.939173, 0.342181, 0.029445,
		-0.149509, -0.330152, -0.932012,
		41.859310, 38.875946, 27.995981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205086, 38.819801, 28.560097>,  <41.963966, 39.107052, 28.648390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205086, 38.819801, 28.560097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420029, 38.650295, 28.268433>,  <41.548992, 38.548592, 28.093435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420029, 38.650295, 28.268433>,  <41.205086, 38.819801, 28.560097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420029, 38.650295, 28.268433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278385, -0.905258, 0.320952,
		-0.796084, 0.030521, -0.604415,
		0.537356, -0.423765, -0.729158,
		41.581234, 38.523167, 28.049685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838558, 38.222801, 28.393387>,  <41.205086, 38.819801, 28.560097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838558, 38.222801, 28.393387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210476, 38.153412, 28.263527>,  <41.433624, 38.111778, 28.185612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210476, 38.153412, 28.263527>,  <40.838558, 38.222801, 28.393387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210476, 38.153412, 28.263527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039735, -0.924134, 0.379998,
		-0.365938, -0.340418, -0.866144,
		0.929791, -0.173472, -0.324649,
		41.489414, 38.101372, 28.166132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731731, 37.624527, 28.020868>,  <40.838558, 38.222801, 28.393387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731731, 37.624527, 28.020868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106167, 37.662907, 28.156239>,  <41.330830, 37.685936, 28.237461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106167, 37.662907, 28.156239>,  <40.731731, 37.624527, 28.020868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106167, 37.662907, 28.156239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029946, -0.936852, 0.348443,
		0.350485, -0.336308, -0.874103,
		0.936089, 0.095948, 0.338424,
		41.386993, 37.691692, 28.257765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896683, 36.976456, 28.120132>,  <40.731731, 37.624527, 28.020868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896683, 36.976456, 28.120132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232681, 37.112164, 28.289507>,  <41.434280, 37.193588, 28.391132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232681, 37.112164, 28.289507>,  <40.896683, 36.976456, 28.120132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232681, 37.112164, 28.289507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204833, -0.920937, 0.331539,
		0.502440, -0.191758, -0.843079,
		0.839998, 0.339269, 0.423438,
		41.484680, 37.213943, 28.416538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476173, 36.571949, 27.957453>,  <40.896683, 36.976456, 28.120132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476173, 36.571949, 27.957453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520981, 36.711540, 28.329618>,  <41.547867, 36.795296, 28.552917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520981, 36.711540, 28.329618>,  <41.476173, 36.571949, 27.957453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520981, 36.711540, 28.329618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312748, -0.901105, 0.300329,
		0.943208, 0.257342, -0.210081,
		0.112017, 0.348975, 0.930413,
		41.554585, 36.816235, 28.608742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109520, 36.219128, 28.135359>,  <41.476173, 36.571949, 27.957453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109520, 36.219128, 28.135359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929066, 36.386108, 28.450880>,  <41.820793, 36.486298, 28.640192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929066, 36.386108, 28.450880>,  <42.109520, 36.219128, 28.135359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929066, 36.386108, 28.450880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354315, -0.727437, 0.587619,
		0.819109, 0.544579, 0.180259,
		-0.451132, 0.417455, 0.788803,
		41.793728, 36.511345, 28.687521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616497, 36.364365, 28.639885>,  <42.109520, 36.219128, 28.135359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616497, 36.364365, 28.639885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272396, 36.344585, 28.842875>,  <42.065937, 36.332718, 28.964668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272396, 36.344585, 28.842875>,  <42.616497, 36.364365, 28.639885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272396, 36.344585, 28.842875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402890, -0.675922, 0.617097,
		0.312495, 0.735312, 0.601384,
		-0.860248, -0.049452, 0.507472,
		42.014320, 36.329750, 28.995115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892334, 36.366505, 29.249664>,  <42.616497, 36.364365, 28.639885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892334, 36.366505, 29.249664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516914, 36.240921, 29.307026>,  <42.291664, 36.165573, 29.341444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516914, 36.240921, 29.307026>,  <42.892334, 36.366505, 29.249664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516914, 36.240921, 29.307026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335753, -0.734121, 0.590200,
		-0.080020, 0.602078, 0.794417,
		-0.938545, -0.313955, 0.143405,
		42.235352, 36.146736, 29.350048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972504, 36.357483, 30.011311>,  <42.892334, 36.366505, 29.249664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972504, 36.357483, 30.011311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657570, 36.142525, 29.890436>,  <42.468609, 36.013550, 29.817911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657570, 36.142525, 29.890436>,  <42.972504, 36.357483, 30.011311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657570, 36.142525, 29.890436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219117, -0.702046, 0.677583,
		-0.576277, 0.467269, 0.670496,
		-0.787333, -0.537392, -0.302186,
		42.421371, 35.981308, 29.799780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540871, 36.278603, 30.589951>,  <42.972504, 36.357483, 30.011311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540871, 36.278603, 30.589951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474838, 35.976410, 30.336338>,  <42.435219, 35.795094, 30.184170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474838, 35.976410, 30.336338>,  <42.540871, 36.278603, 30.589951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474838, 35.976410, 30.336338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181570, -0.655145, 0.733360,
		-0.969423, 0.005943, 0.245324,
		-0.165082, -0.755480, -0.634034,
		42.425312, 35.749767, 30.146128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019821, 35.742619, 31.024477>,  <42.540871, 36.278603, 30.589951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019821, 35.742619, 31.024477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137562, 35.544357, 30.697628>,  <42.208206, 35.425400, 30.501518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137562, 35.544357, 30.697628>,  <42.019821, 35.742619, 31.024477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137562, 35.544357, 30.697628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029856, -0.859353, 0.510511,
		-0.955231, -0.125874, -0.267750,
		0.294352, -0.495649, -0.817122,
		42.225868, 35.395664, 30.452492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542511, 35.148605, 30.947535>,  <42.019821, 35.742619, 31.024477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542511, 35.148605, 30.947535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889221, 35.051727, 30.773157>,  <42.097248, 34.993599, 30.668530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889221, 35.051727, 30.773157>,  <41.542511, 35.148605, 30.947535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889221, 35.051727, 30.773157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086976, -0.787340, 0.610353,
		-0.491061, -0.566954, -0.661379,
		0.866772, -0.242197, -0.435944,
		42.149254, 34.979069, 30.642374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556320, 34.508301, 31.019096>,  <41.542511, 35.148605, 30.947535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556320, 34.508301, 31.019096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.942982, 34.600330, 30.974100>,  <42.174976, 34.655548, 30.947102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.942982, 34.600330, 30.974100>,  <41.556320, 34.508301, 31.019096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942982, 34.600330, 30.974100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207813, -0.447974, 0.869559,
		0.149667, -0.863937, -0.480846,
		0.966651, 0.230070, -0.112491,
		42.232979, 34.669350, 30.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941345, 33.883507, 31.106611>,  <41.556320, 34.508301, 31.019096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941345, 33.883507, 31.106611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187397, 34.190292, 31.179691>,  <42.335026, 34.374363, 31.223539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187397, 34.190292, 31.179691>,  <41.941345, 33.883507, 31.106611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187397, 34.190292, 31.179691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351448, -0.474166, 0.807249,
		0.705764, -0.432351, -0.561222,
		0.615127, 0.766967, 0.182701,
		42.371937, 34.420383, 31.234501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423985, 33.533283, 31.535212>,  <41.941345, 33.883507, 31.106611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423985, 33.533283, 31.535212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541813, 33.912407, 31.584003>,  <42.612511, 34.139881, 31.613279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541813, 33.912407, 31.584003>,  <42.423985, 33.533283, 31.535212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541813, 33.912407, 31.584003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503600, -0.262444, 0.823110,
		0.812168, -0.181034, -0.554626,
		0.294569, 0.947813, 0.121980,
		42.630184, 34.196751, 31.620598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264671, 33.585186, 31.635082>,  <42.423985, 33.533283, 31.535212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264671, 33.585186, 31.635082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056744, 33.887474, 31.794420>,  <42.931988, 34.068848, 31.890022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056744, 33.887474, 31.794420>,  <43.264671, 33.585186, 31.635082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056744, 33.887474, 31.794420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388059, -0.206521, 0.898198,
		0.761053, 0.621478, -0.185912,
		-0.519815, 0.755721, 0.398344,
		42.900799, 34.114189, 31.913923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656452, 33.759418, 32.096039>,  <43.264671, 33.585186, 31.635082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656452, 33.759418, 32.096039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.315254, 33.934277, 32.210091>,  <43.110535, 34.039192, 32.278522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.315254, 33.934277, 32.210091>,  <43.656452, 33.759418, 32.096039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315254, 33.934277, 32.210091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217718, -0.198465, 0.955620,
		0.474333, 0.877220, 0.074116,
		-0.852999, 0.437146, 0.285125,
		43.059353, 34.065422, 32.295628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927765, 34.078411, 32.675617>,  <43.656452, 33.759418, 32.096039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927765, 34.078411, 32.675617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529640, 34.064903, 32.711861>,  <43.290764, 34.056801, 32.733608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529640, 34.064903, 32.711861>,  <43.927765, 34.078411, 32.675617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529640, 34.064903, 32.711861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096216, -0.252711, 0.962746,
		-0.009610, 0.966953, 0.254776,
		-0.995314, -0.033765, 0.090607,
		43.231045, 34.054775, 32.739044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436558, 34.241924, 33.224140>,  <43.927765, 34.078411, 32.675617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436558, 34.241924, 33.224140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835186, 34.256248, 33.253986>,  <45.074364, 34.264843, 33.271896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835186, 34.256248, 33.253986>,  <44.436558, 34.241924, 33.224140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835186, 34.256248, 33.253986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001058, 0.895979, -0.444096,
		-0.082757, 0.442651, 0.892867,
		0.996569, 0.035808, 0.074617,
		45.134155, 34.266991, 33.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564419, 34.896229, 33.630535>,  <44.436558, 34.241924, 33.224140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564419, 34.896229, 33.630535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899540, 34.800873, 33.434063>,  <45.100613, 34.743660, 33.316181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899540, 34.800873, 33.434063>,  <44.564419, 34.896229, 33.630535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899540, 34.800873, 33.434063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104414, 0.952994, -0.284428,
		0.535896, 0.187009, 0.823312,
		0.837803, -0.238389, -0.491180,
		45.150879, 34.729355, 33.286709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016224, 35.532661, 33.628117>,  <44.564419, 34.896229, 33.630535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016224, 35.532661, 33.628117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147800, 35.320511, 33.315578>,  <45.226746, 35.193222, 33.128056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147800, 35.320511, 33.315578>,  <45.016224, 35.532661, 33.628117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147800, 35.320511, 33.315578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025533, 0.822090, -0.568785,
		0.944004, 0.207049, 0.256882,
		0.328946, -0.530376, -0.781343,
		45.246483, 35.161400, 33.081177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635159, 35.846722, 33.382729>,  <45.016224, 35.532661, 33.628117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635159, 35.846722, 33.382729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541592, 35.637611, 33.054829>,  <45.485451, 35.512146, 32.858089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541592, 35.637611, 33.054829>,  <45.635159, 35.846722, 33.382729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541592, 35.637611, 33.054829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153656, 0.812669, -0.562102,
		0.960037, -0.257447, -0.109773,
		-0.233920, -0.522771, -0.819751,
		45.471416, 35.480782, 32.808903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080208, 36.140972, 32.902863>,  <45.635159, 35.846722, 33.382729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080208, 36.140972, 32.902863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804108, 35.939930, 32.694653>,  <45.638447, 35.819305, 32.569729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804108, 35.939930, 32.694653>,  <46.080208, 36.140972, 32.902863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804108, 35.939930, 32.694653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098079, 0.777730, -0.620900,
		0.716891, -0.377525, -0.586125,
		-0.690252, -0.502604, -0.520520,
		45.597034, 35.789150, 32.538494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344620, 36.066044, 32.295876>,  <46.080208, 36.140972, 32.902863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344620, 36.066044, 32.295876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.955605, 36.014568, 32.218300>,  <45.722195, 35.983685, 32.171753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.955605, 36.014568, 32.218300>,  <46.344620, 36.066044, 32.295876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955605, 36.014568, 32.218300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070199, 0.632273, -0.771559,
		0.221914, -0.763984, -0.605874,
		-0.972536, -0.128688, -0.193941,
		45.663845, 35.975964, 32.160118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270367, 36.002766, 31.473993>,  <46.344620, 36.066044, 32.295876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270367, 36.002766, 31.473993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936771, 36.114437, 31.664368>,  <45.736614, 36.181442, 31.778593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936771, 36.114437, 31.664368>,  <46.270367, 36.002766, 31.473993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936771, 36.114437, 31.664368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255598, 0.568959, -0.781636,
		-0.489008, -0.773526, -0.403148,
		-0.833991, 0.279182, 0.475937,
		45.686573, 36.198193, 31.807148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780319, 35.956623, 30.974163>,  <46.270367, 36.002766, 31.473993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780319, 35.956623, 30.974163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590626, 36.193077, 31.235134>,  <45.476810, 36.334949, 31.391716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590626, 36.193077, 31.235134>,  <45.780319, 35.956623, 30.974163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590626, 36.193077, 31.235134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348984, 0.554133, -0.755742,
		-0.808278, -0.586085, -0.056492,
		-0.474233, 0.591135, 0.652428,
		45.448357, 36.370419, 31.430862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132465, 36.061359, 30.708178>,  <45.780319, 35.956623, 30.974163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132465, 36.061359, 30.708178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151409, 36.360268, 30.973310>,  <45.162773, 36.539612, 31.132391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151409, 36.360268, 30.973310>,  <45.132465, 36.061359, 30.708178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151409, 36.360268, 30.973310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341329, 0.635739, -0.692337,
		-0.938750, -0.193459, 0.285169,
		0.047355, 0.747268, 0.662833,
		45.165615, 36.584450, 31.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506454, 36.393921, 30.729578>,  <45.132465, 36.061359, 30.708178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506454, 36.393921, 30.729578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732239, 36.686562, 30.882498>,  <44.867710, 36.862144, 30.974249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732239, 36.686562, 30.882498>,  <44.506454, 36.393921, 30.729578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732239, 36.686562, 30.882498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406974, 0.649579, -0.642199,
		-0.718164, 0.206909, 0.664401,
		0.564458, 0.731598, 0.382297,
		44.901577, 36.906040, 30.997187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082523, 37.030380, 30.617170>,  <44.506454, 36.393921, 30.729578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082523, 37.030380, 30.617170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450348, 37.162594, 30.702177>,  <44.671043, 37.241920, 30.753181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450348, 37.162594, 30.702177>,  <44.082523, 37.030380, 30.617170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450348, 37.162594, 30.702177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160559, 0.809650, -0.564524,
		-0.358656, 0.484991, 0.797590,
		0.919558, 0.330531, 0.212516,
		44.726215, 37.261753, 30.765932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015194, 37.743858, 30.699224>,  <44.082523, 37.030380, 30.617170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015194, 37.743858, 30.699224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.411381, 37.716789, 30.651220>,  <44.649094, 37.700546, 30.622417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.411381, 37.716789, 30.651220>,  <44.015194, 37.743858, 30.699224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411381, 37.716789, 30.651220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013119, 0.913411, -0.406826,
		0.137152, 0.401372, 0.905588,
		0.990463, -0.067677, -0.120011,
		44.708519, 37.696487, 30.615217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272926, 38.436901, 30.909496>,  <44.015194, 37.743858, 30.699224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272926, 38.436901, 30.909496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538033, 38.246235, 30.678488>,  <44.697098, 38.131836, 30.539883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538033, 38.246235, 30.678488>,  <44.272926, 38.436901, 30.909496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538033, 38.246235, 30.678488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113722, 0.826362, -0.551538,
		0.740138, 0.299866, 0.601894,
		0.662769, -0.476663, -0.577520,
		44.736862, 38.103237, 30.505232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768158, 38.986629, 30.752512>,  <44.272926, 38.436901, 30.909496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768158, 38.986629, 30.752512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838161, 38.699898, 30.482540>,  <44.880165, 38.527859, 30.320557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838161, 38.699898, 30.482540>,  <44.768158, 38.986629, 30.752512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838161, 38.699898, 30.482540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174714, 0.697239, -0.695221,
		0.968942, 0.003750, 0.247262,
		0.175007, -0.716829, -0.674929,
		44.890663, 38.484848, 30.280062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392239, 39.194519, 30.463648>,  <44.768158, 38.986629, 30.752512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392239, 39.194519, 30.463648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227566, 38.950272, 30.193047>,  <45.128761, 38.803722, 30.030685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227566, 38.950272, 30.193047>,  <45.392239, 39.194519, 30.463648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227566, 38.950272, 30.193047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112576, 0.702570, -0.702654,
		0.904347, -0.365429, -0.220495,
		-0.411684, -0.610620, -0.676506,
		45.104061, 38.767086, 29.990095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756256, 39.319065, 29.914219>,  <45.392239, 39.194519, 30.463648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756256, 39.319065, 29.914219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436035, 39.135742, 29.759785>,  <45.243900, 39.025749, 29.667124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436035, 39.135742, 29.759785>,  <45.756256, 39.319065, 29.914219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436035, 39.135742, 29.759785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036561, 0.605718, -0.794839,
		0.598135, -0.650432, -0.468159,
		-0.800561, -0.458305, -0.386081,
		45.195869, 38.998249, 29.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844822, 39.374901, 29.153139>,  <45.756256, 39.319065, 29.914219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844822, 39.374901, 29.153139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453323, 39.300644, 29.187984>,  <45.218426, 39.256088, 29.208891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453323, 39.300644, 29.187984>,  <45.844822, 39.374901, 29.153139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453323, 39.300644, 29.187984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167700, 0.480111, -0.861029,
		0.118024, -0.857339, -0.501040,
		-0.978748, -0.185646, 0.087111,
		45.159698, 39.244949, 29.214117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640347, 39.005939, 28.488703>,  <45.844822, 39.374901, 29.153139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640347, 39.005939, 28.488703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310040, 39.177959, 28.634674>,  <45.111855, 39.281170, 28.722258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310040, 39.177959, 28.634674>,  <45.640347, 39.005939, 28.488703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310040, 39.177959, 28.634674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198002, 0.384805, -0.901510,
		-0.528120, -0.816690, -0.232607,
		-0.825763, 0.430049, 0.364929,
		45.062309, 39.306973, 28.744152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183350, 39.077721, 27.908861>,  <45.640347, 39.005939, 28.488703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183350, 39.077721, 27.908861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016136, 39.319717, 28.179928>,  <44.915806, 39.464916, 28.342567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016136, 39.319717, 28.179928>,  <45.183350, 39.077721, 27.908861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016136, 39.319717, 28.179928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339504, 0.587875, -0.734261,
		-0.842604, -0.537019, -0.040357,
		-0.418037, 0.604990, 0.677666,
		44.890724, 39.501213, 28.383228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556053, 39.133614, 27.632669>,  <45.183350, 39.077721, 27.908861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556053, 39.133614, 27.632669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591656, 39.448299, 27.877018>,  <44.613018, 39.637112, 28.023626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591656, 39.448299, 27.877018>,  <44.556053, 39.133614, 27.632669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591656, 39.448299, 27.877018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343738, 0.599887, -0.722482,
		-0.934838, -0.145677, 0.323814,
		0.089003, 0.786711, 0.610872,
		44.618355, 39.684311, 28.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985420, 39.460377, 27.569647>,  <44.556053, 39.133614, 27.632669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985420, 39.460377, 27.569647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232468, 39.746052, 27.701393>,  <44.380695, 39.917458, 27.780441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232468, 39.746052, 27.701393>,  <43.985420, 39.460377, 27.569647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232468, 39.746052, 27.701393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296034, 0.599099, -0.743939,
		-0.728633, 0.361970, 0.581440,
		0.617623, 0.714184, 0.329368,
		44.417755, 39.960308, 27.800203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.416714, 35.866947, 40.237560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036602, 35.962059, 40.157131>,  <38.808537, 36.019127, 40.108875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036602, 35.962059, 40.157131>,  <39.416714, 35.866947, 40.237560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036602, 35.962059, 40.157131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167040, -0.155694, -0.973579,
		-0.262803, -0.958760, 0.108234,
		-0.950280, 0.237779, -0.201068,
		38.751518, 36.033394, 40.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039268, 35.221851, 40.014572>,  <39.416714, 35.866947, 40.237560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039268, 35.221851, 40.014572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825439, 35.541607, 39.904873>,  <38.697144, 35.733459, 39.839054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825439, 35.541607, 39.904873>,  <39.039268, 35.221851, 40.014572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825439, 35.541607, 39.904873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082364, -0.273685, -0.958286,
		-0.841103, -0.534858, 0.080462,
		-0.534568, 0.799390, -0.274250,
		38.665070, 35.781425, 39.822598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524273, 34.998833, 39.557438>,  <39.039268, 35.221851, 40.014572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524273, 34.998833, 39.557438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547260, 35.393288, 39.495167>,  <38.561054, 35.629959, 39.457806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547260, 35.393288, 39.495167>,  <38.524273, 34.998833, 39.557438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547260, 35.393288, 39.495167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079929, -0.159980, -0.983879,
		-0.995142, 0.044102, -0.088015,
		0.057471, 0.986135, -0.155678,
		38.564503, 35.689129, 39.448463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097328, 35.170795, 38.971561>,  <38.524273, 34.998833, 39.557438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097328, 35.170795, 38.971561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361244, 35.470448, 38.995167>,  <38.519592, 35.650238, 39.009331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361244, 35.470448, 38.995167>,  <38.097328, 35.170795, 38.971561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361244, 35.470448, 38.995167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065642, 0.020771, -0.997627,
		-0.748581, 0.662094, -0.035470,
		0.659786, 0.749133, 0.059010,
		38.559181, 35.695187, 39.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074722, 35.395191, 38.239849>,  <38.097328, 35.170795, 38.971561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074722, 35.395191, 38.239849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382263, 35.574089, 38.422646>,  <38.566788, 35.681427, 38.532322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382263, 35.574089, 38.422646>,  <38.074722, 35.395191, 38.239849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382263, 35.574089, 38.422646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487108, 0.053323, -0.871712,
		-0.414235, 0.892821, -0.176858,
		0.768853, 0.447243, 0.456989,
		38.612919, 35.708263, 38.559742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991718, 36.127766, 37.937656>,  <38.074722, 35.395191, 38.239849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991718, 36.127766, 37.937656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362221, 36.082943, 38.081593>,  <38.584522, 36.056049, 38.167953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362221, 36.082943, 38.081593>,  <37.991718, 36.127766, 37.937656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362221, 36.082943, 38.081593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375854, 0.345278, -0.859952,
		-0.027882, 0.931787, 0.361934,
		0.926259, -0.112057, 0.359843,
		38.640099, 36.049324, 38.189545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314438, 36.714249, 37.682034>,  <37.991718, 36.127766, 37.937656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314438, 36.714249, 37.682034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588993, 36.445351, 37.792992>,  <38.753727, 36.284012, 37.859566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588993, 36.445351, 37.792992>,  <38.314438, 36.714249, 37.682034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588993, 36.445351, 37.792992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603367, 0.313485, -0.733263,
		0.405975, 0.670679, 0.620786,
		0.686391, -0.672248, 0.277399,
		38.794910, 36.243675, 37.876213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859436, 37.091511, 37.823856>,  <38.314438, 36.714249, 37.682034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859436, 37.091511, 37.823856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997219, 36.726719, 37.734741>,  <39.079891, 36.507843, 37.681271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997219, 36.726719, 37.734741>,  <38.859436, 37.091511, 37.823856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997219, 36.726719, 37.734741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612210, 0.398122, -0.683153,
		0.711721, 0.098925, 0.695462,
		0.344460, -0.911983, -0.222788,
		39.100555, 36.453125, 37.667904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447727, 37.297363, 37.826702>,  <38.859436, 37.091511, 37.823856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447727, 37.297363, 37.826702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396091, 36.969570, 37.603355>,  <39.365108, 36.772892, 37.469345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396091, 36.969570, 37.603355>,  <39.447727, 37.297363, 37.826702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396091, 36.969570, 37.603355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452771, 0.452250, -0.768419,
		0.882232, -0.352010, 0.312658,
		-0.129091, -0.819487, -0.558370,
		39.357365, 36.723724, 37.435844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081963, 37.152813, 37.694839>,  <39.447727, 37.297363, 37.826702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081963, 37.152813, 37.694839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853394, 36.997234, 37.405785>,  <39.716251, 36.903889, 37.232353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853394, 36.997234, 37.405785>,  <40.081963, 37.152813, 37.694839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853394, 36.997234, 37.405785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434215, 0.603909, -0.668394,
		0.696376, -0.695712, -0.176199,
		-0.571418, -0.388946, -0.722636,
		39.681969, 36.880550, 37.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457600, 37.201256, 37.160351>,  <40.081963, 37.152813, 37.694839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457600, 37.201256, 37.160351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162800, 37.050926, 36.935642>,  <39.985920, 36.960728, 36.800819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162800, 37.050926, 36.935642>,  <40.457600, 37.201256, 37.160351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162800, 37.050926, 36.935642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466850, 0.317968, -0.825196,
		0.488756, -0.870431, -0.058887,
		-0.737000, -0.375828, -0.561769,
		39.941700, 36.938179, 36.767113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709274, 36.878342, 36.632877>,  <40.457600, 37.201256, 37.160351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709274, 36.878342, 36.632877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339100, 36.954124, 36.501625>,  <40.116993, 36.999596, 36.422874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339100, 36.954124, 36.501625>,  <40.709274, 36.878342, 36.632877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339100, 36.954124, 36.501625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366514, 0.228011, -0.902041,
		-0.096085, -0.955047, -0.280450,
		-0.925438, 0.189461, -0.328130,
		40.061470, 37.010963, 36.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574348, 36.467712, 35.996689>,  <40.709274, 36.878342, 36.632877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574348, 36.467712, 35.996689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331631, 36.785648, 35.998798>,  <40.186001, 36.976410, 36.000065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331631, 36.785648, 35.998798>,  <40.574348, 36.467712, 35.996689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331631, 36.785648, 35.998798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347490, 0.271239, -0.897597,
		-0.714879, -0.542822, -0.440786,
		-0.606794, 0.794842, 0.005278,
		40.149593, 37.024101, 36.000381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267780, 36.093018, 35.998272>,  <40.574348, 36.467712, 35.996689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267780, 36.093018, 35.998272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311005, 35.747284, 35.801804>,  <41.336937, 35.539845, 35.683922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311005, 35.747284, 35.801804>,  <41.267780, 36.093018, 35.998272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311005, 35.747284, 35.801804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019238, -0.492158, 0.870293,
		-0.993958, -0.103490, -0.036553,
		0.108057, -0.864332, -0.491175,
		41.343422, 35.487984, 35.654449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753479, 35.619648, 36.220852>,  <41.267780, 36.093018, 35.998272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753479, 35.619648, 36.220852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092861, 35.449890, 36.094349>,  <41.296490, 35.348034, 36.018448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092861, 35.449890, 36.094349>,  <40.753479, 35.619648, 36.220852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092861, 35.449890, 36.094349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063060, -0.512215, 0.856539,
		-0.525515, -0.746669, -0.407823,
		0.848445, -0.424406, -0.316262,
		41.347397, 35.322571, 35.999474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680088, 34.919834, 36.417862>,  <40.753479, 35.619648, 36.220852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680088, 34.919834, 36.417862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074841, 34.943501, 36.357788>,  <41.311691, 34.957703, 36.321743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074841, 34.943501, 36.357788>,  <40.680088, 34.919834, 36.417862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074841, 34.943501, 36.357788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155658, -0.595273, 0.788302,
		-0.042759, -0.801342, -0.596676,
		0.986885, 0.059171, -0.150189,
		41.370907, 34.961250, 36.312733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007591, 34.198982, 36.542683>,  <40.680088, 34.919834, 36.417862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007591, 34.198982, 36.542683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297367, 34.467537, 36.605194>,  <41.471233, 34.628670, 36.642700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297367, 34.467537, 36.605194>,  <41.007591, 34.198982, 36.542683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297367, 34.467537, 36.605194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227131, -0.446537, 0.865457,
		0.650843, -0.591476, -0.475982,
		0.724441, 0.671387, 0.156283,
		41.514698, 34.668953, 36.652081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566288, 33.801022, 36.758045>,  <41.007591, 34.198982, 36.542683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566288, 33.801022, 36.758045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669006, 34.170612, 36.871414>,  <41.730637, 34.392365, 36.939438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669006, 34.170612, 36.871414>,  <41.566288, 33.801022, 36.758045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669006, 34.170612, 36.871414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070948, -0.310491, 0.947925,
		0.963858, -0.223312, -0.145286,
		0.256793, 0.923973, 0.283426,
		41.746044, 34.447803, 36.956444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202652, 33.769306, 37.152889>,  <41.566288, 33.801022, 36.758045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202652, 33.769306, 37.152889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063377, 34.123589, 37.275723>,  <41.979813, 34.336159, 37.349422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063377, 34.123589, 37.275723>,  <42.202652, 33.769306, 37.152889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063377, 34.123589, 37.275723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324180, -0.193605, 0.925973,
		0.879589, 0.421957, -0.219717,
		-0.348183, 0.885703, 0.307082,
		41.958923, 34.389297, 37.367847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631954, 33.936729, 37.655376>,  <42.202652, 33.769306, 37.152889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631954, 33.936729, 37.655376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350616, 34.210358, 37.732693>,  <42.181816, 34.374535, 37.779083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350616, 34.210358, 37.732693>,  <42.631954, 33.936729, 37.655376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350616, 34.210358, 37.732693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210833, -0.058929, 0.975744,
		0.678868, 0.727032, -0.102777,
		-0.703340, 0.684070, 0.193287,
		42.139614, 34.415577, 37.790680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885925, 34.476795, 38.029739>,  <42.631954, 33.936729, 37.655376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885925, 34.476795, 38.029739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494762, 34.457142, 38.111004>,  <42.260063, 34.445351, 38.159763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494762, 34.457142, 38.111004>,  <42.885925, 34.476795, 38.029739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494762, 34.457142, 38.111004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205169, -0.039934, 0.977912,
		-0.039934, 0.997994, 0.049133,
		-0.977912, -0.049133, 0.203162,
		42.201389, 34.442402, 38.171951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859692, 34.745884, 38.779831>,  <42.885925, 34.476795, 38.029739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859692, 34.745884, 38.779831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513195, 34.567162, 38.690395>,  <42.305298, 34.459930, 38.636734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513195, 34.567162, 38.690395>,  <42.859692, 34.745884, 38.779831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513195, 34.567162, 38.690395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206096, -0.088114, 0.974556,
		-0.455135, 0.890283, -0.015756,
		-0.866243, -0.446802, -0.223587,
		42.253323, 34.433121, 38.623318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348930, 35.209755, 39.108662>,  <42.859692, 34.745884, 38.779831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348930, 35.209755, 39.108662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224854, 34.831158, 39.073055>,  <42.150406, 34.604000, 39.051689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224854, 34.831158, 39.073055>,  <42.348930, 35.209755, 39.108662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224854, 34.831158, 39.073055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321724, 0.016401, 0.946691,
		-0.894581, 0.322295, -0.309599,
		-0.310192, -0.946497, -0.089018,
		42.131798, 34.547207, 39.046349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609596, 35.108105, 39.378811>,  <42.348930, 35.209755, 39.108662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609596, 35.108105, 39.378811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768822, 34.741295, 39.388672>,  <41.864357, 34.521210, 39.394588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768822, 34.741295, 39.388672>,  <41.609596, 35.108105, 39.378811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768822, 34.741295, 39.388672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448644, -0.171163, 0.877167,
		-0.800166, -0.360227, -0.479553,
		0.398061, -0.917028, 0.024655,
		41.888241, 34.466187, 39.396069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168480, 34.837643, 39.838020>,  <41.609596, 35.108105, 39.378811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168480, 34.837643, 39.838020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444660, 34.548409, 39.829700>,  <41.610367, 34.374866, 39.824707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444660, 34.548409, 39.829700>,  <41.168480, 34.837643, 39.838020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444660, 34.548409, 39.829700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258818, -0.273787, 0.926312,
		-0.675498, -0.634184, -0.376182,
		0.690446, -0.723085, -0.020804,
		41.651794, 34.331482, 39.823460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870117, 34.184975, 40.005852>,  <41.168480, 34.837643, 39.838020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870117, 34.184975, 40.005852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254150, 34.108921, 40.087914>,  <41.484570, 34.063290, 40.137150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254150, 34.108921, 40.087914>,  <40.870117, 34.184975, 40.005852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254150, 34.108921, 40.087914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235154, -0.151467, 0.960084,
		-0.151467, -0.970004, -0.190130,
		-0.960084, 0.190130, -0.205158,
		41.542175, 34.051884, 40.149460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773518, 33.605125, 40.361637>,  <40.870117, 34.184975, 40.005852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773518, 33.605125, 40.361637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122238, 33.778526, 40.452885>,  <41.331470, 33.882568, 40.507633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122238, 33.778526, 40.452885>,  <40.773518, 33.605125, 40.361637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122238, 33.778526, 40.452885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225791, -0.057654, 0.972468,
		0.434721, -0.899305, 0.047618,
		0.871800, 0.433504, 0.228118,
		41.383778, 33.908577, 40.521320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959503, 33.265121, 40.893894>,  <40.773518, 33.605125, 40.361637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959503, 33.265121, 40.893894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173779, 33.599621, 40.940754>,  <41.302345, 33.800320, 40.968872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173779, 33.599621, 40.940754>,  <40.959503, 33.265121, 40.893894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173779, 33.599621, 40.940754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176245, -0.024957, 0.984030,
		0.825817, -0.547783, 0.134015,
		0.535691, 0.836248, 0.117154,
		41.334484, 33.850494, 40.975899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164272, 32.611565, 41.056957>,  <40.959503, 33.265121, 40.893894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164272, 32.611565, 41.056957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911171, 32.323353, 41.170425>,  <40.759312, 32.150425, 41.238506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911171, 32.323353, 41.170425>,  <41.164272, 32.611565, 41.056957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911171, 32.323353, 41.170425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013893, -0.376833, -0.926177,
		0.774232, -0.582096, 0.248451,
		-0.632749, -0.720528, 0.283669,
		40.721348, 32.107193, 41.255527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453400, 32.005795, 40.831871>,  <41.164272, 32.611565, 41.056957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453400, 32.005795, 40.831871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059811, 31.939999, 40.859436>,  <40.823658, 31.900522, 40.875977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059811, 31.939999, 40.859436>,  <41.453400, 32.005795, 40.831871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059811, 31.939999, 40.859436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005973, -0.416610, -0.909066,
		0.178242, -0.894080, 0.410914,
		-0.983968, -0.164488, 0.068917,
		40.764622, 31.890652, 40.880112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302460, 31.406284, 40.387962>,  <41.453400, 32.005795, 40.831871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302460, 31.406284, 40.387962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942631, 31.574568, 40.434917>,  <40.726734, 31.675537, 40.463089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942631, 31.574568, 40.434917>,  <41.302460, 31.406284, 40.387962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942631, 31.574568, 40.434917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181793, -0.116268, -0.976439,
		-0.397148, -0.899714, 0.181073,
		-0.899569, 0.420709, 0.117386,
		40.672760, 31.700781, 40.470135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950924, 30.969997, 39.933830>,  <41.302460, 31.406284, 40.387962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950924, 30.969997, 39.933830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719425, 31.289410, 40.000038>,  <40.580524, 31.481056, 40.039761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719425, 31.289410, 40.000038>,  <40.950924, 30.969997, 39.933830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719425, 31.289410, 40.000038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181772, 0.071538, -0.980735,
		-0.794988, -0.597687, 0.103748,
		-0.578751, 0.798532, 0.165515,
		40.545799, 31.528969, 40.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336735, 30.818312, 39.464455>,  <40.950924, 30.969997, 39.933830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336735, 30.818312, 39.464455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329849, 31.206158, 39.562065>,  <40.325718, 31.438866, 39.620632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329849, 31.206158, 39.562065>,  <40.336735, 30.818312, 39.464455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329849, 31.206158, 39.562065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160258, 0.238229, -0.957896,
		-0.986925, -0.055598, 0.151287,
		-0.017216, 0.969616, 0.244024,
		40.324684, 31.497042, 39.635273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632103, 31.086742, 39.297649>,  <40.336735, 30.818312, 39.464455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632103, 31.086742, 39.297649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894566, 31.388533, 39.291714>,  <40.052044, 31.569607, 39.288151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894566, 31.388533, 39.291714>,  <39.632103, 31.086742, 39.297649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894566, 31.388533, 39.291714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343339, 0.280972, -0.896199,
		-0.671992, 0.593144, 0.443404,
		0.656160, 0.754476, -0.014839,
		40.091412, 31.614876, 39.287262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312046, 31.690105, 38.972534>,  <39.632103, 31.086742, 39.297649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312046, 31.690105, 38.972534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698895, 31.790966, 38.959305>,  <39.931004, 31.851482, 38.951366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698895, 31.790966, 38.959305>,  <39.312046, 31.690105, 38.972534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698895, 31.790966, 38.959305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099636, 0.256023, -0.961522,
		-0.233979, 0.933206, 0.272729,
		0.967123, 0.252150, -0.033077,
		39.989033, 31.866611, 38.949383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170231, 32.248650, 38.598488>,  <39.312046, 31.690105, 38.972534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170231, 32.248650, 38.598488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560238, 32.161915, 38.579239>,  <39.794243, 32.109875, 38.567688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560238, 32.161915, 38.579239>,  <39.170231, 32.248650, 38.598488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560238, 32.161915, 38.579239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032621, 0.074511, -0.996687,
		0.219703, 0.973360, 0.065576,
		0.975021, -0.216836, -0.048123,
		39.852745, 32.096863, 38.564800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562851, 32.851978, 38.197697>,  <39.170231, 32.248650, 38.598488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562851, 32.851978, 38.197697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759392, 32.507774, 38.143902>,  <39.877316, 32.301250, 38.111626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759392, 32.507774, 38.143902>,  <39.562851, 32.851978, 38.197697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759392, 32.507774, 38.143902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063150, 0.118812, -0.990906,
		0.868668, 0.495379, 0.004037,
		0.491354, -0.860513, -0.134491,
		39.906799, 32.249619, 38.103554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854450, 33.071404, 37.641354>,  <39.562851, 32.851978, 38.197697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854450, 33.071404, 37.641354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878735, 32.673954, 37.679352>,  <39.893307, 32.435486, 37.702148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878735, 32.673954, 37.679352>,  <39.854450, 33.071404, 37.641354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878735, 32.673954, 37.679352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146400, -0.103002, -0.983848,
		0.987361, 0.045826, -0.151720,
		0.060713, -0.993625, 0.094991,
		39.896950, 32.375866, 37.707848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428741, 32.831345, 37.321560>,  <39.854450, 33.071404, 37.641354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428741, 32.831345, 37.321560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158726, 32.536446, 37.332779>,  <39.996716, 32.359509, 37.339512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158726, 32.536446, 37.332779>,  <40.428741, 32.831345, 37.321560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158726, 32.536446, 37.332779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007902, -0.030789, -0.999495,
		0.737736, -0.674923, 0.014959,
		-0.675042, -0.737245, 0.028047,
		39.956211, 32.315273, 37.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692970, 32.352055, 36.913280>,  <40.428741, 32.831345, 37.321560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692970, 32.352055, 36.913280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301414, 32.273796, 36.936962>,  <40.066483, 32.226841, 36.951172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301414, 32.273796, 36.936962>,  <40.692970, 32.352055, 36.913280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301414, 32.273796, 36.936962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012077, -0.233763, -0.972219,
		0.204054, -0.952405, 0.226464,
		-0.978885, -0.195650, 0.059202,
		40.007748, 32.215099, 36.954723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.272446, 32.419113, 44.970287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.881092, 32.358303, 44.914211>,  <40.646278, 32.321819, 44.880566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.881092, 32.358303, 44.914211>,  <41.272446, 32.419113, 44.970287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881092, 32.358303, 44.914211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184324, -0.333783, -0.924453,
		0.093746, -0.930310, 0.354590,
		-0.978384, -0.152023, -0.140187,
		40.587578, 32.312695, 44.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184307, 31.770578, 44.517086>,  <41.272446, 32.419113, 44.970287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184307, 31.770578, 44.517086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.838959, 31.969816, 44.484867>,  <40.631748, 32.089359, 44.465534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.838959, 31.969816, 44.484867>,  <41.184307, 31.770578, 44.517086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838959, 31.969816, 44.484867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024162, -0.118648, -0.992642,
		-0.503988, -0.858966, 0.090403,
		-0.863372, 0.498096, -0.080552,
		40.579948, 32.119244, 44.460701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703438, 31.301966, 44.102112>,  <41.184307, 31.770578, 44.517086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703438, 31.301966, 44.102112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554043, 31.672918, 44.093491>,  <40.464405, 31.895491, 44.088318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554043, 31.672918, 44.093491>,  <40.703438, 31.301966, 44.102112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554043, 31.672918, 44.093491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240227, -0.119139, -0.963378,
		-0.895988, -0.354636, 0.267280,
		-0.373492, 0.927383, -0.021554,
		40.441994, 31.951134, 44.087025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136044, 31.261000, 43.700489>,  <40.703438, 31.301966, 44.102112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136044, 31.261000, 43.700489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215057, 31.650574, 43.655899>,  <40.262466, 31.884319, 43.629143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215057, 31.650574, 43.655899>,  <40.136044, 31.261000, 43.700489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215057, 31.650574, 43.655899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093333, -0.094519, -0.991138,
		-0.975842, 0.206190, 0.072229,
		0.197536, 0.973936, -0.111480,
		40.274319, 31.942755, 43.622456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595501, 31.511803, 43.324623>,  <40.136044, 31.261000, 43.700489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595501, 31.511803, 43.324623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880627, 31.788919, 43.280907>,  <40.051701, 31.955189, 43.254677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880627, 31.788919, 43.280907>,  <39.595501, 31.511803, 43.324623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880627, 31.788919, 43.280907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151839, 0.000299, -0.988405,
		-0.684724, 0.721139, 0.105406,
		0.712810, 0.692790, -0.109292,
		40.094471, 31.996756, 43.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251743, 32.038044, 42.852333>,  <39.595501, 31.511803, 43.324623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251743, 32.038044, 42.852333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649261, 32.081619, 42.861351>,  <39.887772, 32.107765, 42.866760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649261, 32.081619, 42.861351>,  <39.251743, 32.038044, 42.852333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649261, 32.081619, 42.861351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029021, -0.058255, -0.997880,
		-0.107392, 0.992341, -0.061054,
		0.993793, 0.108936, 0.022543,
		39.947399, 32.114300, 42.868114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436867, 32.510170, 42.342144>,  <39.251743, 32.038044, 42.852333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436867, 32.510170, 42.342144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772537, 32.303337, 42.409569>,  <39.973938, 32.179237, 42.450024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772537, 32.303337, 42.409569>,  <39.436867, 32.510170, 42.342144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772537, 32.303337, 42.409569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229362, 0.055443, -0.971761,
		0.493131, 0.854140, 0.165125,
		0.839175, -0.517079, 0.168566,
		40.024288, 32.148212, 42.460140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016262, 32.931438, 42.119736>,  <39.436867, 32.510170, 42.342144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016262, 32.931438, 42.119736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.150352, 32.555382, 42.144238>,  <40.230808, 32.329746, 42.158939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.150352, 32.555382, 42.144238>,  <40.016262, 32.931438, 42.119736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150352, 32.555382, 42.144238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251019, 0.026459, -0.967621,
		0.908081, 0.339751, 0.244863,
		0.335229, -0.940143, 0.061257,
		40.250919, 32.273338, 42.162613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693165, 32.900116, 41.726730>,  <40.016262, 32.931438, 42.119736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693165, 32.900116, 41.726730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553513, 32.525307, 41.722656>,  <40.469723, 32.300423, 41.720211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553513, 32.525307, 41.722656>,  <40.693165, 32.900116, 41.726730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553513, 32.525307, 41.722656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083170, -0.020154, -0.996332,
		0.933376, -0.348696, 0.084968,
		-0.349129, -0.937019, -0.010189,
		40.448772, 32.244202, 41.719601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361694, 33.193821, 41.704712>,  <40.693165, 32.900116, 41.726730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361694, 33.193821, 41.704712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346153, 33.564209, 41.554470>,  <41.336830, 33.786442, 41.464325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346153, 33.564209, 41.554470>,  <41.361694, 33.193821, 41.704712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346153, 33.564209, 41.554470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061237, 0.372975, 0.925818,
		0.997367, 0.058972, 0.042212,
		-0.038853, 0.925966, -0.375604,
		41.334496, 33.841999, 41.441788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957134, 33.646534, 42.094135>,  <41.361694, 33.193821, 41.704712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957134, 33.646534, 42.094135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666374, 33.882702, 41.953838>,  <41.491920, 34.024403, 41.869659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666374, 33.882702, 41.953838>,  <41.957134, 33.646534, 42.094135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666374, 33.882702, 41.953838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053700, 0.460305, 0.886135,
		0.684643, 0.662965, -0.302889,
		-0.726898, 0.590421, -0.350746,
		41.448303, 34.059830, 41.848614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161427, 34.338707, 42.292976>,  <41.957134, 33.646534, 42.094135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161427, 34.338707, 42.292976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768166, 34.366131, 42.225197>,  <41.532207, 34.382584, 42.184528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768166, 34.366131, 42.225197>,  <42.161427, 34.338707, 42.292976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768166, 34.366131, 42.225197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117031, 0.476045, 0.871599,
		0.140421, 0.876745, -0.460001,
		-0.983151, 0.068556, -0.169452,
		41.473221, 34.386696, 42.174362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060341, 35.000828, 42.387085>,  <42.161427, 34.338707, 42.292976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060341, 35.000828, 42.387085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704697, 34.823708, 42.433392>,  <41.491310, 34.717434, 42.461178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704697, 34.823708, 42.433392>,  <42.060341, 35.000828, 42.387085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704697, 34.823708, 42.433392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168353, 0.551624, 0.816926,
		-0.425598, 0.706850, -0.565004,
		-0.889114, -0.442802, 0.115770,
		41.437962, 34.690868, 42.468124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569103, 35.635780, 42.646324>,  <42.060341, 35.000828, 42.387085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569103, 35.635780, 42.646324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374901, 35.290096, 42.699131>,  <41.258377, 35.082687, 42.730816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374901, 35.290096, 42.699131>,  <41.569103, 35.635780, 42.646324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374901, 35.290096, 42.699131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350382, 0.330705, 0.876280,
		-0.800946, 0.379184, -0.463363,
		-0.485508, -0.864207, 0.132018,
		41.229248, 35.030834, 42.738735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845543, 35.861069, 42.758171>,  <41.569103, 35.635780, 42.646324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845543, 35.861069, 42.758171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925472, 35.506001, 42.924114>,  <40.973431, 35.292961, 43.023682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925472, 35.506001, 42.924114>,  <40.845543, 35.861069, 42.758171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925472, 35.506001, 42.924114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269040, 0.357417, 0.894355,
		-0.942171, -0.290330, -0.167398,
		0.199827, -0.887672, 0.414858,
		40.985420, 35.239700, 43.048573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309284, 35.739277, 43.209457>,  <40.845543, 35.861069, 42.758171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309284, 35.739277, 43.209457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578407, 35.467823, 43.327293>,  <40.739880, 35.304951, 43.397995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578407, 35.467823, 43.327293>,  <40.309284, 35.739277, 43.209457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578407, 35.467823, 43.327293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313965, 0.098645, 0.944296,
		-0.669892, -0.727821, -0.146698,
		0.672808, -0.678635, 0.294592,
		40.780251, 35.264233, 43.415672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024147, 35.422749, 43.807888>,  <40.309284, 35.739277, 43.209457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024147, 35.422749, 43.807888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410805, 35.322311, 43.828053>,  <40.642799, 35.262047, 43.840153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410805, 35.322311, 43.828053>,  <40.024147, 35.422749, 43.807888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410805, 35.322311, 43.828053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047826, 0.016409, 0.998721,
		-0.251603, -0.967823, 0.003853,
		0.966648, -0.251097, 0.050416,
		40.700798, 35.246983, 43.843178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060150, 34.870514, 44.300373>,  <40.024147, 35.422749, 43.807888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060150, 34.870514, 44.300373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426716, 35.026684, 44.265152>,  <40.646656, 35.120384, 44.244019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426716, 35.026684, 44.265152>,  <40.060150, 34.870514, 44.300373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426716, 35.026684, 44.265152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020828, 0.173175, 0.984671,
		0.399689, -0.904200, 0.150568,
		0.916414, 0.390426, -0.088049,
		40.701641, 35.143810, 44.238739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416885, 34.594997, 44.941265>,  <40.060150, 34.870514, 44.300373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416885, 34.594997, 44.941265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593197, 34.921280, 44.791416>,  <40.698982, 35.117050, 44.701508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593197, 34.921280, 44.791416>,  <40.416885, 34.594997, 44.941265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593197, 34.921280, 44.791416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145449, 0.346927, 0.926546,
		0.885754, -0.462887, 0.034274,
		0.440777, 0.815707, -0.374618,
		40.725430, 35.165993, 44.679031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977051, 34.602535, 45.382793>,  <40.416885, 34.594997, 44.941265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977051, 34.602535, 45.382793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.948318, 34.961594, 45.208862>,  <40.931080, 35.177029, 45.104504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.948318, 34.961594, 45.208862>,  <40.977051, 34.602535, 45.382793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948318, 34.961594, 45.208862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383645, 0.427283, 0.818685,
		0.920682, -0.108011, -0.375070,
		-0.071834, 0.897643, -0.434830,
		40.926769, 35.230888, 45.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570847, 34.920231, 45.546291>,  <40.977051, 34.602535, 45.382793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570847, 34.920231, 45.546291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319466, 35.214523, 45.445305>,  <41.168636, 35.391098, 45.384712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319466, 35.214523, 45.445305>,  <41.570847, 34.920231, 45.546291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319466, 35.214523, 45.445305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253636, 0.500662, 0.827651,
		0.735330, 0.456108, -0.501253,
		-0.628457, 0.735733, -0.252466,
		41.130928, 35.435242, 45.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951580, 35.561764, 45.629520>,  <41.570847, 34.920231, 45.546291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951580, 35.561764, 45.629520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.560833, 35.642975, 45.656361>,  <41.326385, 35.691700, 45.672466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.560833, 35.642975, 45.656361>,  <41.951580, 35.561764, 45.629520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560833, 35.642975, 45.656361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180531, 0.614935, 0.767635,
		0.114588, 0.761994, -0.637365,
		-0.976872, 0.203026, 0.067100,
		41.267773, 35.703884, 45.676491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951591, 36.274296, 45.887787>,  <41.951580, 35.561764, 45.629520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951591, 36.274296, 45.887787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.585873, 36.142250, 45.981667>,  <41.366440, 36.063023, 46.037994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.585873, 36.142250, 45.981667>,  <41.951591, 36.274296, 45.887787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585873, 36.142250, 45.981667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033146, 0.638479, 0.768925,
		-0.403683, 0.695247, -0.594702,
		-0.914298, -0.330114, 0.234699,
		41.311584, 36.043217, 46.052074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.842010, 37.951122, 45.970615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236404, 37.884495, 45.974434>,  <34.473042, 37.844521, 45.976723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236404, 37.884495, 45.974434>,  <33.842010, 37.951122, 45.970615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236404, 37.884495, 45.974434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003158, -0.075823, -0.997116,
		0.166807, 0.983111, -0.075287,
		0.985984, -0.166564, 0.009543,
		34.532200, 37.834526, 45.977295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123096, 38.265999, 45.428211>,  <33.842010, 37.951122, 45.970615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123096, 38.265999, 45.428211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434856, 38.024906, 45.496620>,  <34.621914, 37.880249, 45.537666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434856, 38.024906, 45.496620>,  <34.123096, 38.265999, 45.428211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434856, 38.024906, 45.496620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224805, 0.014240, -0.974300,
		0.584806, 0.797817, 0.146596,
		0.779400, -0.602732, 0.171025,
		34.668678, 37.844086, 45.547928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734890, 38.553890, 45.054661>,  <34.123096, 38.265999, 45.428211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734890, 38.553890, 45.054661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795933, 38.159279, 45.078217>,  <34.832558, 37.922512, 45.092350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795933, 38.159279, 45.078217>,  <34.734890, 38.553890, 45.054661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795933, 38.159279, 45.078217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283479, -0.013388, -0.958885,
		0.946759, 0.163022, 0.277618,
		0.152603, -0.986531, 0.058888,
		34.841713, 37.863319, 45.095882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235344, 38.486046, 44.608925>,  <34.734890, 38.553890, 45.054661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235344, 38.486046, 44.608925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.104042, 38.113972, 44.674660>,  <35.025261, 37.890728, 44.714100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.104042, 38.113972, 44.674660>,  <35.235344, 38.486046, 44.608925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104042, 38.113972, 44.674660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164649, -0.227661, -0.959719,
		0.930127, -0.287978, 0.227886,
		-0.328259, -0.930182, 0.164339,
		35.005566, 37.834915, 44.723961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608540, 38.142548, 44.149010>,  <35.235344, 38.486046, 44.608925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608540, 38.142548, 44.149010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299217, 37.898731, 44.218815>,  <35.113625, 37.752441, 44.260696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299217, 37.898731, 44.218815>,  <35.608540, 38.142548, 44.149010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299217, 37.898731, 44.218815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005709, -0.268533, -0.963253,
		0.634009, -0.745885, 0.204179,
		-0.773305, -0.609546, 0.174511,
		35.067226, 37.715866, 44.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786308, 37.549587, 43.697926>,  <35.608540, 38.142548, 44.149010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786308, 37.549587, 43.697926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402176, 37.494499, 43.794918>,  <35.171696, 37.461449, 43.853115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402176, 37.494499, 43.794918>,  <35.786308, 37.549587, 43.697926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402176, 37.494499, 43.794918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205645, -0.237556, -0.949356,
		0.188346, -0.961562, 0.199811,
		-0.960331, -0.137718, 0.242484,
		35.114075, 37.453182, 43.867664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608280, 36.945724, 43.390217>,  <35.786308, 37.549587, 43.697926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608280, 36.945724, 43.390217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252590, 37.121635, 43.440609>,  <35.039177, 37.227184, 43.470844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252590, 37.121635, 43.440609>,  <35.608280, 36.945724, 43.390217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252590, 37.121635, 43.440609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273582, -0.290513, -0.916927,
		-0.366650, -0.849820, 0.378648,
		-0.889225, 0.439782, 0.125979,
		34.985821, 37.253571, 43.478401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215462, 36.651062, 42.860538>,  <35.608280, 36.945724, 43.390217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215462, 36.651062, 42.860538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968613, 36.950920, 42.956203>,  <34.820503, 37.130836, 43.013603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968613, 36.950920, 42.956203>,  <35.215462, 36.651062, 42.860538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968613, 36.950920, 42.956203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381857, -0.019563, -0.924014,
		-0.688003, -0.661552, 0.298329,
		-0.617120, 0.749644, 0.239159,
		34.783478, 37.175812, 43.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529716, 36.442783, 42.771240>,  <35.215462, 36.651062, 42.860538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529716, 36.442783, 42.771240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529945, 36.840569, 42.729206>,  <34.530083, 37.079239, 42.703983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529945, 36.840569, 42.729206>,  <34.529716, 36.442783, 42.771240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529945, 36.840569, 42.729206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341929, -0.098561, -0.934543,
		-0.939726, 0.036466, 0.339979,
		0.000571, 0.994463, -0.105089,
		34.530117, 37.138908, 42.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975128, 36.517399, 42.314873>,  <34.529716, 36.442783, 42.771240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975128, 36.517399, 42.314873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.194981, 36.851261, 42.300694>,  <34.326893, 37.051579, 42.292187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.194981, 36.851261, 42.300694>,  <33.975128, 36.517399, 42.314873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194981, 36.851261, 42.300694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203546, 0.092641, -0.974673,
		-0.810231, 0.542927, 0.220809,
		0.549632, 0.834655, -0.035450,
		34.359871, 37.101658, 42.290058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744514, 36.863445, 41.786484>,  <33.975128, 36.517399, 42.314873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744514, 36.863445, 41.786484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095024, 37.054741, 41.809910>,  <34.305332, 37.169518, 41.823967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095024, 37.054741, 41.809910>,  <33.744514, 36.863445, 41.786484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095024, 37.054741, 41.809910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030702, 0.176738, -0.983779,
		-0.480829, 0.860264, 0.169554,
		0.876277, 0.478236, 0.058568,
		34.357906, 37.198212, 41.827480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522820, 37.494461, 41.316017>,  <33.744514, 36.863445, 41.786484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522820, 37.494461, 41.316017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917076, 37.480728, 41.382137>,  <34.153629, 37.472488, 41.421810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917076, 37.480728, 41.382137>,  <33.522820, 37.494461, 41.316017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917076, 37.480728, 41.382137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168788, 0.179747, -0.969124,
		0.003564, 0.983113, 0.182962,
		0.985646, -0.034336, 0.165297,
		34.212769, 37.470428, 41.431725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880642, 38.154171, 41.014637>,  <33.522820, 37.494461, 41.316017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880642, 38.154171, 41.014637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130508, 37.844002, 41.051540>,  <34.280426, 37.657898, 41.073681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130508, 37.844002, 41.051540>,  <33.880642, 38.154171, 41.014637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130508, 37.844002, 41.051540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308804, 0.136782, -0.941239,
		0.717242, 0.616446, 0.324897,
		0.624663, -0.775426, 0.092255,
		34.317909, 37.611374, 41.079216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472633, 38.335144, 40.605808>,  <33.880642, 38.154171, 41.014637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472633, 38.335144, 40.605808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485836, 37.939575, 40.663704>,  <34.493759, 37.702236, 40.698441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485836, 37.939575, 40.663704>,  <34.472633, 38.335144, 40.605808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485836, 37.939575, 40.663704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298554, -0.128449, -0.945710,
		0.953822, 0.074430, 0.291006,
		0.033009, -0.988919, 0.144739,
		34.495739, 37.642899, 40.707127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157230, 38.511856, 40.797279>,  <34.472633, 38.335144, 40.605808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157230, 38.511856, 40.797279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473980, 38.707470, 40.650974>,  <35.664028, 38.824841, 40.563190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473980, 38.707470, 40.650974>,  <35.157230, 38.511856, 40.797279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473980, 38.707470, 40.650974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152765, 0.421268, 0.893977,
		0.591274, -0.763790, 0.258882,
		0.791870, 0.489038, -0.365765,
		35.711540, 38.854183, 40.541245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649921, 38.416279, 41.213573>,  <35.157230, 38.511856, 40.797279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649921, 38.416279, 41.213573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777874, 38.750900, 41.035648>,  <35.854645, 38.951672, 40.928894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777874, 38.750900, 41.035648>,  <35.649921, 38.416279, 41.213573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777874, 38.750900, 41.035648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167070, 0.412324, 0.895588,
		0.932612, -0.360796, -0.007868,
		0.319880, 0.836550, -0.444816,
		35.873837, 39.001865, 40.902203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241772, 38.616089, 41.651699>,  <35.649921, 38.416279, 41.213573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241772, 38.616089, 41.651699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.094421, 38.926022, 41.446198>,  <36.006012, 39.111980, 41.322895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.094421, 38.926022, 41.446198>,  <36.241772, 38.616089, 41.651699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094421, 38.926022, 41.446198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163953, 0.598096, 0.784474,
		0.915107, 0.204746, -0.347357,
		-0.368371, 0.774829, -0.513754,
		35.983910, 39.158470, 41.292072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818771, 39.031643, 41.474838>,  <36.241772, 38.616089, 41.651699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818771, 39.031643, 41.474838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482449, 39.247700, 41.460415>,  <36.280655, 39.377335, 41.451763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482449, 39.247700, 41.460415>,  <36.818771, 39.031643, 41.474838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482449, 39.247700, 41.460415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240880, 0.432948, 0.868638,
		0.484796, 0.721668, -0.494133,
		-0.840803, 0.540139, -0.036056,
		36.230209, 39.409740, 41.449596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044979, 39.691292, 41.705975>,  <36.818771, 39.031643, 41.474838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044979, 39.691292, 41.705975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647541, 39.686092, 41.750877>,  <36.409077, 39.682972, 41.777821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647541, 39.686092, 41.750877>,  <37.044979, 39.691292, 41.705975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647541, 39.686092, 41.750877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101388, 0.336222, 0.936309,
		-0.049914, 0.941693, -0.332750,
		-0.993594, -0.012998, 0.112259,
		36.349464, 39.682194, 41.784554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812298, 40.436405, 41.874630>,  <37.044979, 39.691292, 41.705975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812298, 40.436405, 41.874630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554401, 40.168076, 42.021221>,  <36.399662, 40.007080, 42.109177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554401, 40.168076, 42.021221>,  <36.812298, 40.436405, 41.874630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554401, 40.168076, 42.021221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226779, 0.289986, 0.929774,
		-0.729987, 0.682573, -0.034838,
		-0.644741, -0.670822, 0.366479,
		36.360981, 39.966827, 42.131165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656296, 40.806690, 42.444668>,  <36.812298, 40.436405, 41.874630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656296, 40.806690, 42.444668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.493816, 40.452503, 42.534954>,  <36.396328, 40.239990, 42.589127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.493816, 40.452503, 42.534954>,  <36.656296, 40.806690, 42.444668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493816, 40.452503, 42.534954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004316, 0.248873, 0.968526,
		-0.913774, 0.392442, -0.104914,
		-0.406201, -0.885467, 0.225720,
		36.371956, 40.186863, 42.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013077, 40.920250, 42.872288>,  <36.656296, 40.806690, 42.444668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013077, 40.920250, 42.872288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140881, 40.545612, 42.929836>,  <36.217564, 40.320827, 42.964363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140881, 40.545612, 42.929836>,  <36.013077, 40.920250, 42.872288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140881, 40.545612, 42.929836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093324, 0.119987, 0.988379,
		-0.942977, -0.329221, -0.049071,
		0.319507, -0.936598, 0.143869,
		36.236732, 40.264633, 42.972996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562168, 40.657612, 43.490486>,  <36.013077, 40.920250, 42.872288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562168, 40.657612, 43.490486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840149, 40.370682, 43.470535>,  <36.006939, 40.198524, 43.458565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840149, 40.370682, 43.470535>,  <35.562168, 40.657612, 43.490486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840149, 40.370682, 43.470535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093170, -0.158608, 0.982936,
		-0.712993, -0.678448, -0.177058,
		0.694954, -0.717323, -0.049875,
		36.048634, 40.155483, 43.455574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394413, 40.133736, 43.987759>,  <35.562168, 40.657612, 43.490486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394413, 40.133736, 43.987759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785812, 40.084991, 43.921192>,  <36.020653, 40.055744, 43.881252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785812, 40.084991, 43.921192>,  <35.394413, 40.133736, 43.987759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785812, 40.084991, 43.921192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161774, -0.047112, 0.985703,
		-0.127961, -0.991428, -0.026385,
		0.978497, -0.121863, -0.166416,
		36.079361, 40.048431, 43.871269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685787, 39.402382, 44.178150>,  <35.394413, 40.133736, 43.987759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685787, 39.402382, 44.178150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968769, 39.683632, 44.206806>,  <36.138557, 39.852383, 44.223999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968769, 39.683632, 44.206806>,  <35.685787, 39.402382, 44.178150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968769, 39.683632, 44.206806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104684, -0.204496, 0.973254,
		0.698966, -0.681030, -0.218276,
		0.707452, 0.703121, 0.071643,
		36.181004, 39.894569, 44.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341354, 39.105907, 44.418713>,  <35.685787, 39.402382, 44.178150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341354, 39.105907, 44.418713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362976, 39.490700, 44.525799>,  <36.375950, 39.721577, 44.590050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362976, 39.490700, 44.525799>,  <36.341354, 39.105907, 44.418713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362976, 39.490700, 44.525799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262556, -0.272363, 0.925680,
		0.963401, 0.020251, -0.267297,
		0.054056, 0.961981, 0.267712,
		36.379192, 39.779293, 44.606113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034458, 39.227180, 44.644947>,  <36.341354, 39.105907, 44.418713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034458, 39.227180, 44.644947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811852, 39.523930, 44.794571>,  <36.678288, 39.701977, 44.884346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811852, 39.523930, 44.794571>,  <37.034458, 39.227180, 44.644947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811852, 39.523930, 44.794571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482672, -0.077767, 0.872342,
		0.676253, 0.666019, -0.314802,
		-0.556515, 0.741870, 0.374059,
		36.644897, 39.746490, 44.906788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496426, 39.512199, 45.056534>,  <37.034458, 39.227180, 44.644947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496426, 39.512199, 45.056534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128887, 39.604473, 45.184601>,  <36.908363, 39.659840, 45.261440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128887, 39.604473, 45.184601>,  <37.496426, 39.512199, 45.056534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128887, 39.604473, 45.184601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299266, -0.121481, 0.946405,
		0.257217, 0.965415, 0.042586,
		-0.918847, 0.230687, 0.320163,
		36.853233, 39.673679, 45.280651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207924, 39.245155, 44.884369>,  <37.496426, 39.512199, 45.056534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207924, 39.245155, 44.884369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487103, 38.962784, 44.932587>,  <38.654610, 38.793362, 44.961517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487103, 38.962784, 44.932587>,  <38.207924, 39.245155, 44.884369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487103, 38.962784, 44.932587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005873, -0.162676, -0.986662,
		0.716127, 0.689344, -0.109392,
		0.697945, -0.705933, 0.120545,
		38.696487, 38.751003, 44.968750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580280, 39.289536, 44.314445>,  <38.207924, 39.245155, 44.884369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580280, 39.289536, 44.314445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670227, 38.919678, 44.437389>,  <38.724197, 38.697762, 44.511154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670227, 38.919678, 44.437389>,  <38.580280, 39.289536, 44.314445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670227, 38.919678, 44.437389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144570, -0.343604, -0.927920,
		0.963604, 0.164228, -0.210942,
		0.224871, -0.924644, 0.307356,
		38.737690, 38.642284, 44.529594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969616, 39.111351, 43.796783>,  <38.580280, 39.289536, 44.314445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969616, 39.111351, 43.796783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841850, 38.784321, 43.988430>,  <38.765190, 38.588104, 44.103416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841850, 38.784321, 43.988430>,  <38.969616, 39.111351, 43.796783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841850, 38.784321, 43.988430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374586, -0.355486, -0.856338,
		0.870436, -0.452997, -0.192703,
		-0.319415, -0.817571, 0.479114,
		38.746025, 38.539051, 44.132164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349689, 38.645779, 43.536961>,  <38.969616, 39.111351, 43.796783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349689, 38.645779, 43.536961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037964, 38.444370, 43.686165>,  <38.850929, 38.323524, 43.775688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037964, 38.444370, 43.686165>,  <39.349689, 38.645779, 43.536961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037964, 38.444370, 43.686165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086333, -0.503311, -0.859782,
		0.620656, -0.702245, 0.348768,
		-0.779316, -0.503518, 0.373010,
		38.804169, 38.293316, 43.798069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475845, 37.959221, 43.433704>,  <39.349689, 38.645779, 43.536961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475845, 37.959221, 43.433704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078804, 37.990356, 43.470978>,  <38.840580, 38.009037, 43.493343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078804, 37.990356, 43.470978>,  <39.475845, 37.959221, 43.433704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078804, 37.990356, 43.470978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116659, -0.398709, -0.909627,
		-0.033648, -0.913769, 0.404839,
		-0.992602, 0.077835, 0.093184,
		38.781025, 38.013706, 43.498932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230061, 37.321613, 43.199638>,  <39.475845, 37.959221, 43.433704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230061, 37.321613, 43.199638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905987, 37.555618, 43.184864>,  <38.711544, 37.696022, 43.175999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905987, 37.555618, 43.184864>,  <39.230061, 37.321613, 43.199638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905987, 37.555618, 43.184864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307686, -0.478054, -0.822675,
		-0.498938, -0.655149, 0.567311,
		-0.810179, 0.585017, -0.036939,
		38.662930, 37.731121, 43.173786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666393, 36.806702, 43.264381>,  <39.230061, 37.321613, 43.199638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666393, 36.806702, 43.264381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479683, 37.129692, 43.120102>,  <38.367657, 37.323486, 43.033535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479683, 37.129692, 43.120102>,  <38.666393, 36.806702, 43.264381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479683, 37.129692, 43.120102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391452, -0.554372, -0.734464,
		-0.793026, -0.201629, 0.574853,
		-0.466771, 0.807476, -0.360703,
		38.339653, 37.371937, 43.011890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005039, 36.598259, 43.060589>,  <38.666393, 36.806702, 43.264381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005039, 36.598259, 43.060589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065247, 36.942432, 42.865860>,  <38.101372, 37.148937, 42.749023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065247, 36.942432, 42.865860>,  <38.005039, 36.598259, 43.060589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065247, 36.942432, 42.865860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364800, -0.409338, -0.836279,
		-0.918840, 0.303465, 0.252276,
		0.150515, 0.860437, -0.486820,
		38.110401, 37.200565, 42.719814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369698, 36.663368, 42.657021>,  <38.005039, 36.598259, 43.060589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369698, 36.663368, 42.657021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653538, 36.896580, 42.498760>,  <37.823841, 37.036507, 42.403805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653538, 36.896580, 42.498760>,  <37.369698, 36.663368, 42.657021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653538, 36.896580, 42.498760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251522, -0.314932, -0.915180,
		-0.658180, 0.748930, -0.076832,
		0.709603, 0.583028, -0.395654,
		37.866417, 37.071487, 42.380066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049316, 37.006741, 42.040924>,  <37.369698, 36.663368, 42.657021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049316, 37.006741, 42.040924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445404, 37.002296, 41.985294>,  <37.683056, 36.999630, 41.951916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445404, 37.002296, 41.985294>,  <37.049316, 37.006741, 42.040924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445404, 37.002296, 41.985294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124922, -0.514533, -0.848322,
		-0.062131, 0.857399, -0.510889,
		0.990219, -0.011114, -0.139077,
		37.742470, 36.998962, 41.943573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027836, 37.318897, 41.465416>,  <37.049316, 37.006741, 42.040924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027836, 37.318897, 41.465416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381229, 37.132957, 41.488682>,  <37.593266, 37.021393, 41.502640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381229, 37.132957, 41.488682>,  <37.027836, 37.318897, 41.465416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381229, 37.132957, 41.488682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021951, -0.165092, -0.986034,
		0.467956, 0.869864, -0.156059,
		0.883479, -0.464846, 0.058162,
		37.646275, 36.993504, 41.506130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442158, 37.608994, 40.959457>,  <37.027836, 37.318897, 41.465416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442158, 37.608994, 40.959457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648705, 37.270935, 41.014744>,  <37.772633, 37.068100, 41.047916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648705, 37.270935, 41.014744>,  <37.442158, 37.608994, 40.959457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648705, 37.270935, 41.014744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011796, -0.168402, -0.985648,
		0.856288, 0.507322, -0.096925,
		0.516364, -0.845142, 0.138216,
		37.803612, 37.017391, 41.056210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025742, 37.550270, 40.513138>,  <37.442158, 37.608994, 40.959457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025742, 37.550270, 40.513138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986855, 37.166267, 40.618160>,  <37.963524, 36.935867, 40.681175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986855, 37.166267, 40.618160>,  <38.025742, 37.550270, 40.513138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986855, 37.166267, 40.618160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244739, -0.278765, -0.928651,
		0.964703, -0.026021, 0.262052,
		-0.097215, -0.960007, 0.262558,
		37.957691, 36.878265, 40.696926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717876, 37.118454, 40.432648>,  <38.025742, 37.550270, 40.513138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717876, 37.118454, 40.432648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374363, 36.931496, 40.348709>,  <38.168255, 36.819321, 40.298347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374363, 36.931496, 40.348709>,  <38.717876, 37.118454, 40.432648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374363, 36.931496, 40.348709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320625, -0.170821, -0.931676,
		0.399613, -0.867389, 0.296557,
		-0.858783, -0.467393, -0.209844,
		38.116730, 36.791279, 40.285755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.600403, 41.795830, 39.219913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234680, 41.650444, 39.291393>,  <27.015247, 41.563213, 39.334282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234680, 41.650444, 39.291393>,  <27.600403, 41.795830, 39.219913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234680, 41.650444, 39.291393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143533, -0.703346, -0.696206,
		0.378736, -0.610897, 0.695244,
		-0.914307, -0.363469, 0.178699,
		26.960388, 41.541405, 39.345001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667353, 41.083767, 39.294689>,  <27.600403, 41.795830, 39.219913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667353, 41.083767, 39.294689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284988, 41.140209, 39.191677>,  <27.055569, 41.174072, 39.129871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284988, 41.140209, 39.191677>,  <27.667353, 41.083767, 39.294689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284988, 41.140209, 39.191677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020199, -0.843313, -0.537043,
		-0.292954, -0.518569, 0.803283,
		-0.955913, 0.141103, -0.257527,
		26.998215, 41.182541, 39.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281195, 40.378067, 39.546532>,  <27.667353, 41.083767, 39.294689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281195, 40.378067, 39.546532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062014, 40.595734, 39.292404>,  <26.930506, 40.726334, 39.139927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062014, 40.595734, 39.292404>,  <27.281195, 40.378067, 39.546532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062014, 40.595734, 39.292404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185216, -0.819557, -0.542237,
		-0.815751, -0.179446, 0.549863,
		-0.547947, 0.544174, -0.635318,
		26.897629, 40.758984, 39.101810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800400, 39.871552, 39.305199>,  <27.281195, 40.378067, 39.546532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800400, 39.871552, 39.305199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789270, 40.153023, 39.021210>,  <26.782593, 40.321907, 38.850819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789270, 40.153023, 39.021210>,  <26.800400, 39.871552, 39.305199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789270, 40.153023, 39.021210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023643, -0.710509, -0.703291,
		-0.999333, -0.002782, 0.036406,
		-0.027824, 0.703683, -0.709969,
		26.780924, 40.364128, 38.808220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417215, 39.578220, 38.817596>,  <26.800400, 39.871552, 39.305199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417215, 39.578220, 38.817596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574188, 39.883602, 38.612411>,  <26.668373, 40.066830, 38.489300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574188, 39.883602, 38.612411>,  <26.417215, 39.578220, 38.817596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574188, 39.883602, 38.612411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065172, -0.579383, -0.812446,
		-0.917468, 0.285401, -0.277125,
		0.392434, 0.763454, -0.512965,
		26.691919, 40.112637, 38.458523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959307, 39.662457, 38.275124>,  <26.417215, 39.578220, 38.817596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959307, 39.662457, 38.275124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312712, 39.804733, 38.153214>,  <26.524755, 39.890099, 38.080067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312712, 39.804733, 38.153214>,  <25.959307, 39.662457, 38.275124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312712, 39.804733, 38.153214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019609, -0.678173, -0.734641,
		-0.467996, 0.643089, -0.606149,
		0.883513, 0.355695, -0.304772,
		26.577766, 39.911442, 38.061783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820751, 39.781334, 37.564255>,  <25.959307, 39.662457, 38.275124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820751, 39.781334, 37.564255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215639, 39.745106, 37.616703>,  <26.452572, 39.723370, 37.648170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215639, 39.745106, 37.616703>,  <25.820751, 39.781334, 37.564255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215639, 39.745106, 37.616703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028166, -0.710683, -0.702948,
		0.156847, 0.697659, -0.699051,
		0.987221, -0.090566, 0.131119,
		26.511805, 39.717937, 37.656040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149822, 39.959335, 36.904709>,  <25.820751, 39.781334, 37.564255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149822, 39.959335, 36.904709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413654, 39.752968, 37.123356>,  <26.571953, 39.629147, 37.254543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413654, 39.752968, 37.123356>,  <26.149822, 39.959335, 36.904709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413654, 39.752968, 37.123356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020885, -0.739534, -0.672795,
		0.751346, 0.432345, -0.498555,
		0.659578, -0.515914, 0.546616,
		26.611528, 39.598194, 37.287342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623558, 39.615528, 36.419197>,  <26.149822, 39.959335, 36.904709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623558, 39.615528, 36.419197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670870, 39.409714, 36.758907>,  <26.699257, 39.286224, 36.962734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670870, 39.409714, 36.758907>,  <26.623558, 39.615528, 36.419197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670870, 39.409714, 36.758907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056881, -0.850361, -0.523116,
		0.991350, 0.110182, -0.071313,
		0.118280, -0.514534, 0.849273,
		26.706354, 39.255352, 37.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183264, 39.072197, 36.350471>,  <26.623558, 39.615528, 36.419197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183264, 39.072197, 36.350471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955612, 38.945606, 36.654034>,  <26.819021, 38.869652, 36.836170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955612, 38.945606, 36.654034>,  <27.183264, 39.072197, 36.350471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955612, 38.945606, 36.654034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060998, -0.904169, -0.422798,
		0.819981, -0.286919, 0.495286,
		-0.569131, -0.316475, 0.758903,
		26.784872, 38.850662, 36.881706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445381, 38.490505, 36.496960>,  <27.183264, 39.072197, 36.350471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445381, 38.490505, 36.496960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081425, 38.459179, 36.659916>,  <26.863050, 38.440384, 36.757690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081425, 38.459179, 36.659916>,  <27.445381, 38.490505, 36.496960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081425, 38.459179, 36.659916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117843, -0.892771, -0.434825,
		0.397756, -0.443651, 0.803097,
		-0.909892, -0.078315, 0.407386,
		26.808456, 38.435684, 36.782131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455116, 37.768211, 36.744240>,  <27.445381, 38.490505, 36.496960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455116, 37.768211, 36.744240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065437, 37.858437, 36.741096>,  <26.831631, 37.912571, 36.739212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065437, 37.858437, 36.741096>,  <27.455116, 37.768211, 36.744240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065437, 37.858437, 36.741096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218944, -0.952919, -0.209782,
		-0.054804, -0.202650, 0.977717,
		-0.974197, 0.225562, -0.007855,
		26.773178, 37.926105, 36.738739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107388, 37.241791, 37.154404>,  <27.455116, 37.768211, 36.744240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107388, 37.241791, 37.154404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812143, 37.383526, 36.924747>,  <26.634996, 37.468567, 36.786953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812143, 37.383526, 36.924747>,  <27.107388, 37.241791, 37.154404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812143, 37.383526, 36.924747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201453, -0.927911, -0.313684,
		-0.643903, -0.115871, 0.756283,
		-0.738110, 0.354337, -0.574142,
		26.590710, 37.489826, 36.752506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561987, 36.856869, 37.357452>,  <27.107388, 37.241791, 37.154404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561987, 36.856869, 37.357452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484983, 36.999184, 36.991642>,  <26.438782, 37.084572, 36.772156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484983, 36.999184, 36.991642>,  <26.561987, 36.856869, 37.357452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484983, 36.999184, 36.991642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136056, -0.932634, -0.334191,
		-0.971817, 0.060092, 0.227946,
		-0.192508, 0.355786, -0.914526,
		26.427231, 37.105919, 36.717285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904551, 36.618065, 37.017868>,  <26.561987, 36.856869, 37.357452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904551, 36.618065, 37.017868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126017, 36.717171, 36.699856>,  <26.258896, 36.776634, 36.509048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126017, 36.717171, 36.699856>,  <25.904551, 36.618065, 37.017868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126017, 36.717171, 36.699856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205580, -0.884497, -0.418811,
		-0.806965, 0.395322, -0.438779,
		0.553664, 0.247761, -0.795029,
		26.292116, 36.791500, 36.461346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648739, 36.217072, 36.440659>,  <25.904551, 36.618065, 37.017868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648739, 36.217072, 36.440659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.015007, 36.325455, 36.321911>,  <26.234768, 36.390484, 36.250660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.015007, 36.325455, 36.321911>,  <25.648739, 36.217072, 36.440659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015007, 36.325455, 36.321911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084242, -0.851584, -0.517404,
		-0.393005, 0.448762, -0.802595,
		0.915669, 0.270955, -0.296872,
		26.289707, 36.406742, 36.232849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668125, 35.953777, 35.676777>,  <25.648739, 36.217072, 36.440659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668125, 35.953777, 35.676777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050243, 36.028595, 35.768356>,  <26.279514, 36.073486, 35.823303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050243, 36.028595, 35.768356>,  <25.668125, 35.953777, 35.676777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050243, 36.028595, 35.768356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278005, -0.831831, -0.480385,
		0.100595, 0.522561, -0.846647,
		0.955298, 0.187047, 0.228953,
		26.336832, 36.084709, 35.837044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046457, 35.827866, 35.077805>,  <25.668125, 35.953777, 35.676777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046457, 35.827866, 35.077805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335476, 35.784115, 35.350849>,  <26.508886, 35.757866, 35.514675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335476, 35.784115, 35.350849>,  <26.046457, 35.827866, 35.077805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335476, 35.784115, 35.350849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347621, -0.796014, -0.495501,
		0.597567, 0.595314, -0.537136,
		0.722546, -0.109375, 0.682615,
		26.552240, 35.751301, 35.555634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702665, 35.795860, 34.688057>,  <26.046457, 35.827866, 35.077805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702665, 35.795860, 34.688057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707584, 35.625988, 35.050159>,  <26.710535, 35.524067, 35.267422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707584, 35.625988, 35.050159>,  <26.702665, 35.795860, 34.688057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707584, 35.625988, 35.050159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322911, -0.855136, -0.405550,
		0.946349, 0.297306, 0.126617,
		0.012298, -0.424678, 0.905261,
		26.711273, 35.498585, 35.321739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359825, 35.536709, 34.776951>,  <26.702665, 35.795860, 34.688057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359825, 35.536709, 34.776951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148396, 35.328339, 35.045055>,  <27.021538, 35.203316, 35.205917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148396, 35.328339, 35.045055>,  <27.359825, 35.536709, 34.776951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148396, 35.328339, 35.045055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424859, -0.845906, -0.322392,
		0.734918, 0.114357, 0.668444,
		-0.528573, -0.520927, 0.670258,
		26.989824, 35.172062, 35.246132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813335, 34.936596, 35.119934>,  <27.359825, 35.536709, 34.776951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813335, 34.936596, 35.119934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441982, 34.811672, 35.200504>,  <27.219172, 34.736717, 35.248848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441982, 34.811672, 35.200504>,  <27.813335, 34.936596, 35.119934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441982, 34.811672, 35.200504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287112, -0.946887, -0.144817,
		0.235957, -0.076613, 0.968739,
		-0.928381, -0.312307, 0.201427,
		27.163467, 34.717979, 35.260933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959166, 35.152390, 35.901417>,  <27.813335, 34.936596, 35.119934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959166, 35.152390, 35.901417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327662, 35.252640, 36.020416>,  <28.548759, 35.312790, 36.091816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327662, 35.252640, 36.020416>,  <27.959166, 35.152390, 35.901417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327662, 35.252640, 36.020416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327385, 0.086485, 0.940925,
		0.210096, -0.964212, 0.161726,
		0.921238, 0.250631, 0.297498,
		28.604033, 35.327827, 36.109665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171326, 34.741528, 36.496487>,  <27.959166, 35.152390, 35.901417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171326, 34.741528, 36.496487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414181, 35.055508, 36.545853>,  <28.559895, 35.243896, 36.575470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414181, 35.055508, 36.545853>,  <28.171326, 34.741528, 36.496487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414181, 35.055508, 36.545853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311439, 0.092193, 0.945783,
		0.731018, -0.612657, 0.300439,
		0.607140, 0.784953, 0.123410,
		28.596323, 35.290993, 36.582874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524256, 34.733311, 37.080120>,  <28.171326, 34.741528, 36.496487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524256, 34.733311, 37.080120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508142, 35.127296, 37.012917>,  <28.498474, 35.363686, 36.972595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508142, 35.127296, 37.012917>,  <28.524256, 34.733311, 37.080120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508142, 35.127296, 37.012917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418425, 0.136065, 0.898001,
		0.907358, 0.106475, 0.406651,
		-0.040284, 0.984961, -0.168012,
		28.496058, 35.422787, 36.962513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775635, 34.977402, 37.737282>,  <28.524256, 34.733311, 37.080120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775635, 34.977402, 37.737282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609304, 35.290401, 37.551907>,  <28.509506, 35.478203, 37.440681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609304, 35.290401, 37.551907>,  <28.775635, 34.977402, 37.737282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609304, 35.290401, 37.551907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357504, 0.327916, 0.874450,
		0.836229, 0.529301, 0.143392,
		-0.415826, 0.782503, -0.463440,
		28.484556, 35.525154, 37.412876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877268, 35.590157, 38.175808>,  <28.775635, 34.977402, 37.737282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877268, 35.590157, 38.175808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567703, 35.696178, 37.945744>,  <28.381964, 35.759792, 37.807705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567703, 35.696178, 37.945744>,  <28.877268, 35.590157, 38.175808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567703, 35.696178, 37.945744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358253, 0.565674, 0.742743,
		0.522222, 0.780869, -0.342824,
		-0.773912, 0.265058, -0.575156,
		28.335529, 35.775696, 37.773197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820961, 36.308662, 38.112095>,  <28.877268, 35.590157, 38.175808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820961, 36.308662, 38.112095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457872, 36.176441, 38.008724>,  <28.240019, 36.097111, 37.946701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457872, 36.176441, 38.008724>,  <28.820961, 36.308662, 38.112095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457872, 36.176441, 38.008724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419273, 0.691150, 0.588660,
		-0.015972, 0.642688, -0.765961,
		-0.907720, -0.330549, -0.258423,
		28.185556, 36.077278, 37.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472040, 36.922863, 38.019562>,  <28.820961, 36.308662, 38.112095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472040, 36.922863, 38.019562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214931, 36.629257, 38.107262>,  <28.060665, 36.453094, 38.159882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214931, 36.629257, 38.107262>,  <28.472040, 36.922863, 38.019562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214931, 36.629257, 38.107262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549946, 0.641382, 0.534966,
		-0.533294, 0.223286, -0.815929,
		-0.642773, -0.734011, 0.219250,
		28.022100, 36.409054, 38.173038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714712, 37.226578, 38.050480>,  <28.472040, 36.922863, 38.019562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714712, 37.226578, 38.050480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664976, 36.880096, 38.244072>,  <27.635134, 36.672207, 38.360226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664976, 36.880096, 38.244072>,  <27.714712, 37.226578, 38.050480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664976, 36.880096, 38.244072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499171, 0.476153, 0.723952,
		-0.857536, -0.151570, -0.491588,
		-0.124342, -0.866201, 0.483978,
		27.627674, 36.620235, 38.389267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999771, 37.144535, 38.202297>,  <27.714712, 37.226578, 38.050480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999771, 37.144535, 38.202297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179688, 36.903053, 38.465580>,  <27.287638, 36.758163, 38.623550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179688, 36.903053, 38.465580>,  <26.999771, 37.144535, 38.202297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179688, 36.903053, 38.465580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541782, 0.401462, 0.738445,
		-0.710044, -0.688749, -0.146501,
		0.449789, -0.603700, 0.658207,
		27.314625, 36.721943, 38.663044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419104, 36.978687, 38.612053>,  <26.999771, 37.144535, 38.202297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419104, 36.978687, 38.612053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741461, 36.877636, 38.826237>,  <26.934875, 36.817005, 38.954746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741461, 36.877636, 38.826237>,  <26.419104, 36.978687, 38.612053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741461, 36.877636, 38.826237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485965, 0.234357, 0.841971,
		-0.338190, -0.938754, 0.066100,
		0.805894, -0.252624, 0.535458,
		26.983229, 36.801849, 38.986874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057091, 36.695503, 39.132706>,  <26.419104, 36.978687, 38.612053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057091, 36.695503, 39.132706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431292, 36.775604, 39.249142>,  <26.655811, 36.823666, 39.319004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431292, 36.775604, 39.249142>,  <26.057091, 36.695503, 39.132706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431292, 36.775604, 39.249142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329213, 0.194921, 0.923918,
		0.128270, -0.960160, 0.248272,
		0.935503, 0.200246, 0.291095,
		26.711943, 36.835678, 39.336472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214975, 36.250462, 39.769234>,  <26.057091, 36.695503, 39.132706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214975, 36.250462, 39.769234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482166, 36.547688, 39.785564>,  <26.642481, 36.726021, 39.795364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482166, 36.547688, 39.785564>,  <26.214975, 36.250462, 39.769234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482166, 36.547688, 39.785564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253422, 0.175541, 0.951295,
		0.699704, -0.645789, 0.305566,
		0.667976, 0.743062, 0.040830,
		26.682560, 36.770607, 39.797813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714434, 36.115196, 40.380447>,  <26.214975, 36.250462, 39.769234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714434, 36.115196, 40.380447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722004, 36.500893, 40.274704>,  <26.726545, 36.732311, 40.211258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722004, 36.500893, 40.274704>,  <26.714434, 36.115196, 40.380447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722004, 36.500893, 40.274704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230984, 0.261468, 0.937166,
		0.972773, 0.043327, 0.227672,
		0.018925, 0.964239, -0.264357,
		26.727682, 36.790165, 40.195396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104198, 36.536591, 40.963940>,  <26.714434, 36.115196, 40.380447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104198, 36.536591, 40.963940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877975, 36.807808, 40.776154>,  <26.742243, 36.970539, 40.663483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877975, 36.807808, 40.776154>,  <27.104198, 36.536591, 40.963940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877975, 36.807808, 40.776154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406865, 0.265759, 0.873975,
		0.717362, 0.685291, 0.125573,
		-0.565555, 0.678048, -0.469466,
		26.708309, 37.011223, 40.635315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305521, 37.193897, 41.213909>,  <27.104198, 36.536591, 40.963940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305521, 37.193897, 41.213909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938553, 37.248806, 41.064514>,  <26.718372, 37.281750, 40.974876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938553, 37.248806, 41.064514>,  <27.305521, 37.193897, 41.213909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938553, 37.248806, 41.064514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316668, 0.316502, 0.894174,
		0.240952, 0.938608, -0.246897,
		-0.917422, 0.137268, -0.373489,
		26.663326, 37.289986, 40.952469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123430, 37.784954, 41.578247>,  <27.305521, 37.193897, 41.213909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123430, 37.784954, 41.578247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774939, 37.652302, 41.433479>,  <26.565844, 37.572712, 41.346619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774939, 37.652302, 41.433479>,  <27.123430, 37.784954, 41.578247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774939, 37.652302, 41.433479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475661, 0.388196, 0.789336,
		-0.121272, 0.859841, -0.495950,
		-0.871229, -0.331628, -0.361916,
		26.513571, 37.552814, 41.324905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582081, 38.308563, 41.696712>,  <27.123430, 37.784954, 41.578247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582081, 38.308563, 41.696712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377825, 37.968262, 41.646976>,  <26.255272, 37.764080, 41.617134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377825, 37.968262, 41.646976>,  <26.582081, 38.308563, 41.696712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377825, 37.968262, 41.646976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674511, 0.306709, 0.671539,
		-0.533181, 0.426781, -0.730463,
		-0.510639, -0.850757, -0.124337,
		26.224632, 37.713036, 41.609676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945253, 38.562504, 41.761829>,  <26.582081, 38.308563, 41.696712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945253, 38.562504, 41.761829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919115, 38.165539, 41.803490>,  <25.903431, 37.927361, 41.828484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919115, 38.165539, 41.803490>,  <25.945253, 38.562504, 41.761829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919115, 38.165539, 41.803490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738368, 0.118296, 0.663942,
		-0.671225, -0.033512, -0.740496,
		-0.065348, -0.992413, 0.104148,
		25.899511, 37.867813, 41.834736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195034, 38.322960, 41.688473>,  <25.945253, 38.562504, 41.761829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195034, 38.322960, 41.688473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385118, 38.038208, 41.895317>,  <25.499170, 37.867355, 42.019424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385118, 38.038208, 41.895317>,  <25.195034, 38.322960, 41.688473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385118, 38.038208, 41.895317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631811, 0.132939, 0.763638,
		-0.612362, -0.689604, -0.386599,
		0.475213, -0.711880, 0.517106,
		25.527683, 37.824642, 42.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647255, 37.941833, 41.957706>,  <25.195034, 38.322960, 41.688473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647255, 37.941833, 41.957706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966936, 37.859276, 42.183510>,  <25.158745, 37.809742, 42.318993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966936, 37.859276, 42.183510>,  <24.647255, 37.941833, 41.957706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966936, 37.859276, 42.183510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517797, 0.240508, 0.821000,
		-0.305219, -0.948450, 0.085345,
		0.799204, -0.206394, 0.564512,
		25.206697, 37.797359, 42.352863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581154, 37.419796, 42.416203>,  <24.647255, 37.941833, 41.957706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581154, 37.419796, 42.416203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.855211, 37.647083, 42.598503>,  <25.019646, 37.783455, 42.707882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.855211, 37.647083, 42.598503>,  <24.581154, 37.419796, 42.416203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855211, 37.647083, 42.598503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652738, 0.201260, 0.730361,
		0.323280, -0.797887, 0.508789,
		0.685144, 0.568217, 0.455748,
		25.060755, 37.817547, 42.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.474522, 36.996986, 46.174770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.240810, 36.688122, 46.274685>,  <41.100582, 36.502804, 46.334633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.240810, 36.688122, 46.274685>,  <41.474522, 36.996986, 46.174770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240810, 36.688122, 46.274685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228419, 0.451808, 0.862377,
		-0.778745, 0.446813, -0.440357,
		-0.584278, -0.772157, 0.249783,
		41.065525, 36.456474, 46.349621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939640, 37.335468, 46.465851>,  <41.474522, 36.996986, 46.174770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939640, 37.335468, 46.465851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.969090, 36.970833, 46.627632>,  <40.986759, 36.752052, 46.724701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.969090, 36.970833, 46.627632>,  <40.939640, 37.335468, 46.465851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969090, 36.970833, 46.627632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072486, 0.409369, 0.909485,
		-0.994648, -0.037642, 0.096217,
		0.073623, -0.911592, 0.404450,
		40.991177, 36.697353, 46.748966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429459, 37.337257, 46.988598>,  <40.939640, 37.335468, 46.465851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429459, 37.337257, 46.988598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.666382, 37.022938, 47.059799>,  <40.808537, 36.834347, 47.102520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.666382, 37.022938, 47.059799>,  <40.429459, 37.337257, 46.988598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666382, 37.022938, 47.059799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086187, 0.281448, 0.955698,
		-0.801088, -0.550727, 0.234431,
		0.592309, -0.785804, 0.177999,
		40.844074, 36.787197, 47.113197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197090, 37.087608, 47.630569>,  <40.429459, 37.337257, 46.988598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197090, 37.087608, 47.630569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.553200, 36.907982, 47.600212>,  <40.766865, 36.800205, 47.581997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.553200, 36.907982, 47.600212>,  <40.197090, 37.087608, 47.630569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553200, 36.907982, 47.600212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172308, 0.177864, 0.968852,
		-0.421580, -0.875616, 0.235725,
		0.890269, -0.449066, -0.075892,
		40.820282, 36.773262, 47.577446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262440, 36.610165, 48.211388>,  <40.197090, 37.087608, 47.630569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262440, 36.610165, 48.211388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623604, 36.717644, 48.077190>,  <40.840302, 36.782131, 47.996674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623604, 36.717644, 48.077190>,  <40.262440, 36.610165, 48.211388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623604, 36.717644, 48.077190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311414, 0.129051, 0.941471,
		0.296271, -0.954539, 0.032844,
		0.902909, 0.268702, -0.335491,
		40.894478, 36.798256, 47.976543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717781, 36.175629, 48.608135>,  <40.262440, 36.610165, 48.211388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717781, 36.175629, 48.608135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950611, 36.474644, 48.480148>,  <41.090309, 36.654053, 48.403355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950611, 36.474644, 48.480148>,  <40.717781, 36.175629, 48.608135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950611, 36.474644, 48.480148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232836, 0.223797, 0.946415,
		0.779090, -0.625381, -0.043788,
		0.582070, 0.747538, -0.319969,
		41.125233, 36.698906, 48.384159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172707, 36.162563, 49.119904>,  <40.717781, 36.175629, 48.608135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172707, 36.162563, 49.119904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254852, 36.507072, 48.933987>,  <41.304142, 36.713779, 48.822437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254852, 36.507072, 48.933987>,  <41.172707, 36.162563, 49.119904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254852, 36.507072, 48.933987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330457, 0.385999, 0.861280,
		0.921207, -0.330473, -0.205343,
		0.205368, 0.861274, -0.464792,
		41.316463, 36.765453, 48.794548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804306, 36.390545, 49.384674>,  <41.172707, 36.162563, 49.119904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804306, 36.390545, 49.384674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.641365, 36.732769, 49.256874>,  <41.543602, 36.938103, 49.180195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.641365, 36.732769, 49.256874>,  <41.804306, 36.390545, 49.384674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641365, 36.732769, 49.256874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190232, 0.421651, 0.886579,
		0.893240, 0.300369, -0.334515,
		-0.407349, 0.855563, -0.319496,
		41.519161, 36.989437, 49.161026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237652, 36.900826, 49.726025>,  <41.804306, 36.390545, 49.384674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237652, 36.900826, 49.726025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896954, 37.079136, 49.615891>,  <41.692535, 37.186123, 49.549809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896954, 37.079136, 49.615891>,  <42.237652, 36.900826, 49.726025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896954, 37.079136, 49.615891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001631, 0.527759, 0.849393,
		0.523948, 0.723020, -0.450245,
		-0.851749, 0.445772, -0.275339,
		41.641430, 37.212868, 49.533287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309132, 37.638683, 49.943420>,  <42.237652, 36.900826, 49.726025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309132, 37.638683, 49.943420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.923771, 37.537125, 49.909042>,  <41.692554, 37.476189, 49.888416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.923771, 37.537125, 49.909042>,  <42.309132, 37.638683, 49.943420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923771, 37.537125, 49.909042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165504, 0.311236, 0.935810,
		-0.210850, 0.915789, -0.341867,
		-0.963406, -0.253896, -0.085942,
		41.634750, 37.460957, 49.883259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041004, 38.207493, 50.258297>,  <42.309132, 37.638683, 49.943420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041004, 38.207493, 50.258297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781647, 37.902981, 50.260544>,  <41.626030, 37.720272, 50.261894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781647, 37.902981, 50.260544>,  <42.041004, 38.207493, 50.258297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781647, 37.902981, 50.260544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180481, 0.160880, 0.970332,
		-0.739601, 0.628145, -0.241711,
		-0.648395, -0.761283, 0.005619,
		41.587128, 37.674595, 50.262230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351059, 38.501785, 50.505573>,  <42.041004, 38.207493, 50.258297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351059, 38.501785, 50.505573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317642, 38.107689, 50.565327>,  <41.297592, 37.871231, 50.601177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317642, 38.107689, 50.565327>,  <41.351059, 38.501785, 50.505573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317642, 38.107689, 50.565327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226797, 0.164771, 0.959903,
		-0.970353, 0.046308, -0.237215,
		-0.083537, -0.985244, 0.149384,
		41.292580, 37.812115, 50.610142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821777, 39.130356, 50.534710>,  <41.351059, 38.501785, 50.505573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821777, 39.130356, 50.534710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.504547, 39.017620, 50.750710>,  <40.314209, 38.949978, 50.880310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.504547, 39.017620, 50.750710>,  <40.821777, 39.130356, 50.534710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504547, 39.017620, 50.750710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509785, -0.178117, -0.841661,
		0.333398, -0.942783, -0.002418,
		-0.793073, -0.281841, 0.540001,
		40.266624, 38.933067, 50.912708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620514, 38.483818, 50.335938>,  <40.821777, 39.130356, 50.534710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620514, 38.483818, 50.335938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.348248, 38.736217, 50.484818>,  <40.184887, 38.887657, 50.574146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.348248, 38.736217, 50.484818>,  <40.620514, 38.483818, 50.335938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348248, 38.736217, 50.484818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365933, 0.147294, -0.918911,
		-0.634652, -0.761675, 0.130644,
		-0.680668, 0.630996, 0.372203,
		40.144047, 38.925518, 50.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850826, 38.347248, 50.222542>,  <40.620514, 38.483818, 50.335938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850826, 38.347248, 50.222542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.931854, 38.736797, 50.263611>,  <39.980469, 38.970528, 50.288254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.931854, 38.736797, 50.263611>,  <39.850826, 38.347248, 50.222542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931854, 38.736797, 50.263611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435996, 0.183577, -0.881026,
		-0.876855, 0.133700, 0.461791,
		0.202567, 0.973871, 0.102677,
		39.992626, 39.028957, 50.294415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248993, 38.791592, 50.111767>,  <39.850826, 38.347248, 50.222542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248993, 38.791592, 50.111767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551636, 39.049717, 50.069588>,  <39.733223, 39.204594, 50.044281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551636, 39.049717, 50.069588>,  <39.248993, 38.791592, 50.111767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551636, 39.049717, 50.069588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482511, 0.442180, -0.756082,
		-0.441282, 0.622936, 0.645926,
		0.756606, 0.645312, -0.105448,
		39.778618, 39.243309, 50.037952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897053, 39.371090, 49.718220>,  <39.248993, 38.791592, 50.111767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897053, 39.371090, 49.718220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288559, 39.452896, 49.712677>,  <39.523464, 39.501980, 49.709351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288559, 39.452896, 49.712677>,  <38.897053, 39.371090, 49.718220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288559, 39.452896, 49.712677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109542, 0.464731, -0.878650,
		-0.173258, 0.861510, 0.477265,
		0.978766, 0.204514, -0.013853,
		39.582188, 39.514252, 49.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885448, 39.971161, 49.341850>,  <38.897053, 39.371090, 49.718220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885448, 39.971161, 49.341850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237572, 39.783306, 49.315002>,  <39.448845, 39.670593, 49.298893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237572, 39.783306, 49.315002>,  <38.885448, 39.971161, 49.341850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237572, 39.783306, 49.315002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011984, 0.119419, -0.992772,
		0.474259, 0.874745, 0.099497,
		0.880304, -0.469638, -0.067118,
		39.501663, 39.642414, 49.294868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993080, 40.060837, 48.675934>,  <38.885448, 39.971161, 49.341850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993080, 40.060837, 48.675934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.307838, 39.817509, 48.717392>,  <39.496693, 39.671513, 48.742268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.307838, 39.817509, 48.717392>,  <38.993080, 40.060837, 48.675934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307838, 39.817509, 48.717392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062500, -0.088529, -0.994111,
		0.613918, 0.788735, -0.031642,
		0.786892, -0.608325, 0.103646,
		39.543907, 39.635010, 48.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544178, 40.309288, 48.281319>,  <38.993080, 40.060837, 48.675934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544178, 40.309288, 48.281319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.556488, 39.913769, 48.339752>,  <39.563873, 39.676456, 48.374813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.556488, 39.913769, 48.339752>,  <39.544178, 40.309288, 48.281319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556488, 39.913769, 48.339752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040713, -0.147272, -0.988258,
		0.998697, 0.024462, -0.044788,
		0.030771, -0.988794, 0.146084,
		39.565720, 39.617130, 48.383579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136612, 39.991901, 47.862904>,  <39.544178, 40.309288, 48.281319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136612, 39.991901, 47.862904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896263, 39.684841, 47.952053>,  <39.752056, 39.500607, 48.005543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896263, 39.684841, 47.952053>,  <40.136612, 39.991901, 47.862904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896263, 39.684841, 47.952053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024064, -0.296064, -0.954865,
		0.798985, -0.568386, 0.196368,
		-0.600869, -0.767648, 0.222873,
		39.716003, 39.454548, 48.018913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408127, 39.444195, 47.344296>,  <40.136612, 39.991901, 47.862904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408127, 39.444195, 47.344296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050499, 39.322945, 47.476204>,  <39.835922, 39.250195, 47.555351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050499, 39.322945, 47.476204>,  <40.408127, 39.444195, 47.344296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050499, 39.322945, 47.476204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218830, -0.346798, -0.912055,
		0.390832, -0.887607, 0.243729,
		-0.894071, -0.303125, 0.329775,
		39.782276, 39.232006, 47.575138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354794, 38.750198, 47.087017>,  <40.408127, 39.444195, 47.344296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354794, 38.750198, 47.087017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983082, 38.888214, 47.139759>,  <39.760056, 38.971024, 47.171402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983082, 38.888214, 47.139759>,  <40.354794, 38.750198, 47.087017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983082, 38.888214, 47.139759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277656, -0.417094, -0.865413,
		-0.243605, -0.840822, 0.483400,
		-0.929281, 0.345037, 0.131853,
		39.704296, 38.991726, 47.179314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887005, 38.178474, 47.040157>,  <40.354794, 38.750198, 47.087017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887005, 38.178474, 47.040157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655956, 38.496681, 46.966930>,  <39.517326, 38.687603, 46.922993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655956, 38.496681, 46.966930>,  <39.887005, 38.178474, 47.040157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655956, 38.496681, 46.966930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358407, -0.448642, -0.818697,
		-0.733415, -0.407284, 0.544263,
		-0.577621, 0.795513, -0.183067,
		39.482670, 38.735336, 46.912010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346832, 37.863361, 46.708401>,  <39.887005, 38.178474, 47.040157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346832, 37.863361, 46.708401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.295151, 38.250397, 46.621609>,  <39.264141, 38.482616, 46.569534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.295151, 38.250397, 46.621609>,  <39.346832, 37.863361, 46.708401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295151, 38.250397, 46.621609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335108, -0.248546, -0.908806,
		-0.933279, -0.044706, 0.356359,
		-0.129200, 0.967588, -0.216982,
		39.256390, 38.540672, 46.556515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757206, 37.852299, 46.256058>,  <39.346832, 37.863361, 46.708401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757206, 37.852299, 46.256058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928013, 38.211048, 46.209961>,  <39.030499, 38.426296, 46.182304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928013, 38.211048, 46.209961>,  <38.757206, 37.852299, 46.256058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928013, 38.211048, 46.209961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287862, 0.014014, -0.957569,
		-0.857199, 0.442074, 0.264158,
		0.427019, 0.896869, -0.115243,
		39.056118, 38.480110, 46.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284832, 38.446121, 46.053326>,  <38.757206, 37.852299, 46.256058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284832, 38.446121, 46.053326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635292, 38.559151, 45.897118>,  <38.845570, 38.626968, 45.803391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635292, 38.559151, 45.897118>,  <38.284832, 38.446121, 46.053326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635292, 38.559151, 45.897118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419289, 0.047061, -0.906632,
		-0.237815, 0.958089, 0.159714,
		0.876151, 0.282577, -0.390524,
		38.898136, 38.643925, 45.779961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115860, 39.046959, 45.617123>,  <38.284832, 38.446121, 46.053326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115860, 39.046959, 45.617123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448517, 38.851051, 45.512432>,  <38.648109, 38.733509, 45.449615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448517, 38.851051, 45.512432>,  <38.115860, 39.046959, 45.617123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448517, 38.851051, 45.512432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277646, 0.041457, -0.959789,
		0.480922, 0.870868, -0.101504,
		0.831641, -0.489766, -0.261730,
		38.698009, 38.704121, 45.433914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603832, 39.677650, 45.778095>,  <38.115860, 39.046959, 45.617123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603832, 39.677650, 45.778095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.204800, 39.690556, 45.802715>,  <36.965382, 39.698299, 45.817486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.204800, 39.690556, 45.802715>,  <37.603832, 39.677650, 45.778095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204800, 39.690556, 45.802715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061615, 0.000987, 0.998100,
		0.032142, 0.999479, -0.002972,
		-0.997582, 0.032264, 0.061551,
		36.905525, 39.700233, 45.821182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550804, 40.108887, 46.316074>,  <37.603832, 39.677650, 45.778095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550804, 40.108887, 46.316074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203289, 39.913094, 46.286118>,  <36.994778, 39.795616, 46.268143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203289, 39.913094, 46.286118>,  <37.550804, 40.108887, 46.316074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203289, 39.913094, 46.286118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112614, 0.048039, 0.992477,
		-0.482202, 0.870689, -0.096859,
		-0.868792, -0.489482, -0.074887,
		36.942650, 39.766251, 46.263653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116760, 40.532959, 46.599670>,  <37.550804, 40.108887, 46.316074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116760, 40.532959, 46.599670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965355, 40.163624, 46.625488>,  <36.874512, 39.942020, 46.640980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965355, 40.163624, 46.625488>,  <37.116760, 40.532959, 46.599670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965355, 40.163624, 46.625488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099125, 0.109767, 0.989002,
		-0.920272, 0.367954, -0.133075,
		-0.378515, -0.923342, 0.064542,
		36.851799, 39.886620, 46.644852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573753, 40.566429, 47.092861>,  <37.116760, 40.532959, 46.599670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573753, 40.566429, 47.092861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640812, 40.172485, 47.110489>,  <36.681049, 39.936119, 47.121067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640812, 40.172485, 47.110489>,  <36.573753, 40.566429, 47.092861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640812, 40.172485, 47.110489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038441, 0.038141, 0.998533,
		-0.985097, -0.169098, -0.031465,
		0.167650, -0.984861, 0.044073,
		36.691109, 39.877026, 47.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130283, 40.304565, 47.598335>,  <36.573753, 40.566429, 47.092861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130283, 40.304565, 47.598335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400364, 40.011066, 47.568073>,  <36.562412, 39.834969, 47.549915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400364, 40.011066, 47.568073>,  <36.130283, 40.304565, 47.598335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400364, 40.011066, 47.568073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099068, -0.191837, 0.976414,
		-0.730952, -0.651780, -0.202219,
		0.675200, -0.733745, -0.075653,
		36.602924, 39.790943, 47.545376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798462, 39.748711, 48.019951>,  <36.130283, 40.304565, 47.598335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798462, 39.748711, 48.019951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185410, 39.653606, 47.984917>,  <36.417576, 39.596546, 47.963894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185410, 39.653606, 47.984917>,  <35.798462, 39.748711, 48.019951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185410, 39.653606, 47.984917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038196, -0.204891, 0.978039,
		-0.250487, -0.949468, -0.189123,
		0.967366, -0.237763, -0.087588,
		36.475620, 39.582279, 47.958641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974201, 39.238705, 48.585850>,  <35.798462, 39.748711, 48.019951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974201, 39.238705, 48.585850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331749, 39.373264, 48.467297>,  <36.546276, 39.453999, 48.396164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331749, 39.373264, 48.467297>,  <35.974201, 39.238705, 48.585850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331749, 39.373264, 48.467297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323900, -0.027458, 0.945693,
		0.309990, -0.941320, -0.133503,
		0.893865, 0.336397, -0.296382,
		36.599907, 39.474182, 48.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976810, 38.552860, 48.326630>,  <35.974201, 39.238705, 48.585850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976810, 38.552860, 48.326630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822144, 38.216293, 48.477631>,  <35.729343, 38.014355, 48.568230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822144, 38.216293, 48.477631>,  <35.976810, 38.552860, 48.326630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822144, 38.216293, 48.477631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296064, -0.274414, -0.914901,
		0.873405, -0.465524, -0.143007,
		-0.386666, -0.841418, 0.377499,
		35.706142, 37.963867, 48.590881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382298, 37.948116, 48.122616>,  <35.976810, 38.552860, 48.326630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382298, 37.948116, 48.122616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002048, 37.841919, 48.186897>,  <35.773899, 37.778202, 48.225464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002048, 37.841919, 48.186897>,  <36.382298, 37.948116, 48.122616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002048, 37.841919, 48.186897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141106, -0.091432, -0.985763,
		0.276406, -0.959768, 0.049455,
		-0.950626, -0.265492, 0.160701,
		35.716862, 37.762272, 48.235107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307087, 37.406384, 47.610027>,  <36.382298, 37.948116, 48.122616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307087, 37.406384, 47.610027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935234, 37.481487, 47.736858>,  <35.712124, 37.526550, 47.812958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935234, 37.481487, 47.736858>,  <36.307087, 37.406384, 47.610027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935234, 37.481487, 47.736858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331422, -0.049861, -0.942164,
		-0.161086, -0.980949, 0.108579,
		-0.929629, 0.187755, 0.317077,
		35.656345, 37.537815, 47.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877686, 36.856274, 47.423107>,  <36.307087, 37.406384, 47.610027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877686, 36.856274, 47.423107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651623, 37.182667, 47.471718>,  <35.515984, 37.378502, 47.500885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651623, 37.182667, 47.471718>,  <35.877686, 36.856274, 47.423107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651623, 37.182667, 47.471718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465855, -0.194080, -0.863315,
		-0.680866, -0.544520, 0.489816,
		-0.565156, 0.815985, 0.121525,
		35.482075, 37.427464, 47.508175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301220, 36.761383, 46.893936>,  <35.877686, 36.856274, 47.423107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301220, 36.761383, 46.893936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171501, 37.129208, 46.982689>,  <35.093670, 37.349903, 47.035942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171501, 37.129208, 46.982689>,  <35.301220, 36.761383, 46.893936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171501, 37.129208, 46.982689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419186, 0.070575, -0.905154,
		-0.848006, -0.386551, 0.362580,
		-0.324299, 0.919564, 0.221885,
		35.074211, 37.405075, 47.049255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563725, 36.799469, 46.712040>,  <35.301220, 36.761383, 46.893936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563725, 36.799469, 46.712040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715374, 37.169582, 46.716309>,  <34.806366, 37.391651, 46.718868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715374, 37.169582, 46.716309>,  <34.563725, 36.799469, 46.712040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715374, 37.169582, 46.716309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482196, 0.207393, -0.851161,
		-0.789779, 0.317551, 0.524796,
		0.379126, 0.925284, 0.010673,
		34.829113, 37.447166, 46.719509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063614, 37.214828, 46.361977>,  <34.563725, 36.799469, 46.712040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063614, 37.214828, 46.361977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397453, 37.435165, 46.360409>,  <34.597755, 37.567368, 46.359467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397453, 37.435165, 46.360409>,  <34.063614, 37.214828, 46.361977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397453, 37.435165, 46.360409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126913, 0.185354, -0.974442,
		-0.536041, 0.813765, 0.224605,
		0.834598, 0.550846, -0.003920,
		34.647831, 37.600418, 46.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.980312, 34.754517, 50.949322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.294189, 34.964066, 50.816769>,  <40.482517, 35.089794, 50.737236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.294189, 34.964066, 50.816769>,  <39.980312, 34.754517, 50.949322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294189, 34.964066, 50.816769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466957, 0.147975, -0.871811,
		-0.407679, 0.838847, 0.360740,
		0.784697, 0.523869, -0.331379,
		40.529598, 35.121227, 50.717354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541092, 35.287342, 50.576797>,  <39.980312, 34.754517, 50.949322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541092, 35.287342, 50.576797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.925171, 35.265976, 50.467129>,  <40.155617, 35.253159, 50.401329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.925171, 35.265976, 50.467129>,  <39.541092, 35.287342, 50.576797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925171, 35.265976, 50.467129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260847, 0.179635, -0.948520,
		0.099913, 0.982283, 0.158553,
		0.960196, -0.053411, -0.274173,
		40.213230, 35.249954, 50.384876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647781, 35.780720, 50.087902>,  <39.541092, 35.287342, 50.576797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647781, 35.780720, 50.087902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.940845, 35.516663, 50.021671>,  <40.116684, 35.358227, 49.981934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.940845, 35.516663, 50.021671>,  <39.647781, 35.780720, 50.087902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940845, 35.516663, 50.021671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147742, 0.083211, -0.985519,
		0.664364, 0.746514, -0.036566,
		0.732661, -0.660146, -0.165574,
		40.160645, 35.318619, 49.972000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867714, 35.892914, 49.386772>,  <39.647781, 35.780720, 50.087902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867714, 35.892914, 49.386772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.049503, 35.542652, 49.452114>,  <40.158577, 35.332497, 49.491318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.049503, 35.542652, 49.452114>,  <39.867714, 35.892914, 49.386772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049503, 35.542652, 49.452114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146928, -0.254565, -0.955829,
		0.878560, 0.410397, -0.244351,
		0.454472, -0.875655, 0.163352,
		40.185844, 35.279957, 49.501122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142204, 35.725216, 48.711071>,  <39.867714, 35.892914, 49.386772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142204, 35.725216, 48.711071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.146324, 35.372955, 48.900536>,  <40.148796, 35.161598, 49.014214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.146324, 35.372955, 48.900536>,  <40.142204, 35.725216, 48.711071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146324, 35.372955, 48.900536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071297, -0.473126, -0.878105,
		0.997402, -0.024728, -0.067659,
		0.010298, -0.880648, 0.473660,
		40.149414, 35.108761, 49.042633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365894, 35.295860, 48.253536>,  <40.142204, 35.725216, 48.711071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365894, 35.295860, 48.253536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.211662, 35.018032, 48.496487>,  <40.119125, 34.851337, 48.642258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.211662, 35.018032, 48.496487>,  <40.365894, 35.295860, 48.253536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211662, 35.018032, 48.496487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172375, -0.592463, -0.786940,
		0.906431, -0.408122, 0.108714,
		-0.385577, -0.694567, 0.607377,
		40.095989, 34.809662, 48.678699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679245, 34.733818, 48.022816>,  <40.365894, 35.295860, 48.253536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679245, 34.733818, 48.022816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.366508, 34.606853, 48.237469>,  <40.178867, 34.530674, 48.366261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.366508, 34.606853, 48.237469>,  <40.679245, 34.733818, 48.022816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366508, 34.606853, 48.237469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269648, -0.603907, -0.750057,
		0.562154, -0.731127, 0.386570,
		-0.781840, -0.317410, 0.536636,
		40.131958, 34.511631, 48.398460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668293, 34.057289, 47.987709>,  <40.679245, 34.733818, 48.022816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668293, 34.057289, 47.987709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.282616, 34.102219, 48.083801>,  <40.051208, 34.129177, 48.141457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.282616, 34.102219, 48.083801>,  <40.668293, 34.057289, 47.987709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282616, 34.102219, 48.083801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229227, -0.808526, -0.541978,
		0.133356, -0.577640, 0.805325,
		-0.964195, 0.112326, 0.240232,
		39.993359, 34.135918, 48.155872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419579, 33.371601, 48.211502>,  <40.668293, 34.057289, 47.987709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419579, 33.371601, 48.211502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.124027, 33.614433, 48.094528>,  <39.946697, 33.760132, 48.024345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.124027, 33.614433, 48.094528>,  <40.419579, 33.371601, 48.211502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124027, 33.614433, 48.094528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390218, -0.739289, -0.548801,
		-0.549359, -0.291383, 0.783136,
		-0.738875, 0.607082, -0.292432,
		39.902367, 33.796558, 48.006798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914783, 32.940590, 48.109898>,  <40.419579, 33.371601, 48.211502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914783, 32.940590, 48.109898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.800671, 33.260830, 47.899128>,  <39.732201, 33.452976, 47.772667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.800671, 33.260830, 47.899128>,  <39.914783, 32.940590, 48.109898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800671, 33.260830, 47.899128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261596, -0.593939, -0.760792,
		-0.922052, -0.079202, 0.378876,
		-0.285286, 0.800602, -0.526924,
		39.715084, 33.501011, 47.741051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344833, 32.769680, 47.701401>,  <39.914783, 32.940590, 48.109898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344833, 32.769680, 47.701401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.474354, 33.100315, 47.517269>,  <39.552067, 33.298695, 47.406792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.474354, 33.100315, 47.517269>,  <39.344833, 32.769680, 47.701401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474354, 33.100315, 47.517269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250131, -0.394439, -0.884224,
		-0.912461, 0.401458, 0.079034,
		0.323805, 0.826589, -0.460327,
		39.571495, 33.348293, 47.379169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899090, 32.846722, 47.157494>,  <39.344833, 32.769680, 47.701401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899090, 32.846722, 47.157494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239346, 33.031357, 47.056812>,  <39.443497, 33.142136, 46.996403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239346, 33.031357, 47.056812>,  <38.899090, 32.846722, 47.157494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239346, 33.031357, 47.056812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118094, -0.298773, -0.946989,
		-0.512318, 0.835270, -0.199637,
		0.850638, 0.461583, -0.251707,
		39.494537, 33.169830, 46.981300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266079, 33.229797, 46.988945>,  <38.899090, 32.846722, 47.157494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266079, 33.229797, 46.988945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976677, 33.422054, 46.790745>,  <37.803036, 33.537407, 46.671825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976677, 33.422054, 46.790745>,  <38.266079, 33.229797, 46.988945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976677, 33.422054, 46.790745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087490, 0.648154, 0.756466,
		0.684749, 0.590661, -0.426894,
		-0.723508, 0.480641, -0.495500,
		37.759624, 33.566246, 46.642094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457321, 33.994057, 47.126621>,  <38.266079, 33.229797, 46.988945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457321, 33.994057, 47.126621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.076469, 33.893120, 47.057590>,  <37.847958, 33.832558, 47.016171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.076469, 33.893120, 47.057590>,  <38.457321, 33.994057, 47.126621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076469, 33.893120, 47.057590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277134, 0.474147, 0.835692,
		-0.129052, 0.843510, -0.521380,
		-0.952125, -0.252340, -0.172576,
		37.790833, 33.817417, 47.005817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940395, 34.622089, 47.270477>,  <38.457321, 33.994057, 47.126621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940395, 34.622089, 47.270477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693398, 34.307755, 47.284138>,  <37.545200, 34.119156, 47.292336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693398, 34.307755, 47.284138>,  <37.940395, 34.622089, 47.270477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693398, 34.307755, 47.284138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554146, 0.465431, 0.690142,
		-0.558230, 0.407236, -0.722868,
		-0.617496, -0.785833, 0.034150,
		37.508148, 34.072006, 47.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317036, 34.899307, 47.242512>,  <37.940395, 34.622089, 47.270477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317036, 34.899307, 47.242512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270569, 34.537933, 47.407589>,  <37.242687, 34.321110, 47.506638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270569, 34.537933, 47.407589>,  <37.317036, 34.899307, 47.242512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270569, 34.537933, 47.407589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387981, 0.423772, 0.818467,
		-0.914317, -0.065036, -0.399744,
		-0.116171, -0.903431, 0.412695,
		37.235718, 34.266903, 47.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665962, 34.919811, 47.382175>,  <37.317036, 34.899307, 47.242512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665962, 34.919811, 47.382175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841373, 34.640881, 47.608959>,  <36.946621, 34.473522, 47.745029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841373, 34.640881, 47.608959>,  <36.665962, 34.919811, 47.382175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841373, 34.640881, 47.608959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299164, 0.481607, 0.823745,
		-0.847465, -0.530845, 0.002582,
		0.438524, -0.697322, 0.566955,
		36.972931, 34.431683, 47.779045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414864, 35.149361, 48.049164>,  <36.665962, 34.919811, 47.382175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414864, 35.149361, 48.049164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.690071, 34.873020, 48.138023>,  <36.855198, 34.707218, 48.191341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.690071, 34.873020, 48.138023>,  <36.414864, 35.149361, 48.049164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690071, 34.873020, 48.138023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021307, 0.286763, 0.957765,
		-0.725376, -0.663697, 0.182579,
		0.688023, -0.690850, 0.222152,
		36.896477, 34.665764, 48.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121975, 34.918774, 48.635719>,  <36.414864, 35.149361, 48.049164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121975, 34.918774, 48.635719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506859, 34.810062, 48.628838>,  <36.737789, 34.744835, 48.624710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506859, 34.810062, 48.628838>,  <36.121975, 34.918774, 48.635719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506859, 34.810062, 48.628838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100300, 0.294962, 0.950230,
		-0.253175, -0.916044, 0.311073,
		0.962207, -0.271775, -0.017202,
		36.795521, 34.728531, 48.623676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284775, 34.482296, 49.163849>,  <36.121975, 34.918774, 48.635719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284775, 34.482296, 49.163849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634888, 34.649635, 49.066795>,  <36.844955, 34.750038, 49.008564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634888, 34.649635, 49.066795>,  <36.284775, 34.482296, 49.163849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634888, 34.649635, 49.066795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177651, 0.188495, 0.965873,
		0.449802, -0.888514, 0.090667,
		0.875281, 0.418345, -0.242631,
		36.897472, 34.775139, 48.994007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573376, 34.322491, 49.698711>,  <36.284775, 34.482296, 49.163849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573376, 34.322491, 49.698711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794838, 34.617039, 49.543156>,  <36.927715, 34.793766, 49.449821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794838, 34.617039, 49.543156>,  <36.573376, 34.322491, 49.698711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794838, 34.617039, 49.543156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235453, 0.309513, 0.921283,
		0.798769, -0.601634, -0.002018,
		0.553651, 0.736368, -0.388886,
		36.960934, 34.837948, 49.426491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234867, 34.166756, 49.956661>,  <36.573376, 34.322491, 49.698711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234867, 34.166756, 49.956661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212971, 34.552597, 49.853481>,  <37.199833, 34.784103, 49.791573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212971, 34.552597, 49.853481>,  <37.234867, 34.166756, 49.956661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212971, 34.552597, 49.853481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321393, 0.261612, 0.910091,
		0.945362, -0.033081, -0.324339,
		-0.054744, 0.964606, -0.257950,
		37.196548, 34.841980, 49.776096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830524, 34.529415, 50.133808>,  <37.234867, 34.166756, 49.956661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830524, 34.529415, 50.133808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568592, 34.830956, 50.155376>,  <37.411430, 35.011879, 50.168316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568592, 34.830956, 50.155376>,  <37.830524, 34.529415, 50.133808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568592, 34.830956, 50.155376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336171, 0.226638, 0.914125,
		0.676890, 0.616726, -0.401832,
		-0.654835, 0.753846, 0.053917,
		37.372143, 35.057110, 50.171551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213806, 35.203392, 50.433643>,  <37.830524, 34.529415, 50.133808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213806, 35.203392, 50.433643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815792, 35.225922, 50.466473>,  <37.576984, 35.239441, 50.486172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815792, 35.225922, 50.466473>,  <38.213806, 35.203392, 50.433643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815792, 35.225922, 50.466473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097542, 0.387206, 0.916819,
		0.019862, 0.920271, -0.390777,
		-0.995033, 0.056327, 0.082074,
		37.517281, 35.242821, 50.491096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137959, 35.750454, 50.769089>,  <38.213806, 35.203392, 50.433643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137959, 35.750454, 50.769089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753181, 35.646160, 50.801773>,  <37.522316, 35.583584, 50.821384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753181, 35.646160, 50.801773>,  <38.137959, 35.750454, 50.769089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753181, 35.646160, 50.801773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033980, 0.182581, 0.982603,
		-0.271117, 0.947988, -0.166774,
		-0.961946, -0.260734, 0.081713,
		37.464596, 35.567940, 50.826286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708725, 36.313248, 51.049957>,  <38.137959, 35.750454, 50.769089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708725, 36.313248, 51.049957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.588726, 35.939762, 51.128113>,  <37.516727, 35.715672, 51.175007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.588726, 35.939762, 51.128113>,  <37.708725, 36.313248, 51.049957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588726, 35.939762, 51.128113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105806, 0.170994, 0.979575,
		-0.948054, 0.314544, 0.047495,
		-0.299998, -0.933715, 0.195392,
		37.498726, 35.659649, 51.186729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026371, 36.281303, 51.455910>,  <37.708725, 36.313248, 51.049957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026371, 36.281303, 51.455910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270470, 35.972942, 51.528915>,  <37.416927, 35.787926, 51.572720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270470, 35.972942, 51.528915>,  <37.026371, 36.281303, 51.455910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270470, 35.972942, 51.528915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039896, 0.259994, 0.964786,
		-0.791210, -0.581471, 0.189415,
		0.610242, -0.770905, 0.182512,
		37.453541, 35.741673, 51.583668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499336, 36.727077, 51.049995>,  <37.026371, 36.281303, 51.455910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499336, 36.727077, 51.049995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532707, 37.120228, 50.984276>,  <36.552731, 37.356117, 50.944843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532707, 37.120228, 50.984276>,  <36.499336, 36.727077, 51.049995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532707, 37.120228, 50.984276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467217, -0.107053, -0.877638,
		-0.880198, 0.149986, 0.450284,
		0.083430, 0.982875, -0.164304,
		36.557735, 37.415089, 50.934986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837837, 37.013054, 50.868061>,  <36.499336, 36.727077, 51.049995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837837, 37.013054, 50.868061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086506, 37.288559, 50.718861>,  <36.235706, 37.453861, 50.629341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086506, 37.288559, 50.718861>,  <35.837837, 37.013054, 50.868061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086506, 37.288559, 50.718861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506280, -0.010018, -0.862311,
		-0.597668, 0.724913, 0.342482,
		0.621669, 0.688767, -0.372997,
		36.273006, 37.495190, 50.606960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439117, 37.554195, 50.624260>,  <35.837837, 37.013054, 50.868061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439117, 37.554195, 50.624260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784222, 37.571423, 50.422752>,  <35.991283, 37.581757, 50.301846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784222, 37.571423, 50.422752>,  <35.439117, 37.554195, 50.624260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784222, 37.571423, 50.422752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505599, 0.066848, -0.860175,
		-0.003368, 0.996833, 0.079448,
		0.862762, 0.043066, -0.503773,
		36.043049, 37.584343, 50.271622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283215, 37.954403, 50.157505>,  <35.439117, 37.554195, 50.624260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283215, 37.954403, 50.157505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623295, 37.807659, 50.006474>,  <35.827343, 37.719612, 49.915855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623295, 37.807659, 50.006474>,  <35.283215, 37.954403, 50.157505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623295, 37.807659, 50.006474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405415, 0.001295, -0.914132,
		0.335847, 0.930275, -0.147630,
		0.850203, -0.366860, -0.377583,
		35.878357, 37.697601, 49.893200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372017, 38.397171, 49.644802>,  <35.283215, 37.954403, 50.157505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372017, 38.397171, 49.644802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615479, 38.093559, 49.552361>,  <35.761555, 37.911392, 49.496895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615479, 38.093559, 49.552361>,  <35.372017, 38.397171, 49.644802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615479, 38.093559, 49.552361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291725, 0.056791, -0.954815,
		0.737860, 0.648572, -0.186862,
		0.608654, -0.759032, -0.231109,
		35.798073, 37.865849, 49.483028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858376, 38.648102, 49.122242>,  <35.372017, 38.397171, 49.644802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858376, 38.648102, 49.122242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.849285, 38.249466, 49.090534>,  <35.843830, 38.010284, 49.071510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.849285, 38.249466, 49.090534>,  <35.858376, 38.648102, 49.122242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849285, 38.249466, 49.090534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434811, 0.081250, -0.896848,
		0.900235, 0.014089, -0.435177,
		-0.022723, -0.996594, -0.079270,
		35.842468, 37.950489, 49.066753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601978, 38.862831, 49.022297>,  <35.858376, 38.648102, 49.122242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601978, 38.862831, 49.022297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.743946, 39.203941, 48.869034>,  <36.829128, 39.408607, 48.777077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.743946, 39.203941, 48.869034>,  <36.601978, 38.862831, 49.022297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743946, 39.203941, 48.869034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321588, 0.273468, 0.906530,
		0.877845, -0.444967, -0.177181,
		0.354923, 0.852772, -0.383159,
		36.850422, 39.459774, 48.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317905, 39.011261, 49.306522>,  <36.601978, 38.862831, 49.022297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317905, 39.011261, 49.306522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222935, 39.378956, 49.180897>,  <37.165955, 39.599571, 49.105522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222935, 39.378956, 49.180897>,  <37.317905, 39.011261, 49.306522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222935, 39.378956, 49.180897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351119, 0.382660, 0.854568,
		0.905729, 0.092621, -0.413614,
		-0.237424, 0.919235, -0.314065,
		37.151707, 39.654728, 49.086678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889191, 39.411221, 49.297005>,  <37.317905, 39.011261, 49.306522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889191, 39.411221, 49.297005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.583862, 39.668499, 49.321117>,  <37.400665, 39.822868, 49.335587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.583862, 39.668499, 49.321117>,  <37.889191, 39.411221, 49.297005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583862, 39.668499, 49.321117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440750, 0.450283, 0.776521,
		0.472314, 0.619305, -0.627201,
		-0.763321, 0.643200, 0.060284,
		37.354866, 39.861458, 49.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185886, 40.049213, 49.284588>,  <37.889191, 39.411221, 49.297005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185886, 40.049213, 49.284588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825497, 40.105961, 49.448593>,  <37.609261, 40.140007, 49.546997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825497, 40.105961, 49.448593>,  <38.185886, 40.049213, 49.284588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825497, 40.105961, 49.448593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432293, 0.373933, 0.820547,
		-0.036913, 0.916542, -0.398232,
		-0.900978, 0.141864, 0.410017,
		37.555202, 40.148521, 49.571598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208424, 40.766060, 49.540730>,  <38.185886, 40.049213, 49.284588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208424, 40.766060, 49.540730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910084, 40.568325, 49.719318>,  <37.731079, 40.449684, 49.826473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910084, 40.568325, 49.719318>,  <38.208424, 40.766060, 49.540730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910084, 40.568325, 49.719318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285606, 0.368201, 0.884792,
		-0.601777, 0.787438, -0.133437,
		-0.745851, -0.494337, 0.446472,
		37.686329, 40.420025, 49.853260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960785, 41.221630, 50.033562>,  <38.208424, 40.766060, 49.540730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960785, 41.221630, 50.033562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798641, 40.880650, 50.165630>,  <37.701355, 40.676060, 50.244869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798641, 40.880650, 50.165630>,  <37.960785, 41.221630, 50.033562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798641, 40.880650, 50.165630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222335, 0.258395, 0.940106,
		-0.886710, 0.454485, 0.084788,
		-0.405355, -0.852453, 0.330169,
		37.677036, 40.624912, 50.264683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516365, 41.366253, 50.572361>,  <37.960785, 41.221630, 50.033562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516365, 41.366253, 50.572361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632420, 40.987453, 50.627510>,  <37.702053, 40.760174, 50.660599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632420, 40.987453, 50.627510>,  <37.516365, 41.366253, 50.572361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632420, 40.987453, 50.627510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301785, 0.227259, 0.925894,
		-0.908155, -0.227031, 0.351727,
		0.290140, -0.947001, 0.137872,
		37.719463, 40.703354, 50.668873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220062, 41.191601, 51.171013>,  <37.516365, 41.366253, 50.572361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220062, 41.191601, 51.171013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.490452, 40.898670, 51.138130>,  <37.652687, 40.722912, 51.118401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.490452, 40.898670, 51.138130>,  <37.220062, 41.191601, 51.171013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490452, 40.898670, 51.138130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298384, 0.169992, 0.939186,
		-0.673815, -0.659396, 0.333424,
		0.675974, -0.732325, -0.082210,
		37.693245, 40.678974, 51.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169270, 40.831482, 51.752678>,  <37.220062, 41.191601, 51.171013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169270, 40.831482, 51.752678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.519699, 40.705048, 51.607033>,  <37.729958, 40.629189, 51.519646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.519699, 40.705048, 51.607033>,  <37.169270, 40.831482, 51.752678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519699, 40.705048, 51.607033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430570, 0.172952, 0.885831,
		-0.217025, -0.932833, 0.287616,
		0.876076, -0.316087, -0.364115,
		37.782520, 40.610222, 51.497799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.247189, 37.424522, 35.997177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571377, 37.271435, 36.174564>,  <37.765888, 37.179581, 36.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571377, 37.271435, 36.174564>,  <37.247189, 37.424522, 35.997177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571377, 37.271435, 36.174564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500675, -0.059605, 0.863581,
		-0.304080, -0.921938, -0.239928,
		0.810469, -0.382724, 0.443467,
		37.814518, 37.156616, 36.307606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129284, 36.734276, 36.386253>,  <37.247189, 37.424522, 35.997177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129284, 36.734276, 36.386253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409672, 36.982513, 36.526821>,  <37.577904, 37.131458, 36.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409672, 36.982513, 36.526821>,  <37.129284, 36.734276, 36.386253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409672, 36.982513, 36.526821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541602, 0.142619, 0.828449,
		0.464014, -0.771049, 0.436089,
		0.700970, 0.620599, 0.351424,
		37.619961, 37.168694, 36.632248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293434, 36.515614, 37.101521>,  <37.129284, 36.734276, 36.386253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293434, 36.515614, 37.101521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376034, 36.905693, 37.069649>,  <37.425594, 37.139740, 37.050526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376034, 36.905693, 37.069649>,  <37.293434, 36.515614, 37.101521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376034, 36.905693, 37.069649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505769, 0.176097, 0.844504,
		0.837590, -0.134087, 0.529589,
		0.206496, 0.975198, -0.079681,
		37.437981, 37.198254, 37.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332932, 36.709446, 37.748737>,  <37.293434, 36.515614, 37.101521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332932, 36.709446, 37.748737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333103, 37.078365, 37.594151>,  <37.333206, 37.299717, 37.501396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333103, 37.078365, 37.594151>,  <37.332932, 36.709446, 37.748737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333103, 37.078365, 37.594151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500679, 0.334740, 0.798292,
		0.865633, 0.193156, 0.461920,
		0.000428, 0.922301, -0.386471,
		37.333233, 37.355057, 37.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757637, 37.082359, 38.132195>,  <37.332932, 36.709446, 37.748737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757637, 37.082359, 38.132195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486889, 37.330872, 37.974281>,  <37.324440, 37.479980, 37.879532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486889, 37.330872, 37.974281>,  <37.757637, 37.082359, 38.132195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486889, 37.330872, 37.974281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224253, 0.336778, 0.914490,
		0.701109, 0.707524, -0.088631,
		-0.676873, 0.621281, -0.394782,
		37.283829, 37.517258, 37.855846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770973, 37.616776, 38.631317>,  <37.757637, 37.082359, 38.132195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770973, 37.616776, 38.631317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451569, 37.711758, 38.410049>,  <37.259926, 37.768745, 38.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451569, 37.711758, 38.410049>,  <37.770973, 37.616776, 38.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451569, 37.711758, 38.410049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412234, 0.453960, 0.789927,
		0.438688, 0.858800, -0.264605,
		-0.798509, 0.237452, -0.553173,
		37.212017, 37.782993, 38.244099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668636, 38.264660, 38.679630>,  <37.770973, 37.616776, 38.631317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668636, 38.264660, 38.679630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300610, 38.146572, 38.576622>,  <37.079792, 38.075718, 38.514816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300610, 38.146572, 38.576622>,  <37.668636, 38.264660, 38.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300610, 38.146572, 38.576622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365473, 0.410140, 0.835592,
		-0.141064, 0.862920, -0.485253,
		-0.920071, -0.295219, -0.257518,
		37.024590, 38.058006, 38.499367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239391, 38.900181, 38.662434>,  <37.668636, 38.264660, 38.679630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239391, 38.900181, 38.662434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991730, 38.587566, 38.693020>,  <36.843132, 38.399998, 38.711372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991730, 38.587566, 38.693020>,  <37.239391, 38.900181, 38.662434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991730, 38.587566, 38.693020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404243, 0.400696, 0.822210,
		-0.673231, 0.478161, -0.564023,
		-0.619151, -0.781540, 0.076467,
		36.805984, 38.353104, 38.715961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518547, 39.205856, 38.756847>,  <37.239391, 38.900181, 38.662434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518547, 39.205856, 38.756847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503532, 38.832729, 38.900204>,  <36.494522, 38.608852, 38.986217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503532, 38.832729, 38.900204>,  <36.518547, 39.205856, 38.756847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503532, 38.832729, 38.900204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556295, 0.317440, 0.767963,
		-0.830137, -0.170544, -0.530837,
		-0.037537, -0.932816, 0.358392,
		36.492271, 38.552883, 39.007721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811722, 39.064518, 38.810280>,  <36.518547, 39.205856, 38.756847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811722, 39.064518, 38.810280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001434, 38.814716, 39.058491>,  <36.115261, 38.664837, 39.207417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001434, 38.814716, 39.058491>,  <35.811722, 39.064518, 38.810280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001434, 38.814716, 39.058491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598736, 0.287932, 0.747402,
		-0.645426, -0.726009, -0.237354,
		0.474279, -0.624505, 0.620527,
		36.143719, 38.627365, 39.244648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424694, 39.101917, 39.339050>,  <35.811722, 39.064518, 38.810280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424694, 39.101917, 39.339050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714817, 38.897614, 39.523685>,  <35.888889, 38.775032, 39.634464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714817, 38.897614, 39.523685>,  <35.424694, 39.101917, 39.339050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714817, 38.897614, 39.523685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235718, 0.445713, 0.863584,
		-0.646817, -0.735164, 0.202883,
		0.725303, -0.510757, 0.461586,
		35.932407, 38.744385, 39.662163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140095, 38.749691, 39.933346>,  <35.424694, 39.101917, 39.339050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140095, 38.749691, 39.933346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528538, 38.817635, 40.000385>,  <35.761604, 38.858402, 40.040607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528538, 38.817635, 40.000385>,  <35.140095, 38.749691, 39.933346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528538, 38.817635, 40.000385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229818, 0.476716, 0.848485,
		0.064231, -0.862490, 0.501982,
		0.971112, 0.169863, 0.167596,
		35.819870, 38.868595, 40.050663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226589, 38.039959, 40.258045>,  <35.140095, 38.749691, 39.933346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226589, 38.039959, 40.258045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965031, 37.741962, 40.310814>,  <34.808094, 37.563164, 40.342476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965031, 37.741962, 40.310814>,  <35.226589, 38.039959, 40.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965031, 37.741962, 40.310814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065866, -0.229762, -0.971015,
		0.753713, -0.626252, 0.199310,
		-0.653895, -0.744995, 0.131925,
		34.768864, 37.518463, 40.350391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462124, 37.532001, 39.848431>,  <35.226589, 38.039959, 40.258045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462124, 37.532001, 39.848431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078575, 37.437038, 39.910660>,  <34.848446, 37.380062, 39.947998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078575, 37.437038, 39.910660>,  <35.462124, 37.532001, 39.848431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078575, 37.437038, 39.910660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042541, -0.421699, -0.905738,
		0.280633, -0.875104, 0.394256,
		-0.958872, -0.237408, 0.155570,
		34.790913, 37.365818, 39.957333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282639, 36.860722, 39.536114>,  <35.462124, 37.532001, 39.848431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282639, 36.860722, 39.536114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920891, 37.026924, 39.575039>,  <34.703842, 37.126648, 39.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920891, 37.026924, 39.575039>,  <35.282639, 36.860722, 39.536114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920891, 37.026924, 39.575039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291245, -0.434261, -0.852405,
		-0.311922, -0.799230, 0.513747,
		-0.904368, 0.415509, 0.097316,
		34.649582, 37.151577, 39.604233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850529, 36.242687, 39.610268>,  <35.282639, 36.860722, 39.536114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850529, 36.242687, 39.610268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624531, 36.557453, 39.511036>,  <34.488934, 36.746315, 39.451496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624531, 36.557453, 39.511036>,  <34.850529, 36.242687, 39.610268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624531, 36.557453, 39.511036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392826, -0.520950, -0.757825,
		-0.725582, -0.330715, 0.603455,
		-0.564994, 0.786918, -0.248079,
		34.455032, 36.793530, 39.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229179, 35.990875, 39.512714>,  <34.850529, 36.242687, 39.610268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229179, 35.990875, 39.512714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208588, 36.326820, 39.296570>,  <34.196232, 36.528385, 39.166885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208588, 36.326820, 39.296570>,  <34.229179, 35.990875, 39.512714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208588, 36.326820, 39.296570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420836, -0.508932, -0.750923,
		-0.905675, 0.188745, 0.379643,
		-0.051480, 0.839859, -0.540358,
		34.193142, 36.578777, 39.134464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622234, 35.957973, 39.222149>,  <34.229179, 35.990875, 39.512714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622234, 35.957973, 39.222149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810638, 36.233574, 39.001812>,  <33.923679, 36.398933, 38.869610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810638, 36.233574, 39.001812>,  <33.622234, 35.957973, 39.222149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810638, 36.233574, 39.001812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416585, -0.376690, -0.827382,
		-0.777566, 0.619174, 0.109605,
		0.471006, 0.689005, -0.550841,
		33.951939, 36.440277, 38.836559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134743, 36.172527, 38.793758>,  <33.622234, 35.957973, 39.222149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134743, 36.172527, 38.793758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479031, 36.287598, 38.625755>,  <33.685604, 36.356640, 38.524952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479031, 36.287598, 38.625755>,  <33.134743, 36.172527, 38.793758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479031, 36.287598, 38.625755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256989, -0.466665, -0.846274,
		-0.439452, 0.836342, -0.327740,
		0.860720, 0.287671, -0.420007,
		33.737247, 36.373898, 38.499752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978893, 36.441334, 38.062981>,  <33.134743, 36.172527, 38.793758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978893, 36.441334, 38.062981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367432, 36.355145, 38.022854>,  <33.600555, 36.303429, 37.998775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367432, 36.355145, 38.022854>,  <32.978893, 36.441334, 38.062981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367432, 36.355145, 38.022854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210352, -0.582801, -0.784917,
		0.110666, 0.783526, -0.611425,
		0.971342, -0.215478, -0.100320,
		33.658833, 36.290501, 37.992760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107292, 36.608776, 37.370235>,  <32.978893, 36.441334, 38.062981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107292, 36.608776, 37.370235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375332, 36.349739, 37.515335>,  <33.536156, 36.194317, 37.602394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375332, 36.349739, 37.515335>,  <33.107292, 36.608776, 37.370235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375332, 36.349739, 37.515335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066540, -0.539145, -0.839580,
		0.739283, 0.538464, -0.404372,
		0.670099, -0.647594, 0.362752,
		33.576363, 36.155460, 37.624161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483444, 36.422199, 36.670052>,  <33.107292, 36.608776, 37.370235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483444, 36.422199, 36.670052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555885, 36.126396, 36.929382>,  <33.599350, 35.948914, 37.084980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555885, 36.126396, 36.929382>,  <33.483444, 36.422199, 36.670052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555885, 36.126396, 36.929382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304688, -0.668980, -0.677961,
		0.935077, -0.074758, -0.346472,
		0.181100, -0.739511, 0.648326,
		33.610214, 35.904541, 37.123878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700256, 35.843765, 36.306004>,  <33.483444, 36.422199, 36.670052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700256, 35.843765, 36.306004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604885, 35.682407, 36.659370>,  <33.547661, 35.585590, 36.871391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604885, 35.682407, 36.659370>,  <33.700256, 35.843765, 36.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604885, 35.682407, 36.659370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320688, -0.825921, -0.463695,
		0.916685, -0.393859, 0.067558,
		-0.238428, -0.403397, 0.883415,
		33.533356, 35.561390, 36.924397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070621, 35.199074, 36.328552>,  <33.700256, 35.843765, 36.306004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070621, 35.199074, 36.328552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750908, 35.166134, 36.566666>,  <33.559078, 35.146370, 36.709534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750908, 35.166134, 36.566666>,  <34.070621, 35.199074, 36.328552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750908, 35.166134, 36.566666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188693, -0.906079, -0.378704,
		0.570555, -0.415019, 0.708679,
		-0.799288, -0.082349, 0.595279,
		33.511120, 35.141430, 36.745251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915173, 34.423218, 36.401825>,  <34.070621, 35.199074, 36.328552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915173, 34.423218, 36.401825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587967, 34.587570, 36.562832>,  <33.391644, 34.686184, 36.659435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587967, 34.587570, 36.562832>,  <33.915173, 34.423218, 36.401825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587967, 34.587570, 36.562832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567432, -0.691039, -0.447757,
		0.094182, -0.594676, 0.798429,
		-0.818016, 0.410884, 0.402522,
		33.342564, 34.710835, 36.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971077, 33.815624, 36.035042>,  <33.915173, 34.423218, 36.401825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971077, 33.815624, 36.035042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142166, 33.811398, 36.396580>,  <34.244820, 33.808861, 36.613503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142166, 33.811398, 36.396580>,  <33.971077, 33.815624, 36.035042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142166, 33.811398, 36.396580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765702, -0.527161, -0.368513,
		0.480369, 0.849700, -0.217385,
		0.427722, -0.010570, 0.903849,
		34.270481, 33.808228, 36.667736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678783, 34.063652, 36.105133>,  <33.971077, 33.815624, 36.035042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678783, 34.063652, 36.105133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628311, 33.788555, 36.391098>,  <34.598026, 33.623497, 36.562675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628311, 33.788555, 36.391098>,  <34.678783, 34.063652, 36.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628311, 33.788555, 36.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683132, -0.582804, -0.440081,
		0.719312, 0.432847, 0.543355,
		-0.126182, -0.687738, 0.714909,
		34.590458, 33.582233, 36.605572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435009, 33.823040, 36.083820>,  <34.678783, 34.063652, 36.105133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435009, 33.823040, 36.083820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141174, 33.571671, 36.186165>,  <34.964874, 33.420849, 36.247574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141174, 33.571671, 36.186165>,  <35.435009, 33.823040, 36.083820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141174, 33.571671, 36.186165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388441, -0.698679, -0.600801,
		0.556325, -0.341951, 0.757345,
		-0.734585, -0.628425, 0.255865,
		34.920799, 33.383144, 36.262924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636818, 33.229443, 36.444031>,  <35.435009, 33.823040, 36.083820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636818, 33.229443, 36.444031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329166, 33.167583, 36.195988>,  <35.144577, 33.130466, 36.047161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329166, 33.167583, 36.195988>,  <35.636818, 33.229443, 36.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329166, 33.167583, 36.195988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597361, -0.518852, -0.611516,
		-0.227171, -0.840759, 0.491445,
		-0.769125, -0.154651, -0.620105,
		35.098431, 33.121189, 36.009956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117180, 33.564327, 37.071526>,  <35.636818, 33.229443, 36.444031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117180, 33.564327, 37.071526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397327, 33.290413, 36.990971>,  <36.565414, 33.126064, 36.942638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397327, 33.290413, 36.990971>,  <36.117180, 33.564327, 37.071526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397327, 33.290413, 36.990971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212380, -0.069447, 0.974716,
		-0.681455, -0.725431, 0.096796,
		0.700367, -0.684782, -0.201392,
		36.607437, 33.084980, 36.930553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990761, 32.852127, 37.318348>,  <36.117180, 33.564327, 37.071526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990761, 32.852127, 37.318348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374958, 32.963428, 37.316502>,  <36.605476, 33.030209, 37.315392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374958, 32.963428, 37.316502>,  <35.990761, 32.852127, 37.318348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374958, 32.963428, 37.316502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043345, -0.133191, 0.990142,
		0.274897, -0.951228, -0.139991,
		0.960496, 0.278255, -0.004618,
		36.663109, 33.046906, 37.315117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310444, 32.535122, 37.912258>,  <35.990761, 32.852127, 37.318348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310444, 32.535122, 37.912258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581291, 32.805290, 37.795422>,  <36.743801, 32.967392, 37.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581291, 32.805290, 37.795422>,  <36.310444, 32.535122, 37.912258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581291, 32.805290, 37.795422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269535, 0.141712, 0.952507,
		0.684736, -0.723688, -0.086095,
		0.677117, 0.675421, -0.292094,
		36.784428, 33.007915, 37.707794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915096, 32.325657, 38.238365>,  <36.310444, 32.535122, 37.912258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915096, 32.325657, 38.238365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004753, 32.701988, 38.136692>,  <37.058548, 32.927788, 38.075687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004753, 32.701988, 38.136692>,  <36.915096, 32.325657, 38.238365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004753, 32.701988, 38.136692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499758, 0.112953, 0.858768,
		0.836662, -0.319514, -0.444868,
		0.224140, 0.940825, -0.254184,
		37.071995, 32.984238, 38.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545254, 32.319908, 38.376862>,  <36.915096, 32.325657, 38.238365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545254, 32.319908, 38.376862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413155, 32.697262, 38.364471>,  <37.333897, 32.923676, 38.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413155, 32.697262, 38.364471>,  <37.545254, 32.319908, 38.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413155, 32.697262, 38.364471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387818, 0.165536, 0.906750,
		0.860542, 0.287441, -0.420529,
		-0.330249, 0.943385, -0.030976,
		37.314079, 32.980278, 38.355179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099930, 32.821560, 38.686108>,  <37.545254, 32.319908, 38.376862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099930, 32.821560, 38.686108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751381, 33.014420, 38.722420>,  <37.542252, 33.130135, 38.744209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751381, 33.014420, 38.722420>,  <38.099930, 32.821560, 38.686108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751381, 33.014420, 38.722420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274861, 0.326469, 0.904361,
		0.406396, 0.812990, -0.417000,
		-0.871375, 0.482145, 0.090784,
		37.489967, 33.159061, 38.749657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316853, 33.520149, 39.079002>,  <38.099930, 32.821560, 38.686108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316853, 33.520149, 39.079002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927795, 33.436996, 39.120483>,  <37.694363, 33.387104, 39.145370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927795, 33.436996, 39.120483>,  <38.316853, 33.520149, 39.079002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927795, 33.436996, 39.120483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014874, 0.389735, 0.920807,
		-0.231839, 0.897157, -0.375980,
		-0.972641, -0.207886, 0.103700,
		37.636002, 33.374630, 39.151592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048653, 34.144089, 39.412392>,  <38.316853, 33.520149, 39.079002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048653, 34.144089, 39.412392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773529, 33.857811, 39.460888>,  <37.608456, 33.686043, 39.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773529, 33.857811, 39.460888>,  <38.048653, 34.144089, 39.412392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773529, 33.857811, 39.460888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030735, 0.138158, 0.989933,
		-0.725239, 0.684613, -0.073030,
		-0.687811, -0.715693, 0.121239,
		37.567184, 33.643105, 39.497261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592121, 34.420746, 40.014435>,  <38.048653, 34.144089, 39.412392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592121, 34.420746, 40.014435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502235, 34.031410, 39.996052>,  <37.448303, 33.797810, 39.985023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502235, 34.031410, 39.996052>,  <37.592121, 34.420746, 40.014435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502235, 34.031410, 39.996052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072615, -0.063756, 0.995320,
		-0.971716, 0.220322, 0.085006,
		-0.224711, -0.973341, -0.045954,
		37.434822, 33.739407, 39.982265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107140, 34.319569, 40.461880>,  <37.592121, 34.420746, 40.014435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107140, 34.319569, 40.461880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250034, 33.949795, 40.408516>,  <37.335770, 33.727928, 40.376499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250034, 33.949795, 40.408516>,  <37.107140, 34.319569, 40.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250034, 33.949795, 40.408516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175621, -0.073801, 0.981688,
		-0.917355, -0.374122, 0.135987,
		0.357235, -0.924438, -0.133405,
		37.357204, 33.672462, 40.368496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725876, 33.785412, 40.854927>,  <37.107140, 34.319569, 40.461880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725876, 33.785412, 40.854927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108067, 33.681545, 40.798878>,  <37.337379, 33.619225, 40.765247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108067, 33.681545, 40.798878>,  <36.725876, 33.785412, 40.854927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108067, 33.681545, 40.798878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126563, -0.068313, 0.989604,
		-0.266542, -0.963278, -0.032407,
		0.955477, -0.259669, -0.140124,
		37.394711, 33.603645, 40.756840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687923, 33.313648, 41.274387>,  <36.725876, 33.785412, 40.854927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687923, 33.313648, 41.274387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083965, 33.336315, 41.223022>,  <37.321590, 33.349915, 41.192204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083965, 33.336315, 41.223022>,  <36.687923, 33.313648, 41.274387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083965, 33.336315, 41.223022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133013, -0.086795, 0.987306,
		0.044806, -0.994613, -0.093474,
		0.990101, 0.056671, -0.128408,
		37.380997, 33.353317, 41.184502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888599, 32.944527, 41.803741>,  <36.687923, 33.313648, 41.274387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888599, 32.944527, 41.803741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238129, 33.101845, 41.689369>,  <37.447845, 33.196236, 41.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238129, 33.101845, 41.689369>,  <36.888599, 32.944527, 41.803741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238129, 33.101845, 41.689369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291879, 0.046062, 0.955346,
		0.388900, -0.918260, -0.074544,
		0.873821, 0.393292, -0.285934,
		37.500275, 33.219833, 41.603588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327290, 32.610512, 42.190205>,  <36.888599, 32.944527, 41.803741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327290, 32.610512, 42.190205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540779, 32.934132, 42.091751>,  <37.668873, 33.128304, 42.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540779, 32.934132, 42.091751>,  <37.327290, 32.610512, 42.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540779, 32.934132, 42.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267263, 0.114765, 0.956765,
		0.802315, -0.576432, -0.154976,
		0.533724, 0.809046, -0.246136,
		37.700897, 33.176846, 42.017910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121311, 32.447792, 42.316467>,  <37.327290, 32.610512, 42.190205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121311, 32.447792, 42.316467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018383, 32.834251, 42.323883>,  <37.956627, 33.066128, 42.328331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018383, 32.834251, 42.323883>,  <38.121311, 32.447792, 42.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018383, 32.834251, 42.323883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192863, 0.032546, 0.980686,
		0.946885, 0.255925, -0.194710,
		-0.257319, 0.966148, 0.018541,
		37.941189, 33.124096, 42.329445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756290, 32.857765, 42.663414>,  <38.121311, 32.447792, 42.316467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756290, 32.857765, 42.663414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427601, 33.085697, 42.666546>,  <38.230385, 33.222454, 42.668427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427601, 33.085697, 42.666546>,  <38.756290, 32.857765, 42.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427601, 33.085697, 42.666546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169216, 0.230857, 0.958160,
		0.544178, 0.788671, -0.286125,
		-0.821727, 0.569827, 0.007828,
		38.181084, 33.256645, 42.668896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998142, 33.410500, 43.016121>,  <38.756290, 32.857765, 42.663414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998142, 33.410500, 43.016121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599552, 33.430408, 43.043140>,  <38.360397, 33.442352, 43.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599552, 33.430408, 43.043140>,  <38.998142, 33.410500, 43.016121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599552, 33.430408, 43.043140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068314, 0.013837, 0.997568,
		0.048714, 0.998665, -0.017188,
		-0.996474, 0.049770, 0.067549,
		38.300610, 33.445339, 43.063404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825161, 33.967361, 43.419464>,  <38.998142, 33.410500, 43.016121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825161, 33.967361, 43.419464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510174, 33.724102, 43.459568>,  <38.321182, 33.578148, 43.483631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510174, 33.724102, 43.459568>,  <38.825161, 33.967361, 43.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510174, 33.724102, 43.459568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086784, 0.270449, 0.958815,
		-0.610216, 0.746334, -0.265747,
		-0.787467, -0.608147, 0.100263,
		38.273933, 33.541656, 43.489647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368717, 34.184868, 43.964161>,  <38.825161, 33.967361, 43.419464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368717, 34.184868, 43.964161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204327, 33.826130, 43.898716>,  <38.105694, 33.610886, 43.859451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204327, 33.826130, 43.898716>,  <38.368717, 34.184868, 43.964161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204327, 33.826130, 43.898716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184867, -0.093750, 0.978282,
		-0.892705, 0.432297, -0.127268,
		-0.410976, -0.896845, -0.163609,
		38.081032, 33.557076, 43.849632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740860, 34.229847, 44.223637>,  <38.368717, 34.184868, 43.964161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740860, 34.229847, 44.223637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834000, 33.840843, 44.222118>,  <37.889881, 33.607441, 44.221207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834000, 33.840843, 44.222118>,  <37.740860, 34.229847, 44.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834000, 33.840843, 44.222118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257186, -0.065338, 0.964151,
		-0.937890, -0.223523, -0.265328,
		0.232846, -0.972506, -0.003793,
		37.903854, 33.549091, 44.220982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199661, 34.012302, 44.676521>,  <37.740860, 34.229847, 44.223637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199661, 34.012302, 44.676521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490067, 33.737324, 44.669285>,  <37.664310, 33.572338, 44.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490067, 33.737324, 44.669285>,  <37.199661, 34.012302, 44.676521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490067, 33.737324, 44.669285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120002, -0.152554, 0.980983,
		-0.677130, -0.710035, -0.193251,
		0.726013, -0.687443, -0.018093,
		37.707870, 33.531090, 44.663857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903042, 33.336418, 45.008606>,  <37.199661, 34.012302, 44.676521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903042, 33.336418, 45.008606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300625, 33.378201, 45.022156>,  <37.539173, 33.403271, 45.030285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300625, 33.378201, 45.022156>,  <36.903042, 33.336418, 45.008606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300625, 33.378201, 45.022156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030585, -0.032948, 0.998989,
		0.105465, -0.993984, -0.029554,
		0.993953, 0.104454, 0.033876,
		37.598812, 33.409534, 45.032318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052586, 32.756283, 45.548515>,  <36.903042, 33.336418, 45.008606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052586, 32.756283, 45.548515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348419, 33.025318, 45.538429>,  <37.525921, 33.186741, 45.532375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348419, 33.025318, 45.538429>,  <37.052586, 32.756283, 45.548515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348419, 33.025318, 45.538429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000669, 0.038205, 0.999270,
		0.673062, -0.739029, 0.028706,
		0.739586, 0.672590, -0.025220,
		37.570293, 33.227097, 45.530865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480953, 32.618050, 46.111748>,  <37.052586, 32.756283, 45.548515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480953, 32.618050, 46.111748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616272, 32.981052, 46.012161>,  <37.697464, 33.198856, 45.952412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616272, 32.981052, 46.012161>,  <37.480953, 32.618050, 46.111748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616272, 32.981052, 46.012161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157123, 0.206376, 0.965775,
		0.927830, -0.365836, -0.072774,
		0.338297, 0.907509, -0.248963,
		37.717762, 33.253304, 45.937473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177147, 32.725445, 46.414101>,  <37.480953, 32.618050, 46.111748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177147, 32.725445, 46.414101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962395, 33.058681, 46.360855>,  <37.833542, 33.258621, 46.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962395, 33.058681, 46.360855>,  <38.177147, 32.725445, 46.414101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962395, 33.058681, 46.360855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053278, 0.190951, 0.980153,
		0.841973, 0.519134, -0.146904,
		-0.536882, 0.833089, -0.133117,
		37.801331, 33.308609, 46.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954632, 32.808975, 46.419136>,  <38.177147, 32.725445, 46.414101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954632, 32.808975, 46.419136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331768, 32.918354, 46.495327>,  <39.558048, 32.983982, 46.541042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331768, 32.918354, 46.495327>,  <38.954632, 32.808975, 46.419136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331768, 32.918354, 46.495327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281771, -0.348947, -0.893779,
		-0.177935, 0.896361, -0.406050,
		0.942838, 0.273448, 0.190479,
		39.614620, 33.000389, 46.552471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190929, 33.259911, 45.911709>,  <38.954632, 32.808975, 46.419136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190929, 33.259911, 45.911709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519756, 33.082020, 46.053936>,  <39.717052, 32.975285, 46.139271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519756, 33.082020, 46.053936>,  <39.190929, 33.259911, 45.911709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519756, 33.082020, 46.053936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239047, -0.297200, -0.924407,
		0.516785, 0.844919, -0.138006,
		0.822065, -0.444729, 0.355563,
		39.766376, 32.948601, 46.160606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788826, 33.548283, 45.566574>,  <39.190929, 33.259911, 45.911709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788826, 33.548283, 45.566574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932720, 33.205330, 45.713802>,  <40.019058, 32.999557, 45.802139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932720, 33.205330, 45.713802>,  <39.788826, 33.548283, 45.566574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932720, 33.205330, 45.713802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353371, -0.239906, -0.904198,
		0.863550, 0.455340, 0.216673,
		0.359737, -0.857386, 0.368075,
		40.040642, 32.948112, 45.824226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499039, 33.551044, 45.335567>,  <39.788826, 33.548283, 45.566574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499039, 33.551044, 45.335567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388638, 33.175663, 45.418640>,  <40.322395, 32.950436, 45.468483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388638, 33.175663, 45.418640>,  <40.499039, 33.551044, 45.335567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388638, 33.175663, 45.418640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324478, -0.294370, -0.898922,
		0.904729, -0.180720, 0.385755,
		-0.276008, -0.938449, 0.207685,
		40.305836, 32.894127, 45.480946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989601, 33.098534, 45.014076>,  <40.499039, 33.551044, 45.335567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989601, 33.098534, 45.014076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701031, 32.825756, 45.062237>,  <40.527889, 32.662090, 45.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701031, 32.825756, 45.062237>,  <40.989601, 33.098534, 45.014076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701031, 32.825756, 45.062237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137641, -0.311611, -0.940188,
		0.678672, -0.661706, 0.318668,
		-0.721429, -0.681941, 0.120403,
		40.484604, 32.621174, 45.098358>
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
