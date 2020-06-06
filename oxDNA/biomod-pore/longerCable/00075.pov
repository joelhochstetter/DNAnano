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
	<24.161051, 35.330769, 35.226307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205263, 35.007240, 34.995277>,  <24.231791, 34.813122, 34.856659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205263, 35.007240, 34.995277>,  <24.161051, 35.330769, 35.226307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205263, 35.007240, 34.995277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985624, 0.163920, -0.040926,
		0.127777, -0.564743, 0.815315,
		0.110533, -0.808823, -0.577570,
		24.238422, 34.764595, 34.822006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742317, 34.733829, 35.497059>,  <24.161051, 35.330769, 35.226307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742317, 34.733829, 35.497059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702988, 34.803253, 35.105099>,  <24.679390, 34.844910, 34.869923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702988, 34.803253, 35.105099>,  <24.742317, 34.733829, 35.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702988, 34.803253, 35.105099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994794, 0.043636, -0.092089,
		0.026776, -0.983856, -0.176950,
		-0.098323, 0.173563, -0.979902,
		24.673491, 34.855324, 34.811127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080887, 34.177532, 35.122677>,  <24.742317, 34.733829, 35.497059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080887, 34.177532, 35.122677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061417, 34.506165, 34.895470>,  <25.049734, 34.703342, 34.759148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061417, 34.506165, 34.895470>,  <25.080887, 34.177532, 35.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061417, 34.506165, 34.895470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982065, -0.064344, -0.177227,
		-0.182154, -0.566454, -0.803710,
		-0.048677, 0.821578, -0.568015,
		25.046814, 34.752640, 34.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278273, 34.063782, 35.847050>,  <25.080887, 34.177532, 35.122677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278273, 34.063782, 35.847050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989904, 33.826023, 35.989578>,  <24.816883, 33.683369, 36.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989904, 33.826023, 35.989578>,  <25.278273, 34.063782, 35.847050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989904, 33.826023, 35.989578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215947, 0.295880, 0.930496,
		-0.658512, 0.747760, -0.084947,
		-0.720922, -0.594399, 0.356317,
		24.773628, 33.647705, 36.096474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047512, 33.724327, 35.988777>,  <25.278273, 34.063782, 35.847050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047512, 33.724327, 35.988777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291014, 33.713112, 36.305923>,  <26.437115, 33.706383, 36.496212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291014, 33.713112, 36.305923>,  <26.047512, 33.724327, 35.988777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291014, 33.713112, 36.305923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036247, -0.997349, -0.063102,
		0.792530, 0.067153, -0.606124,
		0.608754, -0.028040, 0.792863,
		26.473640, 33.704700, 36.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531370, 33.262947, 35.773369>,  <26.047512, 33.724327, 35.988777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531370, 33.262947, 35.773369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524479, 33.305901, 36.170998>,  <26.520344, 33.331673, 36.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524479, 33.305901, 36.170998>,  <26.531370, 33.262947, 35.773369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524479, 33.305901, 36.170998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107492, -0.988255, 0.108618,
		0.994057, 0.108725, 0.005481,
		-0.017226, 0.107384, 0.994069,
		26.519312, 33.338116, 36.469219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160601, 32.882229, 36.060062>,  <26.531370, 33.262947, 35.773369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160601, 32.882229, 36.060062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848984, 32.902550, 36.310028>,  <26.662014, 32.914742, 36.460007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848984, 32.902550, 36.310028>,  <27.160601, 32.882229, 36.060062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848984, 32.902550, 36.310028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011399, -0.997695, 0.066896,
		0.626870, 0.044991, 0.777823,
		-0.779040, 0.050801, 0.624912,
		26.615273, 32.917789, 36.497501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296103, 32.451241, 36.701447>,  <27.160601, 32.882229, 36.060062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296103, 32.451241, 36.701447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906115, 32.470058, 36.614525>,  <26.672123, 32.481350, 36.562370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906115, 32.470058, 36.614525>,  <27.296103, 32.451241, 36.701447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906115, 32.470058, 36.614525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063131, -0.995709, 0.067663,
		-0.213191, 0.079688, 0.973755,
		-0.974969, 0.047049, -0.217307,
		26.613625, 32.484173, 36.549332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996002, 31.815029, 37.091362>,  <27.296103, 32.451241, 36.701447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996002, 31.815029, 37.091362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698046, 31.908112, 36.841248>,  <26.519272, 31.963961, 36.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698046, 31.908112, 36.841248>,  <26.996002, 31.815029, 37.091362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698046, 31.908112, 36.841248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273561, -0.961326, -0.031877,
		-0.608525, 0.147310, 0.779741,
		-0.744890, 0.232704, -0.625290,
		26.474579, 31.977922, 36.653660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383207, 31.408184, 37.388988>,  <26.996002, 31.815029, 37.091362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383207, 31.408184, 37.388988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294289, 31.517836, 37.014729>,  <26.240938, 31.583626, 36.790173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294289, 31.517836, 37.014729>,  <26.383207, 31.408184, 37.388988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294289, 31.517836, 37.014729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220010, -0.949011, -0.225774,
		-0.949828, 0.155659, 0.271287,
		-0.222311, 0.274132, -0.935644,
		26.227600, 31.600075, 36.734035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666201, 31.044537, 37.171337>,  <26.383207, 31.408184, 37.388988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666201, 31.044537, 37.171337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884499, 31.124962, 36.845947>,  <26.015476, 31.173218, 36.650715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884499, 31.124962, 36.845947>,  <25.666201, 31.044537, 37.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884499, 31.124962, 36.845947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154591, -0.929964, -0.333570,
		-0.823569, 0.307799, -0.476439,
		0.545743, 0.201065, -0.813472,
		26.048222, 31.185282, 36.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256758, 30.696383, 36.697960>,  <25.666201, 31.044537, 37.171337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256758, 30.696383, 36.697960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633343, 30.768318, 36.583904>,  <25.859295, 30.811480, 36.515472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633343, 30.768318, 36.583904>,  <25.256758, 30.696383, 36.697960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633343, 30.768318, 36.583904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110551, -0.963749, -0.242831,
		-0.318471, 0.197095, -0.927216,
		0.941464, 0.179839, -0.285137,
		25.915783, 30.822269, 36.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998343, 30.108410, 36.350967>,  <25.256758, 30.696383, 36.697960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998343, 30.108410, 36.350967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211916, 30.082663, 36.013737>,  <25.340059, 30.067215, 35.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211916, 30.082663, 36.013737>,  <24.998343, 30.108410, 36.350967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211916, 30.082663, 36.013737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505597, 0.823500, 0.257330,
		0.677707, -0.563652, 0.472238,
		0.533933, -0.064368, -0.843073,
		25.372095, 30.063353, 35.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824459, 30.094452, 36.370502>,  <24.998343, 30.108410, 36.350967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824459, 30.094452, 36.370502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727106, 30.258728, 36.019028>,  <25.668695, 30.357294, 35.808144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727106, 30.258728, 36.019028>,  <25.824459, 30.094452, 36.370502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727106, 30.258728, 36.019028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643731, 0.746041, 0.170390,
		0.725517, -0.524172, -0.445947,
		-0.243381, 0.410691, -0.878691,
		25.654093, 30.381935, 35.755421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358788, 30.143099, 35.693180>,  <25.824459, 30.094452, 36.370502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358788, 30.143099, 35.693180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083258, 30.421932, 35.772774>,  <25.917940, 30.589233, 35.820530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083258, 30.421932, 35.772774>,  <26.358788, 30.143099, 35.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083258, 30.421932, 35.772774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723832, 0.646277, 0.241648,
		0.039851, 0.310483, -0.949743,
		-0.688824, 0.697084, 0.198983,
		25.876610, 30.631058, 35.832470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671848, 30.777176, 35.643795>,  <26.358788, 30.143099, 35.693180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671848, 30.777176, 35.643795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344398, 30.888498, 35.844753>,  <26.147928, 30.955292, 35.965328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344398, 30.888498, 35.844753>,  <26.671848, 30.777176, 35.643795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344398, 30.888498, 35.844753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483037, 0.806842, 0.340120,
		-0.310696, 0.521106, -0.794932,
		-0.818623, 0.278308, 0.502396,
		26.098812, 30.971991, 35.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684872, 31.488258, 35.518627>,  <26.671848, 30.777176, 35.643795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684872, 31.488258, 35.518627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452635, 31.400122, 35.832153>,  <26.313293, 31.347240, 36.020267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452635, 31.400122, 35.832153>,  <26.684872, 31.488258, 35.518627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452635, 31.400122, 35.832153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164900, 0.910913, 0.378214,
		-0.797323, 0.348838, -0.492533,
		-0.580590, -0.220341, 0.783815,
		26.278458, 31.334019, 36.067299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114153, 31.986258, 35.455410>,  <26.684872, 31.488258, 35.518627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114153, 31.986258, 35.455410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163694, 31.846214, 35.826805>,  <26.193420, 31.762188, 36.049641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163694, 31.846214, 35.826805>,  <26.114153, 31.986258, 35.455410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163694, 31.846214, 35.826805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022995, 0.934426, 0.355414,
		-0.992034, -0.065370, 0.107683,
		0.123855, -0.350107, 0.928485,
		26.200851, 31.741182, 36.105350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548203, 32.352341, 35.861656>,  <26.114153, 31.986258, 35.455410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548203, 32.352341, 35.861656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807606, 32.233730, 36.142086>,  <25.963247, 32.162563, 36.310345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807606, 32.233730, 36.142086>,  <25.548203, 32.352341, 35.861656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807606, 32.233730, 36.142086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042091, 0.905630, 0.421974,
		-0.760043, -0.303163, 0.574829,
		0.648509, -0.296523, 0.701078,
		26.002159, 32.144772, 36.352409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365183, 32.553558, 36.577755>,  <25.548203, 32.352341, 35.861656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365183, 32.553558, 36.577755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764534, 32.532455, 36.569225>,  <26.004145, 32.519794, 36.564110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764534, 32.532455, 36.569225>,  <25.365183, 32.553558, 36.577755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764534, 32.532455, 36.569225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056775, 0.898184, 0.435938,
		-0.003850, -0.436442, 0.899724,
		0.998380, -0.052760, -0.021321,
		26.064049, 32.516628, 36.562828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573767, 32.790127, 37.283691>,  <25.365183, 32.553558, 36.577755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573767, 32.790127, 37.283691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898249, 32.816608, 37.051292>,  <26.092937, 32.832497, 36.911854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898249, 32.816608, 37.051292>,  <25.573767, 32.790127, 37.283691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898249, 32.816608, 37.051292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090326, 0.967461, 0.236350,
		0.577740, -0.244208, 0.778832,
		0.811208, 0.066200, -0.580999,
		26.141611, 32.836468, 36.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229696, 32.954376, 37.692417>,  <25.573767, 32.790127, 37.283691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229696, 32.954376, 37.692417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253262, 33.112343, 37.325687>,  <26.267401, 33.207123, 37.105648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253262, 33.112343, 37.325687>,  <26.229696, 32.954376, 37.692417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253262, 33.112343, 37.325687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105378, 0.910832, 0.399100,
		0.992685, -0.120126, 0.012047,
		0.058915, 0.394912, -0.916828,
		26.270935, 33.230816, 37.050640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839785, 33.336643, 37.712212>,  <26.229696, 32.954376, 37.692417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839785, 33.336643, 37.712212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602898, 33.481133, 37.424103>,  <26.460766, 33.567825, 37.251236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602898, 33.481133, 37.424103>,  <26.839785, 33.336643, 37.712212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602898, 33.481133, 37.424103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196269, 0.931630, 0.305851,
		0.781509, 0.039763, -0.622625,
		-0.592218, 0.361227, -0.720273,
		26.425232, 33.589500, 37.208019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364676, 33.793457, 37.827793>,  <26.839785, 33.336643, 37.712212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364676, 33.793457, 37.827793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110666, 34.098389, 37.877750>,  <26.958261, 34.281349, 37.907726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110666, 34.098389, 37.877750>,  <27.364676, 33.793457, 37.827793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110666, 34.098389, 37.877750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675828, 0.469937, 0.567817,
		0.374173, 0.444983, -0.813625,
		-0.635021, 0.762332, 0.124894,
		26.920160, 34.327087, 37.915218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123400, 33.767979, 37.532288>,  <27.364676, 33.793457, 37.827793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123400, 33.767979, 37.532288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360504, 33.729126, 37.212486>,  <28.502766, 33.705814, 37.020607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360504, 33.729126, 37.212486>,  <28.123400, 33.767979, 37.532288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360504, 33.729126, 37.212486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322167, 0.938414, 0.124853,
		0.738136, -0.331581, 0.587545,
		0.592759, -0.097129, -0.799501,
		28.538332, 33.699986, 36.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804909, 33.990421, 37.609970>,  <28.123400, 33.767979, 37.532288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804909, 33.990421, 37.609970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747360, 34.013565, 37.214809>,  <28.712831, 34.027451, 36.977711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747360, 34.013565, 37.214809>,  <28.804909, 33.990421, 37.609970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747360, 34.013565, 37.214809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302015, 0.953229, 0.011848,
		0.942384, -0.296658, -0.154616,
		-0.143870, 0.057862, -0.987904,
		28.704199, 34.030922, 36.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322962, 34.180176, 37.079197>,  <28.804909, 33.990421, 37.609970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322962, 34.180176, 37.079197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970276, 34.346928, 36.990845>,  <28.758665, 34.446980, 36.937832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970276, 34.346928, 36.990845>,  <29.322962, 34.180176, 37.079197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970276, 34.346928, 36.990845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316589, 0.869937, 0.378128,
		0.349790, 0.263472, -0.899016,
		-0.881714, 0.416884, -0.220883,
		28.705761, 34.471992, 36.924580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413956, 34.822289, 36.671562>,  <29.322962, 34.180176, 37.079197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413956, 34.822289, 36.671562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085634, 34.838551, 36.899467>,  <28.888641, 34.848309, 37.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085634, 34.838551, 36.899467>,  <29.413956, 34.822289, 36.671562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085634, 34.838551, 36.899467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296517, 0.882867, 0.364174,
		-0.488220, 0.467859, -0.736715,
		-0.820804, 0.040652, 0.569762,
		28.839394, 34.850746, 37.070396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120468, 35.495586, 36.655910>,  <29.413956, 34.822289, 36.671562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120468, 35.495586, 36.655910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999882, 35.343498, 37.005665>,  <28.927530, 35.252243, 37.215519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999882, 35.343498, 37.005665>,  <29.120468, 35.495586, 36.655910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999882, 35.343498, 37.005665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370603, 0.798216, 0.474874,
		-0.878506, 0.467208, -0.099723,
		-0.301465, -0.380222, 0.874385,
		28.909443, 35.229431, 37.267979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541759, 35.862644, 36.908516>,  <29.120468, 35.495586, 36.655910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541759, 35.862644, 36.908516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756456, 35.696274, 37.202160>,  <28.885275, 35.596451, 37.378345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756456, 35.696274, 37.202160>,  <28.541759, 35.862644, 36.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756456, 35.696274, 37.202160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038147, 0.881132, 0.471330,
		-0.842885, -0.224977, 0.488805,
		0.536740, -0.415923, 0.734110,
		28.917479, 35.571495, 37.422394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302555, 35.986530, 37.640621>,  <28.541759, 35.862644, 36.908516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302555, 35.986530, 37.640621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694014, 35.922371, 37.692032>,  <28.928888, 35.883877, 37.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694014, 35.922371, 37.692032>,  <28.302555, 35.986530, 37.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694014, 35.922371, 37.692032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070407, 0.849092, 0.523531,
		-0.193108, -0.503303, 0.842256,
		0.978648, -0.160399, 0.128531,
		28.987608, 35.874252, 37.730591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458408, 35.995445, 38.394600>,  <28.302555, 35.986530, 37.640621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458408, 35.995445, 38.394600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741514, 36.125851, 38.143909>,  <28.911377, 36.204094, 37.993496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741514, 36.125851, 38.143909>,  <28.458408, 35.995445, 38.394600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741514, 36.125851, 38.143909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015157, 0.879938, 0.474846,
		0.706286, -0.345578, 0.617847,
		0.707764, 0.326013, -0.626726,
		28.953844, 36.223656, 37.955891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941969, 36.354935, 38.817310>,  <28.458408, 35.995445, 38.394600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941969, 36.354935, 38.817310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976238, 36.509693, 38.450058>,  <28.996799, 36.602547, 38.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976238, 36.509693, 38.450058>,  <28.941969, 36.354935, 38.817310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976238, 36.509693, 38.450058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156888, 0.915266, 0.371045,
		0.983893, 0.112255, 0.139114,
		0.085675, 0.386894, -0.918136,
		29.001940, 36.625763, 38.174618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171856, 37.005970, 38.894459>,  <28.941969, 36.354935, 38.817310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171856, 37.005970, 38.894459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090029, 37.060341, 38.506710>,  <29.040932, 37.092964, 38.274063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090029, 37.060341, 38.506710>,  <29.171856, 37.005970, 38.894459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090029, 37.060341, 38.506710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366205, 0.907770, 0.204570,
		0.907769, 0.396837, -0.135925,
		-0.204570, 0.135925, -0.969369,
		29.028658, 37.101120, 38.215900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379984, 37.621784, 38.772751>,  <29.171856, 37.005970, 38.894459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379984, 37.621784, 38.772751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097733, 37.546173, 38.499588>,  <28.928383, 37.500805, 38.335690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097733, 37.546173, 38.499588>,  <29.379984, 37.621784, 38.772751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097733, 37.546173, 38.499588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227428, 0.973188, -0.034389,
		0.671095, 0.131046, -0.729698,
		-0.705626, -0.189032, -0.682905,
		28.886045, 37.489464, 38.294716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298906, 38.373726, 38.788456>,  <29.379984, 37.621784, 38.772751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298906, 38.373726, 38.788456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022781, 38.559395, 38.566460>,  <28.857105, 38.670795, 38.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022781, 38.559395, 38.566460>,  <29.298906, 38.373726, 38.788456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022781, 38.559395, 38.566460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023117, -0.780838, -0.624306,
		-0.723137, -0.418140, 0.549756,
		-0.690318, 0.464168, -0.554986,
		28.815687, 38.698647, 38.399963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581005, 38.069115, 38.911587>,  <29.298906, 38.373726, 38.788456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581005, 38.069115, 38.911587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599159, 38.200626, 38.534260>,  <28.610052, 38.279533, 38.307865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599159, 38.200626, 38.534260>,  <28.581005, 38.069115, 38.911587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599159, 38.200626, 38.534260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014936, -0.943961, -0.329718,
		-0.998858, 0.029053, -0.037931,
		0.045384, 0.328775, -0.943317,
		28.612774, 38.299259, 38.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100018, 37.717365, 38.329594>,  <28.581005, 38.069115, 38.911587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100018, 37.717365, 38.329594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424433, 37.815807, 38.117310>,  <28.619081, 37.874870, 37.989941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424433, 37.815807, 38.117310>,  <28.100018, 37.717365, 38.329594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424433, 37.815807, 38.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057913, -0.936524, -0.345788,
		-0.582118, 0.249713, -0.773810,
		0.811039, 0.246103, -0.530706,
		28.667744, 37.889637, 37.958099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092842, 37.631725, 37.469753>,  <28.100018, 37.717365, 38.329594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092842, 37.631725, 37.469753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440561, 37.576355, 37.659557>,  <28.649193, 37.543133, 37.773438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440561, 37.576355, 37.659557>,  <28.092842, 37.631725, 37.469753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440561, 37.576355, 37.659557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056471, -0.925886, -0.373560,
		0.491049, 0.351531, -0.797055,
		0.869300, -0.138426, 0.474506,
		28.701351, 37.534828, 37.801910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742691, 37.453442, 37.021358>,  <28.092842, 37.631725, 37.469753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742691, 37.453442, 37.021358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818697, 37.314133, 37.388531>,  <28.864302, 37.230549, 37.608833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818697, 37.314133, 37.388531>,  <28.742691, 37.453442, 37.021358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818697, 37.314133, 37.388531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129964, -0.917817, -0.375128,
		0.973141, 0.190579, -0.129138,
		0.190017, -0.348269, 0.917934,
		28.875702, 37.209652, 37.663910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316481, 37.133209, 36.972122>,  <28.742691, 37.453442, 37.021358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316481, 37.133209, 36.972122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185350, 36.972866, 37.314316>,  <29.106672, 36.876659, 37.519630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185350, 36.972866, 37.314316>,  <29.316481, 37.133209, 36.972122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185350, 36.972866, 37.314316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336174, -0.895748, -0.290901,
		0.882903, 0.192226, 0.428405,
		-0.327824, -0.400856, 0.855480,
		29.087004, 36.852608, 37.570961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919060, 36.859680, 37.314396>,  <29.316481, 37.133209, 36.972122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919060, 36.859680, 37.314396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630671, 36.651882, 37.497841>,  <29.457638, 36.527203, 37.607910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630671, 36.651882, 37.497841>,  <29.919060, 36.859680, 37.314396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630671, 36.651882, 37.497841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327254, -0.838613, -0.435469,
		0.610823, -0.163877, 0.774623,
		-0.720972, -0.519492, 0.458614,
		29.414379, 36.496033, 37.635426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175987, 36.226910, 37.704689>,  <29.919060, 36.859680, 37.314396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175987, 36.226910, 37.704689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801809, 36.172726, 37.574093>,  <29.577303, 36.140217, 37.495735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801809, 36.172726, 37.574093>,  <30.175987, 36.226910, 37.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801809, 36.172726, 37.574093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225639, -0.939822, -0.256555,
		-0.272092, -0.313662, 0.909715,
		-0.935442, -0.135461, -0.326493,
		29.521177, 36.132088, 37.476147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843462, 35.809711, 38.188606>,  <30.175987, 36.226910, 37.704689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843462, 35.809711, 38.188606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751413, 35.778320, 37.800610>,  <29.696184, 35.759487, 37.567810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751413, 35.778320, 37.800610>,  <29.843462, 35.809711, 38.188606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751413, 35.778320, 37.800610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299911, -0.953948, 0.006025,
		-0.925795, -0.289525, 0.243060,
		-0.230123, -0.078474, -0.969993,
		29.682377, 35.754780, 37.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386812, 35.248791, 38.072853>,  <29.843462, 35.809711, 38.188606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386812, 35.248791, 38.072853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608875, 35.335564, 37.751671>,  <29.742113, 35.387627, 37.558960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608875, 35.335564, 37.751671>,  <29.386812, 35.248791, 38.072853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608875, 35.335564, 37.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445874, -0.892575, 0.067132,
		-0.702138, -0.395288, -0.592242,
		0.555156, 0.216929, -0.802959,
		29.775423, 35.400642, 37.510784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411118, 34.660740, 37.623905>,  <29.386812, 35.248791, 38.072853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411118, 34.660740, 37.623905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748671, 34.861118, 37.547054>,  <29.951202, 34.981346, 37.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748671, 34.861118, 37.547054>,  <29.411118, 34.660740, 37.623905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748671, 34.861118, 37.547054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510059, -0.860136, -0.002353,
		-0.166436, -0.096011, -0.981367,
		0.843883, 0.500947, -0.192129,
		30.001835, 35.011402, 37.489414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000134, 34.136082, 37.442867>,  <29.411118, 34.660740, 37.623905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000134, 34.136082, 37.442867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893255, 34.243183, 37.072590>,  <29.829128, 34.307446, 36.850422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893255, 34.243183, 37.072590>,  <30.000134, 34.136082, 37.442867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893255, 34.243183, 37.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896311, 0.421828, -0.136702,
		0.353882, -0.866239, -0.352701,
		-0.267196, 0.267753, -0.925697,
		29.813097, 34.323509, 36.794880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692051, 34.156143, 37.169277>,  <30.000134, 34.136082, 37.442867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692051, 34.156143, 37.169277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445774, 34.351906, 36.922245>,  <30.298008, 34.469364, 36.774025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445774, 34.351906, 36.922245>,  <30.692051, 34.156143, 37.169277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445774, 34.351906, 36.922245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785534, 0.442998, -0.432076,
		0.062125, -0.751155, -0.657197,
		-0.615693, 0.489407, -0.617579,
		30.261066, 34.498730, 36.736973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191803, 34.005959, 37.680462>,  <30.692051, 34.156143, 37.169277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191803, 34.005959, 37.680462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435314, 34.311344, 37.594193>,  <31.581421, 34.494576, 37.542431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435314, 34.311344, 37.594193>,  <31.191803, 34.005959, 37.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435314, 34.311344, 37.594193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194895, 0.407448, 0.892189,
		0.769031, -0.501109, 0.396840,
		0.608776, 0.763463, -0.215676,
		31.617947, 34.540382, 37.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743015, 34.051697, 38.098831>,  <31.191803, 34.005959, 37.680462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743015, 34.051697, 38.098831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655642, 34.423023, 37.978485>,  <31.603216, 34.645817, 37.906277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655642, 34.423023, 37.978485>,  <31.743015, 34.051697, 38.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655642, 34.423023, 37.978485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058611, 0.295277, 0.953612,
		0.974089, 0.225938, -0.010090,
		-0.218436, 0.928312, -0.300869,
		31.590111, 34.701515, 37.888226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061226, 34.485535, 38.602371>,  <31.743015, 34.051697, 38.098831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061226, 34.485535, 38.602371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787422, 34.710205, 38.416481>,  <31.623140, 34.845009, 38.304947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787422, 34.710205, 38.416481>,  <32.061226, 34.485535, 38.602371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787422, 34.710205, 38.416481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090504, 0.567074, 0.818679,
		0.723367, 0.602451, -0.337332,
		-0.684506, 0.561676, -0.464727,
		31.582069, 34.878708, 38.277061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110249, 35.024590, 39.026855>,  <32.061226, 34.485535, 38.602371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110249, 35.024590, 39.026855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806282, 35.082947, 38.773483>,  <31.623901, 35.117962, 38.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806282, 35.082947, 38.773483>,  <32.110249, 35.024590, 39.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806282, 35.082947, 38.773483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495953, 0.499791, 0.710098,
		0.420180, 0.853771, -0.307447,
		-0.759920, 0.145890, -0.633433,
		31.578306, 35.126713, 38.583454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300827, 35.314503, 38.325474>,  <32.110249, 35.024590, 39.026855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300827, 35.314503, 38.325474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956564, 35.422493, 38.152782>,  <31.750008, 35.487286, 38.049168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956564, 35.422493, 38.152782>,  <32.300827, 35.314503, 38.325474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956564, 35.422493, 38.152782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393346, 0.185912, 0.900398,
		0.323349, 0.944748, -0.053812,
		-0.860654, 0.269976, -0.431727,
		31.698368, 35.503487, 38.023266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160542, 36.031265, 38.393845>,  <32.300827, 35.314503, 38.325474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160542, 36.031265, 38.393845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806692, 35.849831, 38.350586>,  <31.594381, 35.740971, 38.324631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806692, 35.849831, 38.350586>,  <32.160542, 36.031265, 38.393845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806692, 35.849831, 38.350586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243119, 0.250737, 0.937029,
		-0.397903, 0.855216, -0.332083,
		-0.884628, -0.453582, -0.108150,
		31.541304, 35.713757, 38.318142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702971, 36.410488, 38.711823>,  <32.160542, 36.031265, 38.393845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702971, 36.410488, 38.711823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461777, 36.091984, 38.692314>,  <31.317060, 35.900883, 38.680611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461777, 36.091984, 38.692314>,  <31.702971, 36.410488, 38.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461777, 36.091984, 38.692314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405705, 0.253444, 0.878162,
		-0.686886, 0.549305, -0.475870,
		-0.602985, -0.796260, -0.048769,
		31.280882, 35.853107, 38.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999390, 36.713867, 38.659042>,  <31.702971, 36.410488, 38.711823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999390, 36.713867, 38.659042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123293, 36.394684, 38.865852>,  <31.197634, 36.203175, 38.989937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123293, 36.394684, 38.865852>,  <30.999390, 36.713867, 38.659042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123293, 36.394684, 38.865852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337003, 0.416328, 0.844453,
		-0.889089, -0.435813, -0.139954,
		0.309756, -0.797959, 0.517023,
		31.216221, 36.155296, 39.020958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568779, 36.846645, 39.293888>,  <30.999390, 36.713867, 38.659042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568779, 36.846645, 39.293888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836212, 36.559338, 39.370914>,  <30.996672, 36.386951, 39.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836212, 36.559338, 39.370914>,  <30.568779, 36.846645, 39.293888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836212, 36.559338, 39.370914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182853, 0.092216, 0.978806,
		-0.720805, -0.689626, -0.069684,
		0.668584, -0.718270, 0.192570,
		31.036787, 36.343857, 39.428684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209940, 36.348885, 39.689983>,  <30.568779, 36.846645, 39.293888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209940, 36.348885, 39.689983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603783, 36.417561, 39.703060>,  <30.840088, 36.458767, 39.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603783, 36.417561, 39.703060>,  <30.209940, 36.348885, 39.689983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603783, 36.417561, 39.703060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103799, 0.423967, 0.899710,
		0.140614, -0.889255, 0.435263,
		0.984608, 0.171692, 0.032688,
		30.899164, 36.469067, 39.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791283, 35.683723, 39.575100>,  <30.209940, 36.348885, 39.689983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791283, 35.683723, 39.575100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091631, 35.820652, 39.801022>,  <30.271841, 35.902809, 39.936577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091631, 35.820652, 39.801022>,  <29.791283, 35.683723, 39.575100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091631, 35.820652, 39.801022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660438, 0.393474, 0.639530,
		-0.003313, -0.853226, 0.521530,
		0.750873, 0.342320, 0.564807,
		30.316893, 35.923347, 39.970463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362736, 35.275162, 39.939617>,  <29.791283, 35.683723, 39.575100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362736, 35.275162, 39.939617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510706, 35.062969, 40.244705>,  <30.599487, 34.935654, 40.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510706, 35.062969, 40.244705>,  <30.362736, 35.275162, 39.939617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510706, 35.062969, 40.244705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443496, -0.620554, -0.646703,
		0.816374, 0.577496, 0.005707,
		0.369926, -0.530482, 0.762721,
		30.621683, 34.903824, 40.473522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716906, 34.832245, 39.533127>,  <30.362736, 35.275162, 39.939617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716906, 34.832245, 39.533127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816475, 35.163761, 39.332672>,  <30.876217, 35.362671, 39.212399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816475, 35.163761, 39.332672>,  <30.716906, 34.832245, 39.533127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816475, 35.163761, 39.332672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171632, -0.546984, -0.819360,
		-0.953195, 0.117945, -0.278403,
		0.248922, 0.828793, -0.501139,
		30.891151, 35.412399, 39.182331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615692, 34.727066, 38.785995>,  <30.716906, 34.832245, 39.533127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615692, 34.727066, 38.785995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818707, 35.070190, 38.753605>,  <30.940516, 35.276066, 38.734169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818707, 35.070190, 38.753605>,  <30.615692, 34.727066, 38.785995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818707, 35.070190, 38.753605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392059, -0.313607, -0.864835,
		-0.767264, 0.407189, -0.495482,
		0.507538, 0.857816, -0.080977,
		30.970968, 35.327534, 38.729313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386747, 35.095673, 38.183704>,  <30.615692, 34.727066, 38.785995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386747, 35.095673, 38.183704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760298, 35.166275, 38.308105>,  <30.984428, 35.208637, 38.382748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760298, 35.166275, 38.308105>,  <30.386747, 35.095673, 38.183704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760298, 35.166275, 38.308105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350297, -0.276651, -0.894850,
		-0.071911, 0.944621, -0.320188,
		0.933874, 0.176510, 0.311003,
		31.040461, 35.219227, 38.401405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627691, 35.541885, 37.719521>,  <30.386747, 35.095673, 38.183704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627691, 35.541885, 37.719521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940594, 35.364410, 37.894436>,  <31.128336, 35.257927, 37.999386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940594, 35.364410, 37.894436>,  <30.627691, 35.541885, 37.719521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940594, 35.364410, 37.894436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368272, -0.236792, -0.899058,
		0.502444, 0.864334, -0.021835,
		0.782257, -0.443685, 0.437285,
		31.175270, 35.231304, 38.025620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268049, 35.901314, 37.501278>,  <30.627691, 35.541885, 37.719521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268049, 35.901314, 37.501278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353371, 35.529060, 37.620220>,  <31.404564, 35.305710, 37.691586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353371, 35.529060, 37.620220>,  <31.268049, 35.901314, 37.501278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353371, 35.529060, 37.620220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363650, -0.206864, -0.908276,
		0.906785, 0.301873, 0.294300,
		0.213304, -0.930634, 0.297357,
		31.417362, 35.249870, 37.709427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035263, 35.818615, 37.382866>,  <31.268049, 35.901314, 37.501278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035263, 35.818615, 37.382866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820517, 35.481361, 37.394890>,  <31.691668, 35.279011, 37.402103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820517, 35.481361, 37.394890>,  <32.035263, 35.818615, 37.382866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820517, 35.481361, 37.394890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341806, -0.249949, -0.905922,
		0.771323, -0.476086, 0.422377,
		-0.536870, -0.843129, 0.030063,
		31.659456, 35.228424, 37.403908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372921, 35.253139, 37.256420>,  <32.035263, 35.818615, 37.382866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372921, 35.253139, 37.256420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993963, 35.202408, 37.138874>,  <31.766588, 35.171970, 37.068344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993963, 35.202408, 37.138874>,  <32.372921, 35.253139, 37.256420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993963, 35.202408, 37.138874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313578, -0.183829, -0.931599,
		0.064131, -0.974742, 0.213929,
		-0.947394, -0.126828, -0.293868,
		31.709745, 35.164360, 37.050713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212383, 34.561981, 36.915707>,  <32.372921, 35.253139, 37.256420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212383, 34.561981, 36.915707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028954, 34.884007, 36.765198>,  <31.918896, 35.077221, 36.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028954, 34.884007, 36.765198>,  <32.212383, 34.561981, 36.915707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028954, 34.884007, 36.765198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409537, -0.184319, -0.893480,
		-0.788662, -0.563826, -0.245179,
		-0.458576, 0.805063, -0.376273,
		31.891380, 35.125526, 36.652317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625170, 34.514347, 36.320568>,  <32.212383, 34.561981, 36.915707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625170, 34.514347, 36.320568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875292, 34.825775, 36.299328>,  <32.025364, 35.012630, 36.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875292, 34.825775, 36.299328>,  <31.625170, 34.514347, 36.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875292, 34.825775, 36.299328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318628, -0.316831, -0.893361,
		-0.712368, 0.541706, -0.446191,
		0.625306, 0.778571, -0.053098,
		32.062885, 35.059345, 36.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705582, 34.678413, 35.592236>,  <31.625170, 34.514347, 36.320568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705582, 34.678413, 35.592236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028484, 34.845760, 35.758759>,  <32.222225, 34.946167, 35.858673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028484, 34.845760, 35.758759>,  <31.705582, 34.678413, 35.592236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028484, 34.845760, 35.758759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571119, -0.375803, -0.729791,
		-0.148872, 0.826887, -0.542306,
		0.807255, 0.418367, 0.416304,
		32.270660, 34.971272, 35.883648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089943, 35.172436, 35.092316>,  <31.705582, 34.678413, 35.592236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089943, 35.172436, 35.092316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346546, 35.025604, 35.361752>,  <32.500507, 34.937508, 35.523415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346546, 35.025604, 35.361752>,  <32.089943, 35.172436, 35.092316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346546, 35.025604, 35.361752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543078, -0.402846, -0.736737,
		0.541792, 0.838434, -0.059078,
		0.641505, -0.367074, 0.673594,
		32.538998, 34.915482, 35.563831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713490, 35.385693, 34.929497>,  <32.089943, 35.172436, 35.092316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713490, 35.385693, 34.929497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821976, 35.090130, 35.176220>,  <32.887066, 34.912792, 35.324253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821976, 35.090130, 35.176220>,  <32.713490, 35.385693, 34.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821976, 35.090130, 35.176220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784291, -0.201836, -0.586643,
		0.557971, 0.642864, 0.524780,
		0.271213, -0.738910, 0.616811,
		32.903339, 34.868458, 35.361263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384739, 35.246006, 34.799091>,  <32.713490, 35.385693, 34.929497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384739, 35.246006, 34.799091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329052, 34.898216, 34.988670>,  <33.295639, 34.689541, 35.102417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329052, 34.898216, 34.988670>,  <33.384739, 35.246006, 34.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329052, 34.898216, 34.988670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596097, -0.455765, -0.661019,
		0.790750, 0.190491, 0.581745,
		-0.139221, -0.869478, 0.473947,
		33.287285, 34.637371, 35.130856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019127, 35.003662, 34.810959>,  <33.384739, 35.246006, 34.799091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019127, 35.003662, 34.810959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776249, 34.687962, 34.847610>,  <33.630524, 34.498539, 34.869602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776249, 34.687962, 34.847610>,  <34.019127, 35.003662, 34.810959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776249, 34.687962, 34.847610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615130, -0.539937, -0.574528,
		0.502923, -0.292483, 0.813340,
		-0.607192, -0.789254, 0.091632,
		33.594090, 34.451187, 34.875099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455978, 34.586819, 34.638168>,  <34.019127, 35.003662, 34.810959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455978, 34.586819, 34.638168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122559, 34.366024, 34.629147>,  <33.922508, 34.233547, 34.623734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122559, 34.366024, 34.629147>,  <34.455978, 34.586819, 34.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122559, 34.366024, 34.629147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388760, -0.557081, -0.733844,
		0.392504, -0.620464, 0.678944,
		-0.833551, -0.551982, -0.022555,
		33.872494, 34.200428, 34.622379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726433, 33.925564, 34.581200>,  <34.455978, 34.586819, 34.638168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726433, 33.925564, 34.581200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348904, 33.929676, 34.449078>,  <34.122387, 33.932144, 34.369804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348904, 33.929676, 34.449078>,  <34.726433, 33.925564, 34.581200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348904, 33.929676, 34.449078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250853, -0.628372, -0.736357,
		-0.215126, -0.777845, 0.590490,
		-0.943819, 0.010284, -0.330304,
		34.065758, 33.932762, 34.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563786, 33.301662, 34.318222>,  <34.726433, 33.925564, 34.581200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563786, 33.301662, 34.318222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309834, 33.554028, 34.139839>,  <34.157463, 33.705448, 34.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309834, 33.554028, 34.139839>,  <34.563786, 33.301662, 34.318222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309834, 33.554028, 34.139839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321792, -0.308834, -0.895026,
		-0.702413, -0.711736, -0.006952,
		-0.634875, 0.630915, -0.445959,
		34.119370, 33.743301, 34.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248440, 32.750088, 33.895206>,  <34.563786, 33.301662, 34.318222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248440, 32.750088, 33.895206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159634, 33.115639, 33.759243>,  <34.106350, 33.334969, 33.677666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159634, 33.115639, 33.759243>,  <34.248440, 32.750088, 33.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159634, 33.115639, 33.759243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207244, -0.296416, -0.932302,
		-0.952764, -0.277428, -0.123587,
		-0.222013, 0.913877, -0.339910,
		34.093029, 33.389801, 33.657269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708733, 32.696220, 33.383389>,  <34.248440, 32.750088, 33.895206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708733, 32.696220, 33.383389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894215, 33.043190, 33.311214>,  <34.005505, 33.251373, 33.267910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894215, 33.043190, 33.311214>,  <33.708733, 32.696220, 33.383389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894215, 33.043190, 33.311214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144117, -0.274792, -0.950642,
		-0.874192, 0.414810, -0.252431,
		0.463702, 0.867423, -0.180440,
		34.033325, 33.303417, 33.257084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414391, 32.909508, 32.842758>,  <33.708733, 32.696220, 33.383389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414391, 32.909508, 32.842758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732044, 33.152500, 32.849758>,  <33.922638, 33.298298, 32.853958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732044, 33.152500, 32.849758>,  <33.414391, 32.909508, 32.842758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732044, 33.152500, 32.849758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159866, -0.181031, -0.970397,
		-0.586333, 0.773427, -0.240880,
		0.794139, 0.607485, 0.017500,
		33.970287, 33.334747, 32.855007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430923, 33.308605, 32.252686>,  <33.414391, 32.909508, 32.842758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430923, 33.308605, 32.252686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812496, 33.338490, 32.368916>,  <34.041439, 33.356422, 32.438652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812496, 33.338490, 32.368916>,  <33.430923, 33.308605, 32.252686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812496, 33.338490, 32.368916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299832, -0.202358, -0.932283,
		-0.010854, 0.976457, -0.215437,
		0.953930, 0.074714, 0.290577,
		34.098675, 33.360905, 32.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803841, 33.784168, 31.750751>,  <33.430923, 33.308605, 32.252686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803841, 33.784168, 31.750751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089901, 33.581593, 31.943447>,  <34.261539, 33.460045, 32.059063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089901, 33.581593, 31.943447>,  <33.803841, 33.784168, 31.750751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089901, 33.581593, 31.943447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490305, -0.127720, -0.862142,
		0.498152, 0.852763, 0.156971,
		0.715154, -0.506441, 0.481738,
		34.304447, 33.429661, 32.087967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381763, 34.071201, 31.542196>,  <33.803841, 33.784168, 31.750751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381763, 34.071201, 31.542196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449661, 33.694023, 31.656769>,  <34.490402, 33.467716, 31.725512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449661, 33.694023, 31.656769>,  <34.381763, 34.071201, 31.542196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449661, 33.694023, 31.656769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367190, -0.209202, -0.906315,
		0.914526, 0.259018, 0.310728,
		0.169747, -0.942944, 0.286430,
		34.500584, 33.411140, 31.742697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837040, 33.993542, 31.155306>,  <34.381763, 34.071201, 31.542196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837040, 33.993542, 31.155306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731232, 33.620548, 31.253691>,  <34.667747, 33.396751, 31.312721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731232, 33.620548, 31.253691>,  <34.837040, 33.993542, 31.155306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731232, 33.620548, 31.253691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308895, -0.323535, -0.894376,
		0.913572, -0.160601, 0.373621,
		-0.264517, -0.932487, 0.245964,
		34.651878, 33.340801, 31.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344334, 33.545918, 30.831175>,  <34.837040, 33.993542, 31.155306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344334, 33.545918, 30.831175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037617, 33.304554, 30.918753>,  <34.853588, 33.159737, 30.971298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037617, 33.304554, 30.918753>,  <35.344334, 33.545918, 30.831175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037617, 33.304554, 30.918753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090870, -0.439693, -0.893540,
		0.635435, -0.665261, 0.391983,
		-0.766789, -0.603406, 0.218944,
		34.807579, 33.123531, 30.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632221, 32.831429, 30.666691>,  <35.344334, 33.545918, 30.831175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632221, 32.831429, 30.666691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232609, 32.825069, 30.650297>,  <34.992840, 32.821255, 30.640461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232609, 32.825069, 30.650297>,  <35.632221, 32.831429, 30.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232609, 32.825069, 30.650297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041990, -0.621018, -0.782671,
		-0.013009, -0.783635, 0.621085,
		-0.999033, -0.015898, -0.040984,
		34.932899, 32.820301, 30.638002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446434, 32.216724, 30.301178>,  <35.632221, 32.831429, 30.666691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446434, 32.216724, 30.301178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115669, 32.440594, 30.279320>,  <34.917210, 32.574917, 30.266205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115669, 32.440594, 30.279320>,  <35.446434, 32.216724, 30.301178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115669, 32.440594, 30.279320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156986, -0.323067, -0.933265,
		-0.539978, -0.763147, 0.355008,
		-0.826909, 0.559674, -0.054646,
		34.867596, 32.608498, 30.262926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046684, 31.789171, 29.853937>,  <35.446434, 32.216724, 30.301178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046684, 31.789171, 29.853937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907696, 32.163986, 29.839918>,  <34.824303, 32.388874, 29.831507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907696, 32.163986, 29.839918>,  <35.046684, 31.789171, 29.853937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907696, 32.163986, 29.839918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147750, -0.091623, -0.984772,
		-0.925978, -0.337000, 0.170283,
		-0.347470, 0.937036, -0.035049,
		34.803455, 32.445095, 29.829403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351685, 31.716734, 29.426401>,  <35.046684, 31.789171, 29.853937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351685, 31.716734, 29.426401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479443, 32.095699, 29.418474>,  <34.556099, 32.323078, 29.413719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479443, 32.095699, 29.418474>,  <34.351685, 31.716734, 29.426401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479443, 32.095699, 29.418474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217193, 0.052834, -0.974698,
		-0.922396, 0.315617, 0.222647,
		0.319395, 0.947414, -0.019816,
		34.575260, 32.379925, 29.412529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863556, 32.051052, 28.984900>,  <34.351685, 31.716734, 29.426401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863556, 32.051052, 28.984900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199993, 32.266033, 29.009243>,  <34.401855, 32.395023, 29.023849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199993, 32.266033, 29.009243>,  <33.863556, 32.051052, 28.984900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199993, 32.266033, 29.009243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016986, 0.138707, -0.990188,
		-0.540625, 0.831805, 0.125795,
		0.841092, 0.537457, 0.060860,
		34.452320, 32.427269, 29.027500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491760, 32.562840, 28.627638>,  <33.863556, 32.051052, 28.984900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491760, 32.562840, 28.627638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890442, 32.577732, 28.598816>,  <34.129650, 32.586666, 28.581522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890442, 32.577732, 28.598816>,  <33.491760, 32.562840, 28.627638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890442, 32.577732, 28.598816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075076, 0.087351, -0.993345,
		-0.030690, 0.995482, 0.089858,
		0.996705, 0.037232, -0.072056,
		34.189453, 32.588902, 28.577200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665100, 33.141773, 28.139576>,  <33.491760, 32.562840, 28.627638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665100, 33.141773, 28.139576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990486, 32.910126, 28.161118>,  <34.185719, 32.771137, 28.174044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990486, 32.910126, 28.161118>,  <33.665100, 33.141773, 28.139576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990486, 32.910126, 28.161118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056105, -0.014032, -0.998326,
		0.578907, 0.815121, 0.021077,
		0.813461, -0.579120, 0.053855,
		34.234524, 32.736389, 28.177275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100880, 33.277081, 27.610777>,  <33.665100, 33.141773, 28.139576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100880, 33.277081, 27.610777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205238, 32.901863, 27.702005>,  <34.267853, 32.676735, 27.756742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205238, 32.901863, 27.702005>,  <34.100880, 33.277081, 27.610777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205238, 32.901863, 27.702005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297791, -0.146529, -0.943318,
		0.918289, 0.314025, 0.241111,
		0.260896, -0.938039, 0.228070,
		34.283508, 32.620453, 27.770426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696041, 33.211353, 27.224804>,  <34.100880, 33.277081, 27.610777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696041, 33.211353, 27.224804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580986, 32.841984, 27.326437>,  <34.511951, 32.620361, 27.387417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580986, 32.841984, 27.326437>,  <34.696041, 33.211353, 27.224804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580986, 32.841984, 27.326437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228216, -0.323737, -0.918211,
		0.930152, -0.206126, 0.303858,
		-0.287637, -0.923421, 0.254083,
		34.494694, 32.564957, 27.402662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246944, 32.854298, 27.144907>,  <34.696041, 33.211353, 27.224804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246944, 32.854298, 27.144907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926132, 32.617828, 27.110840>,  <34.733643, 32.475948, 27.090399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926132, 32.617828, 27.110840>,  <35.246944, 32.854298, 27.144907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926132, 32.617828, 27.110840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264063, -0.223061, -0.938358,
		0.535734, -0.775086, 0.335009,
		-0.802035, -0.591174, -0.085170,
		34.685520, 32.440475, 27.085289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564510, 32.219433, 26.861628>,  <35.246944, 32.854298, 27.144907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564510, 32.219433, 26.861628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172333, 32.176918, 26.795376>,  <34.937027, 32.151409, 26.755625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172333, 32.176918, 26.795376>,  <35.564510, 32.219433, 26.861628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172333, 32.176918, 26.795376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, -0.364542, -0.910882,
		0.036435, -0.925101, 0.377968,
		-0.980444, -0.106286, -0.165630,
		34.878201, 32.145031, 26.745687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439442, 31.635868, 26.585030>,  <35.564510, 32.219433, 26.861628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439442, 31.635868, 26.585030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070599, 31.757353, 26.489132>,  <34.849293, 31.830244, 26.431593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070599, 31.757353, 26.489132>,  <35.439442, 31.635868, 26.585030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070599, 31.757353, 26.489132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056230, -0.507844, -0.859612,
		-0.382824, -0.806136, 0.451210,
		-0.922109, 0.303708, -0.239744,
		34.793964, 31.848465, 26.417208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069382, 30.996517, 26.205067>,  <35.439442, 31.635868, 26.585030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069382, 30.996517, 26.205067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877449, 31.333591, 26.107384>,  <34.762287, 31.535837, 26.048775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877449, 31.333591, 26.107384>,  <35.069382, 30.996517, 26.205067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877449, 31.333591, 26.107384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005160, -0.281050, -0.959679,
		-0.877344, -0.459226, 0.139206,
		-0.479833, 0.842687, -0.244208,
		34.733498, 31.586397, 26.034121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452526, 30.704451, 25.904352>,  <35.069382, 30.996517, 26.205067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452526, 30.704451, 25.904352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542667, 31.066971, 25.761337>,  <34.596752, 31.284483, 25.675528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542667, 31.066971, 25.761337>,  <34.452526, 30.704451, 25.904352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542667, 31.066971, 25.761337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042820, -0.375836, -0.925696,
		-0.973335, 0.193301, -0.123504,
		0.225356, 0.906301, -0.357537,
		34.610275, 31.338861, 25.654076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883717, 30.944733, 25.451750>,  <34.452526, 30.704451, 25.904352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883717, 30.944733, 25.451750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230816, 31.123480, 25.364731>,  <34.439075, 31.230728, 25.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230816, 31.123480, 25.364731>,  <33.883717, 30.944733, 25.451750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230816, 31.123480, 25.364731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042123, -0.502264, -0.863688,
		-0.495219, 0.740298, -0.454661,
		0.867746, 0.446866, -0.217547,
		34.491138, 31.257540, 25.299467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797951, 31.135740, 24.755045>,  <33.883717, 30.944733, 25.451750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797951, 31.135740, 24.755045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193764, 31.158281, 24.808182>,  <34.431252, 31.171806, 24.840063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193764, 31.158281, 24.808182>,  <33.797951, 31.135740, 24.755045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193764, 31.158281, 24.808182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144092, -0.435424, -0.888619,
		0.007766, 0.898460, -0.438987,
		0.989534, 0.056353, 0.132842,
		34.490623, 31.175188, 24.848034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057816, 31.407660, 24.180212>,  <33.797951, 31.135740, 24.755045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057816, 31.407660, 24.180212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413471, 31.273966, 24.305250>,  <34.626865, 31.193750, 24.380274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413471, 31.273966, 24.305250>,  <34.057816, 31.407660, 24.180212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413471, 31.273966, 24.305250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275144, -0.155398, -0.948761,
		0.365685, 0.929591, -0.046208,
		0.889140, -0.334234, 0.312598,
		34.680214, 31.173697, 24.399029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604389, 31.724495, 23.901339>,  <34.057816, 31.407660, 24.180212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604389, 31.724495, 23.901339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754704, 31.363489, 23.985483>,  <34.844891, 31.146885, 24.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754704, 31.363489, 23.985483>,  <34.604389, 31.724495, 23.901339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754704, 31.363489, 23.985483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277809, -0.106844, -0.954676,
		0.884085, 0.417194, 0.210576,
		0.375787, -0.902515, 0.210360,
		34.867439, 31.092735, 24.048592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200371, 31.721922, 23.775173>,  <34.604389, 31.724495, 23.901339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200371, 31.721922, 23.775173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136822, 31.328659, 23.739029>,  <35.098690, 31.092701, 23.717342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136822, 31.328659, 23.739029>,  <35.200371, 31.721922, 23.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136822, 31.328659, 23.739029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370106, 0.025540, -0.928639,
		0.915303, -0.180981, 0.359813,
		-0.158876, -0.983155, -0.090359,
		35.089157, 31.033712, 23.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821472, 31.464748, 23.403690>,  <35.200371, 31.721922, 23.775173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821472, 31.464748, 23.403690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529312, 31.196438, 23.352203>,  <35.354015, 31.035452, 23.321312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529312, 31.196438, 23.352203>,  <35.821472, 31.464748, 23.403690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529312, 31.196438, 23.352203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269286, -0.109622, -0.956801,
		0.627689, -0.733514, 0.260699,
		-0.730405, -0.670776, -0.128717,
		35.310192, 30.995205, 23.313589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135788, 30.949549, 22.924400>,  <35.821472, 31.464748, 23.403690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135788, 30.949549, 22.924400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741680, 30.881578, 22.916615>,  <35.505215, 30.840797, 22.911943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741680, 30.881578, 22.916615>,  <36.135788, 30.949549, 22.924400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741680, 30.881578, 22.916615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034081, -0.083518, -0.995923,
		0.167606, -0.981912, 0.088079,
		-0.985265, -0.169925, -0.019467,
		35.446102, 30.830601, 22.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982986, 30.298805, 22.443592>,  <36.135788, 30.949549, 22.924400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982986, 30.298805, 22.443592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651447, 30.519361, 22.481482>,  <35.452522, 30.651695, 22.504215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651447, 30.519361, 22.481482>,  <35.982986, 30.298805, 22.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651447, 30.519361, 22.481482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154550, -0.062941, -0.985978,
		-0.537699, -0.831868, 0.137386,
		-0.828851, 0.551392, 0.094722,
		35.402790, 30.684778, 22.509897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607346, 30.030266, 21.980938>,  <35.982986, 30.298805, 22.443592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607346, 30.030266, 21.980938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427429, 30.380484, 22.051491>,  <35.319481, 30.590614, 22.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427429, 30.380484, 22.051491>,  <35.607346, 30.030266, 21.980938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427429, 30.380484, 22.051491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214950, 0.085566, -0.972870,
		-0.866883, -0.475501, 0.149712,
		-0.449790, 0.875544, 0.176384,
		35.292492, 30.643147, 22.104406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938381, 30.048811, 21.566595>,  <35.607346, 30.030266, 21.980938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938381, 30.048811, 21.566595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989662, 30.438177, 21.642513>,  <35.020432, 30.671797, 21.688065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989662, 30.438177, 21.642513>,  <34.938381, 30.048811, 21.566595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989662, 30.438177, 21.642513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143982, 0.207615, -0.967556,
		-0.981241, 0.096716, 0.166772,
		0.128203, 0.973417, 0.189795,
		35.028122, 30.730202, 21.699451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411938, 30.407309, 21.305395>,  <34.938381, 30.048811, 21.566595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411938, 30.407309, 21.305395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710148, 30.673897, 21.306578>,  <34.889072, 30.833849, 21.307287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710148, 30.673897, 21.306578>,  <34.411938, 30.407309, 21.305395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710148, 30.673897, 21.306578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211043, 0.240280, -0.947484,
		-0.632180, 0.705750, 0.319789,
		0.745526, 0.666470, 0.002956,
		34.933807, 30.873838, 21.307465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125832, 31.113216, 21.188961>,  <34.411938, 30.407309, 21.305395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125832, 31.113216, 21.188961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498535, 31.037996, 21.064728>,  <34.722157, 30.992865, 20.990187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498535, 31.037996, 21.064728>,  <34.125832, 31.113216, 21.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498535, 31.037996, 21.064728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231821, 0.350232, -0.907522,
		0.279435, 0.917592, 0.282738,
		0.931759, -0.188049, -0.310585,
		34.778065, 30.981581, 20.971552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431179, 31.759623, 20.918694>,  <34.125832, 31.113216, 21.188961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431179, 31.759623, 20.918694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576057, 31.424644, 20.754986>,  <34.662987, 31.223658, 20.656761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576057, 31.424644, 20.754986>,  <34.431179, 31.759623, 20.918694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576057, 31.424644, 20.754986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290172, 0.315957, -0.903311,
		0.885783, 0.445937, -0.128563,
		0.362200, -0.837443, -0.409268,
		34.684719, 31.173412, 20.632206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041264, 32.092800, 20.476089>,  <34.431179, 31.759623, 20.918694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041264, 32.092800, 20.476089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218075, 32.435860, 20.370983>,  <35.324162, 32.641697, 20.307919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218075, 32.435860, 20.370983>,  <35.041264, 32.092800, 20.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218075, 32.435860, 20.370983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237531, -0.394397, -0.887711,
		-0.864981, 0.329976, -0.378052,
		0.442026, 0.857652, -0.262767,
		35.350681, 32.693157, 20.292152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704952, 32.327435, 19.902178>,  <35.041264, 32.092800, 20.476089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704952, 32.327435, 19.902178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051132, 32.527718, 19.895367>,  <35.258839, 32.647888, 19.891279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051132, 32.527718, 19.895367>,  <34.704952, 32.327435, 19.902178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051132, 32.527718, 19.895367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201025, -0.378194, -0.903636,
		-0.458895, 0.778629, -0.427963,
		0.865450, 0.500705, -0.017027,
		35.310768, 32.677929, 19.890259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891708, 32.789112, 19.242939>,  <34.704952, 32.327435, 19.902178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891708, 32.789112, 19.242939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216396, 32.642281, 19.424650>,  <35.411209, 32.554180, 19.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216396, 32.642281, 19.424650>,  <34.891708, 32.789112, 19.242939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216396, 32.642281, 19.424650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285483, -0.429187, -0.856912,
		0.509524, 0.825259, -0.243583,
		0.811717, -0.367078, 0.454279,
		35.459911, 32.532158, 19.560934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545933, 32.988167, 18.974766>,  <34.891708, 32.789112, 19.242939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545933, 32.988167, 18.974766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595406, 32.626907, 19.139215>,  <35.625088, 32.410152, 19.237885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595406, 32.626907, 19.139215>,  <35.545933, 32.988167, 18.974766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595406, 32.626907, 19.139215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403328, -0.332788, -0.852396,
		0.906659, 0.271242, 0.323107,
		0.123679, -0.903150, 0.411125,
		35.632511, 32.355961, 19.262552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199566, 32.744816, 18.896870>,  <35.545933, 32.988167, 18.974766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199566, 32.744816, 18.896870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970291, 32.419594, 18.937679>,  <35.832726, 32.224461, 18.962166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970291, 32.419594, 18.937679>,  <36.199566, 32.744816, 18.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970291, 32.419594, 18.937679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411778, -0.393440, -0.821975,
		0.708448, -0.429131, 0.560310,
		-0.573184, -0.813051, 0.102025,
		35.798336, 32.175678, 18.968287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527225, 32.748001, 19.659107>,  <36.199566, 32.744816, 18.896870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527225, 32.748001, 19.659107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146858, 32.800835, 19.547176>,  <35.918636, 32.832535, 19.480019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146858, 32.800835, 19.547176>,  <36.527225, 32.748001, 19.659107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146858, 32.800835, 19.547176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153629, 0.583469, 0.797472,
		0.268601, 0.801323, -0.534541,
		-0.950921, 0.132081, -0.279827,
		35.861580, 32.840458, 19.463228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341602, 33.429234, 19.915987>,  <36.527225, 32.748001, 19.659107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341602, 33.429234, 19.915987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015018, 33.201874, 19.875376>,  <35.819069, 33.065456, 19.851009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015018, 33.201874, 19.875376>,  <36.341602, 33.429234, 19.915987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015018, 33.201874, 19.875376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377835, 0.392982, 0.838335,
		-0.436613, 0.722830, -0.535617,
		-0.816462, -0.568403, -0.101530,
		35.770081, 33.031353, 19.844917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865971, 33.882515, 20.025650>,  <36.341602, 33.429234, 19.915987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865971, 33.882515, 20.025650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720337, 33.515450, 20.089308>,  <35.632957, 33.295208, 20.127502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720337, 33.515450, 20.089308>,  <35.865971, 33.882515, 20.025650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720337, 33.515450, 20.089308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373417, 0.300367, 0.877690,
		-0.853229, 0.260129, -0.452033,
		-0.364089, -0.917667, 0.159145,
		35.611111, 33.240150, 20.137051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283367, 34.052807, 20.273575>,  <35.865971, 33.882515, 20.025650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283367, 34.052807, 20.273575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339863, 33.679008, 20.404274>,  <35.373760, 33.454727, 20.482693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339863, 33.679008, 20.404274>,  <35.283367, 34.052807, 20.273575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339863, 33.679008, 20.404274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430140, 0.239345, 0.870456,
		-0.891645, -0.263486, -0.368162,
		0.141236, -0.934500, 0.326747,
		35.382233, 33.398659, 20.502298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647915, 33.775902, 20.487232>,  <35.283367, 34.052807, 20.273575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647915, 33.775902, 20.487232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938126, 33.591011, 20.691175>,  <35.112251, 33.480076, 20.813541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938126, 33.591011, 20.691175>,  <34.647915, 33.775902, 20.487232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938126, 33.591011, 20.691175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395584, 0.326131, 0.858575,
		-0.563138, -0.824612, 0.053767,
		0.725527, -0.462227, 0.509860,
		35.155785, 33.452343, 20.844133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392540, 33.244549, 20.967205>,  <34.647915, 33.775902, 20.487232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392540, 33.244549, 20.967205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749256, 33.358139, 21.108093>,  <34.963287, 33.426292, 21.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749256, 33.358139, 21.108093>,  <34.392540, 33.244549, 20.967205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749256, 33.358139, 21.108093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433336, 0.312270, 0.845404,
		0.130083, -0.906558, 0.401536,
		0.891795, 0.283973, 0.352223,
		35.016796, 33.443333, 21.213760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413681, 33.252338, 21.719629>,  <34.392540, 33.244549, 20.967205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413681, 33.252338, 21.719629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760624, 33.443748, 21.664909>,  <34.968788, 33.558594, 21.632078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760624, 33.443748, 21.664909>,  <34.413681, 33.252338, 21.719629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760624, 33.443748, 21.664909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138527, 0.496124, 0.857130,
		0.478023, -0.724486, 0.496604,
		0.867355, 0.478520, -0.136798,
		35.020828, 33.587307, 21.623869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785397, 33.048016, 22.348244>,  <34.413681, 33.252338, 21.719629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785397, 33.048016, 22.348244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950714, 33.362762, 22.164930>,  <35.049904, 33.551613, 22.054943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950714, 33.362762, 22.164930>,  <34.785397, 33.048016, 22.348244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950714, 33.362762, 22.164930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116011, 0.544675, 0.830585,
		0.903177, -0.290111, 0.316397,
		0.413295, 0.786871, -0.458282,
		35.074703, 33.598824, 22.027447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215107, 33.182270, 22.912235>,  <34.785397, 33.048016, 22.348244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215107, 33.182270, 22.912235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217152, 33.509750, 22.682556>,  <35.218376, 33.706238, 22.544748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217152, 33.509750, 22.682556>,  <35.215107, 33.182270, 22.912235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217152, 33.509750, 22.682556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027641, 0.573870, 0.818480,
		0.999605, -0.020053, -0.019698,
		0.005109, 0.818701, -0.574197,
		35.218685, 33.755360, 22.510298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748596, 33.594532, 23.171556>,  <35.215107, 33.182270, 22.912235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748596, 33.594532, 23.171556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515865, 33.859470, 22.982761>,  <35.376228, 34.018433, 22.869484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515865, 33.859470, 22.982761>,  <35.748596, 33.594532, 23.171556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515865, 33.859470, 22.982761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160235, 0.662306, 0.731899,
		0.797373, 0.350209, -0.491478,
		-0.581826, 0.662348, -0.471989,
		35.341316, 34.058174, 22.841166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066563, 34.183201, 23.224167>,  <35.748596, 33.594532, 23.171556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066563, 34.183201, 23.224167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697601, 34.311901, 23.138699>,  <35.476227, 34.389122, 23.087418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697601, 34.311901, 23.138699>,  <36.066563, 34.183201, 23.224167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697601, 34.311901, 23.138699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098099, 0.730229, 0.676123,
		0.373571, 0.602694, -0.705127,
		-0.922400, 0.321753, -0.213669,
		35.420883, 34.408428, 23.074598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197372, 34.937336, 23.186831>,  <36.066563, 34.183201, 23.224167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197372, 34.937336, 23.186831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809513, 34.863403, 23.250864>,  <35.576797, 34.819042, 23.289284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809513, 34.863403, 23.250864>,  <36.197372, 34.937336, 23.186831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809513, 34.863403, 23.250864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016975, 0.703983, 0.710014,
		-0.243933, 0.685743, -0.685750,
		-0.969644, -0.184836, 0.160084,
		35.518620, 34.807953, 23.298889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828766, 35.549644, 23.285702>,  <36.197372, 34.937336, 23.186831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828766, 35.549644, 23.285702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626129, 35.265949, 23.481804>,  <35.504547, 35.095734, 23.599464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626129, 35.265949, 23.481804>,  <35.828766, 35.549644, 23.285702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626129, 35.265949, 23.481804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008756, 0.572818, 0.819636,
		-0.862143, 0.410926, -0.296393,
		-0.506589, -0.709239, 0.490253,
		35.474152, 35.053177, 23.628880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467804, 35.951691, 23.921318>,  <35.828766, 35.549644, 23.285702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467804, 35.951691, 23.921318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441826, 35.561268, 24.004364>,  <35.426239, 35.327015, 24.054192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441826, 35.561268, 24.004364>,  <35.467804, 35.951691, 23.921318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441826, 35.561268, 24.004364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059556, 0.211475, 0.975567,
		-0.996110, 0.050992, -0.071863,
		-0.064944, -0.976053, 0.207616,
		35.422344, 35.268452, 24.066648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800659, 35.825241, 24.240582>,  <35.467804, 35.951691, 23.921318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800659, 35.825241, 24.240582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071678, 35.553612, 24.353573>,  <35.234291, 35.390636, 24.421368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071678, 35.553612, 24.353573>,  <34.800659, 35.825241, 24.240582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071678, 35.553612, 24.353573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041649, 0.348030, 0.936558,
		-0.734298, -0.646328, 0.207525,
		0.677549, -0.679069, 0.282477,
		35.274944, 35.349892, 24.438316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626022, 35.503262, 24.957804>,  <34.800659, 35.825241, 24.240582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626022, 35.503262, 24.957804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008354, 35.388538, 24.932076>,  <35.237751, 35.319702, 24.916637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008354, 35.388538, 24.932076>,  <34.626022, 35.503262, 24.957804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008354, 35.388538, 24.932076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040095, -0.089563, 0.995174,
		-0.291188, -0.953791, -0.074107,
		0.955826, -0.286812, -0.064322,
		35.295101, 35.302494, 24.912779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760025, 34.875061, 25.293278>,  <34.626022, 35.503262, 24.957804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760025, 34.875061, 25.293278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118782, 35.051945, 25.291048>,  <35.334038, 35.158073, 25.289711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118782, 35.051945, 25.291048>,  <34.760025, 34.875061, 25.293278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118782, 35.051945, 25.291048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092273, -0.174791, 0.980272,
		0.432512, -0.879715, -0.197573,
		0.896894, 0.442210, -0.005575,
		35.387852, 35.184608, 25.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150608, 34.479782, 25.762520>,  <34.760025, 34.875061, 25.293278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150608, 34.479782, 25.762520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355816, 34.820057, 25.716652>,  <35.478939, 35.024220, 25.689131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355816, 34.820057, 25.716652>,  <35.150608, 34.479782, 25.762520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355816, 34.820057, 25.716652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105349, 0.070181, 0.991956,
		0.851887, -0.520974, -0.053614,
		0.513020, 0.850683, -0.114670,
		35.509724, 35.075260, 25.682251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921688, 34.435287, 26.079094>,  <35.150608, 34.479782, 25.762520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921688, 34.435287, 26.079094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769466, 34.805023, 26.067942>,  <35.678131, 35.026863, 26.061251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769466, 34.805023, 26.067942>,  <35.921688, 34.435287, 26.079094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769466, 34.805023, 26.067942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132549, 0.084362, 0.987580,
		0.915208, 0.372136, -0.154625,
		-0.380558, 0.924336, -0.027883,
		35.655300, 35.082325, 26.059576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192783, 34.702103, 26.726706>,  <35.921688, 34.435287, 26.079094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192783, 34.702103, 26.726706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945374, 34.994682, 26.611872>,  <35.796928, 35.170231, 26.542971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945374, 34.994682, 26.611872>,  <36.192783, 34.702103, 26.726706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945374, 34.994682, 26.611872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168076, 0.233747, 0.957660,
		0.767581, 0.640587, -0.021639,
		-0.618522, 0.731445, -0.287087,
		35.759815, 35.214115, 26.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375278, 35.366089, 27.127827>,  <36.192783, 34.702103, 26.726706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375278, 35.366089, 27.127827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003056, 35.387684, 26.982965>,  <35.779724, 35.400642, 26.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003056, 35.387684, 26.982965>,  <36.375278, 35.366089, 27.127827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003056, 35.387684, 26.982965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341838, 0.226322, 0.912099,
		0.131205, 0.972555, -0.192150,
		-0.930555, 0.053988, -0.362151,
		35.723888, 35.403881, 26.874321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148006, 35.964237, 27.410065>,  <36.375278, 35.366089, 27.127827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148006, 35.964237, 27.410065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823624, 35.749218, 27.317642>,  <35.628994, 35.620209, 27.262188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823624, 35.749218, 27.317642>,  <36.148006, 35.964237, 27.410065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823624, 35.749218, 27.317642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448594, 0.317697, 0.835364,
		-0.375641, 0.781098, -0.498779,
		-0.810961, -0.537546, -0.231056,
		35.580334, 35.587955, 27.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538525, 36.406166, 27.452456>,  <36.148006, 35.964237, 27.410065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538525, 36.406166, 27.452456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413540, 36.031513, 27.515814>,  <35.338551, 35.806721, 27.553829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413540, 36.031513, 27.515814>,  <35.538525, 36.406166, 27.452456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413540, 36.031513, 27.515814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539003, 0.312115, 0.782342,
		-0.782204, 0.159076, -0.602371,
		-0.312461, -0.936631, 0.158395,
		35.319801, 35.750523, 27.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869625, 36.466221, 27.812483>,  <35.538525, 36.406166, 27.452456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869625, 36.466221, 27.812483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952930, 36.080402, 27.877327>,  <35.002914, 35.848911, 27.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952930, 36.080402, 27.877327>,  <34.869625, 36.466221, 27.812483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952930, 36.080402, 27.877327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538791, 0.025192, 0.842062,
		-0.816291, -0.262712, -0.514442,
		0.208260, -0.964545, 0.162111,
		35.015408, 35.791039, 27.925961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231564, 36.134468, 28.011395>,  <34.869625, 36.466221, 27.812483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231564, 36.134468, 28.011395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493893, 35.851151, 28.115870>,  <34.651291, 35.681160, 28.178555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493893, 35.851151, 28.115870>,  <34.231564, 36.134468, 28.011395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493893, 35.851151, 28.115870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381590, -0.012502, 0.924247,
		-0.651370, -0.705810, -0.278476,
		0.655824, -0.708291, 0.261186,
		34.690639, 35.638664, 28.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857765, 35.558418, 28.240187>,  <34.231564, 36.134468, 28.011395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857765, 35.558418, 28.240187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223549, 35.527355, 28.399050>,  <34.443020, 35.508717, 28.494368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223549, 35.527355, 28.399050>,  <33.857765, 35.558418, 28.240187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223549, 35.527355, 28.399050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397660, 0.009540, 0.917483,
		-0.075037, -0.996935, -0.022157,
		0.914459, -0.077656, 0.397157,
		34.497887, 35.504059, 28.518196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743771, 35.059090, 28.803276>,  <33.857765, 35.558418, 28.240187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743771, 35.059090, 28.803276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088787, 35.241119, 28.891760>,  <34.295795, 35.350338, 28.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088787, 35.241119, 28.891760>,  <33.743771, 35.059090, 28.803276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088787, 35.241119, 28.891760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273062, 0.050583, 0.960666,
		0.425982, -0.889017, 0.167892,
		0.862541, 0.455071, 0.221209,
		34.347549, 35.377640, 28.958122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067455, 34.651455, 29.373123>,  <33.743771, 35.059090, 28.803276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067455, 34.651455, 29.373123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216164, 35.022720, 29.366121>,  <34.305389, 35.245480, 29.361919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216164, 35.022720, 29.366121>,  <34.067455, 34.651455, 29.373123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216164, 35.022720, 29.366121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229297, 0.110082, 0.967112,
		0.899562, -0.355526, 0.253749,
		0.371766, 0.928161, -0.017505,
		34.327694, 35.301170, 29.360870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360546, 34.638512, 29.970865>,  <34.067455, 34.651455, 29.373123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360546, 34.638512, 29.970865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330231, 35.023911, 29.868164>,  <34.312042, 35.255150, 29.806543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330231, 35.023911, 29.868164>,  <34.360546, 34.638512, 29.970865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330231, 35.023911, 29.868164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173431, 0.240833, 0.954946,
		0.981926, 0.116904, 0.148848,
		-0.075790, 0.963501, -0.256755,
		34.307495, 35.312962, 29.791138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930363, 35.026306, 30.265057>,  <34.360546, 34.638512, 29.970865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930363, 35.026306, 30.265057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648163, 35.301208, 30.195829>,  <34.478844, 35.466148, 30.154293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648163, 35.301208, 30.195829>,  <34.930363, 35.026306, 30.265057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648163, 35.301208, 30.195829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069944, 0.175487, 0.981994,
		0.705249, 0.704902, -0.075738,
		-0.705501, 0.687253, -0.173066,
		34.436512, 35.507385, 30.143909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054302, 35.763519, 30.661951>,  <34.930363, 35.026306, 30.265057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054302, 35.763519, 30.661951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663719, 35.731430, 30.581856>,  <34.429371, 35.712177, 30.533798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663719, 35.731430, 30.581856>,  <35.054302, 35.763519, 30.661951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663719, 35.731430, 30.581856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211847, 0.181694, 0.960265,
		-0.040651, 0.980078, -0.194411,
		-0.976457, -0.080221, -0.200240,
		34.370781, 35.707363, 30.521784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907124, 36.274677, 31.168621>,  <35.054302, 35.763519, 30.661951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907124, 36.274677, 31.168621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587978, 36.070015, 31.041105>,  <34.396492, 35.947216, 30.964596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587978, 36.070015, 31.041105>,  <34.907124, 36.274677, 31.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587978, 36.070015, 31.041105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436658, 0.125914, 0.890772,
		-0.415631, 0.849913, -0.323882,
		-0.797860, -0.511658, -0.318787,
		34.348621, 35.916519, 30.945469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383099, 36.845680, 31.178110>,  <34.907124, 36.274677, 31.168621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383099, 36.845680, 31.178110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183563, 36.499424, 31.195181>,  <34.063843, 36.291668, 31.205423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183563, 36.499424, 31.195181>,  <34.383099, 36.845680, 31.178110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183563, 36.499424, 31.195181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562170, 0.360651, 0.744242,
		-0.659639, 0.347267, -0.666545,
		-0.498841, -0.865642, 0.042676,
		34.033913, 36.239731, 31.207983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675251, 37.083836, 31.342958>,  <34.383099, 36.845680, 31.178110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675251, 37.083836, 31.342958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750557, 36.701904, 31.434925>,  <33.795742, 36.472748, 31.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750557, 36.701904, 31.434925>,  <33.675251, 37.083836, 31.342958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750557, 36.701904, 31.434925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448039, 0.124824, 0.885257,
		-0.873965, -0.269679, -0.404299,
		0.188269, -0.954826, 0.229918,
		33.807037, 36.415455, 31.503901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112175, 36.849792, 31.593172>,  <33.675251, 37.083836, 31.342958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112175, 36.849792, 31.593172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377697, 36.585880, 31.734055>,  <33.537010, 36.427532, 31.818584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377697, 36.585880, 31.734055>,  <33.112175, 36.849792, 31.593172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377697, 36.585880, 31.734055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294230, 0.202577, 0.934019,
		-0.687601, -0.723634, -0.059658,
		0.663803, -0.659785, 0.352207,
		33.576839, 36.387943, 31.839716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683113, 36.555424, 32.118488>,  <33.112175, 36.849792, 31.593172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683113, 36.555424, 32.118488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060806, 36.451469, 32.199371>,  <33.287422, 36.389095, 32.247902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060806, 36.451469, 32.199371>,  <32.683113, 36.555424, 32.118488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060806, 36.451469, 32.199371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170551, 0.139315, 0.975451,
		-0.281677, -0.955537, 0.087221,
		0.944230, -0.259886, 0.202209,
		33.344074, 36.373505, 32.260033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603054, 36.186909, 32.688511>,  <32.683113, 36.555424, 32.118488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603054, 36.186909, 32.688511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989124, 36.290688, 32.675098>,  <33.220768, 36.352955, 32.667053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989124, 36.290688, 32.675098>,  <32.603054, 36.186909, 32.688511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989124, 36.290688, 32.675098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017214, 0.190872, 0.981464,
		0.261042, -0.946706, 0.188691,
		0.965174, 0.259451, -0.033529,
		33.278675, 36.368523, 32.665039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891453, 35.884880, 33.304157>,  <32.603054, 36.186909, 32.688511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891453, 35.884880, 33.304157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134830, 36.176018, 33.177635>,  <33.280857, 36.350700, 33.101723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134830, 36.176018, 33.177635>,  <32.891453, 35.884880, 33.304157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134830, 36.176018, 33.177635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201280, 0.244009, 0.948655,
		0.767651, -0.640865, 0.001965,
		0.608439, 0.727840, -0.316307,
		33.317364, 36.394371, 33.082745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328346, 35.964954, 33.782181>,  <32.891453, 35.884880, 33.304157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328346, 35.964954, 33.782181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410000, 36.327129, 33.633316>,  <33.458992, 36.544434, 33.543999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410000, 36.327129, 33.633316>,  <33.328346, 35.964954, 33.782181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410000, 36.327129, 33.633316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102769, 0.358245, 0.927954,
		0.973533, -0.227676, -0.019921,
		0.204137, 0.905441, -0.372161,
		33.471241, 36.598763, 33.521667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941597, 36.204597, 34.182121>,  <33.328346, 35.964954, 33.782181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941597, 36.204597, 34.182121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736908, 36.512741, 34.029972>,  <33.614094, 36.697628, 33.938683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736908, 36.512741, 34.029972>,  <33.941597, 36.204597, 34.182121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736908, 36.512741, 34.029972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237577, 0.552355, 0.799038,
		0.825647, 0.318520, -0.465673,
		-0.511726, 0.770357, -0.380377,
		33.583389, 36.743847, 33.915859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354427, 36.833942, 34.240089>,  <33.941597, 36.204597, 34.182121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354427, 36.833942, 34.240089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979362, 36.972237, 34.225899>,  <33.754322, 37.055214, 34.217384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979362, 36.972237, 34.225899>,  <34.354427, 36.833942, 34.240089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979362, 36.972237, 34.225899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213587, 0.653756, 0.725936,
		0.274170, 0.673107, -0.686846,
		-0.937663, 0.345731, -0.035473,
		33.698063, 37.075954, 34.215256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384968, 37.592018, 34.064907>,  <34.354427, 36.833942, 34.240089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384968, 37.592018, 34.064907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086433, 37.460335, 34.296284>,  <33.907310, 37.381325, 34.435112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086433, 37.460335, 34.296284>,  <34.384968, 37.592018, 34.064907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086433, 37.460335, 34.296284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274170, 0.639866, 0.717915,
		-0.606472, 0.694401, -0.387297,
		-0.746339, -0.329210, 0.578445,
		33.862530, 37.361572, 34.469818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485806, 38.044205, 33.402420>,  <34.384968, 37.592018, 34.064907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485806, 38.044205, 33.402420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735638, 38.306541, 33.572014>,  <34.885536, 38.463943, 33.673771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735638, 38.306541, 33.572014>,  <34.485806, 38.044205, 33.402420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735638, 38.306541, 33.572014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440691, 0.152219, -0.884659,
		-0.644738, 0.739388, -0.193952,
		0.624583, 0.655846, 0.423983,
		34.923012, 38.503296, 33.699207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580715, 38.555611, 32.921192>,  <34.485806, 38.044205, 33.402420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580715, 38.555611, 32.921192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903343, 38.600166, 33.153412>,  <35.096920, 38.626900, 33.292744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903343, 38.600166, 33.153412>,  <34.580715, 38.555611, 32.921192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903343, 38.600166, 33.153412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579291, 0.046677, -0.813783,
		-0.117745, 0.992680, -0.026878,
		0.806572, 0.111389, 0.580547,
		35.145313, 38.633583, 33.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952713, 39.136848, 32.625366>,  <34.580715, 38.555611, 32.921192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952713, 39.136848, 32.625366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199238, 38.911823, 32.845795>,  <35.347153, 38.776810, 32.978050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199238, 38.911823, 32.845795>,  <34.952713, 39.136848, 32.625366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199238, 38.911823, 32.845795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579292, -0.150158, -0.801170,
		0.533456, 0.813004, 0.233343,
		0.616316, -0.562563, 0.551069,
		35.384132, 38.743053, 33.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667587, 39.237736, 32.333424>,  <34.952713, 39.136848, 32.625366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667587, 39.237736, 32.333424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770088, 38.918076, 32.550934>,  <35.831589, 38.726280, 32.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770088, 38.918076, 32.550934>,  <35.667587, 39.237736, 32.333424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770088, 38.918076, 32.550934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712842, -0.223707, -0.664690,
		0.652833, 0.557958, 0.512340,
		0.256255, -0.799148, 0.543779,
		35.846966, 38.678329, 32.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397522, 39.239811, 32.263779>,  <35.667587, 39.237736, 32.333424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397522, 39.239811, 32.263779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270676, 38.872959, 32.360374>,  <36.194569, 38.652847, 32.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270676, 38.872959, 32.360374>,  <36.397522, 39.239811, 32.263779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270676, 38.872959, 32.360374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459128, -0.371266, -0.807071,
		0.829843, -0.145061, 0.538812,
		-0.317117, -0.917125, 0.241491,
		36.175541, 38.597820, 32.432823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003941, 38.834732, 32.167450>,  <36.397522, 39.239811, 32.263779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003941, 38.834732, 32.167450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692242, 38.586697, 32.203793>,  <36.505222, 38.437874, 32.225597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692242, 38.586697, 32.203793>,  <37.003941, 38.834732, 32.167450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692242, 38.586697, 32.203793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435256, -0.639780, -0.633430,
		0.450911, -0.454056, 0.768448,
		-0.779250, -0.620093, 0.090853,
		36.458466, 38.400669, 32.231049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261715, 38.104458, 32.363750>,  <37.003941, 38.834732, 32.167450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261715, 38.104458, 32.363750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907112, 38.067635, 32.182362>,  <36.694351, 38.045540, 32.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907112, 38.067635, 32.182362>,  <37.261715, 38.104458, 32.363750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907112, 38.067635, 32.182362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435520, -0.497072, -0.750494,
		-0.156319, -0.862812, 0.480749,
		-0.886502, -0.092060, -0.453474,
		36.641163, 38.040016, 32.046318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305122, 37.386002, 32.017967>,  <37.261715, 38.104458, 32.363750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305122, 37.386002, 32.017967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020313, 37.594891, 31.830215>,  <36.849426, 37.720222, 31.717566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020313, 37.594891, 31.830215>,  <37.305122, 37.386002, 32.017967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020313, 37.594891, 31.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421464, -0.216800, -0.880549,
		-0.561599, -0.824794, -0.065730,
		-0.712021, 0.522218, -0.469375,
		36.806705, 37.751556, 31.689404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007671, 36.930534, 31.505211>,  <37.305122, 37.386002, 32.017967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007671, 36.930534, 31.505211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950150, 37.301739, 31.367744>,  <36.915634, 37.524464, 31.285265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950150, 37.301739, 31.367744>,  <37.007671, 36.930534, 31.505211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950150, 37.301739, 31.367744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420029, -0.257203, -0.870300,
		-0.896044, -0.269506, -0.352805,
		-0.143809, 0.928016, -0.343666,
		36.907005, 37.580143, 31.264645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750507, 36.746643, 30.792784>,  <37.007671, 36.930534, 31.505211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750507, 36.746643, 30.792784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801441, 37.142712, 30.769619>,  <36.832001, 37.380352, 30.755720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801441, 37.142712, 30.769619>,  <36.750507, 36.746643, 30.792784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801441, 37.142712, 30.769619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116535, -0.072916, -0.990506,
		-0.984990, 0.119376, -0.124674,
		0.127334, 0.990168, -0.057910,
		36.839642, 37.439762, 30.752245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429428, 37.005421, 30.232046>,  <36.750507, 36.746643, 30.792784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429428, 37.005421, 30.232046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728996, 37.258858, 30.309683>,  <36.908737, 37.410919, 30.356266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728996, 37.258858, 30.309683>,  <36.429428, 37.005421, 30.232046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728996, 37.258858, 30.309683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329437, -0.101852, -0.938668,
		-0.574968, 0.766930, -0.285010,
		0.748921, 0.633597, 0.194094,
		36.953674, 37.448936, 30.367910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459686, 37.421345, 29.638285>,  <36.429428, 37.005421, 30.232046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459686, 37.421345, 29.638285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814857, 37.463589, 29.817360>,  <37.027962, 37.488934, 29.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814857, 37.463589, 29.817360>,  <36.459686, 37.421345, 29.638285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814857, 37.463589, 29.817360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426703, 0.174330, -0.887431,
		-0.171764, 0.979008, 0.109731,
		0.887931, 0.105606, 0.447689,
		37.081238, 37.495270, 29.951666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803005, 37.993336, 29.318579>,  <36.459686, 37.421345, 29.638285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803005, 37.993336, 29.318579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104294, 37.790852, 29.486582>,  <37.285069, 37.669361, 29.587383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104294, 37.790852, 29.486582>,  <36.803005, 37.993336, 29.318579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104294, 37.790852, 29.486582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506072, 0.038093, -0.861650,
		0.420179, 0.861567, 0.284872,
		0.753220, -0.506213, 0.420009,
		37.330261, 37.638988, 29.612585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419731, 38.253941, 29.104622>,  <36.803005, 37.993336, 29.318579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419731, 38.253941, 29.104622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534073, 37.885506, 29.210367>,  <37.602676, 37.664444, 29.273813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534073, 37.885506, 29.210367>,  <37.419731, 38.253941, 29.104622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534073, 37.885506, 29.210367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359232, -0.152755, -0.920662,
		0.888392, 0.358140, 0.287219,
		0.285852, -0.921087, 0.264362,
		37.619827, 37.609180, 29.289675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147331, 38.116558, 28.816069>,  <37.419731, 38.253941, 29.104622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147331, 38.116558, 28.816069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007774, 37.748745, 28.888445>,  <37.924042, 37.528057, 28.931871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007774, 37.748745, 28.888445>,  <38.147331, 38.116558, 28.816069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007774, 37.748745, 28.888445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270485, -0.283662, -0.919986,
		0.897280, -0.272035, 0.347687,
		-0.348893, -0.919529, 0.180942,
		37.903107, 37.472885, 28.942728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594860, 37.608715, 28.482489>,  <38.147331, 38.116558, 28.816069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594860, 37.608715, 28.482489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235741, 37.436279, 28.518547>,  <38.020271, 37.332817, 28.540182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235741, 37.436279, 28.518547>,  <38.594860, 37.608715, 28.482489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235741, 37.436279, 28.518547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054168, -0.311219, -0.948793,
		0.437066, -0.846941, 0.302762,
		-0.897797, -0.431085, 0.090146,
		37.966400, 37.306953, 28.545591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735909, 37.017681, 28.198559>,  <38.594860, 37.608715, 28.482489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735909, 37.017681, 28.198559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336201, 37.031013, 28.191034>,  <38.096378, 37.039013, 28.186520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336201, 37.031013, 28.191034>,  <38.735909, 37.017681, 28.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336201, 37.031013, 28.191034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004280, -0.391120, -0.920330,
		-0.038033, -0.919736, 0.390691,
		-0.999268, 0.033331, -0.018812,
		38.036419, 37.041012, 28.185390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498970, 36.330990, 28.015589>,  <38.735909, 37.017681, 28.198559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498970, 36.330990, 28.015589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188210, 36.566807, 27.927162>,  <38.001755, 36.708298, 27.874105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188210, 36.566807, 27.927162>,  <38.498970, 36.330990, 28.015589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188210, 36.566807, 27.927162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067551, -0.427127, -0.901665,
		-0.625995, -0.685566, 0.371658,
		-0.776896, 0.589544, -0.221068,
		37.955139, 36.743671, 27.860842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909172, 35.847061, 27.824993>,  <38.498970, 36.330990, 28.015589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909172, 35.847061, 27.824993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838963, 36.211220, 27.675129>,  <37.796837, 36.429714, 27.585211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838963, 36.211220, 27.675129>,  <37.909172, 35.847061, 27.824993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838963, 36.211220, 27.675129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188735, -0.404629, -0.894793,
		-0.966215, -0.086342, 0.242844,
		-0.175520, 0.910396, -0.374663,
		37.786308, 36.484337, 27.562731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321339, 35.729740, 27.375006>,  <37.909172, 35.847061, 27.824993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321339, 35.729740, 27.375006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493145, 36.064335, 27.238880>,  <37.596230, 36.265091, 27.157204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493145, 36.064335, 27.238880>,  <37.321339, 35.729740, 27.375006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493145, 36.064335, 27.238880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118834, -0.321217, -0.939520,
		-0.895207, 0.443979, -0.038565,
		0.429514, 0.836483, -0.340315,
		37.621998, 36.315281, 27.136786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897392, 35.985935, 26.831577>,  <37.321339, 35.729740, 27.375006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897392, 35.985935, 26.831577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259834, 36.145790, 26.776070>,  <37.477299, 36.241703, 26.742765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259834, 36.145790, 26.776070>,  <36.897392, 35.985935, 26.831577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259834, 36.145790, 26.776070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009286, -0.309154, -0.950966,
		-0.422947, 0.862966, -0.276416,
		0.906107, 0.399642, -0.138769,
		37.531666, 36.265682, 26.734438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814499, 36.184353, 26.165110>,  <36.897392, 35.985935, 26.831577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814499, 36.184353, 26.165110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207699, 36.225388, 26.226013>,  <37.443619, 36.250008, 26.262556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207699, 36.225388, 26.226013>,  <36.814499, 36.184353, 26.165110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207699, 36.225388, 26.226013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173200, -0.243053, -0.954425,
		-0.060904, 0.964573, -0.256689,
		0.983002, 0.102587, 0.152261,
		37.502598, 36.256165, 26.271692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031982, 36.703819, 25.703428>,  <36.814499, 36.184353, 26.165110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031982, 36.703819, 25.703428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357479, 36.483047, 25.776323>,  <37.552776, 36.350586, 25.820061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357479, 36.483047, 25.776323>,  <37.031982, 36.703819, 25.703428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357479, 36.483047, 25.776323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, -0.195000, -0.976978,
		0.574755, 0.810774, -0.110919,
		0.813738, -0.551925, 0.182237,
		37.601601, 36.317471, 25.830994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537560, 36.880962, 25.155476>,  <37.031982, 36.703819, 25.703428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537560, 36.880962, 25.155476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673595, 36.529594, 25.289772>,  <37.755219, 36.318775, 25.370350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673595, 36.529594, 25.289772>,  <37.537560, 36.880962, 25.155476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673595, 36.529594, 25.289772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192125, -0.284587, -0.939201,
		0.920558, 0.383918, 0.071980,
		0.340091, -0.878418, 0.335739,
		37.775623, 36.266068, 25.390493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072479, 36.704674, 24.583321>,  <37.537560, 36.880962, 25.155476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072479, 36.704674, 24.583321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011181, 36.370010, 24.793659>,  <37.974403, 36.169212, 24.919863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011181, 36.370010, 24.793659>,  <38.072479, 36.704674, 24.583321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011181, 36.370010, 24.793659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117801, -0.543803, -0.830904,
		0.981142, -0.065385, 0.181894,
		-0.153243, -0.836662, 0.525845,
		37.965206, 36.119011, 24.951412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533154, 36.205105, 24.291113>,  <38.072479, 36.704674, 24.583321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533154, 36.205105, 24.291113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220543, 36.007309, 24.443264>,  <38.032974, 35.888630, 24.534555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220543, 36.007309, 24.443264>,  <38.533154, 36.205105, 24.291113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220543, 36.007309, 24.443264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066130, -0.671939, -0.737649,
		0.620352, -0.551341, 0.557841,
		-0.781530, -0.494492, 0.380379,
		37.986084, 35.858963, 24.557377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751099, 35.614552, 24.337538>,  <38.533154, 36.205105, 24.291113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751099, 35.614552, 24.337538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352406, 35.582733, 24.331829>,  <38.113190, 35.563641, 24.328403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352406, 35.582733, 24.331829>,  <38.751099, 35.614552, 24.337538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352406, 35.582733, 24.331829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068466, -0.737343, -0.672039,
		0.042935, -0.670818, 0.740378,
		-0.996729, -0.079545, -0.014271,
		38.053387, 35.558868, 24.327547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678474, 34.937500, 24.527615>,  <38.751099, 35.614552, 24.337538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678474, 34.937500, 24.527615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345646, 35.066135, 24.346842>,  <38.145950, 35.143318, 24.238379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345646, 35.066135, 24.346842>,  <38.678474, 34.937500, 24.527615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345646, 35.066135, 24.346842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073800, -0.871713, -0.484428,
		-0.549744, -0.369724, 0.749057,
		-0.832067, 0.321591, -0.451933,
		38.096027, 35.162613, 24.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138046, 34.437595, 24.613224>,  <38.678474, 34.937500, 24.527615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138046, 34.437595, 24.613224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044441, 34.636028, 24.278767>,  <37.988277, 34.755089, 24.078093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044441, 34.636028, 24.278767>,  <38.138046, 34.437595, 24.613224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044441, 34.636028, 24.278767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091356, -0.867439, -0.489084,
		-0.967933, -0.038062, 0.248308,
		-0.234008, 0.496085, -0.836146,
		37.974239, 34.784855, 24.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747837, 34.013321, 24.317520>,  <38.138046, 34.437595, 24.613224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747837, 34.013321, 24.317520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805866, 34.254421, 24.003668>,  <37.840683, 34.399082, 23.815357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805866, 34.254421, 24.003668>,  <37.747837, 34.013321, 24.317520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805866, 34.254421, 24.003668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343250, -0.713110, -0.611273,
		-0.927972, 0.358006, 0.103438,
		0.145076, 0.602749, -0.784631,
		37.849388, 34.435246, 23.768278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168694, 33.976555, 23.886810>,  <37.747837, 34.013321, 24.317520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168694, 33.976555, 23.886810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440239, 34.114391, 23.627457>,  <37.603168, 34.197094, 23.471846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440239, 34.114391, 23.627457>,  <37.168694, 33.976555, 23.886810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440239, 34.114391, 23.627457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218599, -0.748150, -0.626487,
		-0.700966, 0.567037, -0.432568,
		0.678867, 0.344587, -0.648382,
		37.643898, 34.217766, 23.432941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799667, 34.110294, 23.275570>,  <37.168694, 33.976555, 23.886810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799667, 34.110294, 23.275570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188042, 34.065872, 23.190767>,  <37.421066, 34.039219, 23.139887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188042, 34.065872, 23.190767>,  <36.799667, 34.110294, 23.275570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188042, 34.065872, 23.190767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232235, -0.651325, -0.722387,
		-0.057856, 0.750628, -0.658187,
		0.970937, -0.111059, -0.212005,
		37.479324, 34.032555, 23.127165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837200, 34.026588, 22.588261>,  <36.799667, 34.110294, 23.275570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837200, 34.026588, 22.588261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210041, 33.917843, 22.683992>,  <37.433746, 33.852596, 22.741432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210041, 33.917843, 22.683992>,  <36.837200, 34.026588, 22.588261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210041, 33.917843, 22.683992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033412, -0.722488, -0.690576,
		0.360655, 0.635689, -0.682515,
		0.932101, -0.271864, 0.239329,
		37.489670, 33.836285, 22.755791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160713, 33.861240, 21.959202>,  <36.837200, 34.026588, 22.588261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160713, 33.861240, 21.959202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397987, 33.687492, 22.230335>,  <37.540352, 33.583244, 22.393015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397987, 33.687492, 22.230335>,  <37.160713, 33.861240, 21.959202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397987, 33.687492, 22.230335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234794, -0.712011, -0.661749,
		0.770070, 0.551688, -0.320363,
		0.593181, -0.434374, 0.677831,
		37.575943, 33.557178, 22.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873295, 33.714691, 21.663208>,  <37.160713, 33.861240, 21.959202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873295, 33.714691, 21.663208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782909, 33.452255, 21.951231>,  <37.728680, 33.294792, 22.124044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782909, 33.452255, 21.951231>,  <37.873295, 33.714691, 21.663208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782909, 33.452255, 21.951231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101408, -0.751002, -0.652466,
		0.968844, -0.074412, 0.236229,
		-0.225959, -0.656094, 0.720058,
		37.715122, 33.255428, 22.167248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434811, 33.129971, 21.656858>,  <37.873295, 33.714691, 21.663208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434811, 33.129971, 21.656858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111729, 32.967758, 21.828047>,  <37.917881, 32.870430, 21.930759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111729, 32.967758, 21.828047>,  <38.434811, 33.129971, 21.656858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111729, 32.967758, 21.828047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167241, -0.853652, -0.493264,
		0.565371, -0.326837, 0.757320,
		-0.807705, -0.405532, 0.427969,
		37.869419, 32.846100, 21.956438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632668, 32.381851, 21.905554>,  <38.434811, 33.129971, 21.656858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632668, 32.381851, 21.905554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233089, 32.389969, 21.889046>,  <37.993343, 32.394840, 21.879141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233089, 32.389969, 21.889046>,  <38.632668, 32.381851, 21.905554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233089, 32.389969, 21.889046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007028, -0.819485, -0.573058,
		-0.045447, -0.572742, 0.818475,
		-0.998942, 0.020292, -0.041269,
		37.933407, 32.396057, 21.876665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299511, 31.890995, 22.155054>,  <38.632668, 32.381851, 21.905554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299511, 31.890995, 22.155054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440472, 31.535280, 22.271666>,  <38.525047, 31.321852, 22.341633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440472, 31.535280, 22.271666>,  <38.299511, 31.890995, 22.155054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440472, 31.535280, 22.271666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104234, 0.272276, 0.956557,
		-0.930027, -0.367476, 0.003255,
		0.352398, -0.889285, 0.291527,
		38.546192, 31.268496, 22.359123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934116, 31.774839, 22.748709>,  <38.299511, 31.890995, 22.155054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934116, 31.774839, 22.748709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232876, 31.510309, 22.776394>,  <38.412132, 31.351591, 22.793005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232876, 31.510309, 22.776394>,  <37.934116, 31.774839, 22.748709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232876, 31.510309, 22.776394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020732, 0.080878, 0.996508,
		-0.664615, -0.745726, 0.046697,
		0.746899, -0.661326, 0.069213,
		38.456947, 31.311911, 22.797157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834614, 31.400574, 23.361446>,  <37.934116, 31.774839, 22.748709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834614, 31.400574, 23.361446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214817, 31.315088, 23.271231>,  <38.442940, 31.263798, 23.217100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214817, 31.315088, 23.271231>,  <37.834614, 31.400574, 23.361446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214817, 31.315088, 23.271231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254284, 0.117900, 0.959916,
		-0.178556, -0.969756, 0.166409,
		0.950504, -0.213714, -0.225541,
		38.499969, 31.250975, 23.203568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014431, 30.912951, 23.852749>,  <37.834614, 31.400574, 23.361446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014431, 30.912951, 23.852749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346722, 31.088881, 23.716251>,  <38.546097, 31.194439, 23.634354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346722, 31.088881, 23.716251>,  <38.014431, 30.912951, 23.852749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346722, 31.088881, 23.716251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197263, 0.340641, 0.919267,
		0.520560, -0.830973, 0.196218,
		0.830725, 0.439827, -0.341244,
		38.595940, 31.220829, 23.613878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392891, 30.805468, 24.432474>,  <38.014431, 30.912951, 23.852749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392891, 30.805468, 24.432474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598766, 31.076065, 24.221779>,  <38.722294, 31.238422, 24.095362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598766, 31.076065, 24.221779>,  <38.392891, 30.805468, 24.432474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598766, 31.076065, 24.221779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419810, 0.336825, 0.842798,
		0.747564, -0.654910, -0.110637,
		0.514691, 0.676492, -0.526736,
		38.753174, 31.279013, 24.063759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091011, 30.900303, 24.745531>,  <38.392891, 30.805468, 24.432474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091011, 30.900303, 24.745531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993176, 31.224237, 24.532238>,  <38.934475, 31.418598, 24.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993176, 31.224237, 24.532238>,  <39.091011, 30.900303, 24.745531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993176, 31.224237, 24.532238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408190, 0.584831, 0.700966,
		0.879521, -0.046213, -0.473611,
		-0.244589, 0.809838, -0.533234,
		38.919800, 31.467188, 24.372267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660702, 31.304155, 24.769238>,  <39.091011, 30.900303, 24.745531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660702, 31.304155, 24.769238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356106, 31.547808, 24.680616>,  <39.173347, 31.693998, 24.627443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356106, 31.547808, 24.680616>,  <39.660702, 31.304155, 24.769238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356106, 31.547808, 24.680616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260545, 0.600642, 0.755874,
		0.593500, 0.517869, -0.616091,
		-0.761494, 0.609131, -0.221553,
		39.127659, 31.730547, 24.614151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957165, 31.991215, 24.491173>,  <39.660702, 31.304155, 24.769238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957165, 31.991215, 24.491173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595142, 32.046967, 24.651897>,  <39.377930, 32.080418, 24.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595142, 32.046967, 24.651897>,  <39.957165, 31.991215, 24.491173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595142, 32.046967, 24.651897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400737, 0.595897, 0.695928,
		-0.142441, 0.790873, -0.595173,
		-0.905053, 0.139379, 0.401812,
		39.323627, 32.088779, 24.772442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012611, 32.673828, 24.721926>,  <39.957165, 31.991215, 24.491173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012611, 32.673828, 24.721926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669285, 32.547123, 24.883396>,  <39.463287, 32.471100, 24.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669285, 32.547123, 24.883396>,  <40.012611, 32.673828, 24.721926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669285, 32.547123, 24.883396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220211, 0.483184, 0.847373,
		-0.463464, 0.816209, -0.344971,
		-0.858317, -0.316760, 0.403676,
		39.411789, 32.452095, 25.004499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855343, 33.260551, 24.930202>,  <40.012611, 32.673828, 24.721926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855343, 33.260551, 24.930202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702332, 32.953091, 25.135277>,  <39.610523, 32.768616, 25.258322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702332, 32.953091, 25.135277>,  <39.855343, 33.260551, 24.930202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702332, 32.953091, 25.135277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414387, 0.353222, 0.838760,
		-0.825805, 0.533302, 0.183400,
		-0.382531, -0.768650, 0.512686,
		39.587574, 32.722496, 25.289082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563114, 33.554241, 25.451309>,  <39.855343, 33.260551, 24.930202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563114, 33.554241, 25.451309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573353, 33.183266, 25.600554>,  <39.579494, 32.960682, 25.690100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573353, 33.183266, 25.600554>,  <39.563114, 33.554241, 25.451309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573353, 33.183266, 25.600554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079768, 0.373936, 0.924018,
		-0.996485, 0.006114, 0.083550,
		0.025593, -0.927434, 0.373109,
		39.581032, 32.905037, 25.712486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990845, 33.554825, 25.861471>,  <39.563114, 33.554241, 25.451309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990845, 33.554825, 25.861471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248508, 33.273632, 25.982054>,  <39.403107, 33.104916, 26.054403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248508, 33.273632, 25.982054>,  <38.990845, 33.554825, 25.861471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248508, 33.273632, 25.982054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080246, 0.329832, 0.940623,
		-0.760668, -0.630103, 0.156054,
		0.644161, -0.702979, 0.301456,
		39.441757, 33.062737, 26.072491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786045, 33.216782, 26.428944>,  <38.990845, 33.554825, 25.861471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786045, 33.216782, 26.428944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 33.118877, 26.466324>,  <39.403690, 33.060135, 26.488752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 33.118877, 26.466324>,  <38.786045, 33.216782, 26.428944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172073, 33.118877, 26.466324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001432, 0.361618, 0.932325,
		-0.261988, -0.899625, 0.349338,
		0.965070, -0.244758, 0.093451,
		39.461594, 33.045448, 26.494360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893978, 32.813393, 27.022110>,  <38.786045, 33.216782, 26.428944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893978, 32.813393, 27.022110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257149, 32.967415, 26.955902>,  <39.475052, 33.059830, 26.916178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257149, 32.967415, 26.955902>,  <38.893978, 32.813393, 27.022110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257149, 32.967415, 26.955902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053821, 0.498758, 0.865068,
		0.415653, -0.776513, 0.473561,
		0.907930, 0.385056, -0.165518,
		39.529526, 33.082932, 26.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233253, 32.808231, 27.638893>,  <38.893978, 32.813393, 27.022110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233253, 32.808231, 27.638893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460094, 33.058826, 27.425013>,  <39.596199, 33.209183, 27.296684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460094, 33.058826, 27.425013>,  <39.233253, 32.808231, 27.638893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460094, 33.058826, 27.425013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035413, 0.667133, 0.744096,
		0.822886, -0.403043, 0.400518,
		0.567102, 0.626490, -0.534702,
		39.630226, 33.246773, 27.264603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587822, 32.995365, 28.126701>,  <39.233253, 32.808231, 27.638893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587822, 32.995365, 28.126701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628132, 33.247551, 27.818840>,  <39.652317, 33.398861, 27.634123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628132, 33.247551, 27.818840>,  <39.587822, 32.995365, 28.126701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628132, 33.247551, 27.818840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048530, 0.769554, 0.636736,
		0.993725, -0.101517, 0.046955,
		0.100774, 0.630462, -0.769651,
		39.658363, 33.436691, 27.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274517, 33.348915, 28.171259>,  <39.587822, 32.995365, 28.126701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274517, 33.348915, 28.171259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026501, 33.583599, 27.962906>,  <39.877689, 33.724407, 27.837894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026501, 33.583599, 27.962906>,  <40.274517, 33.348915, 28.171259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026501, 33.583599, 27.962906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197577, 0.759283, 0.620043,
		0.759283, 0.281539, -0.586708,
		-0.620043, 0.586708, -0.520885,
		39.840488, 33.759613, 27.806641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593201, 33.970055, 28.199465>,  <40.274517, 33.348915, 28.171259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593201, 33.970055, 28.199465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204063, 34.041798, 28.140932>,  <39.970581, 34.084843, 28.105812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204063, 34.041798, 28.140932>,  <40.593201, 33.970055, 28.199465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204063, 34.041798, 28.140932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014942, 0.679503, 0.733521,
		0.230994, 0.711412, -0.663728,
		-0.972840, 0.179357, -0.146331,
		39.912212, 34.095604, 28.097033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520100, 34.571938, 28.555969>,  <40.593201, 33.970055, 28.199465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520100, 34.571938, 28.555969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137409, 34.518963, 28.452333>,  <39.907795, 34.487179, 28.390152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137409, 34.518963, 28.452333>,  <40.520100, 34.571938, 28.555969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137409, 34.518963, 28.452333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275981, 0.695171, 0.663756,
		0.092205, 0.706539, -0.701641,
		-0.956730, -0.132438, -0.259089,
		39.850391, 34.479233, 28.374607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232971, 35.158928, 28.302427>,  <40.520100, 34.571938, 28.555969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232971, 35.158928, 28.302427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927399, 34.941696, 28.441839>,  <39.744057, 34.811356, 28.525486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927399, 34.941696, 28.441839>,  <40.232971, 35.158928, 28.302427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927399, 34.941696, 28.441839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342381, 0.798933, 0.494451,
		-0.546982, 0.258395, -0.796268,
		-0.763928, -0.543083, 0.348532,
		39.698219, 34.778770, 28.546398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682594, 35.685604, 28.427599>,  <40.232971, 35.158928, 28.302427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682594, 35.685604, 28.427599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530506, 35.365997, 28.613934>,  <39.439255, 35.174232, 28.725735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530506, 35.365997, 28.613934>,  <39.682594, 35.685604, 28.427599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530506, 35.365997, 28.613934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510561, 0.601291, 0.614636,
		-0.771208, -0.004141, -0.636570,
		-0.380218, -0.799020, 0.465835,
		39.416439, 35.126293, 28.753683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982582, 35.853607, 28.551144>,  <39.682594, 35.685604, 28.427599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982582, 35.853607, 28.551144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113461, 35.579651, 28.811563>,  <39.191986, 35.415276, 28.967815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113461, 35.579651, 28.811563>,  <38.982582, 35.853607, 28.551144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113461, 35.579651, 28.811563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401435, 0.522970, 0.751899,
		-0.855448, -0.507374, -0.103825,
		0.327197, -0.684889, 0.651051,
		39.211620, 35.374184, 29.006880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363350, 35.589973, 29.039742>,  <38.982582, 35.853607, 28.551144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363350, 35.589973, 29.039742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716724, 35.520706, 29.213896>,  <38.928749, 35.479145, 29.318388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716724, 35.520706, 29.213896>,  <38.363350, 35.589973, 29.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716724, 35.520706, 29.213896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293232, 0.520421, 0.801983,
		-0.365462, -0.836166, 0.408978,
		0.883432, -0.173169, 0.435385,
		38.981754, 35.468754, 29.344511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264187, 35.507851, 29.839006>,  <38.363350, 35.589973, 29.039742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264187, 35.507851, 29.839006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655926, 35.579041, 29.800621>,  <38.890968, 35.621754, 29.777590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655926, 35.579041, 29.800621>,  <38.264187, 35.507851, 29.839006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655926, 35.579041, 29.800621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004100, 0.491971, 0.870602,
		0.202157, -0.852226, 0.482538,
		0.979345, 0.177976, -0.095961,
		38.949730, 35.632435, 29.771833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485104, 35.537209, 30.484909>,  <38.264187, 35.507851, 29.839006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485104, 35.537209, 30.484909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793545, 35.731510, 30.320253>,  <38.978611, 35.848091, 30.221460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793545, 35.731510, 30.320253>,  <38.485104, 35.537209, 30.484909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793545, 35.731510, 30.320253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135351, 0.506678, 0.851444,
		0.622158, -0.712267, 0.324954,
		0.771103, 0.485750, -0.411640,
		39.024876, 35.877235, 30.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082115, 35.544830, 31.022970>,  <38.485104, 35.537209, 30.484909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082115, 35.544830, 31.022970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167877, 35.844536, 30.772329>,  <39.219334, 36.024361, 30.621944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167877, 35.844536, 30.772329>,  <39.082115, 35.544830, 31.022970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167877, 35.844536, 30.772329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146049, 0.609714, 0.779049,
		0.965764, -0.258548, 0.021298,
		0.214407, 0.749267, -0.626601,
		39.232201, 36.069317, 30.584349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841312, 35.657795, 31.127413>,  <39.082115, 35.544830, 31.022970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841312, 35.657795, 31.127413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649178, 35.970818, 30.968981>,  <39.533897, 36.158630, 30.873922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649178, 35.970818, 30.968981>,  <39.841312, 35.657795, 31.127413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649178, 35.970818, 30.968981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358250, 0.587247, 0.725808,
		0.800584, 0.206735, -0.562428,
		-0.480335, 0.782560, -0.396078,
		39.505077, 36.205585, 30.850157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317181, 36.177475, 31.333565>,  <39.841312, 35.657795, 31.127413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317181, 36.177475, 31.333565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003864, 36.386623, 31.199062>,  <39.815876, 36.512112, 31.118361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003864, 36.386623, 31.199062>,  <40.317181, 36.177475, 31.333565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003864, 36.386623, 31.199062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210803, 0.732255, 0.647584,
		0.584826, 0.436361, -0.683789,
		-0.783288, 0.522869, -0.336255,
		39.768879, 36.543484, 31.098186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558495, 36.877010, 31.208477>,  <40.317181, 36.177475, 31.333565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558495, 36.877010, 31.208477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168213, 36.850533, 31.292013>,  <39.934044, 36.834644, 31.342134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168213, 36.850533, 31.292013>,  <40.558495, 36.877010, 31.208477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168213, 36.850533, 31.292013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117437, 0.646703, 0.753647,
		-0.184945, 0.759864, -0.623219,
		-0.975707, -0.066195, 0.208841,
		39.875500, 36.830673, 31.354666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425343, 37.540596, 31.496376>,  <40.558495, 36.877010, 31.208477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425343, 37.540596, 31.496376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112408, 37.337036, 31.640022>,  <39.924644, 37.214901, 31.726210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112408, 37.337036, 31.640022>,  <40.425343, 37.540596, 31.496376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112408, 37.337036, 31.640022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003588, 0.572878, 0.819632,
		-0.622841, 0.642520, -0.446360,
		-0.782340, -0.508899, 0.359118,
		39.877705, 37.184368, 31.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860035, 37.972813, 31.732430>,  <40.425343, 37.540596, 31.496376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860035, 37.972813, 31.732430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792610, 37.632549, 31.931614>,  <39.752155, 37.428391, 32.051125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792610, 37.632549, 31.931614>,  <39.860035, 37.972813, 31.732430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792610, 37.632549, 31.931614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082579, 0.515599, 0.852841,
		-0.982226, 0.102636, -0.157157,
		-0.168562, -0.850660, 0.497959,
		39.742043, 37.377350, 32.081001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344971, 38.173367, 32.339474>,  <39.860035, 37.972813, 31.732430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344971, 38.173367, 32.339474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448193, 37.797218, 32.428120>,  <39.510128, 37.571529, 32.481308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448193, 37.797218, 32.428120>,  <39.344971, 38.173367, 32.339474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448193, 37.797218, 32.428120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112090, 0.256979, 0.959895,
		-0.959606, -0.222866, 0.171721,
		0.258057, -0.940368, 0.221617,
		39.525608, 37.515106, 32.494606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925793, 37.914913, 32.903641>,  <39.344971, 38.173367, 32.339474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925793, 37.914913, 32.903641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239933, 37.668587, 32.928944>,  <39.428417, 37.520790, 32.944126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239933, 37.668587, 32.928944>,  <38.925793, 37.914913, 32.903641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239933, 37.668587, 32.928944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046537, 0.160619, 0.985919,
		-0.617305, -0.771344, 0.154799,
		0.785346, -0.615817, 0.063255,
		39.475536, 37.483841, 32.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776199, 37.497383, 33.470089>,  <38.925793, 37.914913, 32.903641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776199, 37.497383, 33.470089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172672, 37.493237, 33.417252>,  <39.410557, 37.490749, 33.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172672, 37.493237, 33.417252>,  <38.776199, 37.497383, 33.470089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172672, 37.493237, 33.417252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130737, 0.238530, 0.962295,
		0.021536, -0.971080, 0.237781,
		0.991183, -0.010363, -0.132093,
		39.470028, 37.490128, 33.377625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052269, 37.010212, 34.001328>,  <38.776199, 37.497383, 33.470089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052269, 37.010212, 34.001328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379440, 37.222282, 33.911972>,  <39.575745, 37.349525, 33.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379440, 37.222282, 33.911972>,  <39.052269, 37.010212, 34.001328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379440, 37.222282, 33.911972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115805, 0.228622, 0.966603,
		0.563541, -0.816484, 0.125600,
		0.817931, 0.530175, -0.223391,
		39.624821, 37.381336, 33.844955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626060, 36.814892, 34.482967>,  <39.052269, 37.010212, 34.001328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626060, 36.814892, 34.482967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770760, 37.159790, 34.341167>,  <39.857578, 37.366730, 34.256088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770760, 37.159790, 34.341167>,  <39.626060, 36.814892, 34.482967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770760, 37.159790, 34.341167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249457, 0.276861, 0.927965,
		0.898281, -0.424123, -0.114939,
		0.361749, 0.862245, -0.354500,
		39.879284, 37.418465, 34.234818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427734, 36.878605, 34.651409>,  <39.626060, 36.814892, 34.482967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427734, 36.878605, 34.651409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314846, 37.254814, 34.575764>,  <40.247112, 37.480541, 34.530376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314846, 37.254814, 34.575764>,  <40.427734, 36.878605, 34.651409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314846, 37.254814, 34.575764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340515, 0.282496, 0.896798,
		0.896885, 0.188697, -0.399988,
		-0.282218, 0.940526, -0.189112,
		40.230179, 37.536972, 34.519032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020073, 37.294415, 34.957939>,  <40.427734, 36.878605, 34.651409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020073, 37.294415, 34.957939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698425, 37.526711, 34.907124>,  <40.505436, 37.666088, 34.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698425, 37.526711, 34.907124>,  <41.020073, 37.294415, 34.957939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698425, 37.526711, 34.907124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140133, 0.392846, 0.908865,
		0.577721, 0.713030, -0.397274,
		-0.804115, 0.580742, -0.127036,
		40.457191, 37.700932, 34.869011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265739, 37.881435, 35.087269>,  <41.020073, 37.294415, 34.957939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265739, 37.881435, 35.087269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872021, 37.945492, 35.116966>,  <40.635788, 37.983925, 35.134785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872021, 37.945492, 35.116966>,  <41.265739, 37.881435, 35.087269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872021, 37.945492, 35.116966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153953, 0.573087, 0.804904,
		0.086347, 0.803696, -0.588742,
		-0.984298, 0.160140, 0.074247,
		40.576733, 37.993534, 35.139240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120068, 38.593376, 35.087746>,  <41.265739, 37.881435, 35.087269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120068, 38.593376, 35.087746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833633, 38.401691, 35.290752>,  <40.661774, 38.286682, 35.412556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833633, 38.401691, 35.290752>,  <41.120068, 38.593376, 35.087746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833633, 38.401691, 35.290752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230275, 0.524202, 0.819869,
		-0.658933, 0.703967, -0.265023,
		-0.716086, -0.479211, 0.507520,
		40.618809, 38.257927, 35.443008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919350, 39.060341, 35.717312>,  <41.120068, 38.593376, 35.087746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919350, 39.060341, 35.717312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773270, 38.704853, 35.828167>,  <40.685623, 38.491558, 35.894680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773270, 38.704853, 35.828167>,  <40.919350, 39.060341, 35.717312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773270, 38.704853, 35.828167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060714, 0.274324, 0.959719,
		-0.928949, 0.367311, -0.046225,
		-0.365196, -0.888723, 0.277134,
		40.663712, 38.438236, 35.911308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409416, 39.235413, 36.249584>,  <40.919350, 39.060341, 35.717312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409416, 39.235413, 36.249584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531582, 38.856720, 36.290432>,  <40.604881, 38.629505, 36.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531582, 38.856720, 36.290432>,  <40.409416, 39.235413, 36.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531582, 38.856720, 36.290432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104096, 0.073403, 0.991855,
		-0.946514, -0.313553, -0.076133,
		0.305410, -0.946730, 0.102116,
		40.623203, 38.572701, 36.321068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894333, 38.938171, 36.611866>,  <40.409416, 39.235413, 36.249584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894333, 38.938171, 36.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224724, 38.719460, 36.666714>,  <40.422958, 38.588234, 36.699623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224724, 38.719460, 36.666714>,  <39.894333, 38.938171, 36.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224724, 38.719460, 36.666714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084011, 0.121133, 0.989075,
		-0.557414, -0.828469, 0.054117,
		0.825973, -0.546778, 0.137122,
		40.472515, 38.555428, 36.707851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791847, 38.728390, 37.234257>,  <39.894333, 38.938171, 36.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791847, 38.728390, 37.234257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178173, 38.659653, 37.156612>,  <40.409969, 38.618412, 37.110027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178173, 38.659653, 37.156612>,  <39.791847, 38.728390, 37.234257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178173, 38.659653, 37.156612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199584, 0.014991, 0.979766,
		-0.165458, -0.985010, 0.048776,
		0.965811, -0.171845, -0.194112,
		40.467915, 38.608101, 37.098377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054653, 38.175346, 37.720207>,  <39.791847, 38.728390, 37.234257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054653, 38.175346, 37.720207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388664, 38.376213, 37.630272>,  <40.589073, 38.496735, 37.576313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388664, 38.376213, 37.630272>,  <40.054653, 38.175346, 37.720207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388664, 38.376213, 37.630272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283416, -0.042327, 0.958062,
		0.471590, -0.863734, -0.177666,
		0.835032, 0.502167, -0.224835,
		40.639175, 38.526863, 37.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513432, 37.873108, 38.134693>,  <40.054653, 38.175346, 37.720207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513432, 37.873108, 38.134693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703587, 38.203754, 38.014221>,  <40.817680, 38.402142, 37.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703587, 38.203754, 38.014221>,  <40.513432, 37.873108, 38.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703587, 38.203754, 38.014221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427244, 0.082347, 0.900378,
		0.769068, -0.556710, -0.314020,
		0.475391, 0.826615, -0.301182,
		40.846203, 38.451740, 37.923866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261627, 37.807667, 38.325119>,  <40.513432, 37.873108, 38.134693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261627, 37.807667, 38.325119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182350, 38.197975, 38.288055>,  <41.134785, 38.432159, 38.265820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182350, 38.197975, 38.288055>,  <41.261627, 37.807667, 38.325119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182350, 38.197975, 38.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428194, 0.171229, 0.887316,
		0.881685, 0.136188, -0.451758,
		-0.198196, 0.975773, -0.092654,
		41.122890, 38.490707, 38.260258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839211, 38.194881, 38.522148>,  <41.261627, 37.807667, 38.325119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839211, 38.194881, 38.522148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535320, 38.451103, 38.566895>,  <41.352985, 38.604836, 38.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535320, 38.451103, 38.566895>,  <41.839211, 38.194881, 38.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535320, 38.451103, 38.566895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361724, 0.273359, 0.891308,
		0.540351, 0.717611, -0.439380,
		-0.759721, 0.640554, 0.111867,
		41.307404, 38.643269, 38.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065777, 38.651840, 38.975060>,  <41.839211, 38.194881, 38.522148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065777, 38.651840, 38.975060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682327, 38.765457, 38.982594>,  <41.452255, 38.833626, 38.987114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682327, 38.765457, 38.982594>,  <42.065777, 38.651840, 38.975060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682327, 38.765457, 38.982594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127798, 0.370287, 0.920085,
		0.254368, 0.884425, -0.391267,
		-0.958626, 0.284044, 0.018839,
		41.394741, 38.850670, 38.988247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071262, 39.338329, 39.199394>,  <42.065777, 38.651840, 38.975060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071262, 39.338329, 39.199394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716084, 39.166359, 39.264774>,  <41.502975, 39.063175, 39.304005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716084, 39.166359, 39.264774>,  <42.071262, 39.338329, 39.199394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716084, 39.166359, 39.264774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022878, 0.396213, 0.917873,
		-0.459381, 0.811281, -0.361651,
		-0.887944, -0.429928, 0.163452,
		41.449699, 39.037380, 39.313808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833130, 39.694176, 39.868671>,  <42.071262, 39.338329, 39.199394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833130, 39.694176, 39.868671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577293, 39.389164, 39.829742>,  <41.423790, 39.206158, 39.806385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577293, 39.389164, 39.829742>,  <41.833130, 39.694176, 39.868671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577293, 39.389164, 39.829742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217363, 0.057956, 0.974369,
		-0.737343, 0.644355, -0.202814,
		-0.639593, -0.762528, -0.097325,
		41.385414, 39.160404, 39.800545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121796, 39.914845, 40.117268>,  <41.833130, 39.694176, 39.868671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121796, 39.914845, 40.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139782, 39.517277, 40.157455>,  <41.150574, 39.278736, 40.181568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139782, 39.517277, 40.157455>,  <41.121796, 39.914845, 40.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139782, 39.517277, 40.157455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084710, 0.096414, 0.991730,
		-0.995390, -0.053108, -0.079859,
		0.044969, -0.993923, 0.100468,
		41.153275, 39.219101, 40.187595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448204, 39.564983, 40.446865>,  <41.121796, 39.914845, 40.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448204, 39.564983, 40.446865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770977, 39.340538, 40.520630>,  <40.964642, 39.205872, 40.564888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770977, 39.340538, 40.520630>,  <40.448204, 39.564983, 40.446865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770977, 39.340538, 40.520630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316335, -0.146902, 0.937204,
		-0.498790, -0.814597, -0.296041,
		0.806933, -0.561116, 0.184413,
		41.013058, 39.172203, 40.575954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175785, 39.048252, 40.983006>,  <40.448204, 39.564983, 40.446865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175785, 39.048252, 40.983006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573132, 39.002518, 40.978043>,  <40.811539, 38.975079, 40.975063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573132, 39.002518, 40.978043>,  <40.175785, 39.048252, 40.983006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573132, 39.002518, 40.978043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002097, -0.125870, 0.992045,
		-0.114959, -0.985439, -0.125275,
		0.993368, -0.114307, -0.012404,
		40.871140, 38.968216, 40.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248791, 38.533131, 41.386490>,  <40.175785, 39.048252, 40.983006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248791, 38.533131, 41.386490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625130, 38.668159, 41.398186>,  <40.850933, 38.749176, 41.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625130, 38.668159, 41.398186>,  <40.248791, 38.533131, 41.386490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625130, 38.668159, 41.398186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020452, -0.142708, 0.989553,
		0.338221, -0.930418, -0.141170,
		0.940844, 0.337575, 0.029238,
		40.907383, 38.769432, 41.406956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776413, 37.986988, 41.599705>,  <40.248791, 38.533131, 41.386490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776413, 37.986988, 41.599705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861641, 38.369583, 41.679436>,  <40.912777, 38.599140, 41.727272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861641, 38.369583, 41.679436>,  <40.776413, 37.986988, 41.599705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861641, 38.369583, 41.679436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109508, -0.226102, 0.967929,
		0.970880, -0.184412, -0.152920,
		0.213074, 0.956488, 0.199324,
		40.925564, 38.656528, 41.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418354, 38.025993, 41.864925>,  <40.776413, 37.986988, 41.599705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418354, 38.025993, 41.864925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201126, 38.331406, 42.004700>,  <41.070789, 38.514652, 42.088566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201126, 38.331406, 42.004700>,  <41.418354, 38.025993, 41.864925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201126, 38.331406, 42.004700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064776, -0.376814, 0.924021,
		0.837188, 0.524439, 0.155176,
		-0.543065, 0.763528, 0.349435,
		41.038208, 38.560463, 42.109531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766281, 38.292133, 42.483051>,  <41.418354, 38.025993, 41.864925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766281, 38.292133, 42.483051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404427, 38.457397, 42.524883>,  <41.187313, 38.556557, 42.549984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404427, 38.457397, 42.524883>,  <41.766281, 38.292133, 42.483051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404427, 38.457397, 42.524883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028590, -0.186004, 0.982133,
		0.425228, 0.891462, 0.156454,
		-0.904635, 0.413157, 0.104581,
		41.133038, 38.581345, 42.556259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779228, 38.731075, 43.054165>,  <41.766281, 38.292133, 42.483051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779228, 38.731075, 43.054165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384293, 38.675404, 43.023731>,  <41.147331, 38.642002, 43.005470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384293, 38.675404, 43.023731>,  <41.779228, 38.731075, 43.054165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384293, 38.675404, 43.023731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031306, -0.299245, 0.953663,
		-0.155495, 0.943971, 0.291100,
		-0.987340, -0.139177, -0.076083,
		41.088089, 38.633652, 43.000908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525433, 39.178143, 43.535706>,  <41.779228, 38.731075, 43.054165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525433, 39.178143, 43.535706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210175, 38.940216, 43.472443>,  <41.021019, 38.797459, 43.434486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210175, 38.940216, 43.472443>,  <41.525433, 39.178143, 43.535706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210175, 38.940216, 43.472443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143544, -0.072238, 0.987004,
		-0.598511, 0.800609, -0.028448,
		-0.788149, -0.594817, -0.158157,
		40.973728, 38.761772, 43.424995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859528, 39.429180, 43.885849>,  <41.525433, 39.178143, 43.535706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859528, 39.429180, 43.885849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879234, 39.029747, 43.877789>,  <40.891060, 38.790089, 43.872952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879234, 39.029747, 43.877789>,  <40.859528, 39.429180, 43.885849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879234, 39.029747, 43.877789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205236, -0.029871, 0.978257,
		-0.977472, -0.044058, -0.206417,
		0.049266, -0.998582, -0.020156,
		40.894012, 38.730171, 43.871742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207615, 39.073948, 44.075150>,  <40.859528, 39.429180, 43.885849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207615, 39.073948, 44.075150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497181, 38.813309, 44.165802>,  <40.670921, 38.656925, 44.220196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497181, 38.813309, 44.165802>,  <40.207615, 39.073948, 44.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497181, 38.813309, 44.165802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322453, -0.029166, 0.946136,
		-0.609889, -0.758005, -0.231224,
		0.723919, -0.651597, 0.226633,
		40.714355, 38.617828, 44.233791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277256, 39.242603, 44.886749>,  <40.207615, 39.073948, 44.075150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277256, 39.242603, 44.886749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 38.946823, 45.080727>,  <40.576103, 38.769356, 45.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 38.946823, 45.080727>,  <40.277256, 39.242603, 44.886749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464035, 38.946823, 45.080727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040009, -0.565506, -0.823773,
		0.883379, 0.365257, -0.293647,
		0.466948, -0.739453, 0.484943,
		40.604118, 38.724987, 45.226208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991409, 39.113026, 44.681904>,  <40.277256, 39.242603, 44.886749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991409, 39.113026, 44.681904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804466, 38.779804, 44.800297>,  <40.692299, 38.579872, 44.871334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804466, 38.779804, 44.800297>,  <40.991409, 39.113026, 44.681904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804466, 38.779804, 44.800297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035395, -0.316894, -0.947800,
		0.883360, -0.453437, 0.118616,
		-0.467356, -0.833050, 0.295981,
		40.664261, 38.529888, 44.889091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350189, 38.401627, 44.402218>,  <40.991409, 39.113026, 44.681904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350189, 38.401627, 44.402218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953568, 38.399529, 44.454063>,  <40.715595, 38.398270, 44.485172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953568, 38.399529, 44.454063>,  <41.350189, 38.401627, 44.402218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953568, 38.399529, 44.454063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122779, -0.284579, -0.950758,
		0.041877, -0.958638, 0.281530,
		-0.991550, -0.005249, 0.129618,
		40.656101, 38.397953, 44.492950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186523, 37.811069, 44.147736>,  <41.350189, 38.401627, 44.402218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186523, 37.811069, 44.147736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871307, 38.056782, 44.131493>,  <40.682178, 38.204208, 44.121746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871307, 38.056782, 44.131493>,  <41.186523, 37.811069, 44.147736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871307, 38.056782, 44.131493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055427, -0.136495, -0.989089,
		-0.613119, -0.777194, 0.141611,
		-0.788044, 0.614279, -0.040610,
		40.634895, 38.241066, 44.119308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530628, 37.561123, 43.788746>,  <41.186523, 37.811069, 44.147736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530628, 37.561123, 43.788746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529282, 37.961060, 43.781731>,  <40.528473, 38.201023, 43.777519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529282, 37.961060, 43.781731>,  <40.530628, 37.561123, 43.788746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529282, 37.961060, 43.781731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095858, -0.017138, -0.995248,
		-0.995389, -0.005033, -0.095785,
		-0.003367, 0.999841, -0.017541,
		40.528271, 38.261013, 43.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007153, 37.919155, 43.281685>,  <40.530628, 37.561123, 43.788746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007153, 37.919155, 43.281685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284458, 38.203838, 43.327026>,  <40.450844, 38.374649, 43.354233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284458, 38.203838, 43.327026>,  <40.007153, 37.919155, 43.281685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284458, 38.203838, 43.327026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012774, 0.145133, -0.989330,
		-0.720569, 0.687317, 0.091524,
		0.693266, 0.711711, 0.113358,
		40.492439, 38.417351, 43.361034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790924, 38.516167, 42.858341>,  <40.007153, 37.919155, 43.281685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790924, 38.516167, 42.858341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188709, 38.530960, 42.897682>,  <40.427380, 38.539837, 42.921288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188709, 38.530960, 42.897682>,  <39.790924, 38.516167, 42.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188709, 38.530960, 42.897682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083766, 0.286067, -0.954541,
		-0.063441, 0.957495, 0.281385,
		0.994464, 0.036987, 0.098354,
		40.487049, 38.542057, 42.927189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946869, 39.122597, 42.494308>,  <39.790924, 38.516167, 42.858341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946869, 39.122597, 42.494308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318626, 38.977345, 42.520710>,  <40.541683, 38.890194, 42.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318626, 38.977345, 42.520710>,  <39.946869, 39.122597, 42.494308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318626, 38.977345, 42.520710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144934, 0.194604, -0.970115,
		0.339430, 0.911190, 0.233495,
		0.929398, -0.363128, 0.066008,
		40.597446, 38.868404, 42.540512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340813, 39.660553, 42.274242>,  <39.946869, 39.122597, 42.494308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340813, 39.660553, 42.274242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567749, 39.335426, 42.221405>,  <40.703911, 39.140350, 42.189701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567749, 39.335426, 42.221405>,  <40.340813, 39.660553, 42.274242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567749, 39.335426, 42.221405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387937, 0.405306, -0.827787,
		0.726381, 0.418392, 0.545269,
		0.567341, -0.812819, -0.132097,
		40.737953, 39.091579, 42.181774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936638, 39.888557, 42.020847>,  <40.340813, 39.660553, 42.274242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936638, 39.888557, 42.020847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950401, 39.498772, 41.932083>,  <40.958660, 39.264900, 41.878826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950401, 39.498772, 41.932083>,  <40.936638, 39.888557, 42.020847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950401, 39.498772, 41.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323486, 0.220946, -0.920076,
		0.945607, -0.040126, 0.322826,
		0.034408, -0.974460, -0.221908,
		40.960724, 39.206432, 41.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605648, 39.476536, 41.723083>,  <40.936638, 39.888557, 42.020847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605648, 39.476536, 41.723083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266296, 39.332920, 41.567471>,  <41.062687, 39.246750, 41.474102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266296, 39.332920, 41.567471>,  <41.605648, 39.476536, 41.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266296, 39.332920, 41.567471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275630, 0.327836, -0.903632,
		0.451978, -0.873851, -0.179167,
		-0.848378, -0.359038, -0.389035,
		41.011784, 39.225208, 41.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138630, 39.113659, 41.498489>,  <41.605648, 39.476536, 41.723083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138630, 39.113659, 41.498489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750488, 39.018639, 41.480713>,  <41.517601, 38.961628, 41.470047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750488, 39.018639, 41.480713>,  <42.138630, 39.113659, 41.498489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750488, 39.018639, 41.480713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024066, 0.087984, -0.995831,
		0.240471, -0.967382, -0.079659,
		-0.970358, -0.237551, -0.044439,
		41.459381, 38.947372, 41.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120010, 38.616642, 40.936508>,  <42.138630, 39.113659, 41.498489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120010, 38.616642, 40.936508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740353, 38.738880, 40.966797>,  <41.512558, 38.812225, 40.984970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740353, 38.738880, 40.966797>,  <42.120010, 38.616642, 40.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740353, 38.738880, 40.966797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171949, -0.301692, -0.937772,
		-0.263734, -0.903102, 0.338897,
		-0.949146, 0.305595, 0.075721,
		41.455608, 38.830559, 40.989513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824127, 38.148251, 40.594177>,  <42.120010, 38.616642, 40.936508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824127, 38.148251, 40.594177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570522, 38.457108, 40.577129>,  <41.418358, 38.642422, 40.566902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570522, 38.457108, 40.577129>,  <41.824127, 38.148251, 40.594177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570522, 38.457108, 40.577129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070933, -0.112942, -0.991066,
		-0.770061, -0.625328, 0.126378,
		-0.634015, 0.772146, -0.042616,
		41.380318, 38.688751, 40.564346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165596, 37.950150, 40.369667>,  <41.824127, 38.148251, 40.594177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165596, 37.950150, 40.369667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186298, 38.343174, 40.298229>,  <41.198719, 38.578987, 40.255367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186298, 38.343174, 40.298229>,  <41.165596, 37.950150, 40.369667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186298, 38.343174, 40.298229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400508, -0.143403, -0.905002,
		-0.914831, 0.118365, 0.386102,
		0.051753, 0.982561, -0.178596,
		41.201824, 38.637943, 40.244652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811852, 38.070023, 39.782413>,  <41.165596, 37.950150, 40.369667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811852, 38.070023, 39.782413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916126, 38.456123, 39.789631>,  <40.978691, 38.687786, 39.793961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916126, 38.456123, 39.789631>,  <40.811852, 38.070023, 39.782413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916126, 38.456123, 39.789631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152461, 0.059619, -0.986510,
		-0.953309, 0.254418, 0.162706,
		0.260686, 0.965255, 0.018047,
		40.994331, 38.745701, 39.795044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298290, 38.481548, 39.480343>,  <40.811852, 38.070023, 39.782413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298290, 38.481548, 39.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615246, 38.723274, 39.447048>,  <40.805420, 38.868309, 39.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615246, 38.723274, 39.447048>,  <40.298290, 38.481548, 39.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615246, 38.723274, 39.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078751, -0.033964, -0.996316,
		-0.604916, 0.796021, 0.020678,
		0.792385, 0.604316, -0.083232,
		40.852962, 38.904568, 39.422077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118366, 39.083549, 39.076298>,  <40.298290, 38.481548, 39.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118366, 39.083549, 39.076298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513496, 39.024754, 39.055943>,  <40.750576, 38.989475, 39.043728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513496, 39.024754, 39.055943>,  <40.118366, 39.083549, 39.076298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513496, 39.024754, 39.055943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038363, 0.086846, -0.995483,
		0.150742, 0.985319, 0.080150,
		0.987829, -0.146986, -0.050892,
		40.809845, 38.980659, 39.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336586, 39.499367, 38.666012>,  <40.118366, 39.083549, 39.076298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336586, 39.499367, 38.666012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653641, 39.256252, 38.646725>,  <40.843872, 39.110386, 38.635151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653641, 39.256252, 38.646725>,  <40.336586, 39.499367, 38.666012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653641, 39.256252, 38.646725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090891, -0.039589, -0.995073,
		0.602881, 0.793115, -0.086622,
		0.792637, -0.607784, -0.048219,
		40.891434, 39.073917, 38.632259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932045, 39.738293, 38.237774>,  <40.336586, 39.499367, 38.666012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932045, 39.738293, 38.237774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968918, 39.340031, 38.232651>,  <40.991043, 39.101074, 38.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968918, 39.340031, 38.232651>,  <40.932045, 39.738293, 38.237774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968918, 39.340031, 38.232651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190599, -0.005020, -0.981655,
		0.977330, 0.092933, -0.190235,
		0.092183, -0.995660, -0.012807,
		40.996574, 39.041332, 38.228809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392883, 39.557274, 37.667084>,  <40.932045, 39.738293, 38.237774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392883, 39.557274, 37.667084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222069, 39.202980, 37.739864>,  <41.119579, 38.990402, 37.783531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222069, 39.202980, 37.739864>,  <41.392883, 39.557274, 37.667084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222069, 39.202980, 37.739864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127864, -0.140051, -0.981853,
		0.895146, -0.442557, -0.053447,
		-0.427041, -0.885737, 0.181953,
		41.093956, 38.937260, 37.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590919, 39.209225, 37.072021>,  <41.392883, 39.557274, 37.667084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590919, 39.209225, 37.072021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316952, 38.961811, 37.226063>,  <41.152573, 38.813362, 37.318489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316952, 38.961811, 37.226063>,  <41.590919, 39.209225, 37.072021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316952, 38.961811, 37.226063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128029, -0.418146, -0.899312,
		0.717287, -0.665256, 0.207204,
		-0.684915, -0.618537, 0.385103,
		41.111477, 38.776249, 37.341595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792416, 38.514820, 36.865719>,  <41.590919, 39.209225, 37.072021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792416, 38.514820, 36.865719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400394, 38.534119, 36.942841>,  <41.165184, 38.545696, 36.989113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400394, 38.534119, 36.942841>,  <41.792416, 38.514820, 36.865719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400394, 38.534119, 36.942841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198172, -0.311123, -0.929479,
		0.015145, -0.949144, 0.314477,
		-0.980050, 0.048243, 0.192806,
		41.106380, 38.548592, 37.000683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505863, 37.808876, 36.781590>,  <41.792416, 38.514820, 36.865719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505863, 37.808876, 36.781590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198246, 38.063744, 36.761238>,  <41.013676, 38.216663, 36.749027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198246, 38.063744, 36.761238>,  <41.505863, 37.808876, 36.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198246, 38.063744, 36.761238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187795, -0.301315, -0.934849,
		-0.610986, -0.709386, 0.351381,
		-0.769044, 0.637167, -0.050880,
		40.967533, 38.254894, 36.745975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943409, 37.366386, 36.571236>,  <41.505863, 37.808876, 36.781590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943409, 37.366386, 36.571236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868866, 37.745987, 36.469521>,  <40.824139, 37.973747, 36.408493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868866, 37.745987, 36.469521>,  <40.943409, 37.366386, 36.571236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868866, 37.745987, 36.469521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263285, -0.297591, -0.917672,
		-0.946547, -0.104067, 0.305317,
		-0.186359, 0.949005, -0.254284,
		40.812958, 38.030689, 36.393234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559566, 37.426826, 36.075577>,  <40.943409, 37.366386, 36.571236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559566, 37.426826, 36.075577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648277, 37.811115, 36.142311>,  <41.701504, 38.041687, 36.182350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648277, 37.811115, 36.142311>,  <41.559566, 37.426826, 36.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648277, 37.811115, 36.142311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778721, -0.277473, 0.562675,
		0.586864, 0.005130, -0.809669,
		0.221775, 0.960720, 0.166833,
		41.714809, 38.099331, 36.192360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901287, 37.472130, 35.417957>,  <41.559566, 37.426826, 36.075577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901287, 37.472130, 35.417957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650974, 37.160736, 35.398529>,  <41.500786, 36.973900, 35.386871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650974, 37.160736, 35.398529>,  <41.901287, 37.472130, 35.417957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650974, 37.160736, 35.398529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284322, -0.169685, -0.943593,
		0.726328, -0.604297, 0.327526,
		-0.625787, -0.778481, -0.048568,
		41.463238, 36.927193, 35.383957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325832, 36.865250, 35.673752>,  <41.901287, 37.472130, 35.417957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325832, 36.865250, 35.673752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577175, 37.144253, 35.535969>,  <42.727982, 37.311653, 35.453300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577175, 37.144253, 35.535969>,  <42.325832, 36.865250, 35.673752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577175, 37.144253, 35.535969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138299, -0.535894, -0.832881,
		-0.765533, 0.475709, -0.433197,
		0.628357, 0.697509, -0.344454,
		42.765682, 37.353504, 35.432632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204350, 36.889366, 34.946808>,  <42.325832, 36.865250, 35.673752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204350, 36.889366, 34.946808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571087, 37.031681, 35.019268>,  <42.791130, 37.117069, 35.062744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571087, 37.031681, 35.019268>,  <42.204350, 36.889366, 34.946808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571087, 37.031681, 35.019268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359164, -0.536859, -0.763402,
		-0.174358, 0.764982, -0.620002,
		0.916843, 0.355788, 0.181148,
		42.846138, 37.138416, 35.073612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580833, 37.139019, 34.368435>,  <42.204350, 36.889366, 34.946808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580833, 37.139019, 34.368435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853981, 37.040058, 34.643383>,  <43.017872, 36.980682, 34.808350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853981, 37.040058, 34.643383>,  <42.580833, 37.139019, 34.368435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853981, 37.040058, 34.643383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543274, -0.457064, -0.704234,
		0.488402, 0.854332, -0.177709,
		0.682874, -0.247405, 0.687368,
		43.058842, 36.965836, 34.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358883, 37.275806, 34.215313>,  <42.580833, 37.139019, 34.368435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358883, 37.275806, 34.215313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311005, 36.941616, 34.429848>,  <43.282276, 36.741104, 34.558567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311005, 36.941616, 34.429848>,  <43.358883, 37.275806, 34.215313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311005, 36.941616, 34.429848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505269, -0.516290, -0.691483,
		0.854621, 0.188226, 0.483937,
		-0.119697, -0.835474, 0.536336,
		43.275097, 36.690975, 34.590748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105350, 37.398163, 34.512516>,  <43.358883, 37.275806, 34.215313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105350, 37.398163, 34.512516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367435, 37.272564, 34.237675>,  <44.524685, 37.197205, 34.072769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367435, 37.272564, 34.237675>,  <44.105350, 37.398163, 34.512516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367435, 37.272564, 34.237675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736331, -0.062127, -0.673763,
		0.168873, 0.947389, -0.271913,
		0.655209, -0.313998, -0.687100,
		44.563999, 37.178364, 34.031544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620895, 37.252968, 34.997280>,  <44.105350, 37.398163, 34.512516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620895, 37.252968, 34.997280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330494, 37.004082, 34.880135>,  <44.156254, 36.854748, 34.809845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330494, 37.004082, 34.880135>,  <44.620895, 37.252968, 34.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330494, 37.004082, 34.880135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505439, -0.771563, 0.386292,
		-0.466323, 0.132422, 0.874647,
		-0.725999, -0.622217, -0.292866,
		44.112694, 36.817417, 34.792274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556038, 36.794407, 35.435371>,  <44.620895, 37.252968, 34.997280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556038, 36.794407, 35.435371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332195, 36.585224, 35.178200>,  <44.197891, 36.459713, 35.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332195, 36.585224, 35.178200>,  <44.556038, 36.794407, 35.435371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332195, 36.585224, 35.178200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388599, -0.850779, 0.353788,
		-0.732004, -0.051857, 0.679324,
		-0.559608, -0.522959, -0.642926,
		44.164314, 36.428337, 34.985321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351486, 36.083405, 35.651333>,  <44.556038, 36.794407, 35.435371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351486, 36.083405, 35.651333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268063, 35.981464, 35.273643>,  <44.218010, 35.920300, 35.047031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268063, 35.981464, 35.273643>,  <44.351486, 36.083405, 35.651333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268063, 35.981464, 35.273643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111660, -0.965344, 0.235887,
		-0.971616, -0.056236, 0.229784,
		-0.208555, -0.254849, -0.944223,
		44.205498, 35.905010, 34.990376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776516, 35.549103, 35.526814>,  <44.351486, 36.083405, 35.651333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776516, 35.549103, 35.526814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073135, 35.521332, 35.259895>,  <44.251106, 35.504669, 35.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073135, 35.521332, 35.259895>,  <43.776516, 35.549103, 35.526814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073135, 35.521332, 35.259895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206429, -0.922765, 0.325411,
		-0.638348, -0.379058, -0.669946,
		0.741552, -0.069429, -0.667293,
		44.295601, 35.500504, 35.059708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606461, 35.025547, 34.977463>,  <43.776516, 35.549103, 35.526814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606461, 35.025547, 34.977463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981068, 35.066551, 35.111580>,  <44.205833, 35.091152, 35.192051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981068, 35.066551, 35.111580>,  <43.606461, 35.025547, 34.977463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981068, 35.066551, 35.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048547, -0.909180, 0.413563,
		0.347241, -0.403587, -0.846488,
		0.936518, 0.102512, 0.335297,
		44.262024, 35.097305, 35.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656204, 34.473251, 34.513828>,  <43.606461, 35.025547, 34.977463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656204, 34.473251, 34.513828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999519, 34.678341, 34.505283>,  <44.205509, 34.801395, 34.500156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999519, 34.678341, 34.505283>,  <43.656204, 34.473251, 34.513828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999519, 34.678341, 34.505283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424239, -0.732369, -0.532595,
		-0.288720, 0.448056, -0.846101,
		0.858290, 0.512719, -0.021366,
		44.257008, 34.832157, 34.498875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124359, 33.924347, 34.312992>,  <43.656204, 34.473251, 34.513828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124359, 33.924347, 34.312992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458874, 33.855843, 34.521336>,  <44.659584, 33.814739, 34.646339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458874, 33.855843, 34.521336>,  <44.124359, 33.924347, 34.312992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458874, 33.855843, 34.521336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361495, 0.886471, -0.288947,
		-0.412238, 0.429930, 0.803256,
		0.836290, -0.171258, 0.520854,
		44.709763, 33.804466, 34.677593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773251, 34.183887, 34.010998>,  <44.124359, 33.924347, 34.312992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773251, 34.183887, 34.010998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817131, 34.526928, 33.810005>,  <44.843460, 34.732754, 33.689411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817131, 34.526928, 33.810005>,  <44.773251, 34.183887, 34.010998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817131, 34.526928, 33.810005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886715, 0.143981, 0.439325,
		0.449114, -0.493747, -0.744655,
		0.109699, 0.857603, -0.502477,
		44.850040, 34.784210, 33.659264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532719, 34.057995, 33.754349>,  <44.773251, 34.183887, 34.010998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532719, 34.057995, 33.754349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401073, 34.371346, 33.543446>,  <45.322086, 34.559357, 33.416904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401073, 34.371346, 33.543446>,  <45.532719, 34.057995, 33.754349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401073, 34.371346, 33.543446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381339, 0.400553, 0.833149,
		0.863867, 0.475265, 0.166905,
		-0.329112, 0.783377, -0.527262,
		45.302341, 34.606358, 33.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515625, 34.839073, 33.937523>,  <45.532719, 34.057995, 33.754349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515625, 34.839073, 33.937523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584663, 35.208725, 33.801170>,  <45.626087, 35.430515, 33.719357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584663, 35.208725, 33.801170>,  <45.515625, 34.839073, 33.937523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584663, 35.208725, 33.801170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320499, 0.274557, 0.906586,
		0.931392, -0.265728, -0.248793,
		0.172598, 0.924125, -0.340886,
		45.636444, 35.485962, 33.698906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057766, 35.039085, 34.338299>,  <45.515625, 34.839073, 33.937523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057766, 35.039085, 34.338299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944683, 35.398277, 34.203415>,  <45.876835, 35.613792, 34.122486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944683, 35.398277, 34.203415>,  <46.057766, 35.039085, 34.338299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944683, 35.398277, 34.203415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372283, 0.426709, 0.824211,
		0.884015, 0.107474, -0.454937,
		-0.282707, 0.897980, -0.337206,
		45.859871, 35.667671, 34.102253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533642, 34.507530, 34.470367>,  <46.057766, 35.039085, 34.338299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533642, 34.507530, 34.470367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333336, 34.228958, 34.675976>,  <46.213154, 34.061813, 34.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333336, 34.228958, 34.675976>,  <46.533642, 34.507530, 34.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333336, 34.228958, 34.675976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860643, -0.463962, 0.209839,
		0.092346, 0.547465, 0.831717,
		-0.500765, -0.696434, 0.514018,
		46.183105, 34.020027, 34.830181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928883, 34.435379, 35.018387>,  <46.533642, 34.507530, 34.470367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928883, 34.435379, 35.018387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693218, 34.118092, 34.956814>,  <46.551819, 33.927719, 34.919872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693218, 34.118092, 34.956814>,  <46.928883, 34.435379, 35.018387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693218, 34.118092, 34.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769166, -0.608922, 0.193899,
		-0.247536, -0.004161, 0.968870,
		-0.589159, -0.793219, -0.153931,
		46.516472, 33.880127, 34.910633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667694, 34.900326, 35.075100>,  <46.928883, 34.435379, 35.018387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667694, 34.900326, 35.075100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.832451, 35.036800, 34.737118>,  <47.931305, 35.118683, 34.534328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.832451, 35.036800, 34.737118>,  <47.667694, 34.900326, 35.075100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.832451, 35.036800, 34.737118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900452, -0.010170, 0.434836,
		0.139766, -0.939941, -0.311409,
		0.411887, 0.341184, -0.844951,
		47.956017, 35.139156, 34.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.781349, 30.579866, 30.089315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402664, 30.643877, 29.977516>,  <37.175453, 30.682283, 29.910437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402664, 30.643877, 29.977516>,  <37.781349, 30.579866, 30.089315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402664, 30.643877, 29.977516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218901, 0.316850, 0.922870,
		0.236242, 0.934879, -0.264937,
		-0.946717, 0.160026, -0.279499,
		37.118649, 30.691885, 29.893667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743694, 31.301830, 30.121056>,  <37.781349, 30.579866, 30.089315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743694, 31.301830, 30.121056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375393, 31.145870, 30.126505>,  <37.154411, 31.052294, 30.129774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375393, 31.145870, 30.126505>,  <37.743694, 31.301830, 30.121056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375393, 31.145870, 30.126505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174621, 0.443092, 0.879305,
		-0.348878, 0.807247, -0.476065,
		-0.920756, -0.389901, 0.013623,
		37.099167, 31.028900, 30.130592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199104, 31.906759, 30.239483>,  <37.743694, 31.301830, 30.121056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199104, 31.906759, 30.239483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034256, 31.556271, 30.339396>,  <36.935349, 31.345978, 30.399343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034256, 31.556271, 30.339396>,  <37.199104, 31.906759, 30.239483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034256, 31.556271, 30.339396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298368, 0.388814, 0.871665,
		-0.860892, 0.284702, -0.421675,
		-0.412118, -0.876224, 0.249781,
		36.910622, 31.293404, 30.414330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585403, 32.114597, 30.465572>,  <37.199104, 31.906759, 30.239483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585403, 32.114597, 30.465572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641502, 31.748550, 30.616777>,  <36.675159, 31.528923, 30.707500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641502, 31.748550, 30.616777>,  <36.585403, 32.114597, 30.465572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641502, 31.748550, 30.616777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294711, 0.325898, 0.898296,
		-0.945239, -0.237386, -0.223990,
		0.140245, -0.915117, 0.378011,
		36.683575, 31.474016, 30.730181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017269, 32.009518, 30.886114>,  <36.585403, 32.114597, 30.465572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017269, 32.009518, 30.886114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267811, 31.715626, 30.990311>,  <36.418137, 31.539291, 31.052830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267811, 31.715626, 30.990311>,  <36.017269, 32.009518, 30.886114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267811, 31.715626, 30.990311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204903, 0.167238, 0.964389,
		-0.752129, -0.657422, -0.045799,
		0.626352, -0.734729, 0.260492,
		36.455715, 31.495207, 31.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657738, 31.624319, 31.420511>,  <36.017269, 32.009518, 30.886114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657738, 31.624319, 31.420511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051582, 31.557003, 31.439365>,  <36.287888, 31.516613, 31.450678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051582, 31.557003, 31.439365>,  <35.657738, 31.624319, 31.420511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051582, 31.557003, 31.439365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031098, 0.096699, 0.994828,
		-0.171977, -0.980983, 0.089978,
		0.984610, -0.168290, 0.047136,
		36.346966, 31.506516, 31.453506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716320, 31.332661, 31.979582>,  <35.657738, 31.624319, 31.420511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716320, 31.332661, 31.979582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089779, 31.462955, 31.919973>,  <36.313854, 31.541132, 31.884209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089779, 31.462955, 31.919973>,  <35.716320, 31.332661, 31.979582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089779, 31.462955, 31.919973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036943, 0.326242, 0.944564,
		0.356300, -0.887389, 0.292559,
		0.933641, 0.325740, -0.149023,
		36.369873, 31.560677, 31.875267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031750, 31.092793, 32.671223>,  <35.716320, 31.332661, 31.979582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031750, 31.092793, 32.671223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207367, 31.401302, 32.486885>,  <36.312737, 31.586409, 32.376282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207367, 31.401302, 32.486885>,  <36.031750, 31.092793, 32.671223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207367, 31.401302, 32.486885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135579, 0.450173, 0.882589,
		0.888177, -0.449976, 0.093078,
		0.439045, 0.771276, -0.460840,
		36.339081, 31.632685, 32.348633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621429, 31.240017, 33.077438>,  <36.031750, 31.092793, 32.671223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621429, 31.240017, 33.077438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591473, 31.578999, 32.867214>,  <36.573498, 31.782389, 32.741081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591473, 31.578999, 32.867214>,  <36.621429, 31.240017, 33.077438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591473, 31.578999, 32.867214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047611, 0.529474, 0.846989,
		0.996054, 0.038413, -0.080003,
		-0.074895, 0.847456, -0.525556,
		36.569004, 31.833235, 32.709549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051636, 31.646383, 33.400517>,  <36.621429, 31.240017, 33.077438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051636, 31.646383, 33.400517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825241, 31.912758, 33.206120>,  <36.689404, 32.072582, 33.089481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825241, 31.912758, 33.206120>,  <37.051636, 31.646383, 33.400517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825241, 31.912758, 33.206120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055637, 0.619005, 0.783413,
		0.822534, 0.416363, -0.387400,
		-0.565987, 0.665938, -0.485988,
		36.655445, 32.112541, 33.060322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522987, 32.282795, 33.327747>,  <37.051636, 31.646383, 33.400517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522987, 32.282795, 33.327747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138489, 32.390076, 33.302208>,  <36.907791, 32.454445, 33.286884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138489, 32.390076, 33.302208>,  <37.522987, 32.282795, 33.327747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138489, 32.390076, 33.302208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148999, 0.700238, 0.698187,
		0.231962, 0.661616, -0.713062,
		-0.961245, 0.268199, -0.063849,
		36.850117, 32.470535, 33.283054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573204, 33.008148, 33.262695>,  <37.522987, 32.282795, 33.327747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573204, 33.008148, 33.262695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204384, 32.920143, 33.390076>,  <36.983089, 32.867340, 33.466503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204384, 32.920143, 33.390076>,  <37.573204, 33.008148, 33.262695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204384, 32.920143, 33.390076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174893, 0.497139, 0.849862,
		-0.345295, 0.839313, -0.419910,
		-0.922054, -0.220014, 0.318449,
		36.927769, 32.854137, 33.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236069, 33.611919, 33.389065>,  <37.573204, 33.008148, 33.262695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236069, 33.611919, 33.389065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043709, 33.353008, 33.625629>,  <36.928295, 33.197662, 33.767567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043709, 33.353008, 33.625629>,  <37.236069, 33.611919, 33.389065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043709, 33.353008, 33.625629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064888, 0.646406, 0.760229,
		-0.874372, 0.403968, -0.268854,
		-0.480898, -0.647278, 0.591412,
		36.899441, 33.158825, 33.803055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750256, 34.060760, 33.792511>,  <37.236069, 33.611919, 33.389065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750256, 34.060760, 33.792511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787663, 33.712379, 33.985466>,  <36.810104, 33.503349, 34.101238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787663, 33.712379, 33.985466>,  <36.750256, 34.060760, 33.792511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787663, 33.712379, 33.985466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236438, 0.490076, 0.839001,
		-0.967136, 0.035595, 0.251756,
		0.093515, -0.870953, 0.482386,
		36.815716, 33.451092, 34.130180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558083, 34.238842, 34.448765>,  <36.750256, 34.060760, 33.792511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558083, 34.238842, 34.448765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727879, 33.878941, 34.489273>,  <36.829754, 33.662998, 34.513577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727879, 33.878941, 34.489273>,  <36.558083, 34.238842, 34.448765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727879, 33.878941, 34.489273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510895, 0.330357, 0.793631,
		-0.747527, -0.285147, 0.599912,
		0.424487, -0.899753, 0.101270,
		36.855225, 33.609016, 34.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552708, 34.157055, 35.141064>,  <36.558083, 34.238842, 34.448765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552708, 34.157055, 35.141064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826382, 33.908451, 34.988426>,  <36.990585, 33.759289, 34.896843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826382, 33.908451, 34.988426>,  <36.552708, 34.157055, 35.141064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826382, 33.908451, 34.988426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654407, 0.292224, 0.697392,
		-0.321926, -0.726864, 0.606657,
		0.684189, -0.621510, -0.381590,
		37.031639, 33.721996, 34.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724598, 33.708164, 35.659657>,  <36.552708, 34.157055, 35.141064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724598, 33.708164, 35.659657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040306, 33.709030, 35.414040>,  <37.229729, 33.709549, 35.266670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040306, 33.709030, 35.414040>,  <36.724598, 33.708164, 35.659657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040306, 33.709030, 35.414040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607477, 0.143172, 0.781328,
		0.089609, -0.989695, 0.111683,
		0.789267, 0.002169, -0.614046,
		37.277084, 33.709682, 35.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401554, 33.279640, 36.016136>,  <36.724598, 33.708164, 35.659657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401554, 33.279640, 36.016136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550781, 33.482819, 35.705574>,  <37.640320, 33.604725, 35.519238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550781, 33.482819, 35.705574>,  <37.401554, 33.279640, 36.016136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550781, 33.482819, 35.705574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853557, 0.140109, 0.501807,
		0.363674, -0.849916, -0.381293,
		0.373071, 0.507949, -0.776406,
		37.662704, 33.635204, 35.472652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122948, 32.950535, 35.915195>,  <37.401554, 33.279640, 36.016136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122948, 32.950535, 35.915195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117714, 33.315170, 35.750835>,  <38.114574, 33.533951, 35.652218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117714, 33.315170, 35.750835>,  <38.122948, 32.950535, 35.915195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117714, 33.315170, 35.750835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713226, 0.296522, 0.635125,
		0.700812, -0.284754, -0.654047,
		-0.013085, 0.911587, -0.410900,
		38.113789, 33.588646, 35.627567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933666, 33.146404, 35.732006>,  <38.122948, 32.950535, 35.915195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933666, 33.146404, 35.732006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703747, 33.467358, 35.796238>,  <38.565796, 33.659931, 35.834778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703747, 33.467358, 35.796238>,  <38.933666, 33.146404, 35.732006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703747, 33.467358, 35.796238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688964, 0.368658, 0.624035,
		0.441516, 0.469329, -0.764718,
		-0.574798, 0.802385, 0.160582,
		38.531307, 33.708073, 35.844414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391445, 33.722973, 35.700745>,  <38.933666, 33.146404, 35.732006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391445, 33.722973, 35.700745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077015, 33.909546, 35.862991>,  <38.888355, 34.021488, 35.960339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077015, 33.909546, 35.862991>,  <39.391445, 33.722973, 35.700745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077015, 33.909546, 35.862991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612424, 0.498764, 0.613328,
		0.083772, 0.730531, -0.677722,
		-0.786078, 0.466433, 0.405612,
		38.841190, 34.049477, 35.984676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496693, 34.484463, 35.510815>,  <39.391445, 33.722973, 35.700745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496693, 34.484463, 35.510815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268375, 34.405998, 35.829742>,  <39.131386, 34.358917, 36.021099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268375, 34.405998, 35.829742>,  <39.496693, 34.484463, 35.510815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268375, 34.405998, 35.829742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604112, 0.557320, 0.569599,
		-0.556095, 0.806792, -0.199610,
		-0.570795, -0.196165, 0.797316,
		39.097137, 34.347149, 36.068935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459988, 35.261044, 35.876320>,  <39.496693, 34.484463, 35.510815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459988, 35.261044, 35.876320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830219, 35.405727, 35.831657>,  <40.052357, 35.492538, 35.804859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830219, 35.405727, 35.831657>,  <39.459988, 35.261044, 35.876320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830219, 35.405727, 35.831657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105752, -0.036143, -0.993736,
		-0.363480, 0.931590, 0.004798,
		0.925580, 0.361710, -0.111654,
		40.107895, 35.514240, 35.798161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503777, 35.741570, 35.318405>,  <39.459988, 35.261044, 35.876320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503777, 35.741570, 35.318405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890903, 35.641685, 35.330883>,  <40.123180, 35.581757, 35.338371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890903, 35.641685, 35.330883>,  <39.503777, 35.741570, 35.318405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890903, 35.641685, 35.330883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039107, 0.026794, -0.998876,
		0.248591, 0.967951, 0.035697,
		0.967819, -0.249707, 0.031193,
		40.181248, 35.566772, 35.340240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642128, 36.062611, 34.847507>,  <39.503777, 35.741570, 35.318405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642128, 36.062611, 34.847507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953796, 35.816238, 34.894024>,  <40.140797, 35.668415, 34.921932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953796, 35.816238, 34.894024>,  <39.642128, 36.062611, 34.847507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953796, 35.816238, 34.894024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113188, -0.044214, -0.992589,
		0.616509, 0.786558, 0.035266,
		0.779170, -0.615932, 0.116287,
		40.187546, 35.631458, 34.928909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174339, 36.287590, 34.308174>,  <39.642128, 36.062611, 34.847507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174339, 36.287590, 34.308174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242584, 35.909519, 34.419548>,  <40.283531, 35.682674, 34.486374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242584, 35.909519, 34.419548>,  <40.174339, 36.287590, 34.308174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242584, 35.909519, 34.419548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185927, -0.246620, -0.951110,
		0.967637, 0.214042, 0.133657,
		0.170615, -0.945180, 0.278435,
		40.293770, 35.625965, 34.503078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721844, 35.949993, 33.965118>,  <40.174339, 36.287590, 34.308174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721844, 35.949993, 33.965118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511024, 35.637772, 34.099556>,  <40.384533, 35.450439, 34.180218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511024, 35.637772, 34.099556>,  <40.721844, 35.949993, 33.965118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511024, 35.637772, 34.099556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003434, -0.393516, -0.919311,
		0.849830, -0.485673, 0.204720,
		-0.527045, -0.780556, 0.336089,
		40.352909, 35.403606, 34.200382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026203, 35.348743, 33.600697>,  <40.721844, 35.949993, 33.965118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026203, 35.348743, 33.600697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661369, 35.227512, 33.711151>,  <40.442471, 35.154774, 33.777424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661369, 35.227512, 33.711151>,  <41.026203, 35.348743, 33.600697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661369, 35.227512, 33.711151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059758, -0.568031, -0.820834,
		0.405634, -0.765168, 0.499979,
		-0.912080, -0.303080, 0.276138,
		40.387745, 35.136589, 33.793991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166626, 34.718502, 33.495380>,  <41.026203, 35.348743, 33.600697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166626, 34.718502, 33.495380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.768467, 34.740185, 33.526993>,  <40.529572, 34.753193, 33.545959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.768467, 34.740185, 33.526993>,  <41.166626, 34.718502, 33.495380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768467, 34.740185, 33.526993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090325, -0.806225, -0.584673,
		0.032030, -0.589121, 0.807410,
		-0.995397, 0.054202, 0.079035,
		40.469849, 34.756447, 33.550705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886871, 34.039658, 33.654362>,  <41.166626, 34.718502, 33.495380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886871, 34.039658, 33.654362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606174, 34.254555, 33.467205>,  <40.437756, 34.383492, 33.354912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606174, 34.254555, 33.467205>,  <40.886871, 34.039658, 33.654362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606174, 34.254555, 33.467205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205309, -0.781398, -0.589293,
		-0.682206, -0.317469, 0.658641,
		-0.701743, 0.537244, -0.467895,
		40.395653, 34.415730, 33.326836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474838, 33.458691, 33.288250>,  <40.886871, 34.039658, 33.654362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474838, 33.458691, 33.288250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339237, 33.799484, 33.128654>,  <40.257877, 34.003960, 33.032898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339237, 33.799484, 33.128654>,  <40.474838, 33.458691, 33.288250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339237, 33.799484, 33.128654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333339, -0.505366, -0.795921,
		-0.879750, -0.136825, 0.455323,
		-0.339007, 0.851988, -0.398987,
		40.237534, 34.055080, 33.008957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776417, 33.339500, 33.120247>,  <40.474838, 33.458691, 33.288250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776417, 33.339500, 33.120247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929493, 33.621513, 32.881424>,  <40.021339, 33.790722, 32.738132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929493, 33.621513, 32.881424>,  <39.776417, 33.339500, 33.120247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929493, 33.621513, 32.881424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315881, -0.507450, -0.801694,
		-0.868198, 0.495398, 0.028511,
		0.382690, 0.705036, -0.597054,
		40.044300, 33.833023, 32.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330025, 33.349037, 32.583397>,  <39.776417, 33.339500, 33.120247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330025, 33.349037, 32.583397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649952, 33.544712, 32.444267>,  <39.841908, 33.662117, 32.360790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649952, 33.544712, 32.444267>,  <39.330025, 33.349037, 32.583397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649952, 33.544712, 32.444267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089945, -0.475256, -0.875238,
		-0.593464, 0.731317, -0.336119,
		0.799819, 0.489190, -0.347826,
		39.889896, 33.691467, 32.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080139, 33.646896, 31.898991>,  <39.330025, 33.349037, 32.583397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080139, 33.646896, 31.898991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479446, 33.623463, 31.896715>,  <39.719028, 33.609402, 31.895350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479446, 33.623463, 31.896715>,  <39.080139, 33.646896, 31.898991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479446, 33.623463, 31.896715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031400, -0.448297, -0.893333,
		0.049781, 0.891963, -0.449359,
		0.998267, -0.058581, -0.005691,
		39.778927, 33.605888, 31.895008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288548, 33.853691, 31.222506>,  <39.080139, 33.646896, 31.898991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288548, 33.853691, 31.222506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607338, 33.656391, 31.361946>,  <39.798615, 33.538010, 31.445610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607338, 33.656391, 31.361946>,  <39.288548, 33.853691, 31.222506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607338, 33.656391, 31.361946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039205, -0.618180, -0.785058,
		0.602731, 0.612009, -0.512015,
		0.796981, -0.493252, 0.348603,
		39.846432, 33.508415, 31.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757641, 33.879318, 30.745440>,  <39.288548, 33.853691, 31.222506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757641, 33.879318, 30.745440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873734, 33.564068, 30.962557>,  <39.943390, 33.374920, 31.092827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873734, 33.564068, 30.962557>,  <39.757641, 33.879318, 30.745440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873734, 33.564068, 30.962557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063742, -0.550029, -0.832709,
		0.954830, 0.276281, -0.109402,
		0.290236, -0.788122, 0.542795,
		39.960804, 33.327633, 31.125395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297867, 33.585064, 30.368307>,  <39.757641, 33.879318, 30.745440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297867, 33.585064, 30.368307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.204689, 33.286209, 30.617313>,  <40.148781, 33.106895, 30.766716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.204689, 33.286209, 30.617313>,  <40.297867, 33.585064, 30.368307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204689, 33.286209, 30.617313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083952, -0.622285, -0.778276,
		0.968860, -0.233556, 0.082233,
		-0.232944, -0.747137, 0.622514,
		40.134808, 33.062069, 30.804068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681629, 32.913094, 30.099455>,  <40.297867, 33.585064, 30.368307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681629, 32.913094, 30.099455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363426, 32.847427, 30.332767>,  <40.172504, 32.808029, 30.472755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363426, 32.847427, 30.332767>,  <40.681629, 32.913094, 30.099455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363426, 32.847427, 30.332767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287716, -0.744833, -0.602033,
		0.533281, -0.646741, 0.545286,
		-0.795507, -0.164165, 0.583283,
		40.124775, 32.798180, 30.507751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857166, 32.225666, 30.415503>,  <40.681629, 32.913094, 30.099455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857166, 32.225666, 30.415503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461552, 32.284332, 30.408731>,  <40.224182, 32.319534, 30.404669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461552, 32.284332, 30.408731>,  <40.857166, 32.225666, 30.415503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461552, 32.284332, 30.408731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108088, -0.797411, -0.593678,
		-0.100573, -0.585341, 0.804525,
		-0.989041, 0.146668, -0.016930,
		40.164841, 32.328331, 30.403652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588928, 31.595850, 30.386129>,  <40.857166, 32.225666, 30.415503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588928, 31.595850, 30.386129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273464, 31.814444, 30.273439>,  <40.084187, 31.945601, 30.205826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273464, 31.814444, 30.273439>,  <40.588928, 31.595850, 30.386129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273464, 31.814444, 30.273439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158496, -0.623440, -0.765638,
		-0.594045, -0.559179, 0.578299,
		-0.788663, 0.546482, -0.281724,
		40.036865, 31.978388, 30.188921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.830349, 31.061769, 30.322803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772533, 31.399435, 30.116310>,  <39.737843, 31.602034, 29.992414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772533, 31.399435, 30.116310>,  <39.830349, 31.061769, 30.322803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772533, 31.399435, 30.116310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462833, -0.518802, -0.718771,
		-0.874583, 0.135041, 0.465692,
		-0.144538, 0.844162, -0.516236,
		39.729172, 31.652683, 29.961439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166233, 30.949297, 30.052588>,  <39.830349, 31.061769, 30.322803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166233, 30.949297, 30.052588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292995, 31.252045, 29.823950>,  <39.369053, 31.433693, 29.686768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292995, 31.252045, 29.823950>,  <39.166233, 30.949297, 30.052588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292995, 31.252045, 29.823950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534337, -0.355444, -0.766906,
		-0.783617, 0.548459, 0.291782,
		0.316904, 0.756870, -0.571594,
		39.388065, 31.479105, 29.652472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630684, 31.357000, 29.740072>,  <39.166233, 30.949297, 30.052588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630684, 31.357000, 29.740072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954243, 31.416361, 29.512505>,  <39.148376, 31.451977, 29.375965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954243, 31.416361, 29.512505>,  <38.630684, 31.357000, 29.740072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954243, 31.416361, 29.512505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440990, -0.486840, -0.753999,
		-0.388867, 0.860793, -0.328358,
		0.808894, 0.148402, -0.568917,
		39.196911, 31.460882, 29.341829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291656, 31.473749, 29.047451>,  <38.630684, 31.357000, 29.740072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291656, 31.473749, 29.047451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675304, 31.409462, 28.954283>,  <38.905495, 31.370890, 28.898382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675304, 31.409462, 28.954283>,  <38.291656, 31.473749, 29.047451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675304, 31.409462, 28.954283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282961, -0.556252, -0.781356,
		-0.003985, 0.815324, -0.578991,
		0.959123, -0.160718, -0.232922,
		38.963043, 31.361246, 28.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321373, 31.577854, 28.341160>,  <38.291656, 31.473749, 29.047451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321373, 31.577854, 28.341160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661430, 31.376505, 28.402958>,  <38.865467, 31.255695, 28.440037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661430, 31.376505, 28.402958>,  <38.321373, 31.577854, 28.341160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661430, 31.376505, 28.402958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099842, -0.442193, -0.891346,
		0.516996, 0.742348, -0.426186,
		0.850145, -0.503373, 0.154495,
		38.916473, 31.225492, 28.449306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674866, 31.612627, 27.689861>,  <38.321373, 31.577854, 28.341160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674866, 31.612627, 27.689861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836365, 31.300169, 27.880354>,  <38.933266, 31.112694, 27.994650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836365, 31.300169, 27.880354>,  <38.674866, 31.612627, 27.689861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836365, 31.300169, 27.880354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096665, -0.554058, -0.826847,
		0.909748, 0.287805, -0.299210,
		0.403750, -0.781145, 0.476233,
		38.957489, 31.065825, 28.023224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133900, 31.290724, 27.205048>,  <38.674866, 31.612627, 27.689861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133900, 31.290724, 27.205048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084343, 31.003740, 27.479244>,  <39.054607, 30.831551, 27.643763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084343, 31.003740, 27.479244>,  <39.133900, 31.290724, 27.205048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084343, 31.003740, 27.479244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131179, -0.696595, -0.705370,
		0.983586, 0.002531, 0.180420,
		-0.123894, -0.717460, 0.685494,
		39.047176, 30.788502, 27.684893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680374, 30.893557, 27.137177>,  <39.133900, 31.290724, 27.205048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680374, 30.893557, 27.137177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398270, 30.671671, 27.313768>,  <39.229008, 30.538540, 27.419724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398270, 30.671671, 27.313768>,  <39.680374, 30.893557, 27.137177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398270, 30.671671, 27.313768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173437, -0.738797, -0.651229,
		0.687410, -0.382714, 0.617250,
		-0.705257, -0.554715, 0.441480,
		39.186691, 30.505257, 27.446213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973454, 30.145794, 27.243238>,  <39.680374, 30.893557, 27.137177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973454, 30.145794, 27.243238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574501, 30.140490, 27.214802>,  <39.335129, 30.137308, 27.197741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574501, 30.140490, 27.214802>,  <39.973454, 30.145794, 27.243238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574501, 30.140490, 27.214802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053732, -0.793789, -0.605816,
		-0.048397, -0.608049, 0.792423,
		-0.997382, -0.013259, -0.071089,
		39.275288, 30.136513, 27.193476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739269, 29.376471, 27.088236>,  <39.973454, 30.145794, 27.243238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739269, 29.376471, 27.088236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408466, 29.591072, 27.021036>,  <39.209984, 29.719833, 26.980717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408466, 29.591072, 27.021036>,  <39.739269, 29.376471, 27.088236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408466, 29.591072, 27.021036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192742, -0.551296, -0.811741,
		-0.528115, -0.638937, 0.559333,
		-0.827010, 0.536500, -0.167998,
		39.160366, 29.752024, 26.970636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270405, 28.948349, 26.981380>,  <39.739269, 29.376471, 27.088236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270405, 28.948349, 26.981380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135044, 29.279953, 26.803289>,  <39.053825, 29.478916, 26.696436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135044, 29.279953, 26.803289>,  <39.270405, 28.948349, 26.981380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135044, 29.279953, 26.803289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322076, -0.546605, -0.772975,
		-0.884166, -0.118181, 0.451977,
		-0.338404, 0.829009, -0.445226,
		39.033524, 29.528656, 26.669722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621716, 28.776573, 26.825932>,  <39.270405, 28.948349, 26.981380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621716, 28.776573, 26.825932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750046, 29.076920, 26.595013>,  <38.827045, 29.257128, 26.456461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750046, 29.076920, 26.595013>,  <38.621716, 28.776573, 26.825932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750046, 29.076920, 26.595013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422646, -0.431968, -0.796727,
		-0.847608, 0.499606, 0.178762,
		0.320830, 0.750865, -0.577296,
		38.846294, 29.302179, 26.421824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029125, 28.993038, 26.383341>,  <38.621716, 28.776573, 26.825932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029125, 28.993038, 26.383341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343220, 29.150051, 26.191792>,  <38.531677, 29.244259, 26.076862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343220, 29.150051, 26.191792>,  <38.029125, 28.993038, 26.383341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343220, 29.150051, 26.191792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388100, -0.290603, -0.874602,
		-0.482472, 0.872621, -0.075850,
		0.785238, 0.392534, -0.478872,
		38.578793, 29.267811, 26.048130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737030, 29.160160, 25.779135>,  <38.029125, 28.993038, 26.383341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737030, 29.160160, 25.779135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125122, 29.177238, 25.683777>,  <38.357979, 29.187485, 25.626562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125122, 29.177238, 25.683777>,  <37.737030, 29.160160, 25.779135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125122, 29.177238, 25.683777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220270, -0.253620, -0.941891,
		-0.100676, 0.966361, -0.236665,
		0.970230, 0.042696, -0.238394,
		38.416191, 29.190046, 25.612259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724907, 29.227676, 25.135960>,  <37.737030, 29.160160, 25.779135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724907, 29.227676, 25.135960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120071, 29.166130, 25.128424>,  <38.357170, 29.129202, 25.123903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120071, 29.166130, 25.128424>,  <37.724907, 29.227676, 25.135960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120071, 29.166130, 25.128424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067966, -0.320716, -0.944734,
		0.139320, 0.934595, -0.327297,
		0.987912, -0.153865, -0.018839,
		38.416447, 29.119970, 25.122772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109425, 29.574636, 24.530872>,  <37.724907, 29.227676, 25.135960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109425, 29.574636, 24.530872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343616, 29.266539, 24.632017>,  <38.484131, 29.081680, 24.692705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343616, 29.266539, 24.632017>,  <38.109425, 29.574636, 24.530872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343616, 29.266539, 24.632017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076262, -0.362858, -0.928719,
		0.807094, 0.524459, -0.271185,
		0.585476, -0.770245, 0.252864,
		38.519260, 29.035465, 24.707876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535721, 29.502474, 23.954884>,  <38.109425, 29.574636, 24.530872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535721, 29.502474, 23.954884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567822, 29.149456, 24.140213>,  <38.587082, 28.937645, 24.251411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567822, 29.149456, 24.140213>,  <38.535721, 29.502474, 23.954884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567822, 29.149456, 24.140213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122141, -0.470029, -0.874159,
		0.989263, 0.013565, -0.145517,
		0.080256, -0.882546, 0.463326,
		38.591900, 28.884691, 24.279211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118649, 29.198143, 23.688833>,  <38.535721, 29.502474, 23.954884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118649, 29.198143, 23.688833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902573, 28.893759, 23.832573>,  <38.772926, 28.711128, 23.918818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902573, 28.893759, 23.832573>,  <39.118649, 29.198143, 23.688833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902573, 28.893759, 23.832573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162851, -0.513465, -0.842516,
		0.825637, -0.396597, 0.401291,
		-0.540189, -0.760963, 0.359350,
		38.740517, 28.665470, 23.940378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464405, 28.603889, 23.467146>,  <39.118649, 29.198143, 23.688833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464405, 28.603889, 23.467146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.090370, 28.493773, 23.556427>,  <38.865948, 28.427702, 23.609995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.090370, 28.493773, 23.556427>,  <39.464405, 28.603889, 23.467146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090370, 28.493773, 23.556427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036662, -0.701549, -0.711677,
		0.352507, -0.657300, 0.666105,
		-0.935091, -0.275291, 0.223203,
		38.809841, 28.411184, 23.623388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434235, 27.875410, 23.334494>,  <39.464405, 28.603889, 23.467146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434235, 27.875410, 23.334494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055954, 28.005066, 23.324892>,  <38.828983, 28.082859, 23.319130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055954, 28.005066, 23.324892>,  <39.434235, 27.875410, 23.334494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055954, 28.005066, 23.324892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163019, -0.536919, -0.827733,
		-0.281190, -0.778878, 0.560608,
		-0.945705, 0.324140, -0.024005,
		38.772243, 28.102308, 23.317690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029125, 27.270435, 23.130304>,  <39.434235, 27.875410, 23.334494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029125, 27.270435, 23.130304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777565, 27.573259, 23.059492>,  <38.626629, 27.754953, 23.017006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777565, 27.573259, 23.059492>,  <39.029125, 27.270435, 23.130304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777565, 27.573259, 23.059492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360459, -0.485660, -0.796369,
		-0.688876, -0.437027, 0.578323,
		-0.628903, 0.757061, -0.177029,
		38.588894, 27.800377, 23.006384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401546, 26.921137, 22.893236>,  <39.029125, 27.270435, 23.130304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401546, 26.921137, 22.893236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361053, 27.307446, 22.797705>,  <38.336758, 27.539230, 22.740387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361053, 27.307446, 22.797705>,  <38.401546, 26.921137, 22.893236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361053, 27.307446, 22.797705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524149, -0.255816, -0.812297,
		-0.845589, 0.042951, 0.532104,
		-0.101232, 0.965771, -0.238827,
		38.330685, 27.597178, 22.726057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707424, 27.018036, 22.731916>,  <38.401546, 26.921137, 22.893236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707424, 27.018036, 22.731916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950356, 27.269701, 22.537884>,  <38.096115, 27.420700, 22.421465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950356, 27.269701, 22.537884>,  <37.707424, 27.018036, 22.731916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950356, 27.269701, 22.537884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374286, -0.311977, -0.873258,
		-0.700755, 0.711916, 0.046014,
		0.607332, 0.629163, -0.485080,
		38.132553, 27.458450, 22.392361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998276, 26.973270, 22.507050>,  <37.707424, 27.018036, 22.731916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998276, 26.973270, 22.507050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868797, 27.223803, 22.223377>,  <36.791111, 27.374121, 22.053173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868797, 27.223803, 22.223377>,  <36.998276, 26.973270, 22.507050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868797, 27.223803, 22.223377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538647, 0.494230, 0.682346,
		0.777871, 0.602868, 0.177391,
		-0.323692, 0.626328, -0.709180,
		36.771690, 27.411701, 22.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165466, 27.667345, 22.692030>,  <36.998276, 26.973270, 22.507050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165466, 27.667345, 22.692030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825211, 27.607250, 22.490498>,  <36.621059, 27.571194, 22.369577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825211, 27.607250, 22.490498>,  <37.165466, 27.667345, 22.692030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825211, 27.607250, 22.490498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515596, 0.425841, 0.743519,
		0.102850, 0.892238, -0.439697,
		-0.850637, -0.150235, -0.503832,
		36.570019, 27.562180, 22.339348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820114, 28.331501, 22.492567>,  <37.165466, 27.667345, 22.692030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820114, 28.331501, 22.492567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533539, 28.053410, 22.515827>,  <36.361595, 27.886555, 22.529783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533539, 28.053410, 22.515827>,  <36.820114, 28.331501, 22.492567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533539, 28.053410, 22.515827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479367, 0.551117, 0.682992,
		-0.506881, 0.461444, -0.728108,
		-0.716435, -0.695226, 0.058150,
		36.318607, 27.844841, 22.533272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307968, 28.791094, 22.555832>,  <36.820114, 28.331501, 22.492567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307968, 28.791094, 22.555832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190163, 28.432398, 22.687967>,  <36.119480, 28.217180, 22.767248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190163, 28.432398, 22.687967>,  <36.307968, 28.791094, 22.555832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190163, 28.432398, 22.687967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499926, 0.439168, 0.746462,
		-0.814455, 0.054699, -0.577643,
		-0.294513, -0.896738, 0.330337,
		36.101810, 28.163376, 22.787069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645267, 28.912720, 22.644497>,  <36.307968, 28.791094, 22.555832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645267, 28.912720, 22.644497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711338, 28.591198, 22.873098>,  <35.750980, 28.398285, 23.010260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711338, 28.591198, 22.873098>,  <35.645267, 28.912720, 22.644497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711338, 28.591198, 22.873098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452221, 0.453236, 0.768162,
		-0.876477, -0.385330, -0.288632,
		0.165178, -0.803802, 0.571506,
		35.760891, 28.350058, 23.044550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138645, 28.950476, 23.138794>,  <35.645267, 28.912720, 22.644497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138645, 28.950476, 23.138794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386692, 28.693319, 23.318638>,  <35.535519, 28.539024, 23.426544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386692, 28.693319, 23.318638>,  <35.138645, 28.950476, 23.138794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386692, 28.693319, 23.318638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361200, 0.274779, 0.891084,
		-0.696414, -0.714973, -0.061818,
		0.620114, -0.642892, 0.449608,
		35.572727, 28.500452, 23.453520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731205, 28.535822, 23.783884>,  <35.138645, 28.950476, 23.138794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731205, 28.535822, 23.783884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125443, 28.514553, 23.848104>,  <35.361984, 28.501791, 23.886637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125443, 28.514553, 23.848104>,  <34.731205, 28.535822, 23.783884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125443, 28.514553, 23.848104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135875, 0.316322, 0.938871,
		-0.100711, -0.947160, 0.304540,
		0.985594, -0.053175, 0.160553,
		35.421120, 28.498600, 23.896271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860767, 28.244061, 24.493704>,  <34.731205, 28.535822, 23.783884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860767, 28.244061, 24.493704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184269, 28.469133, 24.425222>,  <35.378368, 28.604177, 24.384134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184269, 28.469133, 24.425222>,  <34.860767, 28.244061, 24.493704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184269, 28.469133, 24.425222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024378, 0.258766, 0.965632,
		0.587646, -0.785130, 0.195560,
		0.808751, 0.562683, -0.171203,
		35.426895, 28.637938, 24.373861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193039, 28.146818, 25.140921>,  <34.860767, 28.244061, 24.493704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193039, 28.146818, 25.140921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411957, 28.444637, 24.988018>,  <35.543308, 28.623329, 24.896276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411957, 28.444637, 24.988018>,  <35.193039, 28.146818, 25.140921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411957, 28.444637, 24.988018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186352, 0.336857, 0.922930,
		0.815930, -0.576348, 0.045611,
		0.547294, 0.744547, -0.382255,
		35.576145, 28.668001, 24.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897293, 28.137611, 25.507549>,  <35.193039, 28.146818, 25.140921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897293, 28.137611, 25.507549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837223, 28.507366, 25.367287>,  <35.801182, 28.729219, 25.283129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837223, 28.507366, 25.367287>,  <35.897293, 28.137611, 25.507549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837223, 28.507366, 25.367287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204932, 0.376079, 0.903641,
		0.967186, 0.063848, -0.245915,
		-0.150179, 0.924385, -0.350654,
		35.792168, 28.784681, 25.262091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508900, 28.483299, 25.646164>,  <35.897293, 28.137611, 25.507549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508900, 28.483299, 25.646164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241379, 28.778677, 25.611740>,  <36.080868, 28.955904, 25.591085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241379, 28.778677, 25.611740>,  <36.508900, 28.483299, 25.646164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241379, 28.778677, 25.611740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397824, 0.453267, 0.797675,
		0.628044, 0.499251, -0.596916,
		-0.668802, 0.738442, -0.086058,
		36.040737, 29.000210, 25.585922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959053, 29.114450, 25.779446>,  <36.508900, 28.483299, 25.646164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959053, 29.114450, 25.779446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582092, 29.231159, 25.844862>,  <36.355915, 29.301184, 25.884111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582092, 29.231159, 25.844862>,  <36.959053, 29.114450, 25.779446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582092, 29.231159, 25.844862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284202, 0.440680, 0.851487,
		0.176369, 0.848923, -0.498220,
		-0.942403, 0.291771, 0.163543,
		36.299370, 29.318691, 25.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014885, 29.780382, 25.964727>,  <36.959053, 29.114450, 25.779446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014885, 29.780382, 25.964727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642262, 29.694754, 26.082281>,  <36.418686, 29.643377, 26.152813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642262, 29.694754, 26.082281>,  <37.014885, 29.780382, 25.964727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642262, 29.694754, 26.082281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127344, 0.564990, 0.815211,
		-0.340553, 0.796844, -0.499063,
		-0.931562, -0.214070, 0.293882,
		36.362793, 29.630533, 26.170446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907982, 30.402967, 26.349297>,  <37.014885, 29.780382, 25.964727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907982, 30.402967, 26.349297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.614597, 30.161940, 26.475122>,  <36.438568, 30.017323, 26.550617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.614597, 30.161940, 26.475122>,  <36.907982, 30.402967, 26.349297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614597, 30.161940, 26.475122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167095, 0.288742, 0.942713,
		-0.658877, 0.744002, -0.111093,
		-0.733458, -0.602569, 0.314565,
		36.394562, 29.981169, 26.569492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478230, 30.758202, 26.851089>,  <36.907982, 30.402967, 26.349297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478230, 30.758202, 26.851089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414772, 30.368963, 26.917923>,  <36.376698, 30.135420, 26.958023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414772, 30.368963, 26.917923>,  <36.478230, 30.758202, 26.851089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414772, 30.368963, 26.917923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013599, 0.171364, 0.985114,
		-0.987242, 0.154013, -0.040419,
		-0.158646, -0.973095, 0.167083,
		36.367180, 30.077034, 26.968048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921753, 30.777529, 27.395693>,  <36.478230, 30.758202, 26.851089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921753, 30.777529, 27.395693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128242, 30.435902, 27.421255>,  <36.252136, 30.230925, 27.436592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128242, 30.435902, 27.421255>,  <35.921753, 30.777529, 27.395693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128242, 30.435902, 27.421255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006920, 0.078776, 0.996868,
		-0.856427, -0.514163, 0.046576,
		0.516221, -0.854067, 0.063908,
		36.283108, 30.179682, 27.440428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678658, 30.531319, 28.030140>,  <35.921753, 30.777529, 27.395693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678658, 30.531319, 28.030140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992962, 30.292734, 27.964642>,  <36.181545, 30.149584, 27.925343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992962, 30.292734, 27.964642>,  <35.678658, 30.531319, 28.030140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992962, 30.292734, 27.964642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134714, -0.093348, 0.986478,
		-0.603682, -0.797194, 0.007003,
		0.785761, -0.596462, -0.163746,
		36.228691, 30.113796, 27.915518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580669, 29.955803, 28.398247>,  <35.678658, 30.531319, 28.030140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580669, 29.955803, 28.398247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968483, 30.043177, 28.353909>,  <36.201172, 30.095600, 28.327307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968483, 30.043177, 28.353909>,  <35.580669, 29.955803, 28.398247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968483, 30.043177, 28.353909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150731, -0.175336, 0.972902,
		0.193081, -0.959971, -0.202919,
		0.969536, 0.218435, -0.110844,
		36.259342, 30.108707, 28.320656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853954, 29.581570, 28.828119>,  <35.580669, 29.955803, 28.398247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853954, 29.581570, 28.828119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159443, 29.833797, 28.772825>,  <36.342735, 29.985134, 28.739649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159443, 29.833797, 28.772825>,  <35.853954, 29.581570, 28.828119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159443, 29.833797, 28.772825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193322, -0.019099, 0.980949,
		0.615918, -0.775896, -0.136490,
		0.763722, 0.630571, -0.138235,
		36.388561, 30.022968, 28.731356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358578, 29.412197, 29.269100>,  <35.853954, 29.581570, 28.828119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358578, 29.412197, 29.269100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482403, 29.782547, 29.182451>,  <36.556698, 30.004757, 29.130463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482403, 29.782547, 29.182451>,  <36.358578, 29.412197, 29.269100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482403, 29.782547, 29.182451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164711, 0.172156, 0.971202,
		0.936504, -0.336329, -0.099208,
		0.309564, 0.925875, -0.216622,
		36.575272, 30.060310, 29.117464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563732, 29.566748, 29.885855>,  <36.358578, 29.412197, 29.269100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563732, 29.566748, 29.885855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573730, 29.917318, 29.693501>,  <36.579727, 30.127661, 29.578087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573730, 29.917318, 29.693501>,  <36.563732, 29.566748, 29.885855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573730, 29.917318, 29.693501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008093, 0.481199, 0.876574,
		0.999655, -0.018016, 0.019120,
		0.024993, 0.876426, -0.480887,
		36.581230, 30.180246, 29.549234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.042305, 33.681095, 31.820566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645069, 33.647312, 31.853178>,  <40.406727, 33.627041, 31.872746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645069, 33.647312, 31.853178>,  <41.042305, 33.681095, 31.820566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645069, 33.647312, 31.853178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003209, 0.713812, 0.700330,
		-0.117346, 0.695226, -0.709148,
		-0.993086, -0.084457, 0.081531,
		40.347145, 33.621975, 31.877638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860619, 34.351585, 31.826525>,  <41.042305, 33.681095, 31.820566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860619, 34.351585, 31.826525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541748, 34.166367, 31.981495>,  <40.350426, 34.055237, 32.074478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541748, 34.166367, 31.981495>,  <40.860619, 34.351585, 31.826525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541748, 34.166367, 31.981495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142689, 0.768021, 0.624327,
		-0.586641, 0.442418, -0.678321,
		-0.797178, -0.463045, 0.387424,
		40.302593, 34.027454, 32.097721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277637, 34.799343, 31.853106>,  <40.860619, 34.351585, 31.826525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277637, 34.799343, 31.853106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214127, 34.509956, 32.121845>,  <40.176022, 34.336323, 32.283089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214127, 34.509956, 32.121845>,  <40.277637, 34.799343, 31.853106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214127, 34.509956, 32.121845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076230, 0.687434, 0.722235,
		-0.984367, 0.063460, -0.164299,
		-0.158778, -0.723469, 0.671850,
		40.166492, 34.292915, 32.323399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014957, 35.187786, 32.320061>,  <40.277637, 34.799343, 31.853106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014957, 35.187786, 32.320061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059372, 34.836182, 32.505539>,  <40.086021, 34.625221, 32.616825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059372, 34.836182, 32.505539>,  <40.014957, 35.187786, 32.320061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059372, 34.836182, 32.505539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099072, 0.454465, 0.885238,
		-0.988865, -0.144236, -0.036621,
		0.111040, -0.879009, 0.463695,
		40.092686, 34.572479, 32.644646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382137, 35.111012, 32.778362>,  <40.014957, 35.187786, 32.320061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382137, 35.111012, 32.778362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683430, 34.900658, 32.936394>,  <39.864204, 34.774445, 33.031212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683430, 34.900658, 32.936394>,  <39.382137, 35.111012, 32.778362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683430, 34.900658, 32.936394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165446, 0.429852, 0.887612,
		-0.636607, -0.733942, 0.236773,
		0.753232, -0.525886, 0.395075,
		39.909401, 34.742893, 33.054916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162724, 34.991360, 33.536385>,  <39.382137, 35.111012, 32.778362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162724, 34.991360, 33.536385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558479, 34.934021, 33.526844>,  <39.795933, 34.899620, 33.521122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558479, 34.934021, 33.526844>,  <39.162724, 34.991360, 33.536385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558479, 34.934021, 33.526844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076454, 0.373921, 0.924304,
		-0.123575, -0.916317, 0.380911,
		0.989386, -0.143343, -0.023849,
		39.855293, 34.891018, 33.519688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327778, 34.546741, 34.141712>,  <39.162724, 34.991360, 33.536385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327778, 34.546741, 34.141712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656219, 34.751534, 34.040787>,  <39.853287, 34.874409, 33.980232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656219, 34.751534, 34.040787>,  <39.327778, 34.546741, 34.141712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656219, 34.751534, 34.040787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173997, 0.196483, 0.964945,
		0.543605, -0.836226, 0.072251,
		0.821108, 0.511977, -0.252310,
		39.902554, 34.905128, 33.965096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856964, 34.296432, 34.653580>,  <39.327778, 34.546741, 34.141712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856964, 34.296432, 34.653580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990963, 34.639584, 34.497723>,  <40.071362, 34.845474, 34.404209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990963, 34.639584, 34.497723>,  <39.856964, 34.296432, 34.653580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990963, 34.639584, 34.497723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277956, 0.305151, 0.910837,
		0.900286, -0.413434, -0.136227,
		0.335001, 0.857879, -0.389639,
		40.091465, 34.896946, 34.380833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594688, 34.419468, 34.764652>,  <39.856964, 34.296432, 34.653580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594688, 34.419468, 34.764652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507679, 34.799854, 34.676693>,  <40.455475, 35.028084, 34.623917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507679, 34.799854, 34.676693>,  <40.594688, 34.419468, 34.764652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507679, 34.799854, 34.676693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032970, 0.232327, 0.972079,
		0.975499, 0.204195, -0.081889,
		-0.217519, 0.950962, -0.219903,
		40.442425, 35.085144, 34.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232506, 34.752590, 35.068420>,  <40.594688, 34.419468, 34.764652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232506, 34.752590, 35.068420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922466, 35.001987, 35.027496>,  <40.736443, 35.151627, 35.002941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922466, 35.001987, 35.027496>,  <41.232506, 34.752590, 35.068420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922466, 35.001987, 35.027496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076698, 0.253571, 0.964271,
		0.627163, 0.739562, -0.244364,
		-0.775102, 0.623498, -0.102308,
		40.689934, 35.189037, 34.996803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425255, 35.302818, 35.413380>,  <41.232506, 34.752590, 35.068420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425255, 35.302818, 35.413380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027729, 35.341759, 35.391991>,  <40.789215, 35.365124, 35.379158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027729, 35.341759, 35.391991>,  <41.425255, 35.302818, 35.413380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027729, 35.341759, 35.391991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031491, 0.214713, 0.976169,
		0.106509, 0.971814, -0.210319,
		-0.993813, 0.097348, -0.053472,
		40.729584, 35.370964, 35.375950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313564, 35.951241, 35.701572>,  <41.425255, 35.302818, 35.413380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313564, 35.951241, 35.701572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.939533, 35.815201, 35.741489>,  <40.715115, 35.733578, 35.765438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.939533, 35.815201, 35.741489>,  <41.313564, 35.951241, 35.701572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939533, 35.815201, 35.741489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008144, 0.302082, 0.953247,
		-0.354347, 0.890548, -0.285241,
		-0.935079, -0.340103, 0.099789,
		40.659008, 35.713169, 35.771427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770824, 36.516861, 35.880257>,  <41.313564, 35.951241, 35.701572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770824, 36.516861, 35.880257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669781, 36.165596, 36.042744>,  <40.609154, 35.954838, 36.140236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669781, 36.165596, 36.042744>,  <40.770824, 36.516861, 35.880257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669781, 36.165596, 36.042744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128104, 0.385787, 0.913651,
		-0.959050, 0.282837, 0.015042,
		-0.252611, -0.878164, 0.406221,
		40.593998, 35.902145, 36.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169060, 36.507595, 36.399677>,  <40.770824, 36.516861, 35.880257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169060, 36.507595, 36.399677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.442642, 36.226158, 36.476791>,  <40.606792, 36.057297, 36.523060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.442642, 36.226158, 36.476791>,  <40.169060, 36.507595, 36.399677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442642, 36.226158, 36.476791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287758, 0.503033, 0.814956,
		-0.670373, -0.501917, 0.546516,
		0.683956, -0.703589, 0.192789,
		40.647827, 36.015083, 36.534630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188080, 37.320797, 36.311264>,  <40.169060, 36.507595, 36.399677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188080, 37.320797, 36.311264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350132, 37.663559, 36.183769>,  <40.447361, 37.869217, 36.107273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350132, 37.663559, 36.183769>,  <40.188080, 37.320797, 36.311264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350132, 37.663559, 36.183769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540580, -0.056640, -0.839384,
		-0.737322, 0.512359, 0.440278,
		0.405128, 0.856902, -0.318733,
		40.471672, 37.920628, 36.088150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641216, 37.744408, 36.093166>,  <40.188080, 37.320797, 36.311264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641216, 37.744408, 36.093166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956963, 37.883835, 35.891022>,  <40.146412, 37.967491, 35.769733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956963, 37.883835, 35.891022>,  <39.641216, 37.744408, 36.093166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956963, 37.883835, 35.891022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547072, 0.025844, -0.836687,
		-0.278584, 0.936926, 0.211094,
		0.789369, 0.348571, -0.505366,
		40.193775, 37.988407, 35.739410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368893, 38.097519, 35.444157>,  <39.641216, 37.744408, 36.093166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368893, 38.097519, 35.444157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753101, 38.046783, 35.345108>,  <39.983627, 38.016342, 35.285679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753101, 38.046783, 35.345108>,  <39.368893, 38.097519, 35.444157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753101, 38.046783, 35.345108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265463, -0.151403, -0.952159,
		0.083278, 0.980301, -0.179096,
		0.960518, -0.126837, -0.247625,
		40.041256, 38.008732, 35.270821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359684, 38.485306, 34.765633>,  <39.368893, 38.097519, 35.444157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359684, 38.485306, 34.765633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672173, 38.238453, 34.803253>,  <39.859665, 38.090340, 34.825825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672173, 38.238453, 34.803253>,  <39.359684, 38.485306, 34.765633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672173, 38.238453, 34.803253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006719, -0.142341, -0.989795,
		0.624220, 0.773879, -0.107053,
		0.781220, -0.617131, 0.094052,
		39.906540, 38.053314, 34.831470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726654, 38.685398, 34.204754>,  <39.359684, 38.485306, 34.765633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726654, 38.685398, 34.204754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.854111, 38.320522, 34.307808>,  <39.930584, 38.101597, 34.369640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.854111, 38.320522, 34.307808>,  <39.726654, 38.685398, 34.204754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854111, 38.320522, 34.307808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016233, -0.266510, -0.963696,
		0.947737, 0.311255, -0.070113,
		0.318641, -0.912191, 0.257633,
		39.949703, 38.046864, 34.385098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140667, 38.549625, 33.642681>,  <39.726654, 38.685398, 34.204754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140667, 38.549625, 33.642681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074852, 38.206146, 33.836823>,  <40.035362, 38.000057, 33.953308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074852, 38.206146, 33.836823>,  <40.140667, 38.549625, 33.642681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074852, 38.206146, 33.836823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001899, -0.492332, -0.870405,
		0.986369, -0.142295, 0.082639,
		-0.164540, -0.858697, 0.485351,
		40.025490, 37.948536, 33.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680752, 38.009655, 33.391346>,  <40.140667, 38.549625, 33.642681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680752, 38.009655, 33.391346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356262, 37.820076, 33.528339>,  <40.161568, 37.706329, 33.610535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356262, 37.820076, 33.528339>,  <40.680752, 38.009655, 33.391346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356262, 37.820076, 33.528339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033886, -0.546610, -0.836701,
		0.583753, -0.690357, 0.427363,
		-0.811224, -0.473945, 0.342479,
		40.112896, 37.677891, 33.631084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787041, 37.428520, 33.113968>,  <40.680752, 38.009655, 33.391346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787041, 37.428520, 33.113968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397957, 37.434231, 33.206596>,  <40.164505, 37.437656, 33.262173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397957, 37.434231, 33.206596>,  <40.787041, 37.428520, 33.113968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397957, 37.434231, 33.206596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208395, -0.492504, -0.844992,
		0.101988, -0.870193, 0.482040,
		-0.972713, 0.014276, 0.231574,
		40.106144, 37.438515, 33.276070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537994, 36.778111, 32.975342>,  <40.787041, 37.428520, 33.113968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537994, 36.778111, 32.975342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216709, 37.016365, 32.971889>,  <40.023937, 37.159317, 32.969818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216709, 37.016365, 32.971889>,  <40.537994, 36.778111, 32.975342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216709, 37.016365, 32.971889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287724, -0.400594, -0.869908,
		-0.521606, -0.696234, 0.493139,
		-0.803208, 0.595637, -0.008629,
		39.975746, 37.195057, 32.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910599, 36.356670, 32.889702>,  <40.537994, 36.778111, 32.975342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910599, 36.356670, 32.889702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812298, 36.719120, 32.751984>,  <39.753315, 36.936588, 32.669353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812298, 36.719120, 32.751984>,  <39.910599, 36.356670, 32.889702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812298, 36.719120, 32.751984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279831, -0.406390, -0.869794,
		-0.928061, -0.117412, 0.353435,
		-0.245756, 0.906124, -0.344299,
		39.738571, 36.990959, 32.648693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502045, 36.150425, 32.426949>,  <39.910599, 36.356670, 32.889702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502045, 36.150425, 32.426949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545033, 36.537563, 32.335972>,  <39.570824, 36.769844, 32.281387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545033, 36.537563, 32.335972>,  <39.502045, 36.150425, 32.426949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545033, 36.537563, 32.335972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187343, -0.204953, -0.960675,
		-0.976398, 0.145852, 0.159293,
		0.107469, 0.967844, -0.227440,
		39.577274, 36.827915, 32.267738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939838, 36.366741, 32.034145>,  <39.502045, 36.150425, 32.426949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939838, 36.366741, 32.034145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196766, 36.660816, 31.947489>,  <39.350922, 36.837261, 31.895494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196766, 36.660816, 31.947489>,  <38.939838, 36.366741, 32.034145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196766, 36.660816, 31.947489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002880, -0.280344, -0.959895,
		-0.766435, 0.617179, -0.177952,
		0.642315, 0.735185, -0.216643,
		39.389462, 36.881371, 31.882496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614845, 36.739098, 31.529240>,  <38.939838, 36.366741, 32.034145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614845, 36.739098, 31.529240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008026, 36.783710, 31.470778>,  <39.243935, 36.810478, 31.435699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008026, 36.783710, 31.470778>,  <38.614845, 36.739098, 31.529240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008026, 36.783710, 31.470778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094101, -0.377728, -0.921122,
		-0.157945, 0.919174, -0.360794,
		0.982954, 0.111536, -0.146155,
		39.302914, 36.817173, 31.426931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792339, 37.356499, 31.032814>,  <38.614845, 36.739098, 31.529240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792339, 37.356499, 31.032814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 37.069725, 31.018673>,  <39.237934, 36.897659, 31.010189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 37.069725, 31.018673>,  <38.792339, 37.356499, 31.032814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070835, 37.069725, 31.018673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449255, -0.396818, -0.800441,
		0.559836, 0.573183, -0.598368,
		0.696243, -0.716935, -0.035352,
		39.279709, 36.854645, 31.008068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286179, 37.559658, 30.487318>,  <38.792339, 37.356499, 31.032814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286179, 37.559658, 30.487318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920582, 37.546616, 30.325550>,  <37.701225, 37.538792, 30.228489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920582, 37.546616, 30.325550>,  <38.286179, 37.559658, 30.487318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920582, 37.546616, 30.325550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403497, 0.177553, 0.897589,
		0.042542, 0.983571, -0.175437,
		-0.913992, -0.032604, -0.404421,
		37.646385, 37.536835, 30.204224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960667, 38.170998, 30.682619>,  <38.286179, 37.559658, 30.487318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960667, 38.170998, 30.682619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640011, 37.951542, 30.587645>,  <37.447617, 37.819870, 30.530661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640011, 37.951542, 30.587645>,  <37.960667, 38.170998, 30.682619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640011, 37.951542, 30.587645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464494, 0.321602, 0.825117,
		-0.376330, 0.771732, -0.512647,
		-0.801637, -0.548637, -0.237437,
		37.399521, 37.786949, 30.516413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317642, 38.664600, 30.777901>,  <37.960667, 38.170998, 30.682619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317642, 38.664600, 30.777901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157310, 38.298302, 30.766960>,  <37.061111, 38.078522, 30.760397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157310, 38.298302, 30.766960>,  <37.317642, 38.664600, 30.777901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157310, 38.298302, 30.766960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651367, 0.263861, 0.711406,
		-0.644250, 0.302965, -0.702249,
		-0.400827, -0.915745, -0.027349,
		37.037064, 38.023579, 30.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600235, 38.728172, 30.727797>,  <37.317642, 38.664600, 30.777901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600235, 38.728172, 30.727797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652908, 38.360939, 30.877344>,  <36.684513, 38.140598, 30.967073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652908, 38.360939, 30.877344>,  <36.600235, 38.728172, 30.727797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652908, 38.360939, 30.877344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751830, 0.153311, 0.641286,
		-0.646073, -0.365533, -0.670056,
		0.131684, -0.918085, 0.373869,
		36.692413, 38.085514, 30.989506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907890, 38.424953, 31.015118>,  <36.600235, 38.728172, 30.727797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907890, 38.424953, 31.015118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180496, 38.215126, 31.219217>,  <36.344059, 38.089230, 31.341677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180496, 38.215126, 31.219217>,  <35.907890, 38.424953, 31.015118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180496, 38.215126, 31.219217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488518, 0.193025, 0.850936,
		-0.544870, -0.829195, -0.124713,
		0.681519, -0.524573, 0.510250,
		36.384953, 38.057755, 31.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531891, 37.943802, 31.403345>,  <35.907890, 38.424953, 31.015118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531891, 37.943802, 31.403345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 37.969303, 31.616232>,  <36.072182, 37.984604, 31.743965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 37.969303, 31.616232>,  <35.531891, 37.943802, 31.403345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869572, 37.969303, 31.616232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536018, 0.104175, 0.837754,
		-0.002037, -0.992514, 0.122116,
		0.844204, 0.063750, 0.532218,
		36.122833, 37.988430, 31.775898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519325, 37.483498, 32.021191>,  <35.531891, 37.943802, 31.403345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519325, 37.483498, 32.021191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.791557, 37.768559, 32.089226>,  <35.954899, 37.939594, 32.130047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.791557, 37.768559, 32.089226>,  <35.519325, 37.483498, 32.021191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791557, 37.768559, 32.089226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398910, 0.165710, 0.901893,
		0.614555, -0.681661, 0.397065,
		0.680583, 0.712656, 0.170083,
		35.995731, 37.982357, 32.140251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789528, 37.369473, 32.695076>,  <35.519325, 37.483498, 32.021191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789528, 37.369473, 32.695076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882797, 37.747044, 32.601578>,  <35.938759, 37.973587, 32.545479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882797, 37.747044, 32.601578>,  <35.789528, 37.369473, 32.695076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882797, 37.747044, 32.601578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317076, 0.301037, 0.899355,
		0.919288, -0.135594, 0.369491,
		0.233178, 0.943923, -0.233746,
		35.952751, 38.030220, 32.531452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937798, 37.572273, 33.328480>,  <35.789528, 37.369473, 32.695076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937798, 37.572273, 33.328480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905689, 37.909550, 33.115849>,  <35.886425, 38.111916, 32.988270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905689, 37.909550, 33.115849>,  <35.937798, 37.572273, 33.328480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905689, 37.909550, 33.115849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292350, 0.489933, 0.821278,
		0.952937, 0.221335, 0.207179,
		-0.080274, 0.843195, -0.531582,
		35.881607, 38.162510, 32.956375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320606, 38.114967, 33.635509>,  <35.937798, 37.572273, 33.328480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320606, 38.114967, 33.635509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027317, 38.299599, 33.435776>,  <35.851345, 38.410378, 33.315937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027317, 38.299599, 33.435776>,  <36.320606, 38.114967, 33.635509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027317, 38.299599, 33.435776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314899, 0.420348, 0.850968,
		0.602682, 0.781186, -0.162857,
		-0.733221, 0.461580, -0.499331,
		35.807350, 38.438072, 33.285976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299042, 38.841942, 33.860878>,  <36.320606, 38.114967, 33.635509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299042, 38.841942, 33.860878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.937256, 38.742199, 33.722454>,  <35.720184, 38.682354, 33.639400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.937256, 38.742199, 33.722454>,  <36.299042, 38.841942, 33.860878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937256, 38.742199, 33.722454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399097, 0.208436, 0.892903,
		-0.150521, 0.945714, -0.288042,
		-0.904469, -0.249358, -0.346058,
		35.665916, 38.667393, 33.618637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831398, 39.362865, 34.125843>,  <36.299042, 38.841942, 33.860878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831398, 39.362865, 34.125843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.571285, 39.075462, 34.027145>,  <35.415218, 38.903019, 33.967926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.571285, 39.075462, 34.027145>,  <35.831398, 39.362865, 34.125843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571285, 39.075462, 34.027145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522741, 0.187520, 0.831612,
		-0.551253, 0.669760, -0.497535,
		-0.650279, -0.718511, -0.246740,
		35.376202, 38.859909, 33.953125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.629910, 36.943680, 26.500677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295063, 36.739086, 26.578264>,  <38.094154, 36.616329, 26.624817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295063, 36.739086, 26.578264>,  <38.629910, 36.943680, 26.500677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295063, 36.739086, 26.578264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134465, 0.536104, 0.833374,
		-0.530244, 0.671547, -0.517557,
		-0.837114, -0.511485, 0.193966,
		38.043930, 36.585640, 26.636454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146370, 37.439236, 26.738089>,  <38.629910, 36.943680, 26.500677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146370, 37.439236, 26.738089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991016, 37.098564, 26.878824>,  <37.897804, 36.894161, 26.963266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991016, 37.098564, 26.878824>,  <38.146370, 37.439236, 26.738089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991016, 37.098564, 26.878824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255008, 0.466239, 0.847108,
		-0.885508, 0.239285, -0.398268,
		-0.388389, -0.851683, 0.351838,
		37.874500, 36.843060, 26.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539196, 37.649242, 27.093252>,  <38.146370, 37.439236, 26.738089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539196, 37.649242, 27.093252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627480, 37.288296, 27.241322>,  <37.680450, 37.071728, 27.330162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627480, 37.288296, 27.241322>,  <37.539196, 37.649242, 27.093252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627480, 37.288296, 27.241322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169100, 0.338382, 0.925691,
		-0.960570, -0.266902, -0.077906,
		0.220707, -0.902364, 0.370172,
		37.693691, 37.017586, 27.352373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989365, 37.536629, 27.569344>,  <37.539196, 37.649242, 27.093252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989365, 37.536629, 27.569344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300014, 37.301441, 27.659813>,  <37.486404, 37.160328, 27.714094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300014, 37.301441, 27.659813>,  <36.989365, 37.536629, 27.569344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300014, 37.301441, 27.659813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202702, 0.106697, 0.973410,
		-0.596463, -0.801819, -0.036319,
		0.776623, -0.587965, 0.226171,
		37.533001, 37.125053, 27.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727539, 37.012459, 28.155024>,  <36.989365, 37.536629, 27.569344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727539, 37.012459, 28.155024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126751, 37.034203, 28.167601>,  <37.366276, 37.047249, 28.175148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126751, 37.034203, 28.167601>,  <36.727539, 37.012459, 28.155024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126751, 37.034203, 28.167601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037751, 0.119186, 0.992154,
		0.050183, -0.991383, 0.121003,
		0.998026, 0.054358, 0.031445,
		37.426159, 37.050510, 28.177034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940849, 36.559982, 28.747456>,  <36.727539, 37.012459, 28.155024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940849, 36.559982, 28.747456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264099, 36.788071, 28.688408>,  <37.458050, 36.924923, 28.652979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264099, 36.788071, 28.688408>,  <36.940849, 36.559982, 28.747456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264099, 36.788071, 28.688408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116678, 0.090686, 0.989021,
		0.577345, -0.816473, 0.006753,
		0.808121, 0.570218, -0.147622,
		37.506535, 36.959137, 28.644121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502934, 36.289845, 29.195768>,  <36.940849, 36.559982, 28.747456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502934, 36.289845, 29.195768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633060, 36.657570, 29.107199>,  <37.711136, 36.878204, 29.054058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633060, 36.657570, 29.107199>,  <37.502934, 36.289845, 29.195768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633060, 36.657570, 29.107199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172730, 0.172447, 0.969756,
		0.929695, -0.353726, -0.102693,
		0.325319, 0.919315, -0.221422,
		37.730656, 36.933365, 29.040771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028553, 36.413868, 29.634840>,  <37.502934, 36.289845, 29.195768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028553, 36.413868, 29.634840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894020, 36.773529, 29.522842>,  <37.813301, 36.989326, 29.455645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894020, 36.773529, 29.522842>,  <38.028553, 36.413868, 29.634840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894020, 36.773529, 29.522842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104603, 0.331144, 0.937764,
		0.935915, 0.286113, -0.205430,
		-0.336334, 0.899157, -0.279994,
		37.793121, 37.043278, 29.438845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334732, 36.883621, 30.077986>,  <38.028553, 36.413868, 29.634840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334732, 36.883621, 30.077986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030632, 37.112366, 29.954697>,  <37.848171, 37.249611, 29.880722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030632, 37.112366, 29.954697>,  <38.334732, 36.883621, 30.077986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030632, 37.112366, 29.954697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298526, 0.113867, 0.947585,
		0.576981, 0.812411, 0.084148,
		-0.760247, 0.571859, -0.308225,
		37.802559, 37.283924, 29.862228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952248, 37.224442, 30.268297>,  <38.334732, 36.883621, 30.077986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952248, 37.224442, 30.268297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110813, 36.908855, 30.456078>,  <39.205952, 36.719501, 30.568745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110813, 36.908855, 30.456078>,  <38.952248, 37.224442, 30.268297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110813, 36.908855, 30.456078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130055, -0.554446, -0.821995,
		0.908813, 0.264796, -0.322400,
		0.396415, -0.788969, 0.469449,
		39.229736, 36.672165, 30.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382549, 37.032356, 29.773592>,  <38.952248, 37.224442, 30.268297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382549, 37.032356, 29.773592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366192, 36.720108, 30.023058>,  <39.356377, 36.532757, 30.172737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366192, 36.720108, 30.023058>,  <39.382549, 37.032356, 29.773592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366192, 36.720108, 30.023058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055481, -0.624997, -0.778653,
		0.997622, 0.002757, 0.068871,
		-0.040898, -0.780622, 0.623663,
		39.353924, 36.485920, 30.210157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026016, 36.600998, 29.695042>,  <39.382549, 37.032356, 29.773592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026016, 36.600998, 29.695042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718014, 36.384235, 29.829760>,  <39.533211, 36.254177, 29.910589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718014, 36.384235, 29.829760>,  <40.026016, 36.600998, 29.695042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718014, 36.384235, 29.829760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113986, -0.636206, -0.763053,
		0.627771, -0.549166, 0.551653,
		-0.770008, -0.541903, 0.336794,
		39.487011, 36.221664, 29.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177284, 35.835751, 29.732681>,  <40.026016, 36.600998, 29.695042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177284, 35.835751, 29.732681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780148, 35.788010, 29.731314>,  <39.541866, 35.759365, 29.730494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780148, 35.788010, 29.731314>,  <40.177284, 35.835751, 29.732681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780148, 35.788010, 29.731314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086576, -0.699885, -0.708989,
		0.082224, -0.704213, 0.705211,
		-0.992846, -0.119351, -0.003421,
		39.482292, 35.752205, 29.730288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988800, 35.177979, 30.081861>,  <40.177284, 35.835751, 29.732681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988800, 35.177979, 30.081861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686512, 35.251373, 29.830393>,  <39.505138, 35.295410, 29.679512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686512, 35.251373, 29.830393>,  <39.988800, 35.177979, 30.081861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686512, 35.251373, 29.830393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291468, -0.765405, -0.573761,
		-0.586463, -0.616838, 0.524950,
		-0.755717, 0.183483, -0.628670,
		39.459797, 35.306419, 29.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642532, 34.532639, 29.933359>,  <39.988800, 35.177979, 30.081861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642532, 34.532639, 29.933359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529224, 34.784306, 29.643831>,  <39.461239, 34.935307, 29.470116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529224, 34.784306, 29.643831>,  <39.642532, 34.532639, 29.933359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529224, 34.784306, 29.643831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096430, -0.732220, -0.674207,
		-0.954181, -0.260778, 0.146744,
		-0.283267, 0.629165, -0.723817,
		39.444244, 34.973057, 29.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252647, 34.148960, 29.552769>,  <39.642532, 34.532639, 29.933359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252647, 34.148960, 29.552769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289139, 34.460045, 29.303984>,  <39.311035, 34.646698, 29.154713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289139, 34.460045, 29.303984>,  <39.252647, 34.148960, 29.552769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289139, 34.460045, 29.303984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205354, -0.625836, -0.752436,
		-0.974427, -0.059079, -0.216800,
		0.091229, 0.777714, -0.621963,
		39.316509, 34.693359, 29.117395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784283, 33.913853, 28.938234>,  <39.252647, 34.148960, 29.552769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784283, 33.913853, 28.938234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037052, 34.192059, 28.801455>,  <39.188713, 34.358982, 28.719387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037052, 34.192059, 28.801455>,  <38.784283, 33.913853, 28.938234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037052, 34.192059, 28.801455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122546, -0.525327, -0.842030,
		-0.765281, 0.490194, -0.417199,
		0.631924, 0.695515, -0.341951,
		39.226631, 34.400715, 28.698870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598827, 34.061050, 28.270746>,  <38.784283, 33.913853, 28.938234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598827, 34.061050, 28.270746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972378, 34.203743, 28.280693>,  <39.196507, 34.289356, 28.286661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972378, 34.203743, 28.280693>,  <38.598827, 34.061050, 28.270746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972378, 34.203743, 28.280693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247399, -0.594323, -0.765228,
		-0.258200, 0.720781, -0.643279,
		0.933877, 0.356728, 0.024866,
		39.252541, 34.310760, 28.288153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687851, 34.397659, 27.717079>,  <38.598827, 34.061050, 28.270746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687851, 34.397659, 27.717079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048225, 34.282116, 27.846617>,  <39.264450, 34.212791, 27.924339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048225, 34.282116, 27.846617>,  <38.687851, 34.397659, 27.717079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048225, 34.282116, 27.846617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155224, -0.482379, -0.862100,
		0.405237, 0.826966, -0.389756,
		0.900938, -0.288855, 0.323843,
		39.318508, 34.195461, 27.943769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016094, 34.403667, 27.101748>,  <38.687851, 34.397659, 27.717079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016094, 34.403667, 27.101748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270466, 34.211346, 27.343216>,  <39.423088, 34.095951, 27.488096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270466, 34.211346, 27.343216>,  <39.016094, 34.403667, 27.101748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270466, 34.211346, 27.343216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313835, -0.553502, -0.771455,
		0.705055, 0.680044, -0.201093,
		0.635929, -0.480808, 0.603671,
		39.461243, 34.067104, 27.524317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622021, 34.451962, 26.762011>,  <39.016094, 34.403667, 27.101748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622021, 34.451962, 26.762011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677383, 34.136593, 27.001755>,  <39.710602, 33.947372, 27.145601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677383, 34.136593, 27.001755>,  <39.622021, 34.451962, 26.762011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677383, 34.136593, 27.001755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378647, -0.517083, -0.767627,
		0.915134, 0.333188, 0.226969,
		0.138403, -0.788423, 0.599361,
		39.718903, 33.900066, 27.181562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384689, 34.148087, 26.725101>,  <39.622021, 34.451962, 26.762011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384689, 34.148087, 26.725101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159180, 33.864449, 26.894499>,  <40.023872, 33.694267, 26.996138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159180, 33.864449, 26.894499>,  <40.384689, 34.148087, 26.725101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159180, 33.864449, 26.894499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369740, -0.675182, -0.638296,
		0.738547, -0.203271, 0.642829,
		-0.563774, -0.709091, 0.423495,
		39.990047, 33.651722, 27.021547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714855, 33.519016, 26.576990>,  <40.384689, 34.148087, 26.725101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714855, 33.519016, 26.576990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348244, 33.397591, 26.681164>,  <40.128277, 33.324738, 26.743668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348244, 33.397591, 26.681164>,  <40.714855, 33.519016, 26.576990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348244, 33.397591, 26.681164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013245, -0.627740, -0.778310,
		0.399750, -0.716793, 0.571321,
		-0.916529, -0.303563, 0.260433,
		40.073284, 33.306522, 26.759295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.793724, 31.521240, 27.161703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073746, 31.806116, 27.140894>,  <34.241760, 31.977041, 27.128408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073746, 31.806116, 27.140894>,  <33.793724, 31.521240, 27.161703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073746, 31.806116, 27.140894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038522, 0.110411, 0.993139,
		0.713048, -0.693249, 0.104729,
		0.700056, 0.712190, -0.052023,
		34.283764, 32.019772, 27.125288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359810, 31.344923, 27.633263>,  <33.793724, 31.521240, 27.161703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359810, 31.344923, 27.633263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.394382, 31.742895, 27.612707>,  <34.415127, 31.981678, 27.600374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.394382, 31.742895, 27.612707>,  <34.359810, 31.344923, 27.633263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394382, 31.742895, 27.612707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048090, 0.047353, 0.997720,
		0.995096, -0.088709, -0.043754,
		0.086435, 0.994932, -0.051386,
		34.420315, 32.041374, 27.597292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922760, 31.549284, 28.047922>,  <34.359810, 31.344923, 27.633263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922760, 31.549284, 28.047922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.724087, 31.888998, 27.976341>,  <34.604885, 32.092827, 27.933392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.724087, 31.888998, 27.976341>,  <34.922760, 31.549284, 28.047922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724087, 31.888998, 27.976341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066647, 0.242894, 0.967761,
		0.865371, 0.468740, -0.177243,
		-0.496680, 0.849285, -0.178953,
		34.575085, 32.143784, 27.922655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321690, 32.062996, 28.221344>,  <34.922760, 31.549284, 28.047922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321690, 32.062996, 28.221344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973846, 32.260410, 28.215561>,  <34.765141, 32.378860, 28.212091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973846, 32.260410, 28.215561>,  <35.321690, 32.062996, 28.221344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973846, 32.260410, 28.215561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136244, 0.267994, 0.953738,
		0.474580, 0.827406, -0.300290,
		-0.869604, 0.493538, -0.014455,
		34.712967, 32.408470, 28.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481159, 32.705597, 28.514196>,  <35.321690, 32.062996, 28.221344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481159, 32.705597, 28.514196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081982, 32.693958, 28.537048>,  <34.842476, 32.686974, 28.550760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081982, 32.693958, 28.537048>,  <35.481159, 32.705597, 28.514196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081982, 32.693958, 28.537048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041879, 0.378840, 0.924514,
		-0.048544, 0.925005, -0.376842,
		-0.997943, -0.029098, 0.057129,
		34.782600, 32.685230, 28.554188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478390, 33.245018, 28.954771>,  <35.481159, 32.705597, 28.514196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478390, 33.245018, 28.954771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150528, 33.017117, 28.978596>,  <34.953812, 32.880375, 28.992891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150528, 33.017117, 28.978596>,  <35.478390, 33.245018, 28.954771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150528, 33.017117, 28.978596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021226, 0.134108, 0.990739,
		-0.572466, 0.810799, -0.122016,
		-0.819654, -0.569754, 0.059563,
		34.904633, 32.846191, 28.996464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930119, 33.592098, 29.310137>,  <35.478390, 33.245018, 28.954771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930119, 33.592098, 29.310137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814751, 33.212589, 29.361738>,  <34.745529, 32.984882, 29.392698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814751, 33.212589, 29.361738>,  <34.930119, 33.592098, 29.310137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814751, 33.212589, 29.361738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089330, 0.160803, 0.982936,
		-0.953327, 0.271976, -0.131133,
		-0.288422, -0.948774, 0.129002,
		34.728226, 32.927956, 29.400438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271740, 33.617085, 29.662806>,  <34.930119, 33.592098, 29.310137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271740, 33.617085, 29.662806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434349, 33.258133, 29.731455>,  <34.531914, 33.042763, 29.772644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434349, 33.258133, 29.731455>,  <34.271740, 33.617085, 29.662806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434349, 33.258133, 29.731455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222144, 0.085124, 0.971291,
		-0.886225, -0.432972, -0.164743,
		0.406518, -0.897379, 0.171621,
		34.556305, 32.988918, 29.782942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805298, 33.308651, 30.152853>,  <34.271740, 33.617085, 29.662806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805298, 33.308651, 30.152853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.138428, 33.089420, 30.183891>,  <34.338306, 32.957882, 30.202515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.138428, 33.089420, 30.183891>,  <33.805298, 33.308651, 30.152853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138428, 33.089420, 30.183891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081292, 0.017559, 0.996536,
		-0.547541, -0.836243, -0.029930,
		0.832821, -0.548077, 0.077594,
		34.388275, 32.924995, 30.207170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644829, 32.829033, 30.601767>,  <33.805298, 33.308651, 30.152853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644829, 32.829033, 30.601767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044666, 32.823246, 30.611593>,  <34.284569, 32.819775, 30.617489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044666, 32.823246, 30.611593>,  <33.644829, 32.829033, 30.601767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044666, 32.823246, 30.611593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024026, 0.036457, 0.999046,
		-0.015345, -0.999230, 0.036095,
		0.999593, -0.014463, 0.024567,
		34.344543, 32.818909, 30.618963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773441, 32.432510, 31.173828>,  <33.644829, 32.829033, 30.601767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773441, 32.432510, 31.173828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.131226, 32.601170, 31.114281>,  <34.345894, 32.702366, 31.078552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.131226, 32.601170, 31.114281>,  <33.773441, 32.432510, 31.173828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131226, 32.601170, 31.114281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143296, 0.045076, 0.988653,
		0.423574, -0.905638, -0.020102,
		0.894456, 0.421648, -0.148868,
		34.399563, 32.727665, 31.069620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391796, 32.102867, 31.629843>,  <33.773441, 32.432510, 31.173828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391796, 32.102867, 31.629843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.455154, 32.490253, 31.552923>,  <34.493172, 32.722687, 31.506771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.455154, 32.490253, 31.552923>,  <34.391796, 32.102867, 31.629843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455154, 32.490253, 31.552923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123075, 0.173874, 0.977047,
		0.979674, -0.178431, -0.091653,
		0.158400, 0.968468, -0.192300,
		34.502674, 32.780792, 31.495234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845840, 32.210434, 32.170753>,  <34.391796, 32.102867, 31.629843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845840, 32.210434, 32.170753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743019, 32.575176, 32.042725>,  <34.681324, 32.794022, 31.965908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743019, 32.575176, 32.042725>,  <34.845840, 32.210434, 32.170753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743019, 32.575176, 32.042725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008167, 0.329136, 0.944247,
		0.966362, 0.245340, -0.077160,
		-0.257058, 0.911854, -0.320068,
		34.665901, 32.848732, 31.946705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216103, 32.638046, 32.539074>,  <34.845840, 32.210434, 32.170753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216103, 32.638046, 32.539074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905766, 32.862461, 32.423622>,  <34.719563, 32.997108, 32.354351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905766, 32.862461, 32.423622>,  <35.216103, 32.638046, 32.539074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905766, 32.862461, 32.423622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036355, 0.416958, 0.908198,
		0.629877, 0.715113, -0.303098,
		-0.775844, 0.561034, -0.288630,
		34.673012, 33.030773, 32.337032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940941, 32.934929, 32.442425>,  <35.216103, 32.638046, 32.539074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940941, 32.934929, 32.442425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208408, 32.691658, 32.613544>,  <36.368889, 32.545696, 32.716217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208408, 32.691658, 32.613544>,  <35.940941, 32.934929, 32.442425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208408, 32.691658, 32.613544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049566, -0.537595, -0.841745,
		0.741910, 0.584050, -0.329326,
		0.668665, -0.608176, 0.427796,
		36.409008, 32.509205, 32.741882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545273, 32.863758, 31.965677>,  <35.940941, 32.934929, 32.442425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545273, 32.863758, 31.965677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567905, 32.541058, 32.200947>,  <36.581486, 32.347439, 32.342110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567905, 32.541058, 32.200947>,  <36.545273, 32.863758, 31.965677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567905, 32.541058, 32.200947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189370, -0.569754, -0.799700,
		0.980274, 0.156631, 0.120536,
		0.056582, -0.806751, 0.588176,
		36.584881, 32.299034, 32.377399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158554, 32.577587, 31.819155>,  <36.545273, 32.863758, 31.965677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158554, 32.577587, 31.819155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919300, 32.296318, 31.972927>,  <36.775749, 32.127556, 32.065189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919300, 32.296318, 31.972927>,  <37.158554, 32.577587, 31.819155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919300, 32.296318, 31.972927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206219, -0.598594, -0.774054,
		0.774411, -0.383710, 0.503045,
		-0.598132, -0.703173, 0.384430,
		36.739861, 32.085365, 32.088257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504742, 32.000896, 31.522758>,  <37.158554, 32.577587, 31.819155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504742, 32.000896, 31.522758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154575, 31.859228, 31.654339>,  <36.944473, 31.774229, 31.733286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154575, 31.859228, 31.654339>,  <37.504742, 32.000896, 31.522758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154575, 31.859228, 31.654339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062835, -0.591385, -0.803937,
		0.479264, -0.724451, 0.495456,
		-0.875419, -0.354166, 0.328950,
		36.891949, 31.752977, 31.753023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705257, 31.300690, 31.683460>,  <37.504742, 32.000896, 31.522758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705257, 31.300690, 31.683460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314610, 31.360378, 31.621555>,  <37.080223, 31.396191, 31.584412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314610, 31.360378, 31.621555>,  <37.705257, 31.300690, 31.683460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314610, 31.360378, 31.621555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069557, -0.461838, -0.884233,
		-0.203421, -0.874322, 0.440660,
		-0.976618, 0.149221, -0.154763,
		37.021626, 31.405144, 31.575127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286125, 30.621420, 31.501625>,  <37.705257, 31.300690, 31.683460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286125, 30.621420, 31.501625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042366, 30.900787, 31.351509>,  <36.896111, 31.068407, 31.261438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042366, 30.900787, 31.351509>,  <37.286125, 30.621420, 31.501625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042366, 30.900787, 31.351509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030516, -0.493649, -0.869126,
		-0.792274, -0.518194, 0.322143,
		-0.609401, 0.698417, -0.375292,
		36.859547, 31.110312, 31.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803329, 30.210249, 31.144526>,  <37.286125, 30.621420, 31.501625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803329, 30.210249, 31.144526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745678, 30.588423, 31.027643>,  <36.711086, 30.815327, 30.957514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745678, 30.588423, 31.027643>,  <36.803329, 30.210249, 31.144526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745678, 30.588423, 31.027643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082330, -0.305723, -0.948554,
		-0.986129, -0.112654, 0.121900,
		-0.144126, 0.945432, -0.292208,
		36.702438, 30.872053, 30.939981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193111, 30.251076, 30.636082>,  <36.803329, 30.210249, 31.144526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193111, 30.251076, 30.636082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418560, 30.575104, 30.571442>,  <36.553829, 30.769520, 30.532658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418560, 30.575104, 30.571442>,  <36.193111, 30.251076, 30.636082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418560, 30.575104, 30.571442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019564, -0.208668, -0.977791,
		-0.825800, 0.547945, -0.133458,
		0.563624, 0.810070, -0.161598,
		36.587646, 30.818125, 30.522963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849594, 30.567621, 30.146351>,  <36.193111, 30.251076, 30.636082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849594, 30.567621, 30.146351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230888, 30.688410, 30.141317>,  <36.459663, 30.760883, 30.138298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230888, 30.688410, 30.141317>,  <35.849594, 30.567621, 30.146351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230888, 30.688410, 30.141317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032333, -0.143282, -0.989154,
		-0.300500, 0.942488, -0.146345,
		0.953233, 0.301973, -0.012582,
		36.516857, 30.779001, 30.137543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867805, 31.020071, 29.585806>,  <35.849594, 30.567621, 30.146351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867805, 31.020071, 29.585806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.241741, 30.910542, 29.676228>,  <36.466103, 30.844824, 29.730480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.241741, 30.910542, 29.676228>,  <35.867805, 31.020071, 29.585806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241741, 30.910542, 29.676228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104664, -0.395845, -0.912333,
		0.339302, 0.876542, -0.341391,
		0.934837, -0.273825, 0.226054,
		36.522194, 30.828394, 29.744043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413933, 31.352453, 29.116386>,  <35.867805, 31.020071, 29.585806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413933, 31.352453, 29.116386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497944, 30.982569, 29.243382>,  <36.548351, 30.760637, 29.319578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497944, 30.982569, 29.243382>,  <36.413933, 31.352453, 29.116386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497944, 30.982569, 29.243382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198759, -0.277565, -0.939922,
		0.957279, 0.260515, 0.125498,
		0.210030, -0.924711, 0.317486,
		36.560951, 30.705156, 29.338627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038193, 31.223560, 28.742819>,  <36.413933, 31.352453, 29.116386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038193, 31.223560, 28.742819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910034, 30.861635, 28.855007>,  <36.833141, 30.644480, 28.922321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910034, 30.861635, 28.855007>,  <37.038193, 31.223560, 28.742819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910034, 30.861635, 28.855007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078407, -0.320395, -0.944034,
		0.944035, -0.280469, 0.173596,
		-0.320392, -0.904812, 0.280473,
		36.813915, 30.590191, 28.939150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457607, 30.699308, 28.454353>,  <37.038193, 31.223560, 28.742819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457607, 30.699308, 28.454353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138763, 30.480042, 28.555653>,  <36.947456, 30.348482, 28.616432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138763, 30.480042, 28.555653>,  <37.457607, 30.699308, 28.454353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138763, 30.480042, 28.555653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064432, -0.494214, -0.866949,
		0.600390, -0.674735, 0.429261,
		-0.797108, -0.548165, 0.253247,
		36.899632, 30.315592, 28.631626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597126, 30.015749, 28.264765>,  <37.457607, 30.699308, 28.454353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597126, 30.015749, 28.264765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197720, 30.033600, 28.277191>,  <36.958076, 30.044310, 28.284647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197720, 30.033600, 28.277191>,  <37.597126, 30.015749, 28.264765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197720, 30.033600, 28.277191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042767, -0.291796, -0.955524,
		-0.033576, -0.955439, 0.293272,
		-0.998521, 0.044625, 0.031064,
		36.898163, 30.046988, 28.286510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273655, 29.730082, 28.012953>,  <37.597126, 30.015749, 28.264765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273655, 29.730082, 28.012953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.548428, 29.965311, 27.842169>,  <38.713291, 30.106449, 27.739698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.548428, 29.965311, 27.842169>,  <38.273655, 29.730082, 28.012953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548428, 29.965311, 27.842169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144841, 0.464935, 0.873417,
		0.712143, -0.661818, 0.234200,
		0.686931, 0.588075, -0.426958,
		38.754509, 30.141733, 27.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851765, 29.790113, 28.462200>,  <38.273655, 29.730082, 28.012953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851765, 29.790113, 28.462200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912212, 30.104738, 28.222706>,  <38.948483, 30.293512, 28.079010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912212, 30.104738, 28.222706>,  <38.851765, 29.790113, 28.462200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912212, 30.104738, 28.222706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300009, 0.540628, 0.785949,
		0.941890, -0.298397, -0.154277,
		0.151119, 0.786563, -0.598734,
		38.957546, 30.340708, 28.043085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335579, 30.125551, 28.803623>,  <38.851765, 29.790113, 28.462200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335579, 30.125551, 28.803623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244812, 30.425072, 28.554529>,  <39.190350, 30.604784, 28.405073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244812, 30.425072, 28.554529>,  <39.335579, 30.125551, 28.803623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244812, 30.425072, 28.554529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267944, 0.662742, 0.699270,
		0.936329, -0.008179, -0.351028,
		-0.226922, 0.748803, -0.622737,
		39.176735, 30.649712, 28.367708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932720, 30.464991, 28.674307>,  <39.335579, 30.125551, 28.803623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932720, 30.464991, 28.674307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.634407, 30.716618, 28.586590>,  <39.455421, 30.867594, 28.533960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.634407, 30.716618, 28.586590>,  <39.932720, 30.464991, 28.674307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634407, 30.716618, 28.586590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318311, 0.625646, 0.712211,
		0.585227, 0.461350, -0.666833,
		-0.745780, 0.629065, -0.219293,
		39.410671, 30.905336, 28.520802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210175, 31.125713, 28.559071>,  <39.932720, 30.464991, 28.674307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210175, 31.125713, 28.559071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825577, 31.188927, 28.649010>,  <39.594818, 31.226854, 28.702972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825577, 31.188927, 28.649010>,  <40.210175, 31.125713, 28.559071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825577, 31.188927, 28.649010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268949, 0.709380, 0.651495,
		-0.056545, 0.686881, -0.724567,
		-0.961493, 0.158033, 0.224847,
		39.537128, 31.236336, 28.716463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999676, 31.879316, 28.452904>,  <40.210175, 31.125713, 28.559071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999676, 31.879316, 28.452904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756306, 31.741556, 28.738897>,  <39.610283, 31.658901, 28.910494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756306, 31.741556, 28.738897>,  <39.999676, 31.879316, 28.452904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756306, 31.741556, 28.738897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313127, 0.723657, 0.615038,
		-0.729223, 0.598088, -0.332453,
		-0.608429, -0.344399, 0.714985,
		39.573776, 31.638237, 28.953392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823978, 32.429203, 28.827963>,  <39.999676, 31.879316, 28.452904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823978, 32.429203, 28.827963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724400, 32.138062, 29.083540>,  <39.664654, 31.963375, 29.236887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724400, 32.138062, 29.083540>,  <39.823978, 32.429203, 28.827963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724400, 32.138062, 29.083540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188649, 0.610638, 0.769112,
		-0.949967, 0.312004, -0.014707,
		-0.248947, -0.727856, 0.638945,
		39.649715, 31.919704, 29.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507622, 32.758427, 29.294720>,  <39.823978, 32.429203, 28.827963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507622, 32.758427, 29.294720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569584, 32.421314, 29.500916>,  <39.606762, 32.219048, 29.624634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569584, 32.421314, 29.500916>,  <39.507622, 32.758427, 29.294720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569584, 32.421314, 29.500916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012989, 0.523481, 0.851938,
		-0.987844, -0.125276, 0.092038,
		0.154908, -0.842777, 0.515490,
		39.616055, 32.168480, 29.655563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074604, 32.737114, 29.826694>,  <39.507622, 32.758427, 29.294720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074604, 32.737114, 29.826694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.370403, 32.495354, 29.945246>,  <39.547882, 32.350296, 30.016376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.370403, 32.495354, 29.945246>,  <39.074604, 32.737114, 29.826694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370403, 32.495354, 29.945246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085509, 0.521055, 0.849229,
		-0.667708, -0.602658, 0.437000,
		0.739496, -0.604404, 0.296380,
		39.592251, 32.314034, 30.034161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913227, 32.729084, 30.465313>,  <39.074604, 32.737114, 29.826694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913227, 32.729084, 30.465313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287605, 32.588341, 30.459723>,  <39.512234, 32.503895, 30.456367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287605, 32.588341, 30.459723>,  <38.913227, 32.729084, 30.465313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287605, 32.588341, 30.459723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165487, 0.404470, 0.899454,
		-0.310827, -0.844156, 0.436791,
		0.935949, -0.351858, -0.013977,
		39.568390, 32.482784, 30.455530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086647, 32.418049, 31.166136>,  <38.913227, 32.729084, 30.465313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086647, 32.418049, 31.166136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428890, 32.487530, 30.971094>,  <39.634235, 32.529217, 30.854069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428890, 32.487530, 30.971094>,  <39.086647, 32.418049, 31.166136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428890, 32.487530, 30.971094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331373, 0.539861, 0.773784,
		0.397644, -0.823637, 0.404352,
		0.855611, 0.173699, -0.487603,
		39.685574, 32.539639, 30.824812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723324, 32.154018, 31.588762>,  <39.086647, 32.418049, 31.166136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723324, 32.154018, 31.588762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886635, 32.422462, 31.341240>,  <39.984623, 32.583527, 31.192726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886635, 32.422462, 31.341240>,  <39.723324, 32.154018, 31.588762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886635, 32.422462, 31.341240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362050, 0.503239, 0.784647,
		0.837989, -0.544396, -0.037511,
		0.408282, 0.671106, -0.618807,
		40.009121, 32.623795, 31.155598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365494, 32.403370, 31.886404>,  <39.723324, 32.154018, 31.588762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365494, 32.403370, 31.886404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269974, 32.695919, 31.630884>,  <40.212662, 32.871449, 31.477571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269974, 32.695919, 31.630884>,  <40.365494, 32.403370, 31.886404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269974, 32.695919, 31.630884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182617, 0.679918, 0.710185,
		0.953743, 0.052937, -0.295926,
		-0.238801, 0.731375, -0.638799,
		40.198334, 32.915333, 31.439245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938553, 32.980389, 31.877119>,  <40.365494, 32.403370, 31.886404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938553, 32.980389, 31.877119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596897, 33.138798, 31.742287>,  <40.391903, 33.233841, 31.661388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596897, 33.138798, 31.742287>,  <40.938553, 32.980389, 31.877119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596897, 33.138798, 31.742287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158910, 0.815910, 0.555912,
		0.495178, 0.421259, -0.759829,
		-0.854135, 0.396019, -0.337079,
		40.340656, 33.257603, 31.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.748901, 32.806011, 26.603582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359303, 32.886219, 26.561407>,  <40.125542, 32.934345, 26.536102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359303, 32.886219, 26.561407>,  <40.748901, 32.806011, 26.603582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359303, 32.886219, 26.561407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066207, -0.697027, -0.713982,
		-0.216661, -0.688437, 0.692180,
		-0.973999, 0.200519, -0.105439,
		40.067104, 32.946373, 26.529776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390003, 32.169880, 26.347334>,  <40.748901, 32.806011, 26.603582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390003, 32.169880, 26.347334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071560, 32.408936, 26.309292>,  <39.880493, 32.552368, 26.286467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071560, 32.408936, 26.309292>,  <40.390003, 32.169880, 26.347334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071560, 32.408936, 26.309292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337603, -0.569040, -0.749812,
		-0.502231, -0.564824, 0.654781,
		-0.796109, 0.597635, -0.095103,
		39.832729, 32.588226, 26.280760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740238, 31.739866, 26.222408>,  <40.390003, 32.169880, 26.347334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740238, 31.739866, 26.222408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676384, 32.100986, 26.062675>,  <39.638069, 32.317657, 25.966835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676384, 32.100986, 26.062675>,  <39.740238, 31.739866, 26.222408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676384, 32.100986, 26.062675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463304, -0.425720, -0.777246,
		-0.871703, 0.060935, 0.486232,
		-0.159637, 0.902801, -0.399333,
		39.628494, 32.371826, 25.942875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022114, 31.763674, 26.060686>,  <39.740238, 31.739866, 26.222408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022114, 31.763674, 26.060686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176750, 32.048462, 25.826200>,  <39.269531, 32.219334, 25.685509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176750, 32.048462, 25.826200>,  <39.022114, 31.763674, 26.060686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176750, 32.048462, 25.826200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464791, -0.398599, -0.790625,
		-0.796567, 0.578113, 0.176825,
		0.386588, 0.711972, -0.586212,
		39.292728, 32.262054, 25.650337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374577, 31.983652, 25.603848>,  <39.022114, 31.763674, 26.060686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374577, 31.983652, 25.603848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696175, 32.140816, 25.425316>,  <38.889133, 32.235115, 25.318197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696175, 32.140816, 25.425316>,  <38.374577, 31.983652, 25.603848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696175, 32.140816, 25.425316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373219, -0.250899, -0.893173,
		-0.462919, 0.884688, -0.055081,
		0.803999, 0.392909, -0.446328,
		38.937374, 32.258690, 25.291418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106453, 32.351257, 25.130356>,  <38.374577, 31.983652, 25.603848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106453, 32.351257, 25.130356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.481350, 32.276283, 25.012745>,  <38.706287, 32.231300, 24.942179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.481350, 32.276283, 25.012745>,  <38.106453, 32.351257, 25.130356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481350, 32.276283, 25.012745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337525, -0.276020, -0.899939,
		0.087520, 0.942700, -0.321960,
		0.937239, -0.187432, -0.294027,
		38.762520, 32.220055, 24.924536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182072, 32.582081, 24.334961>,  <38.106453, 32.351257, 25.130356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182072, 32.582081, 24.334961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477760, 32.323792, 24.411474>,  <38.655174, 32.168816, 24.457382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477760, 32.323792, 24.411474>,  <38.182072, 32.582081, 24.334961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477760, 32.323792, 24.411474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119002, -0.404803, -0.906627,
		0.662866, 0.647434, -0.376082,
		0.739220, -0.645727, 0.191284,
		38.699528, 32.130074, 24.468859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614967, 32.568005, 23.744204>,  <38.182072, 32.582081, 24.334961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614967, 32.568005, 23.744204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.679916, 32.224270, 23.938183>,  <38.718887, 32.018028, 24.054571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.679916, 32.224270, 23.938183>,  <38.614967, 32.568005, 23.744204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679916, 32.224270, 23.938183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068589, -0.500111, -0.863241,
		0.984343, 0.106905, -0.140145,
		0.162373, -0.859337, 0.484949,
		38.728630, 31.966469, 24.083668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277416, 32.285198, 23.370693>,  <38.614967, 32.568005, 23.744204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277416, 32.285198, 23.370693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125015, 31.993156, 23.597597>,  <39.033577, 31.817930, 23.733740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125015, 31.993156, 23.597597>,  <39.277416, 32.285198, 23.370693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125015, 31.993156, 23.597597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025037, -0.605164, -0.795707,
		0.924236, -0.317367, 0.212288,
		-0.381000, -0.730106, 0.567260,
		39.010715, 31.774124, 23.767775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706772, 31.795593, 23.171738>,  <39.277416, 32.285198, 23.370693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706772, 31.795593, 23.171738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.376186, 31.618172, 23.310431>,  <39.177837, 31.511719, 23.393646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.376186, 31.618172, 23.310431>,  <39.706772, 31.795593, 23.171738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376186, 31.618172, 23.310431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060238, -0.542665, -0.837786,
		0.559763, -0.713284, 0.421772,
		-0.826460, -0.443555, 0.346731,
		39.128250, 31.485106, 23.414450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745071, 31.073586, 23.009644>,  <39.706772, 31.795593, 23.171738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745071, 31.073586, 23.009644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.356243, 31.133072, 23.082268>,  <39.122948, 31.168764, 23.125843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.356243, 31.133072, 23.082268>,  <39.745071, 31.073586, 23.009644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356243, 31.133072, 23.082268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231073, -0.471081, -0.851286,
		-0.041072, -0.869463, 0.492288,
		-0.972069, 0.148718, 0.181561,
		39.064621, 31.177687, 23.136736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428368, 30.417540, 23.013773>,  <39.745071, 31.073586, 23.009644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428368, 30.417540, 23.013773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141670, 30.685503, 22.936310>,  <38.969650, 30.846281, 22.889832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141670, 30.685503, 22.936310>,  <39.428368, 30.417540, 23.013773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141670, 30.685503, 22.936310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075474, -0.350603, -0.933478,
		-0.693241, -0.654447, 0.301853,
		-0.716743, 0.669907, -0.193659,
		38.926647, 30.886475, 22.878212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903252, 30.031960, 22.545307>,  <39.428368, 30.417540, 23.013773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903252, 30.031960, 22.545307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833351, 30.425032, 22.520657>,  <38.791412, 30.660875, 22.505867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833351, 30.425032, 22.520657>,  <38.903252, 30.031960, 22.545307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833351, 30.425032, 22.520657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347293, -0.120084, -0.930036,
		-0.921331, -0.141119, 0.362264,
		-0.174748, 0.982683, -0.061627,
		38.780926, 30.719837, 22.502169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447910, 29.485714, 22.543819>,  <38.903252, 30.031960, 22.545307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447910, 29.485714, 22.543819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831352, 29.522562, 22.651583>,  <39.061417, 29.544672, 22.716242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831352, 29.522562, 22.651583>,  <38.447910, 29.485714, 22.543819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831352, 29.522562, 22.651583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037775, -0.978997, 0.200346,
		0.282208, -0.181877, -0.941955,
		0.958609, 0.092121, 0.269410,
		39.118935, 29.550198, 22.732407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303257, 28.769196, 22.218231>,  <38.447910, 29.485714, 22.543819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303257, 28.769196, 22.218231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310562, 28.406681, 22.387138>,  <38.314945, 28.189173, 22.488483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310562, 28.406681, 22.387138>,  <38.303257, 28.769196, 22.218231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310562, 28.406681, 22.387138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128207, 0.420974, 0.897967,
		-0.991579, 0.037742, 0.123879,
		0.018258, -0.906287, 0.422268,
		38.316040, 28.134794, 22.513819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815487, 28.831493, 22.708063>,  <38.303257, 28.769196, 22.218231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815487, 28.831493, 22.708063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049965, 28.520990, 22.800838>,  <38.190651, 28.334688, 22.856504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049965, 28.520990, 22.800838>,  <37.815487, 28.831493, 22.708063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049965, 28.520990, 22.800838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086088, 0.344347, 0.934887,
		-0.805581, -0.528062, 0.268682,
		0.586198, -0.776257, 0.231940,
		38.225826, 28.288113, 22.870420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500923, 28.413250, 23.317297>,  <37.815487, 28.831493, 22.708063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500923, 28.413250, 23.317297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893368, 28.336077, 23.322990>,  <38.128834, 28.289772, 23.326406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893368, 28.336077, 23.322990>,  <37.500923, 28.413250, 23.317297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893368, 28.336077, 23.322990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023095, 0.189849, 0.981542,
		-0.192076, -0.962670, 0.190718,
		0.981108, -0.192935, 0.014232,
		38.187698, 28.278196, 23.327261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635376, 27.971495, 23.937996>,  <37.500923, 28.413250, 23.317297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635376, 27.971495, 23.937996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994110, 28.122070, 23.845053>,  <38.209351, 28.212416, 23.789288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994110, 28.122070, 23.845053>,  <37.635376, 27.971495, 23.937996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994110, 28.122070, 23.845053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089797, 0.359401, 0.928853,
		0.433167, -0.853887, 0.288518,
		0.896829, 0.376441, -0.232358,
		38.263161, 28.235003, 23.775345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132690, 27.664255, 24.516666>,  <37.635376, 27.971495, 23.937996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132690, 27.664255, 24.516666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321362, 27.966297, 24.334528>,  <38.434563, 28.147522, 24.225245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321362, 27.966297, 24.334528>,  <38.132690, 27.664255, 24.516666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321362, 27.966297, 24.334528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110915, 0.461489, 0.880185,
		0.874769, -0.465666, 0.133920,
		0.471676, 0.755104, -0.455346,
		38.462864, 28.192829, 24.197924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771938, 27.759005, 24.869070>,  <38.132690, 27.664255, 24.516666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771938, 27.759005, 24.869070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694260, 28.107649, 24.689034>,  <38.647652, 28.316835, 24.581013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694260, 28.107649, 24.689034>,  <38.771938, 27.759005, 24.869070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694260, 28.107649, 24.689034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323904, 0.490064, 0.809273,
		0.925945, 0.011371, -0.377487,
		-0.194195, 0.871612, -0.450089,
		38.636002, 28.369133, 24.554007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260704, 28.194283, 25.260437>,  <38.771938, 27.759005, 24.869070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260704, 28.194283, 25.260437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023560, 28.452246, 25.067520>,  <38.881271, 28.607023, 24.951771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023560, 28.452246, 25.067520>,  <39.260704, 28.194283, 25.260437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023560, 28.452246, 25.067520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110242, 0.658252, 0.744682,
		0.797720, 0.388328, -0.461351,
		-0.592866, 0.644908, -0.482291,
		38.845699, 28.645718, 24.922832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656712, 28.732161, 25.275723>,  <39.260704, 28.194283, 25.260437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656712, 28.732161, 25.275723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276688, 28.847824, 25.228779>,  <39.048672, 28.917221, 25.200613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276688, 28.847824, 25.228779>,  <39.656712, 28.732161, 25.275723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276688, 28.847824, 25.228779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083713, 0.598432, 0.796788,
		0.300628, 0.747172, -0.592753,
		-0.950061, 0.289158, -0.117357,
		38.991669, 28.934572, 25.193571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619995, 29.463665, 25.322914>,  <39.656712, 28.732161, 25.275723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619995, 29.463665, 25.322914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240883, 29.362728, 25.400919>,  <39.013416, 29.302166, 25.447721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240883, 29.362728, 25.400919>,  <39.619995, 29.463665, 25.322914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240883, 29.362728, 25.400919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038767, 0.515791, 0.855837,
		-0.316549, 0.818708, -0.479076,
		-0.947784, -0.252342, 0.195012,
		38.956547, 29.287025, 25.459423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435902, 30.039532, 25.474319>,  <39.619995, 29.463665, 25.322914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435902, 30.039532, 25.474319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.168354, 29.791500, 25.638325>,  <39.007824, 29.642681, 25.736729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.168354, 29.791500, 25.638325>,  <39.435902, 30.039532, 25.474319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168354, 29.791500, 25.638325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216892, 0.364773, 0.905483,
		-0.711032, 0.694582, -0.109496,
		-0.668873, -0.620078, 0.410015,
		38.967693, 29.605476, 25.761330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942600, 30.441309, 25.795502>,  <39.435902, 30.039532, 25.474319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942600, 30.441309, 25.795502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.921902, 30.082684, 25.971453>,  <38.909481, 29.867508, 26.077024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.921902, 30.082684, 25.971453>,  <38.942600, 30.441309, 25.795502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921902, 30.082684, 25.971453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067897, 0.442608, 0.894141,
		-0.996350, 0.016402, -0.083777,
		-0.051746, -0.896565, 0.439879,
		38.906380, 29.813713, 26.103416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510937, 30.598654, 26.232706>,  <38.942600, 30.441309, 25.795502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510937, 30.598654, 26.232706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641571, 30.251245, 26.381845>,  <38.719952, 30.042801, 26.471329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641571, 30.251245, 26.381845>,  <38.510937, 30.598654, 26.232706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641571, 30.251245, 26.381845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226016, 0.311269, 0.923054,
		-0.917746, -0.385728, -0.094643,
		0.326588, -0.868519, 0.372847,
		38.739548, 29.990690, 26.493700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051811, 30.402142, 26.791222>,  <38.510937, 30.598654, 26.232706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051811, 30.402142, 26.791222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388992, 30.192326, 26.839035>,  <38.591301, 30.066437, 26.867723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388992, 30.192326, 26.839035>,  <38.051811, 30.402142, 26.791222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388992, 30.192326, 26.839035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112132, 0.388611, 0.914554,
		-0.526173, -0.757522, 0.386398,
		0.842952, -0.524541, 0.119534,
		38.641876, 30.034964, 26.874895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924725, 29.971638, 27.402544>,  <38.051811, 30.402142, 26.791222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924725, 29.971638, 27.402544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315262, 30.033390, 27.341991>,  <38.549583, 30.070440, 27.305660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315262, 30.033390, 27.341991>,  <37.924725, 29.971638, 27.402544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315262, 30.033390, 27.341991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077618, 0.403223, 0.911804,
		0.201804, -0.901986, 0.381702,
		0.976346, 0.154379, -0.151383,
		38.608166, 30.079704, 27.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337448, 29.577576, 27.677252>,  <37.924725, 29.971638, 27.402544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337448, 29.577576, 27.677252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976284, 29.726025, 27.763994>,  <36.759586, 29.815094, 27.816040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976284, 29.726025, 27.763994>,  <37.337448, 29.577576, 27.677252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976284, 29.726025, 27.763994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338152, -0.301844, -0.891372,
		-0.265341, -0.878161, 0.398030,
		-0.902911, 0.371112, 0.216861,
		36.705410, 29.837360, 27.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871944, 29.006460, 27.529978>,  <37.337448, 29.577576, 27.677252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871944, 29.006460, 27.529978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686546, 29.360888, 27.527029>,  <36.575310, 29.573544, 27.525261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686546, 29.360888, 27.527029>,  <36.871944, 29.006460, 27.529978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686546, 29.360888, 27.527029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326753, -0.178641, -0.928073,
		-0.823655, -0.427747, 0.372324,
		-0.463493, 0.886070, -0.007371,
		36.547497, 29.626709, 27.524818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303562, 28.845211, 27.208183>,  <36.871944, 29.006460, 27.529978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303562, 28.845211, 27.208183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286495, 29.240023, 27.146275>,  <36.276257, 29.476910, 27.109129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286495, 29.240023, 27.146275>,  <36.303562, 28.845211, 27.208183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286495, 29.240023, 27.146275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373293, -0.159441, -0.913910,
		-0.926732, 0.018780, 0.375253,
		-0.042667, 0.987029, -0.154770,
		36.273693, 29.536131, 27.099844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646786, 28.983664, 26.951580>,  <36.303562, 28.845211, 27.208183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646786, 28.983664, 26.951580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864361, 29.304474, 26.852879>,  <35.994907, 29.496960, 26.793657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864361, 29.304474, 26.852879>,  <35.646786, 28.983664, 26.951580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864361, 29.304474, 26.852879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386755, -0.021347, -0.921935,
		-0.744682, 0.596910, 0.298575,
		0.543939, 0.802024, -0.246754,
		36.027542, 29.545082, 26.778852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213024, 29.453959, 26.730572>,  <35.646786, 28.983664, 26.951580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213024, 29.453959, 26.730572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554977, 29.522997, 26.534861>,  <35.760147, 29.564419, 26.417433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554977, 29.522997, 26.534861>,  <35.213024, 29.453959, 26.730572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554977, 29.522997, 26.534861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495478, -0.008147, -0.868582,
		-0.153898, 0.984960, 0.078552,
		0.854879, 0.172594, -0.489279,
		35.811440, 29.574776, 26.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098473, 29.816046, 26.038094>,  <35.213024, 29.453959, 26.730572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098473, 29.816046, 26.038094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465099, 29.661844, 25.995602>,  <35.685078, 29.569323, 25.970106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465099, 29.661844, 25.995602>,  <35.098473, 29.816046, 26.038094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465099, 29.661844, 25.995602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259271, -0.370685, -0.891836,
		0.304431, 0.844972, -0.439709,
		0.916570, -0.385506, -0.106228,
		35.740070, 29.546192, 25.963734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201153, 29.956533, 25.404638>,  <35.098473, 29.816046, 26.038094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201153, 29.956533, 25.404638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 29.664339, 25.457384>,  <35.630005, 29.489021, 25.489031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 29.664339, 25.457384>,  <35.201153, 29.956533, 25.404638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469185, 29.664339, 25.457384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141977, -0.300488, -0.943159,
		0.728588, 0.613267, -0.305061,
		0.670076, -0.730487, 0.131862,
		35.670208, 29.445192, 25.496943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613766, 30.626066, 25.102093>,  <35.201153, 29.956533, 25.404638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613766, 30.626066, 25.102093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309525, 30.751017, 24.874443>,  <35.126980, 30.825987, 24.737852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309525, 30.751017, 24.874443>,  <35.613766, 30.626066, 25.102093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309525, 30.751017, 24.874443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099230, 0.810395, 0.577419,
		0.641590, 0.495661, -0.585391,
		-0.760602, 0.312378, -0.569126,
		35.081345, 30.844730, 24.703705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812073, 31.278494, 24.913181>,  <35.613766, 30.626066, 25.102093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812073, 31.278494, 24.913181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413883, 31.241415, 24.904753>,  <35.174969, 31.219168, 24.899696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413883, 31.241415, 24.904753>,  <35.812073, 31.278494, 24.913181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413883, 31.241415, 24.904753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083408, 0.745377, 0.661405,
		-0.045604, 0.660167, -0.749733,
		-0.995471, -0.092697, -0.021072,
		35.115242, 31.213606, 24.898432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589325, 31.937431, 25.022861>,  <35.812073, 31.278494, 24.913181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589325, 31.937431, 25.022861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249691, 31.739826, 25.097696>,  <35.045910, 31.621264, 25.142597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249691, 31.739826, 25.097696>,  <35.589325, 31.937431, 25.022861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249691, 31.739826, 25.097696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196696, 0.624365, 0.755962,
		-0.490266, 0.605079, -0.627311,
		-0.849088, -0.494012, 0.187088,
		34.994965, 31.591623, 25.153822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068867, 32.474289, 25.249580>,  <35.589325, 31.937431, 25.022861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068867, 32.474289, 25.249580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921963, 32.127945, 25.385471>,  <34.833820, 31.920139, 25.467005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921963, 32.127945, 25.385471>,  <35.068867, 32.474289, 25.249580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921963, 32.127945, 25.385471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392103, 0.475334, 0.787599,
		-0.843431, 0.156046, -0.514076,
		-0.367259, -0.865856, 0.339725,
		34.811787, 31.868189, 25.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384144, 32.694290, 25.546888>,  <35.068867, 32.474289, 25.249580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384144, 32.694290, 25.546888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464497, 32.338341, 25.710730>,  <34.512707, 32.124771, 25.809034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464497, 32.338341, 25.710730>,  <34.384144, 32.694290, 25.546888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464497, 32.338341, 25.710730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310350, 0.338777, 0.888208,
		-0.929155, -0.305546, -0.208117,
		0.200883, -0.889872, 0.409602,
		34.524761, 32.071381, 25.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792152, 32.540371, 26.071867>,  <34.384144, 32.694290, 25.546888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792152, 32.540371, 26.071867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094872, 32.301521, 26.178228>,  <34.276505, 32.158211, 26.242044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094872, 32.301521, 26.178228>,  <33.792152, 32.540371, 26.071867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094872, 32.301521, 26.178228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173428, 0.208785, 0.962461,
		-0.630222, -0.774503, 0.054450,
		0.756798, -0.597121, 0.265902,
		34.321911, 32.122387, 26.257999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571888, 32.075363, 26.568684>,  <33.792152, 32.540371, 26.071867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571888, 32.075363, 26.568684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968372, 32.082928, 26.621063>,  <34.206261, 32.087467, 26.652491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968372, 32.082928, 26.621063>,  <33.571888, 32.075363, 26.568684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968372, 32.082928, 26.621063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132274, 0.164002, 0.977551,
		-0.002993, -0.986279, 0.165061,
		0.991209, 0.018907, 0.130950,
		34.265736, 32.088600, 26.660349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.814117, 32.615005, 21.289829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082718, 32.366425, 21.451262>,  <37.243877, 32.217274, 21.548120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082718, 32.366425, 21.451262>,  <36.814117, 32.615005, 21.289829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082718, 32.366425, 21.451262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047434, 0.579575, 0.813537,
		-0.739481, -0.527150, 0.418665,
		0.671504, -0.621454, 0.403580,
		37.284168, 32.179989, 21.572336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609219, 32.492989, 21.964552>,  <36.814117, 32.615005, 21.289829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609219, 32.492989, 21.964552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004871, 32.436287, 21.948963>,  <37.242264, 32.402264, 21.939610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004871, 32.436287, 21.948963>,  <36.609219, 32.492989, 21.964552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004871, 32.436287, 21.948963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113970, 0.571898, 0.812369,
		-0.092871, -0.807984, 0.581840,
		0.989134, -0.141758, -0.038973,
		37.301613, 32.393761, 21.937271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853882, 32.388527, 22.655436>,  <36.609219, 32.492989, 21.964552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853882, 32.388527, 22.655436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188797, 32.499969, 22.467253>,  <37.389748, 32.566833, 22.354343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188797, 32.499969, 22.467253>,  <36.853882, 32.388527, 22.655436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188797, 32.499969, 22.467253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184701, 0.665735, 0.722968,
		0.514622, -0.692226, 0.505952,
		0.837287, 0.278606, -0.470457,
		37.439983, 32.583549, 22.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497074, 32.398933, 23.103642>,  <36.853882, 32.388527, 22.655436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497074, 32.398933, 23.103642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572136, 32.669758, 22.819000>,  <37.617172, 32.832253, 22.648216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572136, 32.669758, 22.819000>,  <37.497074, 32.398933, 23.103642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572136, 32.669758, 22.819000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148410, 0.696612, 0.701931,
		0.970958, -0.237330, 0.030241,
		0.187656, 0.677057, -0.711603,
		37.628433, 32.872875, 22.605520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162918, 32.783482, 23.172621>,  <37.497074, 32.398933, 23.103642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162918, 32.783482, 23.172621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980389, 33.065613, 22.955627>,  <37.870872, 33.234890, 22.825432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980389, 33.065613, 22.955627>,  <38.162918, 32.783482, 23.172621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980389, 33.065613, 22.955627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232252, 0.682936, 0.692573,
		0.858971, 0.190041, -0.475450,
		-0.456319, 0.705325, -0.542485,
		37.843494, 33.277210, 22.792881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638481, 33.389099, 23.111530>,  <38.162918, 32.783482, 23.172621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638481, 33.389099, 23.111530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.273426, 33.527954, 23.025188>,  <38.054394, 33.611267, 22.973383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.273426, 33.527954, 23.025188>,  <38.638481, 33.389099, 23.111530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273426, 33.527954, 23.025188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219581, 0.861715, 0.457418,
		0.344792, 0.370059, -0.862656,
		-0.912635, 0.347137, -0.215855,
		37.999634, 33.632095, 22.960432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789852, 34.029106, 22.750057>,  <38.638481, 33.389099, 23.111530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789852, 34.029106, 22.750057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405460, 34.020130, 22.860334>,  <38.174824, 34.014744, 22.926500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405460, 34.020130, 22.860334>,  <38.789852, 34.029106, 22.750057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405460, 34.020130, 22.860334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108079, 0.887003, 0.448938,
		-0.254617, 0.461219, -0.849969,
		-0.960983, -0.022443, 0.275694,
		38.117165, 34.013397, 22.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647831, 34.703033, 22.835926>,  <38.789852, 34.029106, 22.750057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647831, 34.703033, 22.835926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315826, 34.549328, 22.997631>,  <38.116623, 34.457104, 23.094654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315826, 34.549328, 22.997631>,  <38.647831, 34.703033, 22.835926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315826, 34.549328, 22.997631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158441, 0.857391, 0.489671,
		-0.534774, 0.342378, -0.772524,
		-0.830008, -0.384263, 0.404264,
		38.066826, 34.434048, 23.118910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074970, 35.149708, 22.755821>,  <38.647831, 34.703033, 22.835926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074970, 35.149708, 22.755821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981541, 34.925964, 23.073957>,  <37.925484, 34.791718, 23.264839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981541, 34.925964, 23.073957>,  <38.074970, 35.149708, 22.755821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981541, 34.925964, 23.073957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219603, 0.827177, 0.517255,
		-0.947216, -0.053842, -0.316042,
		-0.233573, -0.559356, 0.795339,
		37.911469, 34.758156, 23.312559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408188, 35.246296, 22.944939>,  <38.074970, 35.149708, 22.755821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408188, 35.246296, 22.944939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.579426, 35.123932, 23.285093>,  <37.682167, 35.050514, 23.489185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.579426, 35.123932, 23.285093>,  <37.408188, 35.246296, 22.944939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579426, 35.123932, 23.285093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431903, 0.757303, 0.489848,
		-0.793850, -0.576985, 0.192072,
		0.428092, -0.305909, 0.850386,
		37.707855, 35.032158, 23.540209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906555, 35.248589, 23.641399>,  <37.408188, 35.246296, 22.944939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906555, 35.248589, 23.641399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279057, 35.266457, 23.786045>,  <37.502560, 35.277176, 23.872833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279057, 35.266457, 23.786045>,  <36.906555, 35.248589, 23.641399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279057, 35.266457, 23.786045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329415, 0.527348, 0.783192,
		-0.155716, -0.848474, 0.505810,
		0.931257, 0.044666, 0.361617,
		37.558434, 35.279858, 23.894529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773041, 35.433270, 24.462492>,  <36.906555, 35.248589, 23.641399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773041, 35.433270, 24.462492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171886, 35.437981, 24.432489>,  <37.411194, 35.440807, 24.414488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171886, 35.437981, 24.432489>,  <36.773041, 35.433270, 24.462492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171886, 35.437981, 24.432489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057697, 0.524595, 0.849395,
		0.049354, -0.851271, 0.522401,
		0.997114, 0.011780, -0.075007,
		37.471020, 35.441513, 24.409986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453175, 34.765907, 24.721319>,  <36.773041, 35.433270, 24.462492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453175, 34.765907, 24.721319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104351, 34.944614, 24.801237>,  <35.895058, 35.051838, 24.849188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104351, 34.944614, 24.801237>,  <36.453175, 34.765907, 24.721319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104351, 34.944614, 24.801237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328579, -0.231922, -0.915559,
		-0.362708, -0.864065, 0.349048,
		-0.872054, 0.446771, 0.199794,
		35.842735, 35.078644, 24.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998989, 34.221870, 24.674591>,  <36.453175, 34.765907, 24.721319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998989, 34.221870, 24.674591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815441, 34.568291, 24.595203>,  <35.705311, 34.776142, 24.547571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815441, 34.568291, 24.595203>,  <35.998989, 34.221870, 24.674591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815441, 34.568291, 24.595203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357328, -0.384393, -0.851210,
		-0.813484, -0.319676, 0.485851,
		-0.458869, 0.866054, -0.198469,
		35.677780, 34.828106, 24.535664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315918, 34.029556, 24.427536>,  <35.998989, 34.221870, 24.674591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315918, 34.029556, 24.427536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326134, 34.412632, 24.312868>,  <35.332264, 34.642479, 24.244068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326134, 34.412632, 24.312868>,  <35.315918, 34.029556, 24.427536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326134, 34.412632, 24.312868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329837, -0.262630, -0.906771,
		-0.943693, 0.117711, 0.309174,
		0.025538, 0.957690, -0.286668,
		35.333794, 34.699940, 24.226868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670223, 34.276943, 24.223669>,  <35.315918, 34.029556, 24.427536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670223, 34.276943, 24.223669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950745, 34.484829, 24.028498>,  <35.119057, 34.609562, 23.911394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950745, 34.484829, 24.028498>,  <34.670223, 34.276943, 24.223669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950745, 34.484829, 24.028498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367150, -0.323371, -0.872142,
		-0.611047, 0.790777, -0.035967,
		0.701300, 0.519714, -0.487929,
		35.161133, 34.640743, 23.882118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266960, 34.479988, 23.546562>,  <34.670223, 34.276943, 24.223669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266960, 34.479988, 23.546562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.645592, 34.586006, 23.473095>,  <34.872772, 34.649616, 23.429014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.645592, 34.586006, 23.473095>,  <34.266960, 34.479988, 23.546562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645592, 34.586006, 23.473095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092471, -0.322541, -0.942028,
		-0.308925, 0.908689, -0.280801,
		0.946581, 0.265049, -0.183668,
		34.929565, 34.665520, 23.417994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197613, 34.735950, 22.872110>,  <34.266960, 34.479988, 23.546562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197613, 34.735950, 22.872110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582569, 34.639698, 22.922560>,  <34.813541, 34.581947, 22.952829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582569, 34.639698, 22.922560>,  <34.197613, 34.735950, 22.872110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582569, 34.639698, 22.922560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008861, -0.491789, -0.870669,
		0.271532, 0.836805, -0.475425,
		0.962389, -0.240627, 0.126122,
		34.871284, 34.567509, 22.960396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526546, 34.868309, 22.198992>,  <34.197613, 34.735950, 22.872110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526546, 34.868309, 22.198992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.784840, 34.632442, 22.393030>,  <34.939816, 34.490921, 22.509453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.784840, 34.632442, 22.393030>,  <34.526546, 34.868309, 22.198992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784840, 34.632442, 22.393030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198713, -0.483639, -0.852412,
		0.737255, 0.646824, -0.195126,
		0.645731, -0.589671, 0.485098,
		34.978558, 34.455540, 22.538559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194958, 34.854729, 21.790422>,  <34.526546, 34.868309, 22.198992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194958, 34.854729, 21.790422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.198555, 34.516300, 22.003622>,  <35.200714, 34.313244, 22.131542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.198555, 34.516300, 22.003622>,  <35.194958, 34.854729, 21.790422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198555, 34.516300, 22.003622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167888, -0.524177, -0.834897,
		0.985765, 0.096989, 0.137333,
		0.008989, -0.846069, 0.532998,
		35.201252, 34.262478, 22.163521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761997, 34.600380, 21.583893>,  <35.194958, 34.854729, 21.790422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761997, 34.600380, 21.583893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545647, 34.297001, 21.729332>,  <35.415836, 34.114971, 21.816595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545647, 34.297001, 21.729332>,  <35.761997, 34.600380, 21.583893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545647, 34.297001, 21.729332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266949, -0.564732, -0.780907,
		0.797614, -0.325315, 0.507920,
		-0.540880, -0.758451, 0.363596,
		35.383381, 34.069466, 21.838411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148270, 34.144096, 21.425980>,  <35.761997, 34.600380, 21.583893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148270, 34.144096, 21.425980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787640, 33.980114, 21.481251>,  <35.571262, 33.881725, 21.514414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787640, 33.980114, 21.481251>,  <36.148270, 34.144096, 21.425980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787640, 33.980114, 21.481251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130072, -0.561490, -0.817196,
		0.412601, -0.718793, 0.559551,
		-0.901577, -0.409958, 0.138177,
		35.517166, 33.857128, 21.522703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336121, 33.492321, 21.419033>,  <36.148270, 34.144096, 21.425980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336121, 33.492321, 21.419033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.942516, 33.505287, 21.348988>,  <35.706352, 33.513065, 21.306961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.942516, 33.505287, 21.348988>,  <36.336121, 33.492321, 21.419033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942516, 33.505287, 21.348988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098208, -0.721495, -0.685420,
		-0.148562, -0.691661, 0.706778,
		-0.984015, 0.032416, -0.175114,
		35.647312, 33.515011, 21.296453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108898, 32.788403, 21.258909>,  <36.336121, 33.492321, 21.419033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108898, 32.788403, 21.258909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811226, 33.014042, 21.115808>,  <35.632622, 33.149426, 21.029947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811226, 33.014042, 21.115808>,  <36.108898, 32.788403, 21.258909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811226, 33.014042, 21.115808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122910, -0.642066, -0.756732,
		-0.656582, -0.519168, 0.547143,
		-0.744173, 0.564106, -0.357758,
		35.587971, 33.183273, 21.008484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514122, 32.266605, 21.049536>,  <36.108898, 32.788403, 21.258909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514122, 32.266605, 21.049536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.494324, 32.615444, 20.854809>,  <35.482445, 32.824749, 20.737972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.494324, 32.615444, 20.854809>,  <35.514122, 32.266605, 21.049536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494324, 32.615444, 20.854809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134588, -0.488792, -0.861956,
		-0.989665, 0.022857, 0.141567,
		-0.049495, 0.872101, -0.486816,
		35.479477, 32.877075, 20.708763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925915, 31.700314, 21.306973>,  <35.514122, 32.266605, 21.049536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925915, 31.700314, 21.306973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627083, 31.434471, 21.312252>,  <35.447784, 31.274965, 21.315420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627083, 31.434471, 21.312252>,  <35.925915, 31.700314, 21.306973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627083, 31.434471, 21.312252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069338, -0.058161, 0.995896,
		-0.661111, 0.744927, 0.089533,
		-0.747077, -0.664606, 0.013200,
		35.402958, 31.235088, 21.316212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480797, 31.901882, 21.824905>,  <35.925915, 31.700314, 21.306973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480797, 31.901882, 21.824905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.388062, 31.516235, 21.773169>,  <35.332420, 31.284847, 21.742126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.388062, 31.516235, 21.773169>,  <35.480797, 31.901882, 21.824905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388062, 31.516235, 21.773169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143837, -0.097524, 0.984784,
		-0.962061, 0.246916, -0.116065,
		-0.231840, -0.964117, -0.129340,
		35.318508, 31.227001, 21.734367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837738, 31.833292, 22.156384>,  <35.480797, 31.901882, 21.824905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837738, 31.833292, 22.156384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989384, 31.463167, 22.152994>,  <35.080372, 31.241093, 22.150961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989384, 31.463167, 22.152994>,  <34.837738, 31.833292, 22.156384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989384, 31.463167, 22.152994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245958, -0.109593, 0.963065,
		-0.892065, -0.363024, -0.269136,
		0.379111, -0.925312, -0.008475,
		35.103119, 31.185574, 22.150452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267471, 31.298828, 22.540548>,  <34.837738, 31.833292, 22.156384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267471, 31.298828, 22.540548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621441, 31.112795, 22.530712>,  <34.833824, 31.001175, 22.524811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621441, 31.112795, 22.530712>,  <34.267471, 31.298828, 22.540548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621441, 31.112795, 22.530712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137093, -0.310582, 0.940608,
		-0.445097, -0.828998, -0.338602,
		0.884926, -0.465082, -0.024589,
		34.886917, 30.973270, 22.523336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139816, 30.693897, 22.982365>,  <34.267471, 31.298828, 22.540548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139816, 30.693897, 22.982365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.534546, 30.745121, 22.942812>,  <34.771385, 30.775856, 22.919081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.534546, 30.745121, 22.942812>,  <34.139816, 30.693897, 22.982365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534546, 30.745121, 22.942812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134492, -0.309547, 0.941325,
		0.089939, -0.942221, -0.322692,
		0.986824, 0.128061, -0.098881,
		34.830593, 30.783539, 22.913147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450005, 30.058605, 23.186132>,  <34.139816, 30.693897, 22.982365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450005, 30.058605, 23.186132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.712402, 30.357378, 23.229506>,  <34.869843, 30.536642, 23.255529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.712402, 30.357378, 23.229506>,  <34.450005, 30.058605, 23.186132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712402, 30.357378, 23.229506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023428, -0.163745, 0.986225,
		0.754399, -0.644422, -0.124916,
		0.655999, 0.746933, 0.108431,
		34.909203, 30.581457, 23.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862091, 29.773640, 23.605825>,  <34.450005, 30.058605, 23.186132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862091, 29.773640, 23.605825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.918774, 30.169207, 23.623545>,  <34.952782, 30.406548, 23.634176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.918774, 30.169207, 23.623545>,  <34.862091, 29.773640, 23.605825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918774, 30.169207, 23.623545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049098, -0.051717, 0.997454,
		0.988691, -0.139168, -0.055883,
		0.141704, 0.988917, 0.044299,
		34.961285, 30.465881, 23.636835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374840, 29.925276, 24.041180>,  <34.862091, 29.773640, 23.605825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374840, 29.925276, 24.041180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214828, 30.291227, 24.063004>,  <35.118820, 30.510798, 24.076097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214828, 30.291227, 24.063004>,  <35.374840, 29.925276, 24.041180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214828, 30.291227, 24.063004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114397, -0.009225, 0.993392,
		0.909335, 0.403628, -0.100969,
		-0.400029, 0.914877, 0.054562,
		35.094818, 30.565691, 24.079372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620819, 29.934408, 24.762617>,  <35.374840, 29.925276, 24.041180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620819, 29.934408, 24.762617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723751, 29.576189, 24.907822>,  <35.785511, 29.361258, 24.994944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723751, 29.576189, 24.907822>,  <35.620819, 29.934408, 24.762617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723751, 29.576189, 24.907822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179301, -0.324888, -0.928600,
		0.949542, 0.304049, 0.076967,
		0.257334, -0.895546, 0.363011,
		35.800953, 29.307526, 25.016726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150032, 29.690681, 24.299974>,  <35.620819, 29.934408, 24.762617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150032, 29.690681, 24.299974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982613, 29.379255, 24.487017>,  <35.882160, 29.192400, 24.599241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982613, 29.379255, 24.487017>,  <36.150032, 29.690681, 24.299974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982613, 29.379255, 24.487017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079687, -0.544369, -0.835053,
		0.904692, -0.312248, 0.289886,
		-0.418548, -0.778565, 0.467604,
		35.857048, 29.145685, 24.627298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599991, 29.169510, 24.155924>,  <36.150032, 29.690681, 24.299974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599991, 29.169510, 24.155924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.242840, 29.002535, 24.223476>,  <36.028549, 28.902349, 24.264008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.242840, 29.002535, 24.223476>,  <36.599991, 29.169510, 24.155924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242840, 29.002535, 24.223476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115646, -0.575024, -0.809922,
		0.435205, -0.703627, 0.561699,
		-0.892873, -0.417440, 0.168882,
		35.974979, 28.877302, 24.274141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688152, 28.455599, 24.111465>,  <36.599991, 29.169510, 24.155924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688152, 28.455599, 24.111465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294621, 28.478966, 24.043741>,  <36.058502, 28.492987, 24.003107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294621, 28.478966, 24.043741>,  <36.688152, 28.455599, 24.111465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294621, 28.478966, 24.043741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100546, -0.602162, -0.792018,
		-0.148219, -0.796234, 0.586551,
		-0.983830, 0.058416, -0.169310,
		35.999470, 28.496490, 23.992949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461155, 27.727716, 23.980888>,  <36.688152, 28.455599, 24.111465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461155, 27.727716, 23.980888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199127, 27.980017, 23.814499>,  <36.041912, 28.131397, 23.714664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199127, 27.980017, 23.814499>,  <36.461155, 27.727716, 23.980888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199127, 27.980017, 23.814499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048196, -0.584308, -0.810100,
		-0.754030, -0.510623, 0.413162,
		-0.655069, 0.630752, -0.415976,
		36.002605, 28.169243, 23.689707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931725, 27.296898, 23.791172>,  <36.461155, 27.727716, 23.980888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931725, 27.296898, 23.791172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893513, 27.625774, 23.566715>,  <35.870586, 27.823099, 23.432041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893513, 27.625774, 23.566715>,  <35.931725, 27.296898, 23.791172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893513, 27.625774, 23.566715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191060, -0.538094, -0.820945,
		-0.976919, -0.185634, -0.105685,
		-0.095527, 0.822189, -0.561141,
		35.864853, 27.872431, 23.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544361, 27.026377, 23.252064>,  <35.931725, 27.296898, 23.791172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544361, 27.026377, 23.252064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675030, 27.367090, 23.088238>,  <35.753433, 27.571518, 22.989943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675030, 27.367090, 23.088238>,  <35.544361, 27.026377, 23.252064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675030, 27.367090, 23.088238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256130, -0.496910, -0.829143,
		-0.909769, 0.165959, -0.380497,
		0.326676, 0.851785, -0.409566,
		35.773033, 27.622625, 22.965368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422546, 26.933599, 22.516518>,  <35.544361, 27.026377, 23.252064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422546, 26.933599, 22.516518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696342, 27.224770, 22.532526>,  <35.860619, 27.399471, 22.542131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696342, 27.224770, 22.532526>,  <35.422546, 26.933599, 22.516518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696342, 27.224770, 22.532526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419398, -0.348276, -0.838337,
		-0.596308, 0.590616, -0.543681,
		0.684486, 0.727926, 0.040023,
		35.901688, 27.443148, 22.544533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540432, 27.015209, 21.836504>,  <35.422546, 26.933599, 22.516518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540432, 27.015209, 21.836504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852200, 27.209656, 21.994591>,  <36.039261, 27.326324, 22.089443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852200, 27.209656, 21.994591>,  <35.540432, 27.015209, 21.836504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852200, 27.209656, 21.994591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574588, -0.303220, -0.760201,
		-0.249711, 0.819601, -0.515653,
		0.779418, 0.486119, 0.395216,
		36.086025, 27.355492, 22.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.169598, 34.298409, 36.916759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485863, 34.312042, 36.672237>,  <38.675621, 34.320225, 36.525524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485863, 34.312042, 36.672237>,  <38.169598, 34.298409, 36.916759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485863, 34.312042, 36.672237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580715, -0.274584, -0.766403,
		-0.193979, 0.960959, -0.197308,
		0.790659, 0.034087, -0.611307,
		38.723061, 34.322269, 36.488846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813519, 34.669846, 36.485409>,  <38.169598, 34.298409, 36.916759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813519, 34.669846, 36.485409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131493, 34.484348, 36.328938>,  <38.322277, 34.373051, 36.235054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131493, 34.484348, 36.328938>,  <37.813519, 34.669846, 36.485409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131493, 34.484348, 36.328938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568977, -0.346060, -0.745994,
		0.210574, 0.815591, -0.538952,
		0.794936, -0.463739, -0.391182,
		38.369972, 34.345226, 36.211582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927444, 34.863682, 35.767151>,  <37.813519, 34.669846, 36.485409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927444, 34.863682, 35.767151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119064, 34.514622, 35.805061>,  <38.234035, 34.305183, 35.827808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119064, 34.514622, 35.805061>,  <37.927444, 34.863682, 35.767151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119064, 34.514622, 35.805061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596444, -0.402828, -0.694250,
		0.644020, 0.276053, -0.713466,
		0.479054, -0.872654, 0.094779,
		38.262779, 34.252827, 35.833496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210205, 34.742046, 35.039558>,  <37.927444, 34.863682, 35.767151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210205, 34.742046, 35.039558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166016, 34.384636, 35.213638>,  <38.139503, 34.170189, 35.318089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166016, 34.384636, 35.213638>,  <38.210205, 34.742046, 35.039558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166016, 34.384636, 35.213638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420696, -0.354680, -0.834995,
		0.900450, -0.275332, -0.336722,
		-0.110472, -0.893529, 0.435203,
		38.132874, 34.116577, 35.344200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186474, 34.287766, 34.569160>,  <38.210205, 34.742046, 35.039558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186474, 34.287766, 34.569160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026447, 34.052292, 34.850132>,  <37.930431, 33.911007, 35.018715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026447, 34.052292, 34.850132>,  <38.186474, 34.287766, 34.569160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026447, 34.052292, 34.850132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508879, -0.494747, -0.704463,
		0.762226, -0.639282, -0.101635,
		-0.400067, -0.588680, 0.702426,
		37.906425, 33.875687, 35.060860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291042, 33.476860, 34.437923>,  <38.186474, 34.287766, 34.569160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291042, 33.476860, 34.437923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977077, 33.527355, 34.680565>,  <37.788696, 33.557652, 34.826149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977077, 33.527355, 34.680565>,  <38.291042, 33.476860, 34.437923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977077, 33.527355, 34.680565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606951, -0.353503, -0.711791,
		0.124581, -0.926876, 0.354091,
		-0.784914, 0.126240, 0.606608,
		37.741604, 33.565228, 34.862549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911888, 32.859486, 34.442780>,  <38.291042, 33.476860, 34.437923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911888, 32.859486, 34.442780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647472, 33.125294, 34.582169>,  <37.488823, 33.284779, 34.665802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647472, 33.125294, 34.582169>,  <37.911888, 32.859486, 34.442780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647472, 33.125294, 34.582169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739902, -0.500050, -0.449994,
		-0.124779, -0.555299, 0.822237,
		-0.661040, 0.664524, 0.348472,
		37.449162, 33.324650, 34.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464687, 32.429409, 34.685215>,  <37.911888, 32.859486, 34.442780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464687, 32.429409, 34.685215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284653, 32.780159, 34.617672>,  <37.176632, 32.990608, 34.577145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284653, 32.780159, 34.617672>,  <37.464687, 32.429409, 34.685215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284653, 32.780159, 34.617672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671145, -0.456905, -0.583782,
		-0.589057, -0.149420, 0.794157,
		-0.450083, 0.876876, -0.168861,
		37.149628, 33.043221, 34.567013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768589, 32.344860, 34.786171>,  <37.464687, 32.429409, 34.685215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768589, 32.344860, 34.786171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762554, 32.688229, 34.581081>,  <36.758934, 32.894249, 34.458027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762554, 32.688229, 34.581081>,  <36.768589, 32.344860, 34.786171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762554, 32.688229, 34.581081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700768, -0.374853, -0.606968,
		-0.713230, 0.350147, 0.607206,
		-0.015085, 0.858418, -0.512728,
		36.758030, 32.945755, 34.427261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153973, 32.453369, 34.521935>,  <36.768589, 32.344860, 34.786171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153973, 32.453369, 34.521935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374825, 32.686157, 34.283119>,  <36.507336, 32.825832, 34.139832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374825, 32.686157, 34.283119>,  <36.153973, 32.453369, 34.521935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374825, 32.686157, 34.283119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377306, -0.464156, -0.801374,
		-0.743498, 0.667731, -0.036693,
		0.552134, 0.581975, -0.597038,
		36.540466, 32.860748, 34.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758595, 32.565254, 33.962006>,  <36.153973, 32.453369, 34.521935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758595, 32.565254, 33.962006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122631, 32.651291, 33.820320>,  <36.341053, 32.702915, 33.735310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122631, 32.651291, 33.820320>,  <35.758595, 32.565254, 33.962006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122631, 32.651291, 33.820320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234134, -0.438359, -0.867769,
		-0.341924, 0.872683, -0.348586,
		0.910093, 0.215095, -0.354210,
		36.395660, 32.715820, 33.714058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587975, 32.731869, 33.239246>,  <35.758595, 32.565254, 33.962006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587975, 32.731869, 33.239246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971630, 32.622528, 33.268467>,  <36.201824, 32.556923, 33.285999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971630, 32.622528, 33.268467>,  <35.587975, 32.731869, 33.239246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971630, 32.622528, 33.268467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105479, -0.585018, -0.804132,
		0.262550, 0.763566, -0.589945,
		0.959136, -0.273352, 0.073056,
		36.259373, 32.540524, 33.290382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327644, 33.351616, 32.902267>,  <35.587975, 32.731869, 33.239246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327644, 33.351616, 32.902267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954685, 33.337017, 32.758434>,  <34.730911, 33.328259, 32.672134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954685, 33.337017, 32.758434>,  <35.327644, 33.351616, 32.902267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954685, 33.337017, 32.758434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325404, 0.517771, 0.791218,
		0.157303, 0.854741, -0.494645,
		-0.932399, -0.036498, -0.359583,
		34.674965, 33.326069, 32.650558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155495, 33.960220, 32.977844>,  <35.327644, 33.351616, 32.902267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155495, 33.960220, 32.977844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797859, 33.785896, 32.936535>,  <34.583279, 33.681301, 32.911747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797859, 33.785896, 32.936535>,  <35.155495, 33.960220, 32.977844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797859, 33.785896, 32.936535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381522, 0.620308, 0.685317,
		-0.234606, 0.652140, -0.720884,
		-0.894092, -0.435812, -0.103277,
		34.529633, 33.655151, 32.905552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566261, 34.461517, 33.131721>,  <35.155495, 33.960220, 32.977844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566261, 34.461517, 33.131721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372391, 34.113895, 33.171398>,  <34.256069, 33.905323, 33.195206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372391, 34.113895, 33.171398>,  <34.566261, 34.461517, 33.131721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372391, 34.113895, 33.171398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483828, 0.360837, 0.797312,
		-0.728699, 0.338444, -0.595360,
		-0.484673, -0.869053, 0.099193,
		34.226990, 33.853180, 33.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862553, 34.627705, 33.264935>,  <34.566261, 34.461517, 33.131721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862553, 34.627705, 33.264935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891251, 34.243740, 33.373314>,  <33.908470, 34.013359, 33.438343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891251, 34.243740, 33.373314>,  <33.862553, 34.627705, 33.264935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891251, 34.243740, 33.373314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609588, 0.172817, 0.773651,
		-0.789465, -0.220673, -0.572755,
		0.071742, -0.959915, 0.270953,
		33.912773, 33.955765, 33.454601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185074, 34.525425, 33.497116>,  <33.862553, 34.627705, 33.264935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185074, 34.525425, 33.497116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469646, 34.294609, 33.657558>,  <33.640388, 34.156120, 33.753826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469646, 34.294609, 33.657558>,  <33.185074, 34.525425, 33.497116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469646, 34.294609, 33.657558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398964, 0.138234, 0.906487,
		-0.578531, -0.804929, -0.131876,
		0.711429, -0.577044, 0.401110,
		33.683075, 34.121494, 33.777893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865116, 34.033783, 33.895687>,  <33.185074, 34.525425, 33.497116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865116, 34.033783, 33.895687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239914, 33.990776, 34.028637>,  <33.464794, 33.964970, 34.108406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239914, 33.990776, 34.028637>,  <32.865116, 34.033783, 33.895687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239914, 33.990776, 34.028637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321264, 0.108470, 0.940757,
		-0.137204, -0.988268, 0.067093,
		0.936997, -0.107521, 0.332377,
		33.521011, 33.958519, 34.128349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839821, 33.529972, 34.362038>,  <32.865116, 34.033783, 33.895687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839821, 33.529972, 34.362038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158268, 33.752583, 34.457096>,  <33.349335, 33.886150, 34.514130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158268, 33.752583, 34.457096>,  <32.839821, 33.529972, 34.362038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158268, 33.752583, 34.457096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372017, 0.140371, 0.917551,
		0.477286, -0.818884, 0.318790,
		0.796116, 0.556529, 0.237642,
		33.397102, 33.919540, 34.528389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964901, 33.319775, 35.003105>,  <32.839821, 33.529972, 34.362038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964901, 33.319775, 35.003105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145679, 33.670700, 34.938530>,  <33.254147, 33.881256, 34.899784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145679, 33.670700, 34.938530>,  <32.964901, 33.319775, 35.003105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145679, 33.670700, 34.938530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338198, 0.335985, 0.879054,
		0.825447, -0.342690, 0.448554,
		0.451951, 0.877313, -0.161441,
		33.281265, 33.933895, 34.890099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164749, 33.510422, 35.707161>,  <32.964901, 33.319775, 35.003105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164749, 33.510422, 35.707161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183079, 33.861584, 35.516510>,  <33.194077, 34.072281, 35.402119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183079, 33.861584, 35.516510>,  <33.164749, 33.510422, 35.707161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183079, 33.861584, 35.516510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234360, 0.473262, 0.849175,
		0.971069, 0.072787, 0.227435,
		0.045827, 0.877910, -0.476629,
		33.196827, 34.124958, 35.373520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264874, 33.992794, 36.192566>,  <33.164749, 33.510422, 35.707161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264874, 33.992794, 36.192566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151783, 34.272690, 35.930138>,  <33.083927, 34.440628, 35.772678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151783, 34.272690, 35.930138>,  <33.264874, 33.992794, 36.192566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151783, 34.272690, 35.930138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459838, 0.501385, 0.732914,
		0.841791, 0.508906, 0.180008,
		-0.282731, 0.699735, -0.656075,
		33.066963, 34.482609, 35.733315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428692, 34.698425, 36.460888>,  <33.264874, 33.992794, 36.192566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428692, 34.698425, 36.460888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132729, 34.738979, 36.194878>,  <32.955151, 34.763313, 36.035271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132729, 34.738979, 36.194878>,  <33.428692, 34.698425, 36.460888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132729, 34.738979, 36.194878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603812, 0.335729, 0.722978,
		0.296569, 0.936487, -0.187189,
		-0.739904, 0.101386, -0.665029,
		32.910759, 34.769394, 35.995369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237183, 35.375774, 36.636726>,  <33.428692, 34.698425, 36.460888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237183, 35.375774, 36.636726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943043, 35.273327, 36.385757>,  <32.766556, 35.211861, 36.235176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943043, 35.273327, 36.385757>,  <33.237183, 35.375774, 36.636726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943043, 35.273327, 36.385757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673975, 0.373106, 0.637613,
		0.070793, 0.891739, -0.446980,
		-0.735354, -0.256114, -0.627423,
		32.722435, 35.196491, 36.197529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924511, 35.955421, 36.335850>,  <33.237183, 35.375774, 36.636726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924511, 35.955421, 36.335850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679462, 35.641811, 36.375847>,  <32.532433, 35.453644, 36.399845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679462, 35.641811, 36.375847>,  <32.924511, 35.955421, 36.335850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679462, 35.641811, 36.375847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595537, 0.541070, 0.593784,
		-0.519645, 0.304215, -0.798387,
		-0.612621, -0.784026, 0.099993,
		32.495678, 35.406605, 36.405846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515392, 35.773148, 35.686489>,  <32.924511, 35.955421, 36.335850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515392, 35.773148, 35.686489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776382, 35.470078, 35.692375>,  <32.932976, 35.288235, 35.695908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776382, 35.470078, 35.692375>,  <32.515392, 35.773148, 35.686489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776382, 35.470078, 35.692375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187146, 0.142286, -0.971973,
		0.734341, 0.636938, 0.234633,
		0.652471, -0.757670, 0.014714,
		32.972122, 35.242775, 35.696789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597767, 36.540535, 35.620426>,  <32.515392, 35.773148, 35.686489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597767, 36.540535, 35.620426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307243, 36.282265, 35.714725>,  <32.132931, 36.127304, 35.771305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307243, 36.282265, 35.714725>,  <32.597767, 36.540535, 35.620426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307243, 36.282265, 35.714725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663799, -0.747904, -0.003316,
		0.178458, 0.154081, 0.971809,
		-0.726308, -0.645677, 0.235749,
		32.089352, 36.088562, 35.785450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832302, 37.184555, 35.228554>,  <32.597767, 36.540535, 35.620426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832302, 37.184555, 35.228554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964100, 37.472401, 34.984066>,  <33.043179, 37.645107, 34.837372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964100, 37.472401, 34.984066>,  <32.832302, 37.184555, 35.228554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964100, 37.472401, 34.984066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020884, -0.641657, -0.766707,
		-0.943928, 0.265388, -0.196392,
		0.329491, 0.719614, -0.611221,
		33.062946, 37.688286, 34.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643551, 37.099220, 34.552120>,  <32.832302, 37.184555, 35.228554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643551, 37.099220, 34.552120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956821, 37.328938, 34.456772>,  <33.144783, 37.466766, 34.399563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956821, 37.328938, 34.456772>,  <32.643551, 37.099220, 34.552120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956821, 37.328938, 34.456772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036728, -0.425413, -0.904254,
		-0.620711, 0.699437, -0.354267,
		0.783179, 0.574291, -0.238370,
		33.191776, 37.501225, 34.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534485, 37.360947, 33.851814>,  <32.643551, 37.099220, 34.552120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534485, 37.360947, 33.851814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919788, 37.316647, 33.949688>,  <33.150970, 37.290066, 34.008411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919788, 37.316647, 33.949688>,  <32.534485, 37.360947, 33.851814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919788, 37.316647, 33.949688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138126, -0.577064, -0.804934,
		0.230344, 0.809156, -0.540563,
		0.963256, -0.110746, 0.244689,
		33.208767, 37.283424, 34.023094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920910, 37.649868, 33.278381>,  <32.534485, 37.360947, 33.851814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920910, 37.649868, 33.278381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147221, 37.387699, 33.478508>,  <33.283009, 37.230396, 33.598583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147221, 37.387699, 33.478508>,  <32.920910, 37.649868, 33.278381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147221, 37.387699, 33.478508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240858, -0.448936, -0.860491,
		0.788594, 0.607353, -0.096135,
		0.565780, -0.655422, 0.500314,
		33.316956, 37.191071, 33.628601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514137, 37.709339, 32.930214>,  <32.920910, 37.649868, 33.278381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514137, 37.709339, 32.930214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522484, 37.367092, 33.137089>,  <33.527493, 37.161743, 33.261215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522484, 37.367092, 33.137089>,  <33.514137, 37.709339, 32.930214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522484, 37.367092, 33.137089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287262, -0.490357, -0.822819,
		0.957625, 0.165739, 0.235553,
		0.020868, -0.855617, 0.517188,
		33.528744, 37.110409, 33.292244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146099, 37.317825, 32.694317>,  <33.514137, 37.709339, 32.930214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146099, 37.317825, 32.694317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883354, 37.045132, 32.823166>,  <33.725708, 36.881516, 32.900475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883354, 37.045132, 32.823166>,  <34.146099, 37.317825, 32.694317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883354, 37.045132, 32.823166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195726, -0.566738, -0.800312,
		0.728163, -0.462648, 0.505703,
		-0.656864, -0.681737, 0.322125,
		33.686295, 36.840611, 32.919804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544960, 36.714306, 32.770241>,  <34.146099, 37.317825, 32.694317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544960, 36.714306, 32.770241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159859, 36.618053, 32.720932>,  <33.928799, 36.560303, 32.691345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159859, 36.618053, 32.720932>,  <34.544960, 36.714306, 32.770241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159859, 36.618053, 32.720932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223521, -0.451864, -0.863630,
		0.152116, -0.859019, 0.488822,
		-0.962756, -0.240634, -0.123273,
		33.871033, 36.545864, 32.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566868, 36.043251, 32.564240>,  <34.544960, 36.714306, 32.770241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566868, 36.043251, 32.564240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197433, 36.160412, 32.465286>,  <33.975773, 36.230709, 32.405914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197433, 36.160412, 32.465286>,  <34.566868, 36.043251, 32.564240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197433, 36.160412, 32.465286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076701, -0.491042, -0.867753,
		-0.375640, -0.820419, 0.431054,
		-0.923586, 0.292900, -0.247382,
		33.920357, 36.248283, 32.391071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271198, 35.442078, 32.327747>,  <34.566868, 36.043251, 32.564240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271198, 35.442078, 32.327747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076855, 35.758545, 32.179153>,  <33.960251, 35.948425, 32.089996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076855, 35.758545, 32.179153>,  <34.271198, 35.442078, 32.327747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076855, 35.758545, 32.179153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134500, -0.352278, -0.926180,
		-0.863628, -0.499955, 0.064745,
		-0.485857, 0.791167, -0.371481,
		33.931099, 35.995895, 32.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755268, 35.124973, 31.922819>,  <34.271198, 35.442078, 32.327747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755268, 35.124973, 31.922819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779991, 35.501179, 31.789181>,  <33.794827, 35.726902, 31.708998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779991, 35.501179, 31.789181>,  <33.755268, 35.124973, 31.922819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779991, 35.501179, 31.789181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097380, -0.327457, -0.939835,
		-0.993326, 0.090626, 0.071347,
		0.061811, 0.940510, -0.334097,
		33.798534, 35.783333, 31.688951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470818, 35.132965, 31.327618>,  <33.755268, 35.124973, 31.922819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470818, 35.132965, 31.327618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652012, 35.485531, 31.274090>,  <33.760731, 35.697071, 31.241974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652012, 35.485531, 31.274090>,  <33.470818, 35.132965, 31.327618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652012, 35.485531, 31.274090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065739, -0.116670, -0.990993,
		-0.889089, 0.457706, 0.005093,
		0.452989, 0.881416, -0.133819,
		33.787907, 35.749954, 31.233944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234188, 35.356922, 30.591925>,  <33.470818, 35.132965, 31.327618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234188, 35.356922, 30.591925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571911, 35.545616, 30.693605>,  <33.774544, 35.658833, 30.754614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571911, 35.545616, 30.693605>,  <33.234188, 35.356922, 30.591925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571911, 35.545616, 30.693605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195479, 0.170551, -0.965764,
		-0.498936, 0.865090, 0.051784,
		0.844305, 0.471732, 0.254201,
		33.825203, 35.687134, 30.769865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170540, 35.865150, 30.241920>,  <33.234188, 35.356922, 30.591925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170540, 35.865150, 30.241920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558617, 35.827888, 30.331411>,  <33.791462, 35.805531, 30.385107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558617, 35.827888, 30.331411>,  <33.170540, 35.865150, 30.241920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558617, 35.827888, 30.331411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229643, 0.058403, -0.971521,
		0.077435, 0.993937, 0.078055,
		0.970190, -0.093154, 0.223728,
		33.849674, 35.799942, 30.398529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492664, 36.209583, 29.703566>,  <33.170540, 35.865150, 30.241920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492664, 36.209583, 29.703566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802650, 36.023674, 29.874872>,  <33.988644, 35.912128, 29.977655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802650, 36.023674, 29.874872>,  <33.492664, 36.209583, 29.703566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802650, 36.023674, 29.874872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445543, -0.078836, -0.891783,
		0.448242, 0.881912, 0.145983,
		0.774965, -0.464776, 0.428267,
		34.035141, 35.884243, 30.003353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094345, 36.542534, 29.453625>,  <33.492664, 36.209583, 29.703566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094345, 36.542534, 29.453625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155876, 36.160931, 29.556545>,  <34.192795, 35.931969, 29.618298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155876, 36.160931, 29.556545>,  <34.094345, 36.542534, 29.453625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155876, 36.160931, 29.556545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558410, -0.130894, -0.819174,
		0.815178, 0.269693, 0.512593,
		0.153830, -0.954009, 0.257301,
		34.202026, 35.874729, 29.633736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743282, 36.513012, 29.301390>,  <34.094345, 36.542534, 29.453625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743282, 36.513012, 29.301390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647827, 36.126896, 29.343836>,  <34.590553, 35.895226, 29.369303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647827, 36.126896, 29.343836>,  <34.743282, 36.513012, 29.301390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647827, 36.126896, 29.343836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590925, -0.231055, -0.772930,
		0.770623, -0.121744, 0.625554,
		-0.238637, -0.965294, 0.106115,
		34.576237, 35.837307, 29.375669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413765, 36.088814, 29.266397>,  <34.743282, 36.513012, 29.301390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413765, 36.088814, 29.266397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097637, 35.872211, 29.151731>,  <34.907963, 35.742252, 29.082932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097637, 35.872211, 29.151731>,  <35.413765, 36.088814, 29.266397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097637, 35.872211, 29.151731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406795, -0.113876, -0.906394,
		0.458170, -0.832952, 0.310278,
		-0.790315, -0.541502, -0.286666,
		34.860542, 35.709763, 29.065731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658852, 35.357708, 29.077950>,  <35.413765, 36.088814, 29.266397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658852, 35.357708, 29.077950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316132, 35.442211, 28.889797>,  <35.110500, 35.492912, 28.776905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316132, 35.442211, 28.889797>,  <35.658852, 35.357708, 29.077950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316132, 35.442211, 28.889797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429940, -0.210938, -0.877871,
		-0.284676, -0.954398, 0.089906,
		-0.856803, 0.211255, -0.470383,
		35.059090, 35.505589, 28.748682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556866, 34.801197, 28.593067>,  <35.658852, 35.357708, 29.077950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556866, 34.801197, 28.593067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297985, 35.084160, 28.479437>,  <35.142658, 35.253937, 28.411259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297985, 35.084160, 28.479437>,  <35.556866, 34.801197, 28.593067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297985, 35.084160, 28.479437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286786, -0.119332, -0.950533,
		-0.706317, -0.696656, -0.125644,
		-0.647201, 0.707411, -0.284078,
		35.103825, 35.296383, 28.394213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242905, 34.524689, 28.113928>,  <35.556866, 34.801197, 28.593067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242905, 34.524689, 28.113928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186916, 34.916561, 28.056465>,  <35.153324, 35.151684, 28.021988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186916, 34.916561, 28.056465>,  <35.242905, 34.524689, 28.113928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186916, 34.916561, 28.056465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306316, -0.095127, -0.947165,
		-0.941584, -0.176577, -0.286777,
		-0.139968, 0.979679, -0.143659,
		35.144924, 35.210464, 28.013367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755589, 34.581024, 27.588091>,  <35.242905, 34.524689, 28.113928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755589, 34.581024, 27.588091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952282, 34.929317, 27.586037>,  <35.070297, 35.138294, 27.584805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952282, 34.929317, 27.586037>,  <34.755589, 34.581024, 27.588091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952282, 34.929317, 27.586037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332961, -0.193479, -0.922878,
		-0.804572, 0.452099, -0.385059,
		0.491732, 0.870731, -0.005136,
		35.099800, 35.190536, 27.584496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587620, 34.812775, 26.938400>,  <34.755589, 34.581024, 27.588091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587620, 34.812775, 26.938400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881424, 35.067638, 27.031803>,  <35.057705, 35.220558, 27.087845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881424, 35.067638, 27.031803>,  <34.587620, 34.812775, 26.938400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881424, 35.067638, 27.031803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208647, 0.115384, -0.971161,
		-0.645725, 0.762047, -0.048190,
		0.734510, 0.637158, 0.233505,
		35.101776, 35.258785, 27.101854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530056, 35.502914, 26.619484>,  <34.587620, 34.812775, 26.938400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530056, 35.502914, 26.619484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924564, 35.459400, 26.669167>,  <35.161270, 35.433292, 26.698977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924564, 35.459400, 26.669167>,  <34.530056, 35.502914, 26.619484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924564, 35.459400, 26.669167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154892, 0.349052, -0.924214,
		0.057183, 0.930768, 0.361111,
		0.986275, -0.108783, 0.124209,
		35.220448, 35.426765, 26.706429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836266, 36.135925, 26.241905>,  <34.530056, 35.502914, 26.619484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836266, 36.135925, 26.241905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124832, 35.867664, 26.310947>,  <35.297970, 35.706707, 26.352373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124832, 35.867664, 26.310947>,  <34.836266, 36.135925, 26.241905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124832, 35.867664, 26.310947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253988, 0.024364, -0.966900,
		0.644247, 0.741373, 0.187914,
		0.721412, -0.670651, 0.172603,
		35.341255, 35.666470, 26.362728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462128, 36.396198, 25.875780>,  <34.836266, 36.135925, 26.241905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462128, 36.396198, 25.875780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495544, 36.001999, 25.934851>,  <35.515594, 35.765480, 25.970293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495544, 36.001999, 25.934851>,  <35.462128, 36.396198, 25.875780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495544, 36.001999, 25.934851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235031, -0.124526, -0.963978,
		0.968391, 0.115242, 0.221220,
		0.083543, -0.985501, 0.147675,
		35.520607, 35.706348, 25.979153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098244, 36.270882, 25.566679>,  <35.462128, 36.396198, 25.875780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098244, 36.270882, 25.566679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900974, 35.923920, 25.593182>,  <35.782612, 35.715744, 25.609083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900974, 35.923920, 25.593182>,  <36.098244, 36.270882, 25.566679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900974, 35.923920, 25.593182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300019, -0.241082, -0.922967,
		0.816558, -0.435305, 0.379133,
		-0.493175, -0.867404, 0.066258,
		35.753021, 35.663700, 25.613058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498234, 35.792976, 25.216801>,  <36.098244, 36.270882, 25.566679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498234, 35.792976, 25.216801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128399, 35.641331, 25.231880>,  <35.906498, 35.550343, 25.240929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128399, 35.641331, 25.231880>,  <36.498234, 35.792976, 25.216801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128399, 35.641331, 25.231880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030277, -0.171761, -0.984673,
		0.379777, -0.909270, 0.170285,
		-0.924582, -0.379112, 0.037701,
		35.851025, 35.527596, 25.243191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010239, 35.174747, 25.096958>,  <36.498234, 35.792976, 25.216801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010239, 35.174747, 25.096958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321129, 35.380299, 24.951719>,  <37.507664, 35.503632, 24.864576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321129, 35.380299, 24.951719>,  <37.010239, 35.174747, 25.096958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321129, 35.380299, 24.951719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156159, 0.401474, 0.902459,
		0.609532, -0.758119, 0.231790,
		0.777229, 0.513882, -0.363099,
		37.554298, 35.534462, 24.842791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558456, 35.049744, 25.526506>,  <37.010239, 35.174747, 25.096958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558456, 35.049744, 25.526506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709389, 35.375458, 25.350071>,  <37.799950, 35.570885, 25.244209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709389, 35.375458, 25.350071>,  <37.558456, 35.049744, 25.526506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709389, 35.375458, 25.350071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225363, 0.381237, 0.896588,
		0.898237, -0.437719, -0.039656,
		0.377335, 0.814285, -0.441087,
		37.822590, 35.619743, 25.217745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250355, 35.069542, 25.801622>,  <37.558456, 35.049744, 25.526506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250355, 35.069542, 25.801622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107182, 35.421932, 25.677837>,  <38.021278, 35.633366, 25.603565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107182, 35.421932, 25.677837>,  <38.250355, 35.069542, 25.801622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107182, 35.421932, 25.677837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120831, 0.372335, 0.920199,
		0.925896, 0.291977, -0.239720,
		-0.357933, 0.880974, -0.309464,
		37.999802, 35.686226, 25.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690399, 35.571377, 25.936371>,  <38.250355, 35.069542, 25.801622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690399, 35.571377, 25.936371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363075, 35.798744, 25.902258>,  <38.166679, 35.935165, 25.881790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363075, 35.798744, 25.902258>,  <38.690399, 35.571377, 25.936371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363075, 35.798744, 25.902258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151644, 0.356627, 0.921857,
		0.554411, 0.741433, -0.378029,
		-0.818311, 0.568414, -0.085284,
		38.117580, 35.969269, 25.876673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761127, 36.145031, 26.498491>,  <38.690399, 35.571377, 25.936371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761127, 36.145031, 26.498491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372631, 36.193386, 26.416441>,  <38.139534, 36.222401, 26.367210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372631, 36.193386, 26.416441>,  <38.761127, 36.145031, 26.498491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372631, 36.193386, 26.416441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115781, 0.513003, 0.850543,
		0.208053, 0.849832, -0.484252,
		-0.971241, 0.120891, -0.205126,
		38.081261, 36.229652, 26.354902>
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
