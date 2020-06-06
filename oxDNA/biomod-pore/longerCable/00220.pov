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
	<24.250639, 35.483601, 34.855858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161850, 35.096687, 34.806721>,  <24.108578, 34.864540, 34.777241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161850, 35.096687, 34.806721>,  <24.250639, 35.483601, 34.855858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161850, 35.096687, 34.806721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444693, -0.212545, 0.870099,
		-0.867742, 0.138511, 0.477323,
		-0.221971, -0.967285, -0.122839,
		24.095259, 34.806503, 34.769871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485849, 36.177101, 34.969936>,  <24.250639, 35.483601, 34.855858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485849, 36.177101, 34.969936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871126, 36.106552, 35.051079>,  <25.102293, 36.064224, 35.099766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871126, 36.106552, 35.051079>,  <24.485849, 36.177101, 34.969936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871126, 36.106552, 35.051079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267534, 0.555652, -0.787195,
		0.026121, 0.812492, 0.582387,
		0.963194, -0.176371, 0.202855,
		25.160084, 36.053642, 35.111935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864098, 36.855820, 35.016197>,  <24.485849, 36.177101, 34.969936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864098, 36.855820, 35.016197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105240, 36.551655, 34.919590>,  <25.249926, 36.369156, 34.861626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105240, 36.551655, 34.919590>,  <24.864098, 36.855820, 35.016197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105240, 36.551655, 34.919590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418749, 0.559229, -0.715480,
		0.679127, 0.330196, 0.655558,
		0.602856, -0.760416, -0.241518,
		25.286097, 36.323528, 34.847134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673824, 37.067085, 34.994839>,  <24.864098, 36.855820, 35.016197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673824, 37.067085, 34.994839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535555, 36.779884, 34.753181>,  <25.452593, 36.607563, 34.608189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535555, 36.779884, 34.753181>,  <25.673824, 37.067085, 34.994839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535555, 36.779884, 34.753181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306179, 0.522291, -0.795906,
		0.886998, -0.460098, 0.039295,
		-0.345671, -0.717998, -0.604144,
		25.431854, 36.564484, 34.571938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073723, 37.341240, 34.427692>,  <25.673824, 37.067085, 34.994839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073723, 37.341240, 34.427692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816854, 37.062263, 34.300449>,  <25.662733, 36.894878, 34.224102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816854, 37.062263, 34.300449>,  <26.073723, 37.341240, 34.427692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816854, 37.062263, 34.300449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087028, 0.345967, -0.934202,
		0.761605, -0.627603, -0.161473,
		-0.642172, -0.697440, -0.318109,
		25.624203, 36.853031, 34.205017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399651, 37.876694, 34.686752>,  <26.073723, 37.341240, 34.427692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399651, 37.876694, 34.686752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606131, 37.893925, 35.028908>,  <26.730019, 37.904263, 35.234200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606131, 37.893925, 35.028908>,  <26.399651, 37.876694, 34.686752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606131, 37.893925, 35.028908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422773, 0.881391, 0.210746,
		-0.744850, -0.470420, 0.473184,
		0.516199, 0.043075, 0.855385,
		26.760990, 37.906849, 35.285522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852982, 37.869663, 35.257797>,  <26.399651, 37.876694, 34.686752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852982, 37.869663, 35.257797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185539, 38.078205, 35.334709>,  <26.385075, 38.203331, 35.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185539, 38.078205, 35.334709>,  <25.852982, 37.869663, 35.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185539, 38.078205, 35.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555310, 0.792150, 0.253237,
		-0.020290, -0.317315, 0.948103,
		0.831396, 0.521353, 0.192281,
		26.434958, 38.234612, 35.392395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987692, 38.113609, 36.016727>,  <25.852982, 37.869663, 35.257797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987692, 38.113609, 36.016727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083517, 38.361908, 35.718121>,  <26.141012, 38.510887, 35.538956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083517, 38.361908, 35.718121>,  <25.987692, 38.113609, 36.016727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083517, 38.361908, 35.718121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596690, 0.700685, 0.391154,
		0.765879, 0.351734, 0.538249,
		0.239561, 0.620745, -0.746516,
		26.155386, 38.548130, 35.494167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236530, 38.755875, 36.348362>,  <25.987692, 38.113609, 36.016727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236530, 38.755875, 36.348362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088980, 38.822689, 35.982624>,  <26.000450, 38.862778, 35.763180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088980, 38.822689, 35.982624>,  <26.236530, 38.755875, 36.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088980, 38.822689, 35.982624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612538, 0.696203, 0.374297,
		0.699091, 0.698142, -0.154498,
		-0.368874, 0.167032, -0.914348,
		25.978317, 38.872799, 35.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084185, 39.403244, 36.360256>,  <26.236530, 38.755875, 36.348362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084185, 39.403244, 36.360256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874128, 39.311131, 36.032551>,  <25.748095, 39.255863, 35.835926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874128, 39.311131, 36.032551>,  <26.084185, 39.403244, 36.360256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874128, 39.311131, 36.032551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682924, 0.688451, 0.244235,
		0.507779, 0.687753, -0.518802,
		-0.525143, -0.230285, -0.819264,
		25.716585, 39.242046, 35.786770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722809, 40.028248, 36.103485>,  <26.084185, 39.403244, 36.360256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722809, 40.028248, 36.103485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505251, 39.740772, 35.930206>,  <25.374716, 39.568287, 35.826241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505251, 39.740772, 35.930206>,  <25.722809, 40.028248, 36.103485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505251, 39.740772, 35.930206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839068, 0.458463, 0.292876,
		-0.011885, 0.522773, -0.852389,
		-0.543897, -0.718693, -0.433194,
		25.342081, 39.525166, 35.800247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257431, 40.355511, 35.546249>,  <25.722809, 40.028248, 36.103485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257431, 40.355511, 35.546249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139360, 40.031662, 35.749180>,  <25.068518, 39.837353, 35.870937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139360, 40.031662, 35.749180>,  <25.257431, 40.355511, 35.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139360, 40.031662, 35.749180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860055, 0.456427, 0.227989,
		-0.416144, -0.369036, -0.831045,
		-0.295175, -0.809622, 0.507331,
		25.050808, 39.788776, 35.901379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738066, 40.440739, 36.051765>,  <25.257431, 40.355511, 35.546249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738066, 40.440739, 36.051765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086046, 40.629765, 35.995380>,  <25.294834, 40.743179, 35.961548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086046, 40.629765, 35.995380>,  <24.738066, 40.440739, 36.051765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086046, 40.629765, 35.995380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391742, -0.488617, 0.779610,
		0.299538, -0.733443, -0.610195,
		0.869951, 0.472562, -0.140961,
		25.347033, 40.771534, 35.953091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465242, 39.946682, 36.531166>,  <24.738066, 40.440739, 36.051765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465242, 39.946682, 36.531166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226538, 39.875694, 36.218147>,  <24.083315, 39.833103, 36.030334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226538, 39.875694, 36.218147>,  <24.465242, 39.946682, 36.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226538, 39.875694, 36.218147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689256, -0.612711, -0.386667,
		-0.410852, -0.770123, 0.487966,
		-0.596763, -0.177471, -0.782545,
		24.047508, 39.822453, 35.983383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345806, 39.236038, 36.406658>,  <24.465242, 39.946682, 36.531166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345806, 39.236038, 36.406658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348499, 39.413128, 36.048004>,  <24.350115, 39.519382, 35.832813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348499, 39.413128, 36.048004>,  <24.345806, 39.236038, 36.406658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348499, 39.413128, 36.048004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728710, -0.616205, -0.298786,
		-0.684789, -0.651373, -0.326767,
		0.006734, 0.442723, -0.896633,
		24.350519, 39.545944, 35.779015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224873, 38.772667, 35.816551>,  <24.345806, 39.236038, 36.406658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224873, 38.772667, 35.816551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471426, 39.078033, 35.739334>,  <24.619358, 39.261253, 35.693005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471426, 39.078033, 35.739334>,  <24.224873, 38.772667, 35.816551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471426, 39.078033, 35.739334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747276, -0.644391, -0.162292,
		-0.248290, -0.044220, -0.967676,
		0.616385, 0.763417, -0.193041,
		24.656342, 39.307060, 35.681423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617306, 38.614311, 35.184601>,  <24.224873, 38.772667, 35.816551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617306, 38.614311, 35.184601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840315, 38.913216, 35.329247>,  <24.974119, 39.092560, 35.416035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840315, 38.913216, 35.329247>,  <24.617306, 38.614311, 35.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840315, 38.913216, 35.329247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827547, -0.465717, -0.313486,
		-0.065846, 0.474031, -0.878043,
		0.557522, 0.747263, 0.361617,
		25.007572, 39.137394, 35.437733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147289, 38.792107, 34.720097>,  <24.617306, 38.614311, 35.184601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147289, 38.792107, 34.720097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336390, 38.948383, 35.036037>,  <25.449850, 39.042149, 35.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336390, 38.948383, 35.036037>,  <25.147289, 38.792107, 34.720097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336390, 38.948383, 35.036037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863235, -0.385380, -0.326049,
		0.177009, 0.835967, -0.519448,
		0.472751, 0.390692, 0.789852,
		25.478214, 39.065590, 35.272991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705009, 39.323898, 34.539608>,  <25.147289, 38.792107, 34.720097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705009, 39.323898, 34.539608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805511, 39.175022, 34.897007>,  <25.865812, 39.085697, 35.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805511, 39.175022, 34.897007>,  <25.705009, 39.323898, 34.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805511, 39.175022, 34.897007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850250, -0.356261, -0.387495,
		0.462543, 0.857059, 0.226947,
		0.251254, -0.372194, 0.893500,
		25.880888, 39.063362, 35.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356476, 39.421021, 34.616020>,  <25.705009, 39.323898, 34.539608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356476, 39.421021, 34.616020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301388, 39.130405, 34.885296>,  <26.268335, 38.956036, 35.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301388, 39.130405, 34.885296>,  <26.356476, 39.421021, 34.616020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301388, 39.130405, 34.885296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854253, -0.431110, -0.290509,
		0.501283, 0.535063, 0.680017,
		-0.137721, -0.726534, 0.673188,
		26.260071, 38.912445, 35.087254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992638, 39.330936, 35.030304>,  <26.356476, 39.421021, 34.616020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992638, 39.330936, 35.030304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810894, 38.974682, 35.023117>,  <26.701847, 38.760929, 35.018803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810894, 38.974682, 35.023117>,  <26.992638, 39.330936, 35.030304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810894, 38.974682, 35.023117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890328, -0.454686, 0.024018,
		-0.029562, -0.005087, 0.999550,
		-0.454360, -0.890637, -0.017970,
		26.674585, 38.707489, 35.017727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428074, 38.889572, 35.429722>,  <26.992638, 39.330936, 35.030304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428074, 38.889572, 35.429722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202066, 38.648064, 35.204788>,  <27.066462, 38.503159, 35.069828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202066, 38.648064, 35.204788>,  <27.428074, 38.889572, 35.429722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202066, 38.648064, 35.204788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729535, -0.683942, 0.001316,
		-0.385397, -0.409497, 0.826911,
		-0.565020, -0.603767, -0.562332,
		27.032560, 38.466934, 35.036087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242836, 38.284424, 35.735477>,  <27.428074, 38.889572, 35.429722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242836, 38.284424, 35.735477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265310, 38.231491, 35.339634>,  <27.278795, 38.199730, 35.102127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265310, 38.231491, 35.339634>,  <27.242836, 38.284424, 35.735477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265310, 38.231491, 35.339634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731197, -0.669463, 0.131037,
		-0.679849, -0.730963, 0.059149,
		0.056185, -0.132335, -0.989612,
		27.282166, 38.191792, 35.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427176, 37.661739, 35.667412>,  <27.242836, 38.284424, 35.735477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427176, 37.661739, 35.667412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503357, 37.814396, 35.305622>,  <27.549065, 37.905991, 35.088547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503357, 37.814396, 35.305622>,  <27.427176, 37.661739, 35.667412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503357, 37.814396, 35.305622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823741, -0.563316, -0.064240,
		-0.534022, -0.732818, -0.421660,
		0.190452, 0.381644, -0.904475,
		27.560492, 37.928890, 35.034279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431585, 37.151363, 35.020988>,  <27.427176, 37.661739, 35.667412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431585, 37.151363, 35.020988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699951, 37.445984, 35.055309>,  <27.860970, 37.622757, 35.075901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699951, 37.445984, 35.055309>,  <27.431585, 37.151363, 35.020988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699951, 37.445984, 35.055309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739948, -0.657413, -0.142428,
		-0.048496, 0.159048, -0.986079,
		0.670914, 0.736554, 0.085805,
		27.901226, 37.666950, 35.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194534, 36.926563, 34.876019>,  <27.431585, 37.151363, 35.020988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194534, 36.926563, 34.876019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996016, 37.036106, 35.205551>,  <27.876904, 37.101833, 35.403271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996016, 37.036106, 35.205551>,  <28.194534, 36.926563, 34.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996016, 37.036106, 35.205551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037246, -0.941353, 0.335361,
		0.867353, 0.197123, 0.456991,
		-0.496297, 0.273856, 0.823828,
		27.847126, 37.118263, 35.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453405, 36.535774, 35.505253>,  <28.194534, 36.926563, 34.876019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453405, 36.535774, 35.505253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097355, 36.687340, 35.606525>,  <27.883724, 36.778278, 35.667290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097355, 36.687340, 35.606525>,  <28.453405, 36.535774, 35.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097355, 36.687340, 35.606525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146575, -0.764093, 0.628234,
		0.431503, 0.522096, 0.735677,
		-0.890124, 0.378917, 0.253182,
		27.830318, 36.801014, 35.682480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413691, 36.629032, 36.307568>,  <28.453405, 36.535774, 35.505253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413691, 36.629032, 36.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074770, 36.563126, 36.105602>,  <27.871418, 36.523582, 35.984425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074770, 36.563126, 36.105602>,  <28.413691, 36.629032, 36.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074770, 36.563126, 36.105602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267286, -0.689215, 0.673454,
		-0.458955, 0.705573, 0.539932,
		-0.847301, -0.164768, -0.504909,
		27.820580, 36.513695, 35.954128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779894, 36.638203, 36.627377>,  <28.413691, 36.629032, 36.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779894, 36.638203, 36.627377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706791, 36.352226, 36.357426>,  <27.662930, 36.180641, 36.195454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706791, 36.352226, 36.357426>,  <27.779894, 36.638203, 36.627377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706791, 36.352226, 36.357426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220004, -0.639294, 0.736818,
		-0.958227, 0.283134, -0.040455,
		-0.182755, -0.714939, -0.674879,
		27.651964, 36.137745, 36.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064154, 36.385319, 36.707436>,  <27.779894, 36.638203, 36.627377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064154, 36.385319, 36.707436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328293, 36.118793, 36.568893>,  <27.486776, 35.958878, 36.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328293, 36.118793, 36.568893>,  <27.064154, 36.385319, 36.707436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328293, 36.118793, 36.568893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129039, -0.555040, 0.821754,
		-0.739792, -0.497948, -0.452499,
		0.660346, -0.666317, -0.346359,
		27.526398, 35.918900, 36.464985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773108, 35.667274, 36.795475>,  <27.064154, 36.385319, 36.707436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773108, 35.667274, 36.795475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172853, 35.674156, 36.807983>,  <27.412701, 35.678284, 36.815491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172853, 35.674156, 36.807983>,  <26.773108, 35.667274, 36.795475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172853, 35.674156, 36.807983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022207, -0.386281, 0.922114,
		0.027945, -0.922221, -0.385652,
		0.999363, 0.017204, 0.031274,
		27.472662, 35.679317, 36.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011982, 34.977100, 36.905117>,  <26.773108, 35.667274, 36.795475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011982, 34.977100, 36.905117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247530, 35.270828, 37.040173>,  <27.388859, 35.447067, 37.121204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247530, 35.270828, 37.040173>,  <27.011982, 34.977100, 36.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247530, 35.270828, 37.040173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097816, -0.349930, 0.931655,
		0.802286, -0.581652, -0.134235,
		0.588872, 0.734323, 0.337638,
		27.424192, 35.491127, 37.141464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512060, 34.703102, 37.366714>,  <27.011982, 34.977100, 36.905117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512060, 34.703102, 37.366714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470852, 35.085930, 37.475082>,  <27.446127, 35.315628, 37.540104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470852, 35.085930, 37.475082>,  <27.512060, 34.703102, 37.366714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470852, 35.085930, 37.475082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162395, -0.284902, 0.944700,
		0.981333, 0.053329, 0.184775,
		-0.103023, 0.957072, 0.270924,
		27.439945, 35.373051, 37.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190149, 34.263279, 37.286484>,  <27.512060, 34.703102, 37.366714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190149, 34.263279, 37.286484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349094, 34.180161, 37.644012>,  <28.444462, 34.130291, 37.858532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349094, 34.180161, 37.644012>,  <28.190149, 34.263279, 37.286484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349094, 34.180161, 37.644012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468999, 0.883193, -0.003177,
		-0.788760, 0.420466, 0.448404,
		0.397364, -0.207795, 0.893825,
		28.468304, 34.117821, 37.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233112, 34.939743, 37.670425>,  <28.190149, 34.263279, 37.286484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233112, 34.939743, 37.670425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506231, 34.714329, 37.856422>,  <28.670103, 34.579082, 37.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506231, 34.714329, 37.856422>,  <28.233112, 34.939743, 37.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506231, 34.714329, 37.856422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628315, 0.777704, 0.019894,
		-0.372839, 0.278580, 0.885090,
		0.682796, -0.563533, 0.464995,
		28.711071, 34.545269, 37.995922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366604, 35.184822, 38.342800>,  <28.233112, 34.939743, 37.670425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366604, 35.184822, 38.342800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694811, 34.990658, 38.222054>,  <28.891735, 34.874157, 38.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694811, 34.990658, 38.222054>,  <28.366604, 35.184822, 38.342800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694811, 34.990658, 38.222054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510327, 0.859970, 0.004276,
		0.257517, -0.157558, 0.953342,
		0.820519, -0.485414, -0.301863,
		28.940966, 34.845032, 38.131496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859192, 35.463337, 38.706566>,  <28.366604, 35.184822, 38.342800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859192, 35.463337, 38.706566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011187, 35.319393, 38.365719>,  <29.102383, 35.233025, 38.161209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011187, 35.319393, 38.365719>,  <28.859192, 35.463337, 38.706566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011187, 35.319393, 38.365719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590548, 0.803420, -0.075952,
		0.711943, -0.474357, 0.517805,
		0.379986, -0.359863, -0.852120,
		29.125183, 35.211433, 38.110085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638823, 35.463108, 38.728291>,  <28.859192, 35.463337, 38.706566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638823, 35.463108, 38.728291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476389, 35.512520, 38.366112>,  <29.378929, 35.542168, 38.148804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476389, 35.512520, 38.366112>,  <29.638823, 35.463108, 38.728291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476389, 35.512520, 38.366112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520352, 0.845762, -0.117987,
		0.751219, -0.519065, -0.407727,
		-0.406083, 0.123527, -0.905449,
		29.354565, 35.549580, 38.094479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170031, 35.710228, 38.258816>,  <29.638823, 35.463108, 38.728291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170031, 35.710228, 38.258816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840950, 35.847343, 38.077419>,  <29.643501, 35.929615, 37.968582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840950, 35.847343, 38.077419>,  <30.170031, 35.710228, 38.258816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840950, 35.847343, 38.077419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466481, 0.863013, -0.193920,
		0.324897, -0.371085, -0.869907,
		-0.822701, 0.342791, -0.453495,
		29.594139, 35.950180, 37.941372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424553, 36.228436, 37.804474>,  <30.170031, 35.710228, 38.258816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424553, 36.228436, 37.804474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034864, 36.318081, 37.814777>,  <29.801050, 36.371868, 37.820961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034864, 36.318081, 37.814777>,  <30.424553, 36.228436, 37.804474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034864, 36.318081, 37.814777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220831, 0.970759, -0.094127,
		-0.046100, -0.086013, -0.995227,
		-0.974222, 0.224116, 0.025758,
		29.742598, 36.385315, 37.822506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998463, 36.867046, 38.022293>,  <30.424553, 36.228436, 37.804474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998463, 36.867046, 38.022293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756018, 37.004028, 37.735142>,  <29.610552, 37.086216, 37.562851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756018, 37.004028, 37.735142>,  <29.998463, 36.867046, 38.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756018, 37.004028, 37.735142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338679, -0.927773, -0.156634,
		-0.719671, 0.148194, 0.678316,
		-0.606110, 0.342456, -0.717881,
		29.574184, 37.106766, 37.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283476, 36.852356, 38.207840>,  <29.998463, 36.867046, 38.022293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283476, 36.852356, 38.207840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357040, 36.811626, 37.816780>,  <29.401178, 36.787189, 37.582142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357040, 36.811626, 37.816780>,  <29.283476, 36.852356, 38.207840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357040, 36.811626, 37.816780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364038, -0.930949, 0.028480,
		-0.913046, 0.350665, -0.208281,
		0.183912, -0.101825, -0.977655,
		29.412214, 36.781078, 37.523483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679195, 36.697929, 37.768055>,  <29.283476, 36.852356, 38.207840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679195, 36.697929, 37.768055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034624, 36.549133, 37.660675>,  <29.247881, 36.459854, 37.596249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034624, 36.549133, 37.660675>,  <28.679195, 36.697929, 37.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034624, 36.549133, 37.660675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361523, -0.928069, 0.089386,
		-0.282390, 0.017625, -0.959138,
		0.888570, -0.371992, -0.268449,
		29.301195, 36.437534, 37.580139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573723, 36.173988, 37.207050>,  <28.679195, 36.697929, 37.768055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573723, 36.173988, 37.207050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895174, 36.087921, 37.429001>,  <29.088045, 36.036282, 37.562172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895174, 36.087921, 37.429001>,  <28.573723, 36.173988, 37.207050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895174, 36.087921, 37.429001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305872, -0.949118, 0.074950,
		0.510516, -0.229953, -0.828550,
		0.803627, -0.215167, 0.554875,
		29.136263, 36.023373, 37.595463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870951, 35.730824, 36.846531>,  <28.573723, 36.173988, 37.207050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870951, 35.730824, 36.846531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999523, 35.685257, 37.222553>,  <29.076668, 35.657917, 37.448166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999523, 35.685257, 37.222553>,  <28.870951, 35.730824, 36.846531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999523, 35.685257, 37.222553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123352, -0.989316, -0.077708,
		0.938864, -0.090980, -0.332050,
		0.321432, -0.113916, 0.940056,
		29.095953, 35.651081, 37.504570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374331, 35.174057, 36.803894>,  <28.870951, 35.730824, 36.846531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374331, 35.174057, 36.803894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183712, 35.178005, 37.155533>,  <29.069342, 35.180374, 37.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183712, 35.178005, 37.155533>,  <29.374331, 35.174057, 36.803894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183712, 35.178005, 37.155533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079676, -0.996307, -0.032002,
		0.875532, -0.085293, 0.475572,
		-0.476546, 0.009873, 0.879094,
		29.040749, 35.180965, 37.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523062, 34.600918, 36.304554>,  <29.374331, 35.174057, 36.803894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523062, 34.600918, 36.304554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738382, 34.445744, 36.005291>,  <29.867575, 34.352638, 35.825733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738382, 34.445744, 36.005291>,  <29.523062, 34.600918, 36.304554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738382, 34.445744, 36.005291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484686, 0.583727, -0.651416,
		0.689427, 0.713278, 0.126194,
		0.538303, -0.387939, -0.748153,
		29.899874, 34.329361, 35.780846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929966, 35.201576, 35.907318>,  <29.523062, 34.600918, 36.304554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929966, 35.201576, 35.907318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799385, 34.900280, 35.678913>,  <29.721035, 34.719501, 35.541870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799385, 34.900280, 35.678913>,  <29.929966, 35.201576, 35.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799385, 34.900280, 35.678913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436633, 0.655970, -0.615675,
		0.838319, 0.048335, -0.543033,
		-0.326455, -0.753238, -0.571017,
		29.701448, 34.674309, 35.507607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168684, 35.807915, 35.424858>,  <29.929966, 35.201576, 35.907318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168684, 35.807915, 35.424858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166683, 35.938255, 35.046696>,  <30.165483, 36.016460, 34.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166683, 35.938255, 35.046696>,  <30.168684, 35.807915, 35.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166683, 35.938255, 35.046696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998583, 0.051705, 0.012539,
		0.052968, -0.944007, -0.325645,
		-0.005001, 0.325848, -0.945409,
		30.165182, 36.036011, 34.763073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551853, 35.358410, 34.945656>,  <30.168684, 35.807915, 35.424858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551853, 35.358410, 34.945656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550632, 35.739254, 34.823357>,  <30.549900, 35.967758, 34.749977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550632, 35.739254, 34.823357>,  <30.551853, 35.358410, 34.945656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550632, 35.739254, 34.823357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998162, 0.021405, 0.056694,
		0.060523, -0.305012, -0.950423,
		-0.003052, 0.952108, -0.305747,
		30.549717, 36.024887, 34.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786274, 35.475307, 34.242699>,  <30.551853, 35.358410, 34.945656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786274, 35.475307, 34.242699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866577, 35.775974, 34.493999>,  <30.914759, 35.956375, 34.644779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866577, 35.775974, 34.493999>,  <30.786274, 35.475307, 34.242699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866577, 35.775974, 34.493999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968643, -0.248136, -0.012648,
		0.146384, 0.611088, -0.777909,
		0.200757, 0.751665, 0.628249,
		30.926804, 36.001472, 34.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115328, 36.034508, 33.982067>,  <30.786274, 35.475307, 34.242699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115328, 36.034508, 33.982067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204369, 35.948551, 34.362438>,  <31.257793, 35.896976, 34.590660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204369, 35.948551, 34.362438>,  <31.115328, 36.034508, 33.982067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204369, 35.948551, 34.362438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922630, -0.268685, -0.276697,
		0.314961, 0.938951, 0.138457,
		0.222603, -0.214894, 0.950930,
		31.271149, 35.884083, 34.647717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709600, 36.444839, 34.320839>,  <31.115328, 36.034508, 33.982067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709600, 36.444839, 34.320839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642700, 36.062462, 34.417343>,  <31.602560, 35.833035, 34.475246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642700, 36.062462, 34.417343>,  <31.709600, 36.444839, 34.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642700, 36.062462, 34.417343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914831, -0.241707, -0.323516,
		0.367576, 0.166602, 0.914949,
		-0.167251, -0.955940, 0.241258,
		31.592525, 35.775681, 34.489719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278885, 36.137955, 34.566925>,  <31.709600, 36.444839, 34.320839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278885, 36.137955, 34.566925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117073, 35.799076, 34.429161>,  <32.019985, 35.595749, 34.346504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117073, 35.799076, 34.429161>,  <32.278885, 36.137955, 34.566925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117073, 35.799076, 34.429161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896413, -0.292748, -0.332780,
		0.181103, -0.443355, 0.877860,
		-0.404531, -0.847193, -0.344411,
		31.995714, 35.544918, 34.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012672, 36.265728, 34.571346>,  <32.278885, 36.137955, 34.566925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012672, 36.265728, 34.571346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315067, 36.028866, 34.459755>,  <33.496506, 35.886749, 34.392799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315067, 36.028866, 34.459755>,  <33.012672, 36.265728, 34.571346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315067, 36.028866, 34.459755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149019, -0.570695, 0.807528,
		-0.637399, -0.568907, -0.519680,
		0.755987, -0.592159, -0.278982,
		33.541862, 35.851219, 34.376060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786652, 35.569729, 34.540169>,  <33.012672, 36.265728, 34.571346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786652, 35.569729, 34.540169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181576, 35.570438, 34.603691>,  <33.418530, 35.570862, 34.641804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181576, 35.570438, 34.603691>,  <32.786652, 35.569729, 34.540169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181576, 35.570438, 34.603691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122470, -0.628115, 0.768422,
		0.101106, -0.778118, -0.619927,
		0.987309, 0.001770, 0.158802,
		33.477768, 35.570969, 34.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965801, 34.939960, 34.604492>,  <32.786652, 35.569729, 34.540169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965801, 34.939960, 34.604492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254425, 35.101479, 34.829456>,  <33.427597, 35.198387, 34.964436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254425, 35.101479, 34.829456>,  <32.965801, 34.939960, 34.604492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254425, 35.101479, 34.829456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009432, -0.806509, 0.591147,
		0.692293, -0.431850, -0.578132,
		0.721555, 0.403793, 0.562413,
		33.470890, 35.222618, 34.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571125, 34.460110, 34.678780>,  <32.965801, 34.939960, 34.604492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571125, 34.460110, 34.678780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565983, 34.689041, 35.006748>,  <33.562897, 34.826401, 35.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565983, 34.689041, 35.006748>,  <33.571125, 34.460110, 34.678780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565983, 34.689041, 35.006748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223983, -0.797509, 0.560189,
		0.974508, 0.190850, -0.117940,
		-0.012854, 0.572325, 0.819926,
		33.562126, 34.860737, 35.252728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098557, 34.200497, 35.246681>,  <33.571125, 34.460110, 34.678780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098557, 34.200497, 35.246681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818832, 33.980396, 35.064167>,  <32.650997, 33.848335, 34.954659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818832, 33.980396, 35.064167>,  <33.098557, 34.200497, 35.246681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818832, 33.980396, 35.064167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238581, -0.422052, 0.874615,
		-0.673831, 0.720485, 0.163866,
		-0.699307, -0.550248, -0.456286,
		32.609039, 33.815323, 34.927280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172169, 33.780998, 35.886692>,  <33.098557, 34.200497, 35.246681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172169, 33.780998, 35.886692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170933, 34.045158, 36.187054>,  <33.170193, 34.203655, 36.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170933, 34.045158, 36.187054>,  <33.172169, 33.780998, 35.886692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170933, 34.045158, 36.187054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621836, 0.589338, -0.515752,
		-0.783141, 0.465347, -0.412483,
		-0.003089, 0.660403, 0.750905,
		33.170006, 34.243279, 36.412327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366413, 34.462502, 35.941246>,  <33.172169, 33.780998, 35.886692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366413, 34.462502, 35.941246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683987, 34.664360, 36.076893>,  <33.874531, 34.785473, 36.158283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683987, 34.664360, 36.076893>,  <33.366413, 34.462502, 35.941246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683987, 34.664360, 36.076893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147977, 0.380610, -0.912819,
		-0.589721, 0.774901, 0.227504,
		0.793934, 0.504643, 0.339122,
		33.922169, 34.815754, 36.178631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308777, 35.215557, 35.746399>,  <33.366413, 34.462502, 35.941246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308777, 35.215557, 35.746399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674557, 35.055973, 35.773571>,  <33.894024, 34.960224, 35.789875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674557, 35.055973, 35.773571>,  <33.308777, 35.215557, 35.746399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674557, 35.055973, 35.773571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255091, 0.437913, -0.862067,
		0.314183, 0.805645, 0.502220,
		0.914449, -0.398959, 0.067928,
		33.948891, 34.936287, 35.793949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884155, 35.710262, 35.866074>,  <33.308777, 35.215557, 35.746399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884155, 35.710262, 35.866074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962055, 35.401703, 35.623749>,  <34.008797, 35.216568, 35.478352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962055, 35.401703, 35.623749>,  <33.884155, 35.710262, 35.866074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962055, 35.401703, 35.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078464, 0.627915, -0.774317,
		0.977709, 0.103266, 0.182816,
		0.194753, -0.771401, -0.605815,
		34.020481, 35.170284, 35.442005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410568, 35.942490, 35.354610>,  <33.884155, 35.710262, 35.866074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410568, 35.942490, 35.354610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211136, 35.638111, 35.188541>,  <34.091476, 35.455482, 35.088898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211136, 35.638111, 35.188541>,  <34.410568, 35.942490, 35.354610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211136, 35.638111, 35.188541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092423, 0.522888, -0.847376,
		0.861900, -0.384116, -0.331033,
		-0.498584, -0.760949, -0.415176,
		34.061562, 35.409828, 35.063988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799412, 35.561142, 34.835342>,  <34.410568, 35.942490, 35.354610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799412, 35.561142, 34.835342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404636, 35.561333, 34.770916>,  <34.167770, 35.561447, 34.732258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404636, 35.561333, 34.770916>,  <34.799412, 35.561142, 34.835342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404636, 35.561333, 34.770916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137139, 0.526956, -0.838755,
		0.084478, -0.849892, -0.520141,
		-0.986943, 0.000475, -0.161070,
		34.108555, 35.561474, 34.722595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621548, 35.214306, 34.185276>,  <34.799412, 35.561142, 34.835342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621548, 35.214306, 34.185276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305416, 35.447964, 34.259201>,  <34.115738, 35.588158, 34.303555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305416, 35.447964, 34.259201>,  <34.621548, 35.214306, 34.185276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305416, 35.447964, 34.259201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080662, 0.398226, -0.913734,
		-0.607346, -0.707246, -0.361849,
		-0.790332, 0.584140, 0.184813,
		34.068317, 35.623207, 34.314644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373722, 35.261887, 33.553913>,  <34.621548, 35.214306, 34.185276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373722, 35.261887, 33.553913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203449, 35.554207, 33.767353>,  <34.101284, 35.729599, 33.895416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203449, 35.554207, 33.767353>,  <34.373722, 35.261887, 33.553913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203449, 35.554207, 33.767353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030435, 0.577798, -0.815612,
		-0.904361, -0.363432, -0.223716,
		-0.425682, 0.730799, 0.533599,
		34.075745, 35.773445, 33.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690678, 35.344154, 33.399345>,  <34.373722, 35.261887, 33.553913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690678, 35.344154, 33.399345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829960, 35.695660, 33.529900>,  <33.913528, 35.906563, 33.608234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829960, 35.695660, 33.529900>,  <33.690678, 35.344154, 33.399345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829960, 35.695660, 33.529900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157911, 0.398188, -0.903610,
		-0.924022, 0.263102, 0.277418,
		0.348206, 0.878762, 0.326388,
		33.934422, 35.959290, 33.627815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250263, 35.802143, 33.175468>,  <33.690678, 35.344154, 33.399345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250263, 35.802143, 33.175468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566853, 36.028522, 33.267792>,  <33.756805, 36.164349, 33.323185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566853, 36.028522, 33.267792>,  <33.250263, 35.802143, 33.175468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566853, 36.028522, 33.267792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148594, 0.544474, -0.825511,
		-0.592863, 0.619075, 0.515034,
		0.791475, 0.565946, 0.230808,
		33.804295, 36.198307, 33.337032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009052, 36.555119, 33.121662>,  <33.250263, 35.802143, 33.175468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009052, 36.555119, 33.121662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406635, 36.531948, 33.084373>,  <33.645187, 36.518047, 33.062000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406635, 36.531948, 33.084373>,  <33.009052, 36.555119, 33.121662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406635, 36.531948, 33.084373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050444, 0.513229, -0.856768,
		0.097468, 0.856295, 0.507207,
		0.993959, -0.057922, -0.093218,
		33.704823, 36.514572, 33.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079430, 37.145470, 32.869999>,  <33.009052, 36.555119, 33.121662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079430, 37.145470, 32.869999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420395, 36.954517, 32.784672>,  <33.624973, 36.839947, 32.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420395, 36.954517, 32.784672>,  <33.079430, 37.145470, 32.869999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420395, 36.954517, 32.784672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090543, 0.536571, -0.838984,
		0.514976, 0.695843, 0.500601,
		0.852409, -0.477383, -0.213317,
		33.676117, 36.811302, 32.720676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536919, 37.684906, 32.608597>,  <33.079430, 37.145470, 32.869999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536919, 37.684906, 32.608597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730480, 37.356113, 32.488476>,  <33.846619, 37.158836, 32.416401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730480, 37.356113, 32.488476>,  <33.536919, 37.684906, 32.608597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730480, 37.356113, 32.488476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077395, 0.382011, -0.920912,
		0.871692, 0.422392, 0.248474,
		0.483905, -0.821981, -0.300305,
		33.875652, 37.109520, 32.398384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987492, 37.928238, 32.242004>,  <33.536919, 37.684906, 32.608597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987492, 37.928238, 32.242004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962105, 37.545887, 32.127277>,  <33.946873, 37.316475, 32.058441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962105, 37.545887, 32.127277>,  <33.987492, 37.928238, 32.242004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962105, 37.545887, 32.127277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222373, 0.266625, -0.937796,
		0.972894, -0.123303, 0.195639,
		-0.063471, -0.955881, -0.286817,
		33.943062, 37.259125, 32.041233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596142, 37.873901, 31.692148>,  <33.987492, 37.928238, 32.242004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596142, 37.873901, 31.692148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 37.573315, 31.651913>,  <34.178825, 37.392963, 31.627771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 37.573315, 31.651913>,  <34.596142, 37.873901, 31.692148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335320, 37.573315, 31.651913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064465, 0.077239, -0.994926,
		0.755426, -0.655231, -0.001921,
		-0.652055, -0.751469, -0.100588,
		34.139702, 37.347874, 31.621737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880142, 37.586033, 31.197487>,  <34.596142, 37.873901, 31.692148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880142, 37.586033, 31.197487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498520, 37.466339, 31.191351>,  <34.269547, 37.394524, 31.187670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498520, 37.466339, 31.191351>,  <34.880142, 37.586033, 31.197487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498520, 37.466339, 31.191351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047892, -0.101750, -0.993657,
		0.295773, -0.948740, 0.111406,
		-0.954057, -0.299232, -0.015342,
		34.212303, 37.376568, 31.186749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807045, 36.975163, 30.738016>,  <34.880142, 37.586033, 31.197487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807045, 36.975163, 30.738016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425343, 37.092682, 30.760227>,  <34.196323, 37.163193, 30.773554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425343, 37.092682, 30.760227>,  <34.807045, 36.975163, 30.738016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425343, 37.092682, 30.760227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070878, -0.041855, -0.996606,
		-0.290479, -0.954950, 0.060764,
		-0.954253, 0.293800, 0.055527,
		34.139069, 37.180820, 30.776886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461975, 36.661728, 30.104969>,  <34.807045, 36.975163, 30.738016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461975, 36.661728, 30.104969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247356, 36.973827, 30.233551>,  <34.118584, 37.161087, 30.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247356, 36.973827, 30.233551>,  <34.461975, 36.661728, 30.104969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247356, 36.973827, 30.233551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188682, 0.260361, -0.946896,
		-0.822507, -0.568705, 0.007523,
		-0.536546, 0.780248, 0.321453,
		34.086391, 37.207901, 30.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996056, 36.706478, 29.660776>,  <34.461975, 36.661728, 30.104969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996056, 36.706478, 29.660776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968975, 37.068058, 29.829678>,  <33.952728, 37.285004, 29.931019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968975, 37.068058, 29.829678>,  <33.996056, 36.706478, 29.660776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968975, 37.068058, 29.829678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074235, 0.417488, -0.905645,
		-0.994940, -0.092661, 0.038840,
		-0.067703, 0.903946, 0.422254,
		33.948666, 37.339241, 29.956354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474045, 36.993439, 29.292814>,  <33.996056, 36.706478, 29.660776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474045, 36.993439, 29.292814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691200, 37.280087, 29.467962>,  <33.821495, 37.452076, 29.573051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691200, 37.280087, 29.467962>,  <33.474045, 36.993439, 29.292814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691200, 37.280087, 29.467962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048281, 0.493903, -0.868176,
		-0.838415, 0.492465, 0.233537,
		0.542890, 0.716616, 0.437872,
		33.854069, 37.495071, 29.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163055, 37.630680, 29.160221>,  <33.474045, 36.993439, 29.292814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163055, 37.630680, 29.160221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545879, 37.708153, 29.246506>,  <33.775574, 37.754635, 29.298277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545879, 37.708153, 29.246506>,  <33.163055, 37.630680, 29.160221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545879, 37.708153, 29.246506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058914, 0.598624, -0.798860,
		-0.283853, 0.777263, 0.561507,
		0.957056, 0.193678, 0.215713,
		33.832996, 37.766254, 29.311220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036880, 38.293510, 29.146725>,  <33.163055, 37.630680, 29.160221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036880, 38.293510, 29.146725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433517, 38.257992, 29.109068>,  <33.671501, 38.236679, 29.086473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433517, 38.257992, 29.109068>,  <33.036880, 38.293510, 29.146725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433517, 38.257992, 29.109068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024455, 0.585797, -0.810089,
		0.127081, 0.805579, 0.578699,
		0.991591, -0.088795, -0.094144,
		33.730995, 38.231354, 29.080824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313709, 39.039536, 29.116705>,  <33.036880, 38.293510, 29.146725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313709, 39.039536, 29.116705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593868, 38.806328, 28.952007>,  <33.761963, 38.666405, 28.853189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593868, 38.806328, 28.952007>,  <33.313709, 39.039536, 29.116705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593868, 38.806328, 28.952007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113741, 0.660672, -0.742008,
		0.704630, 0.472870, 0.529047,
		0.700400, -0.583016, -0.411744,
		33.803989, 38.631424, 28.828484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870800, 39.418816, 29.034161>,  <33.313709, 39.039536, 29.116705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870800, 39.418816, 29.034161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935715, 39.127621, 28.767717>,  <33.974663, 38.952904, 28.607851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935715, 39.127621, 28.767717>,  <33.870800, 39.418816, 29.034161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935715, 39.127621, 28.767717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139805, 0.651286, -0.745843,
		0.976789, 0.214166, 0.003920,
		0.162288, -0.727984, -0.666110,
		33.984402, 38.909225, 28.567884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298790, 39.721977, 28.556284>,  <33.870800, 39.418816, 29.034161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298790, 39.721977, 28.556284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117062, 39.415306, 28.374826>,  <34.008026, 39.231304, 28.265951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117062, 39.415306, 28.374826>,  <34.298790, 39.721977, 28.556284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117062, 39.415306, 28.374826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107077, 0.552540, -0.826580,
		0.884380, -0.326957, -0.333124,
		-0.454320, -0.766680, -0.453646,
		33.980766, 39.185303, 28.238733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500473, 39.805367, 27.849167>,  <34.298790, 39.721977, 28.556284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500473, 39.805367, 27.849167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184837, 39.562820, 27.809839>,  <33.995457, 39.417294, 27.786242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184837, 39.562820, 27.809839>,  <34.500473, 39.805367, 27.849167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184837, 39.562820, 27.809839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185893, 0.388266, -0.902603,
		0.585480, -0.693954, -0.419094,
		-0.789086, -0.606363, -0.098321,
		33.948112, 39.380913, 27.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569927, 39.409492, 27.209976>,  <34.500473, 39.805367, 27.849167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569927, 39.409492, 27.209976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180763, 39.402538, 27.302193>,  <33.947266, 39.398365, 27.357523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180763, 39.402538, 27.302193>,  <34.569927, 39.409492, 27.209976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180763, 39.402538, 27.302193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222581, 0.340088, -0.913673,
		-0.062525, -0.940233, -0.334743,
		-0.972907, -0.017380, 0.230542,
		33.888889, 39.397324, 27.371355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238689, 39.052113, 26.656776>,  <34.569927, 39.409492, 27.209976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238689, 39.052113, 26.656776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956432, 39.275684, 26.830980>,  <33.787079, 39.409828, 26.935503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956432, 39.275684, 26.830980>,  <34.238689, 39.052113, 26.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956432, 39.275684, 26.830980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349006, 0.260743, -0.900115,
		-0.616656, -0.787155, 0.011078,
		-0.705642, 0.558928, 0.435510,
		33.744740, 39.443363, 26.961634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669334, 38.848381, 26.281799>,  <34.238689, 39.052113, 26.656776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669334, 38.848381, 26.281799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569427, 39.193619, 26.457382>,  <33.509483, 39.400761, 26.562731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569427, 39.193619, 26.457382>,  <33.669334, 38.848381, 26.281799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569427, 39.193619, 26.457382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256011, 0.378331, -0.889564,
		-0.933849, -0.334563, 0.126467,
		-0.249769, 0.863095, 0.438956,
		33.494495, 39.452549, 26.589069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995167, 39.060848, 25.969641>,  <33.669334, 38.848381, 26.281799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995167, 39.060848, 25.969641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098881, 39.406235, 26.142708>,  <33.161110, 39.613468, 26.246548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098881, 39.406235, 26.142708>,  <32.995167, 39.060848, 25.969641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098881, 39.406235, 26.142708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329239, 0.500176, -0.800890,
		-0.907951, 0.065206, 0.413973,
		0.259282, 0.863465, 0.432667,
		33.176666, 39.665276, 26.272509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492447, 39.496971, 25.750879>,  <32.995167, 39.060848, 25.969641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492447, 39.496971, 25.750879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788475, 39.739574, 25.867121>,  <32.966091, 39.885136, 25.936867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788475, 39.739574, 25.867121>,  <32.492447, 39.496971, 25.750879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788475, 39.739574, 25.867121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147973, 0.568363, -0.809363,
		-0.656052, 0.555981, 0.510374,
		0.740068, 0.606505, 0.290605,
		33.010494, 39.921528, 25.954302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287556, 40.223175, 25.856396>,  <32.492447, 39.496971, 25.750879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287556, 40.223175, 25.856396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680424, 40.234928, 25.782127>,  <32.916145, 40.241978, 25.737566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680424, 40.234928, 25.782127>,  <32.287556, 40.223175, 25.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680424, 40.234928, 25.782127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150647, 0.713800, -0.683955,
		0.112436, 0.699733, 0.705501,
		0.982173, 0.029381, -0.185669,
		32.975075, 40.243744, 25.726427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417179, 40.887611, 25.870575>,  <32.287556, 40.223175, 25.856396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417179, 40.887611, 25.870575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744694, 40.770355, 25.673126>,  <32.941200, 40.700001, 25.554657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744694, 40.770355, 25.673126>,  <32.417179, 40.887611, 25.870575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744694, 40.770355, 25.673126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078576, 0.794497, -0.602163,
		0.568700, 0.531827, 0.627486,
		0.818783, -0.293145, -0.493620,
		32.990330, 40.682411, 25.525040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730953, 41.531857, 25.659346>,  <32.417179, 40.887611, 25.870575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730953, 41.531857, 25.659346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899208, 41.269588, 25.408533>,  <33.000160, 41.112228, 25.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899208, 41.269588, 25.408533>,  <32.730953, 41.531857, 25.659346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899208, 41.269588, 25.408533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092662, 0.656485, -0.748626,
		0.902486, 0.372999, 0.215384,
		0.420633, -0.655667, -0.627032,
		33.025398, 41.072887, 25.220423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195168, 41.887016, 25.273842>,  <32.730953, 41.531857, 25.659346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195168, 41.887016, 25.273842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115074, 41.560940, 25.056450>,  <33.067017, 41.365295, 24.926014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115074, 41.560940, 25.056450>,  <33.195168, 41.887016, 25.273842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115074, 41.560940, 25.056450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052869, 0.562896, -0.824835,
		0.978320, -0.136428, -0.155810,
		-0.200235, -0.815191, -0.543479,
		33.055004, 41.316383, 24.893406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691368, 41.914215, 24.743273>,  <33.195168, 41.887016, 25.273842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691368, 41.914215, 24.743273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398045, 41.677834, 24.608795>,  <33.222050, 41.536007, 24.528109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398045, 41.677834, 24.608795>,  <33.691368, 41.914215, 24.743273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398045, 41.677834, 24.608795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088540, 0.573279, -0.814562,
		0.674101, -0.567563, -0.472716,
		-0.733313, -0.590951, -0.336196,
		33.178051, 41.500549, 24.507936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812126, 41.743008, 24.078712>,  <33.691368, 41.914215, 24.743273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812126, 41.743008, 24.078712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416046, 41.690281, 24.097157>,  <33.178398, 41.658646, 24.108223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416046, 41.690281, 24.097157>,  <33.812126, 41.743008, 24.078712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416046, 41.690281, 24.097157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096057, 0.403227, -0.910044,
		0.101369, -0.905556, -0.411938,
		-0.990200, -0.131820, 0.046110,
		33.118984, 41.650734, 24.110989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642429, 41.333637, 23.473257>,  <33.812126, 41.743008, 24.078712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642429, 41.333637, 23.473257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326698, 41.534103, 23.615126>,  <33.137260, 41.654381, 23.700247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326698, 41.534103, 23.615126>,  <33.642429, 41.333637, 23.473257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326698, 41.534103, 23.615126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132808, 0.424625, -0.895576,
		-0.599431, -0.754009, -0.268612,
		-0.789332, 0.501162, 0.354671,
		33.089897, 41.684452, 23.721527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235443, 41.447014, 22.822392>,  <33.642429, 41.333637, 23.473257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235443, 41.447014, 22.822392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117592, 41.713322, 23.096600>,  <33.046879, 41.873108, 23.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117592, 41.713322, 23.096600>,  <33.235443, 41.447014, 22.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117592, 41.713322, 23.096600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368114, 0.582931, -0.724351,
		-0.881865, -0.465765, 0.073331,
		-0.294631, 0.665774, 0.685520,
		33.029202, 41.913055, 23.302256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559464, 41.632477, 22.541140>,  <33.235443, 41.447014, 22.822392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559464, 41.632477, 22.541140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652649, 41.930729, 22.790863>,  <32.708561, 42.109680, 22.940697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652649, 41.930729, 22.790863>,  <32.559464, 41.632477, 22.541140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652649, 41.930729, 22.790863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091200, 0.655891, -0.749326,
		-0.968201, 0.117626, 0.220798,
		0.232959, 0.745635, 0.624307,
		32.722538, 42.154419, 22.978155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163338, 42.147564, 22.297380>,  <32.559464, 41.632477, 22.541140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163338, 42.147564, 22.297380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465664, 42.322762, 22.492077>,  <32.647060, 42.427879, 22.608894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465664, 42.322762, 22.492077>,  <32.163338, 42.147564, 22.297380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465664, 42.322762, 22.492077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037505, 0.713173, -0.699984,
		-0.653715, 0.547311, 0.522597,
		0.755811, 0.437990, 0.486739,
		32.692406, 42.454159, 22.638098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003906, 42.819103, 22.326822>,  <32.163338, 42.147564, 22.297380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003906, 42.819103, 22.326822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400932, 42.804771, 22.373358>,  <32.639149, 42.796173, 22.401279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400932, 42.804771, 22.373358>,  <32.003906, 42.819103, 22.326822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400932, 42.804771, 22.373358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107162, 0.710513, -0.695476,
		-0.057742, 0.702771, 0.709069,
		0.992563, -0.035827, 0.116337,
		32.698700, 42.794022, 22.408258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276775, 43.457745, 22.131351>,  <32.003906, 42.819103, 22.326822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276775, 43.457745, 22.131351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632866, 43.276608, 22.151064>,  <32.846519, 43.167927, 22.162891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632866, 43.276608, 22.151064>,  <32.276775, 43.457745, 22.131351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632866, 43.276608, 22.151064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376844, 0.671379, -0.638153,
		0.255894, 0.586673, 0.768331,
		0.890228, -0.452841, 0.049282,
		32.899933, 43.140755, 22.165848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761719, 44.024551, 22.452682>,  <32.276775, 43.457745, 22.131351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761719, 44.024551, 22.452682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949692, 43.733089, 22.253393>,  <33.062473, 43.558212, 22.133820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949692, 43.733089, 22.253393>,  <32.761719, 44.024551, 22.452682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949692, 43.733089, 22.253393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458352, 0.683802, -0.567740,
		0.754373, 0.038435, 0.655319,
		0.469930, -0.728655, -0.498225,
		33.090672, 43.514492, 22.103926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531651, 44.257648, 22.498535>,  <32.761719, 44.024551, 22.452682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531651, 44.257648, 22.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455421, 43.997746, 22.204189>,  <33.409683, 43.841805, 22.027582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455421, 43.997746, 22.204189>,  <33.531651, 44.257648, 22.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455421, 43.997746, 22.204189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404324, 0.631117, -0.661977,
		0.894542, -0.423681, 0.142441,
		-0.190571, -0.649758, -0.735865,
		33.398251, 43.802818, 21.983429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181293, 44.102898, 22.121689>,  <33.531651, 44.257648, 22.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181293, 44.102898, 22.121689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888123, 44.027908, 21.860100>,  <33.712219, 43.982914, 21.703146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888123, 44.027908, 21.860100>,  <34.181293, 44.102898, 22.121689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888123, 44.027908, 21.860100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358217, 0.710882, -0.605250,
		0.578363, -0.677865, -0.453867,
		-0.732924, -0.187471, -0.653970,
		33.668247, 43.971668, 21.663908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461304, 44.133511, 21.415346>,  <34.181293, 44.102898, 22.121689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461304, 44.133511, 21.415346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073009, 44.124588, 21.319702>,  <33.840034, 44.119236, 21.262316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073009, 44.124588, 21.319702>,  <34.461304, 44.133511, 21.415346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073009, 44.124588, 21.319702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165141, 0.660892, -0.732087,
		0.174355, -0.750150, -0.637868,
		-0.970736, -0.022305, -0.239110,
		33.781788, 44.117897, 21.247969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476753, 43.880039, 20.770693>,  <34.461304, 44.133511, 21.415346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476753, 43.880039, 20.770693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126270, 44.072346, 20.784151>,  <33.915981, 44.187729, 20.792227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126270, 44.072346, 20.784151>,  <34.476753, 43.880039, 20.770693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126270, 44.072346, 20.784151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296867, 0.593405, -0.748158,
		-0.379656, -0.645550, -0.662667,
		-0.876203, 0.480767, 0.033647,
		33.863411, 44.216576, 20.794245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231644, 44.177090, 20.121861>,  <34.476753, 43.880039, 20.770693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231644, 44.177090, 20.121861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981537, 44.402935, 20.337362>,  <33.831474, 44.538441, 20.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981537, 44.402935, 20.337362>,  <34.231644, 44.177090, 20.121861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981537, 44.402935, 20.337362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213024, 0.787612, -0.578176,
		-0.750775, -0.246746, -0.612743,
		-0.625266, 0.564609, 0.538757,
		33.793957, 44.572319, 20.498989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894192, 44.517834, 19.602530>,  <34.231644, 44.177090, 20.121861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894192, 44.517834, 19.602530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827724, 44.747570, 19.923159>,  <33.787846, 44.885414, 20.115536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827724, 44.747570, 19.923159>,  <33.894192, 44.517834, 19.602530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827724, 44.747570, 19.923159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073219, 0.817814, -0.570805,
		-0.983376, -0.036158, -0.177947,
		-0.166167, 0.574345, 0.801571,
		33.777874, 44.919872, 20.163630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316193, 44.961937, 19.379665>,  <33.894192, 44.517834, 19.602530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316193, 44.961937, 19.379665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537193, 45.114487, 19.676123>,  <33.669796, 45.206017, 19.853996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537193, 45.114487, 19.676123>,  <33.316193, 44.961937, 19.379665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537193, 45.114487, 19.676123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016145, 0.884118, -0.466984,
		-0.833354, 0.269977, 0.482322,
		0.552504, 0.381375, 0.741142,
		33.702946, 45.228901, 19.898466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057228, 45.710712, 19.549721>,  <33.316193, 44.961937, 19.379665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057228, 45.710712, 19.549721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432602, 45.659122, 19.677910>,  <33.657825, 45.628166, 19.754824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432602, 45.659122, 19.677910>,  <33.057228, 45.710712, 19.549721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432602, 45.659122, 19.677910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237950, 0.913865, -0.328985,
		-0.250439, 0.384988, 0.888293,
		0.938435, -0.128978, 0.320475,
		33.714134, 45.620430, 19.774052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296280, 46.144192, 20.162437>,  <33.057228, 45.710712, 19.549721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296280, 46.144192, 20.162437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608326, 46.048603, 19.931158>,  <33.795555, 45.991249, 19.792391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608326, 46.048603, 19.931158>,  <33.296280, 46.144192, 20.162437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608326, 46.048603, 19.931158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048620, 0.944537, -0.324785,
		0.623746, 0.225257, 0.748465,
		0.780114, -0.238974, -0.578199,
		33.842361, 45.976910, 19.757698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815361, 46.709805, 19.930010>,  <33.296280, 46.144192, 20.162437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815361, 46.709805, 19.930010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818897, 46.900524, 20.281597>,  <33.821018, 47.014957, 20.492550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818897, 46.900524, 20.281597>,  <33.815361, 46.709805, 19.930010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818897, 46.900524, 20.281597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544827, 0.734777, -0.404062,
		-0.838502, 0.482456, -0.253281,
		0.008837, 0.476801, 0.878967,
		33.821548, 47.043564, 20.545288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739769, 47.024837, 19.258993>,  <33.815361, 46.709805, 19.930010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739769, 47.024837, 19.258993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944347, 46.984295, 18.917665>,  <34.067093, 46.959969, 18.712870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944347, 46.984295, 18.917665>,  <33.739769, 47.024837, 19.258993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944347, 46.984295, 18.917665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582235, 0.689462, -0.430865,
		0.632002, 0.717194, 0.293608,
		0.511446, -0.101358, -0.853317,
		34.097782, 46.953888, 18.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204250, 47.605976, 19.678089>,  <33.739769, 47.024837, 19.258993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204250, 47.605976, 19.678089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506992, 47.865196, 19.644140>,  <34.688637, 48.020729, 19.623770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506992, 47.865196, 19.644140>,  <34.204250, 47.605976, 19.678089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506992, 47.865196, 19.644140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421816, -0.385131, 0.820820,
		0.499248, -0.657039, -0.564846,
		0.756851, 0.648054, -0.084874,
		34.734047, 48.059612, 19.618677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790447, 47.237709, 19.818655>,  <34.204250, 47.605976, 19.678089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790447, 47.237709, 19.818655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843582, 47.620834, 19.920599>,  <34.875465, 47.850708, 19.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843582, 47.620834, 19.920599>,  <34.790447, 47.237709, 19.818655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843582, 47.620834, 19.920599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254803, -0.281499, 0.925113,
		0.957825, -0.057953, -0.281447,
		0.132841, 0.957810, 0.254860,
		34.883434, 47.908176, 19.997057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449486, 47.380299, 20.016865>,  <34.790447, 47.237709, 19.818655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449486, 47.380299, 20.016865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236187, 47.668430, 20.194298>,  <35.108208, 47.841309, 20.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236187, 47.668430, 20.194298>,  <35.449486, 47.380299, 20.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236187, 47.668430, 20.194298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180310, -0.415526, 0.891531,
		0.826519, 0.555390, 0.091696,
		-0.533249, 0.720333, 0.443582,
		35.076214, 47.884529, 20.327372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779655, 47.691048, 20.569296>,  <35.449486, 47.380299, 20.016865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779655, 47.691048, 20.569296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385468, 47.665932, 20.632412>,  <35.148952, 47.650860, 20.670282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385468, 47.665932, 20.632412>,  <35.779655, 47.691048, 20.569296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385468, 47.665932, 20.632412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167280, -0.519186, 0.838131,
		0.029293, 0.852351, 0.522149,
		-0.985474, -0.062793, 0.157790,
		35.089825, 47.647095, 20.679749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832653, 47.408928, 21.248999>,  <35.779655, 47.691048, 20.569296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832653, 47.408928, 21.248999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447384, 47.376442, 21.146467>,  <35.216221, 47.356953, 21.084948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447384, 47.376442, 21.146467>,  <35.832653, 47.408928, 21.248999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447384, 47.376442, 21.146467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160036, -0.592918, 0.789200,
		-0.216076, 0.801157, 0.558085,
		-0.963172, -0.081213, -0.256329,
		35.158432, 47.352077, 21.069569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648155, 47.112740, 21.810770>,  <35.832653, 47.408928, 21.248999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648155, 47.112740, 21.810770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294685, 47.095123, 21.624357>,  <35.082603, 47.084553, 21.512510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294685, 47.095123, 21.624357>,  <35.648155, 47.112740, 21.810770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294685, 47.095123, 21.624357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370565, -0.542483, 0.753918,
		-0.286019, 0.838911, 0.463056,
		-0.883671, -0.044043, -0.466032,
		35.029583, 47.081909, 21.484547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098705, 47.500702, 22.111803>,  <35.648155, 47.112740, 21.810770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098705, 47.500702, 22.111803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946983, 47.167252, 21.951204>,  <34.855949, 46.967182, 21.854845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946983, 47.167252, 21.951204>,  <35.098705, 47.500702, 22.111803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946983, 47.167252, 21.951204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312606, -0.292949, 0.903581,
		-0.870863, 0.468245, -0.149478,
		-0.379308, -0.833623, -0.401495,
		34.833191, 46.917164, 21.830755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487949, 47.428104, 22.406889>,  <35.098705, 47.500702, 22.111803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487949, 47.428104, 22.406889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605164, 47.063545, 22.291315>,  <34.675491, 46.844810, 22.221972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605164, 47.063545, 22.291315>,  <34.487949, 47.428104, 22.406889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605164, 47.063545, 22.291315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322248, -0.378666, 0.867622,
		-0.900158, -0.161139, -0.404660,
		0.293039, -0.911398, -0.288932,
		34.693077, 46.790127, 22.204636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966030, 46.999054, 22.561733>,  <34.487949, 47.428104, 22.406889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966030, 46.999054, 22.561733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288269, 46.762264, 22.571346>,  <34.481613, 46.620190, 22.577114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288269, 46.762264, 22.571346>,  <33.966030, 46.999054, 22.561733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288269, 46.762264, 22.571346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301646, -0.374907, 0.876616,
		-0.509925, -0.713448, -0.480591,
		0.805597, -0.591977, 0.024034,
		34.529949, 46.584671, 22.578556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788898, 46.272961, 22.810947>,  <33.966030, 46.999054, 22.561733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788898, 46.272961, 22.810947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187134, 46.280815, 22.847641>,  <34.426075, 46.285526, 22.869658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187134, 46.280815, 22.847641>,  <33.788898, 46.272961, 22.810947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187134, 46.280815, 22.847641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071354, -0.476306, 0.876379,
		0.060903, -0.879060, -0.472804,
		0.995590, 0.019638, 0.091733,
		34.485809, 46.286705, 22.875160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960316, 45.652370, 23.105194>,  <33.788898, 46.272961, 22.810947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960316, 45.652370, 23.105194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289639, 45.874405, 23.152588>,  <34.487232, 46.007626, 23.181025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289639, 45.874405, 23.152588>,  <33.960316, 45.652370, 23.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289639, 45.874405, 23.152588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109171, -0.359717, 0.926653,
		0.556995, -0.749987, -0.356758,
		0.823309, 0.555089, 0.118484,
		34.536633, 46.040932, 23.188133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435017, 45.203682, 23.327768>,  <33.960316, 45.652370, 23.105194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435017, 45.203682, 23.327768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612011, 45.540859, 23.450176>,  <34.718208, 45.743168, 23.523621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612011, 45.540859, 23.450176>,  <34.435017, 45.203682, 23.327768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612011, 45.540859, 23.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238010, -0.439395, 0.866189,
		0.864616, -0.310437, -0.395055,
		0.442482, 0.842948, 0.306021,
		34.744755, 45.793743, 23.541983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946457, 45.001331, 23.710875>,  <34.435017, 45.203682, 23.327768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946457, 45.001331, 23.710875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898785, 45.376030, 23.842512>,  <34.870182, 45.600849, 23.921495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898785, 45.376030, 23.842512>,  <34.946457, 45.001331, 23.710875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898785, 45.376030, 23.842512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063898, -0.323535, 0.944056,
		0.990814, 0.133543, -0.021297,
		-0.119182, 0.936745, 0.329096,
		34.863029, 45.657055, 23.941240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517384, 45.105728, 24.139961>,  <34.946457, 45.001331, 23.710875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517384, 45.105728, 24.139961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236374, 45.364414, 24.258772>,  <35.067768, 45.519627, 24.330059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236374, 45.364414, 24.258772>,  <35.517384, 45.105728, 24.139961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236374, 45.364414, 24.258772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168787, -0.254051, 0.952349,
		0.691358, 0.719179, 0.069319,
		-0.702520, 0.646714, 0.297028,
		35.025620, 45.558430, 24.347879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845665, 45.423794, 24.729212>,  <35.517384, 45.105728, 24.139961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845665, 45.423794, 24.729212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452202, 45.494823, 24.741114>,  <35.216125, 45.537441, 24.748255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452202, 45.494823, 24.741114>,  <35.845665, 45.423794, 24.729212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452202, 45.494823, 24.741114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011817, -0.101232, 0.994793,
		0.179664, 0.978886, 0.097479,
		-0.983657, 0.177577, 0.029755,
		35.157104, 45.548096, 24.750040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748222, 45.906639, 25.335016>,  <35.845665, 45.423794, 24.729212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748222, 45.906639, 25.335016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414730, 45.703014, 25.249464>,  <35.214634, 45.580837, 25.198133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414730, 45.703014, 25.249464>,  <35.748222, 45.906639, 25.335016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414730, 45.703014, 25.249464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136981, -0.184555, 0.973230,
		-0.534908, 0.840710, 0.084137,
		-0.833732, -0.509063, -0.213881,
		35.164612, 45.550297, 25.185299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428288, 46.020157, 25.997370>,  <35.748222, 45.906639, 25.335016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428288, 46.020157, 25.997370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195435, 45.743618, 25.826180>,  <35.055721, 45.577694, 25.723465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195435, 45.743618, 25.826180>,  <35.428288, 46.020157, 25.997370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195435, 45.743618, 25.826180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153616, -0.423365, 0.892840,
		-0.798451, 0.585495, 0.140253,
		-0.582132, -0.691344, -0.427978,
		35.020794, 45.536213, 25.697786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822281, 45.965290, 26.422493>,  <35.428288, 46.020157, 25.997370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822281, 45.965290, 26.422493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836624, 45.621941, 26.217787>,  <34.845230, 45.415932, 26.094963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836624, 45.621941, 26.217787>,  <34.822281, 45.965290, 26.422493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836624, 45.621941, 26.217787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213476, -0.506856, 0.835180,
		-0.976290, 0.079302, -0.201417,
		0.035859, -0.858375, -0.511768,
		34.847382, 45.364429, 26.064257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295364, 45.558887, 26.560524>,  <34.822281, 45.965290, 26.422493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295364, 45.558887, 26.560524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531948, 45.270435, 26.416225>,  <34.673901, 45.097363, 26.329645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531948, 45.270435, 26.416225>,  <34.295364, 45.558887, 26.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531948, 45.270435, 26.416225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293653, -0.609310, 0.736552,
		-0.750960, -0.329708, -0.572147,
		0.591462, -0.721134, -0.360748,
		34.709385, 45.054096, 26.308001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807354, 44.890583, 26.516108>,  <34.295364, 45.558887, 26.560524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807354, 44.890583, 26.516108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191143, 44.777885, 26.514153>,  <34.421417, 44.710266, 26.512980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191143, 44.777885, 26.514153>,  <33.807354, 44.890583, 26.516108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191143, 44.777885, 26.514153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213566, -0.738383, 0.639672,
		-0.183836, -0.612706, -0.768633,
		0.959476, -0.281748, -0.004888,
		34.478985, 44.693359, 26.512686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823009, 44.157036, 26.336535>,  <33.807354, 44.890583, 26.516108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823009, 44.157036, 26.336535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164181, 44.220829, 26.535364>,  <34.368881, 44.259106, 26.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164181, 44.220829, 26.535364>,  <33.823009, 44.157036, 26.336535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164181, 44.220829, 26.535364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233969, -0.734417, 0.637095,
		0.466667, -0.659694, -0.589088,
		0.852925, 0.159484, 0.497076,
		34.420059, 44.268673, 26.684486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051453, 43.468731, 26.528105>,  <33.823009, 44.157036, 26.336535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051453, 43.468731, 26.528105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237003, 43.729359, 26.768198>,  <34.348331, 43.885735, 26.912254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237003, 43.729359, 26.768198>,  <34.051453, 43.468731, 26.528105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237003, 43.729359, 26.768198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207815, -0.578601, 0.788691,
		0.861181, -0.490591, -0.132993,
		0.463875, 0.651568, 0.600233,
		34.376167, 43.924828, 26.948267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395218, 42.966507, 27.004129>,  <34.051453, 43.468731, 26.528105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395218, 42.966507, 27.004129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435760, 43.319344, 27.188150>,  <34.460087, 43.531044, 27.298563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435760, 43.319344, 27.188150>,  <34.395218, 42.966507, 27.004129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435760, 43.319344, 27.188150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177867, -0.438914, 0.880749,
		0.978821, -0.171100, 0.112406,
		0.101360, 0.882088, 0.460051,
		34.466167, 43.583969, 27.326166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937843, 42.942883, 27.545813>,  <34.395218, 42.966507, 27.004129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937843, 42.942883, 27.545813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695381, 43.247143, 27.638758>,  <34.549904, 43.429699, 27.694525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695381, 43.247143, 27.638758>,  <34.937843, 42.942883, 27.545813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695381, 43.247143, 27.638758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095977, -0.359976, 0.928012,
		0.789535, 0.540217, 0.291206,
		-0.606154, 0.760647, 0.232365,
		34.513535, 43.475338, 27.708467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250805, 43.237366, 28.176449>,  <34.937843, 42.942883, 27.545813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250805, 43.237366, 28.176449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864948, 43.342010, 28.163658>,  <34.633434, 43.404797, 28.155983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864948, 43.342010, 28.163658>,  <35.250805, 43.237366, 28.176449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864948, 43.342010, 28.163658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127915, -0.358634, 0.924673,
		0.230442, 0.896068, 0.379418,
		-0.964642, 0.261616, -0.031976,
		34.575554, 43.420494, 28.154066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155281, 43.538734, 28.896852>,  <35.250805, 43.237366, 28.176449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155281, 43.538734, 28.896852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794724, 43.474087, 28.736170>,  <34.578388, 43.435299, 28.639759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794724, 43.474087, 28.736170>,  <35.155281, 43.538734, 28.896852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794724, 43.474087, 28.736170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312210, -0.400223, 0.861595,
		-0.300026, 0.902053, 0.310298,
		-0.901393, -0.161623, -0.401708,
		34.524307, 43.425598, 28.615658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738117, 43.819973, 29.446209>,  <35.155281, 43.538734, 28.896852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738117, 43.819973, 29.446209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532040, 43.576000, 29.205357>,  <34.408394, 43.429615, 29.060846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532040, 43.576000, 29.205357>,  <34.738117, 43.819973, 29.446209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532040, 43.576000, 29.205357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319499, -0.515229, 0.795273,
		-0.795297, 0.602099, 0.070570,
		-0.515193, -0.609931, -0.602130,
		34.377483, 43.393021, 29.024717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220257, 43.620125, 29.835581>,  <34.738117, 43.819973, 29.446209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220257, 43.620125, 29.835581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204128, 43.345184, 29.545498>,  <34.194450, 43.180222, 29.371449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204128, 43.345184, 29.545498>,  <34.220257, 43.620125, 29.835581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204128, 43.345184, 29.545498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292723, -0.685827, 0.666300,
		-0.955347, 0.239150, -0.173550,
		-0.040320, -0.687350, -0.725207,
		34.192032, 43.138981, 29.327936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629036, 43.318745, 29.921551>,  <34.220257, 43.620125, 29.835581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629036, 43.318745, 29.921551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859493, 43.060822, 29.720640>,  <33.997768, 42.906067, 29.600094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859493, 43.060822, 29.720640>,  <33.629036, 43.318745, 29.921551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859493, 43.060822, 29.720640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245717, -0.722732, 0.645974,
		-0.779542, -0.248754, -0.574835,
		0.576140, -0.644810, -0.502277,
		34.032337, 42.867378, 29.569958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213776, 42.680714, 29.820766>,  <33.629036, 43.318745, 29.921551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213776, 42.680714, 29.820766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591347, 42.563496, 29.759937>,  <33.817890, 42.493164, 29.723440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591347, 42.563496, 29.759937>,  <33.213776, 42.680714, 29.820766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591347, 42.563496, 29.759937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154301, -0.798787, 0.581490,
		-0.291874, -0.525420, -0.799215,
		0.943928, -0.293042, -0.152073,
		33.874527, 42.475582, 29.714315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215000, 41.957520, 29.544310>,  <33.213776, 42.680714, 29.820766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215000, 41.957520, 29.544310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569237, 42.024361, 29.717659>,  <33.781776, 42.064465, 29.821669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569237, 42.024361, 29.717659>,  <33.215000, 41.957520, 29.544310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569237, 42.024361, 29.717659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125327, -0.812462, 0.569384,
		0.447245, -0.558553, -0.698564,
		0.885588, 0.167105, 0.433371,
		33.834911, 42.074493, 29.847670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557083, 41.303005, 29.567051>,  <33.215000, 41.957520, 29.544310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557083, 41.303005, 29.567051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778835, 41.513054, 29.825325>,  <33.911888, 41.639084, 29.980289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778835, 41.513054, 29.825325>,  <33.557083, 41.303005, 29.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778835, 41.513054, 29.825325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014240, -0.769721, 0.638221,
		0.832142, -0.363011, -0.419240,
		0.554379, 0.525121, 0.645687,
		33.945148, 41.670589, 30.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020947, 40.829472, 29.877289>,  <33.557083, 41.303005, 29.567051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020947, 40.829472, 29.877289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989998, 41.144768, 30.121479>,  <33.971428, 41.333946, 30.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989998, 41.144768, 30.121479>,  <34.020947, 40.829472, 29.877289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989998, 41.144768, 30.121479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194605, -0.612476, 0.766160,
		0.977825, -0.059520, 0.200787,
		-0.077375, 0.788245, 0.610478,
		33.966785, 41.381241, 30.304623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400055, 40.569527, 30.522202>,  <34.020947, 40.829472, 29.877289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400055, 40.569527, 30.522202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150902, 40.861122, 30.635752>,  <34.001408, 41.036079, 30.703882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150902, 40.861122, 30.635752>,  <34.400055, 40.569527, 30.522202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150902, 40.861122, 30.635752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259768, -0.535010, 0.803918,
		0.737925, 0.427008, 0.522619,
		-0.622886, 0.728991, 0.283874,
		33.964035, 41.079819, 30.720915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736977, 40.930199, 31.086145>,  <34.400055, 40.569527, 30.522202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736977, 40.930199, 31.086145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340595, 40.980404, 31.105122>,  <34.102764, 41.010529, 31.116507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340595, 40.980404, 31.105122>,  <34.736977, 40.930199, 31.086145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340595, 40.980404, 31.105122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033771, -0.575469, 0.817126,
		0.129862, 0.808134, 0.574504,
		-0.990957, 0.125515, 0.047440,
		34.043308, 41.018059, 31.119354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643597, 41.310596, 31.726971>,  <34.736977, 40.930199, 31.086145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643597, 41.310596, 31.726971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312595, 41.121552, 31.605724>,  <34.113995, 41.008125, 31.532976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312595, 41.121552, 31.605724>,  <34.643597, 41.310596, 31.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312595, 41.121552, 31.605724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014741, -0.521395, 0.853188,
		-0.561270, 0.710482, 0.424489,
		-0.827501, -0.472612, -0.303117,
		34.064346, 40.979767, 31.514790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286507, 41.411701, 32.300556>,  <34.643597, 41.310596, 31.726971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286507, 41.411701, 32.300556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096478, 41.125645, 32.095470>,  <33.982460, 40.954010, 31.972418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096478, 41.125645, 32.095470>,  <34.286507, 41.411701, 32.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096478, 41.125645, 32.095470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026348, -0.570845, 0.820635,
		-0.879554, 0.403367, 0.252348,
		-0.475068, -0.715144, -0.512717,
		33.953957, 40.911102, 31.941656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763203, 41.200062, 32.791058>,  <34.286507, 41.411701, 32.300556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763203, 41.200062, 32.791058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756844, 40.900482, 32.526085>,  <33.753029, 40.720734, 32.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756844, 40.900482, 32.526085>,  <33.763203, 41.200062, 32.791058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756844, 40.900482, 32.526085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040994, -0.661474, 0.748848,
		-0.999033, 0.039060, -0.020187,
		-0.015897, -0.748951, -0.662435,
		33.752075, 40.675797, 32.327354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044834, 40.756657, 32.895416>,  <33.763203, 41.200062, 32.791058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044834, 40.756657, 32.895416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316643, 40.524830, 32.715485>,  <33.479729, 40.385735, 32.607525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316643, 40.524830, 32.715485>,  <33.044834, 40.756657, 32.895416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316643, 40.524830, 32.715485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081249, -0.668811, 0.738979,
		-0.729141, -0.465605, -0.501562,
		0.679523, -0.579572, -0.449828,
		33.520500, 40.350960, 32.580536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775314, 40.086166, 32.929211>,  <33.044834, 40.756657, 32.895416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775314, 40.086166, 32.929211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167850, 40.060589, 32.856678>,  <33.403374, 40.045242, 32.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167850, 40.060589, 32.856678>,  <32.775314, 40.086166, 32.929211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167850, 40.060589, 32.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095493, -0.656449, 0.748302,
		-0.166882, -0.751655, -0.638094,
		0.981342, -0.063945, -0.181328,
		33.462254, 40.041405, 32.802280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850525, 39.370117, 33.064209>,  <32.775314, 40.086166, 32.929211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850525, 39.370117, 33.064209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217712, 39.526951, 33.040184>,  <33.438026, 39.621052, 33.025768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217712, 39.526951, 33.040184>,  <32.850525, 39.370117, 33.064209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217712, 39.526951, 33.040184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341101, -0.703008, 0.624043,
		0.202448, -0.593341, -0.779077,
		0.917968, 0.392080, -0.060067,
		33.493103, 39.644573, 33.022163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302219, 38.860413, 33.045784>,  <32.850525, 39.370117, 33.064209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302219, 38.860413, 33.045784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566620, 39.133106, 33.171204>,  <33.725262, 39.296722, 33.246456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566620, 39.133106, 33.171204>,  <33.302219, 38.860413, 33.045784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566620, 39.133106, 33.171204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332368, -0.640621, 0.692196,
		0.672761, -0.353329, -0.650039,
		0.661002, 0.681735, 0.313549,
		33.764919, 39.337627, 33.265270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956905, 38.529301, 33.108406>,  <33.302219, 38.860413, 33.045784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956905, 38.529301, 33.108406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023952, 38.857403, 33.327160>,  <34.064182, 39.054264, 33.458412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023952, 38.857403, 33.327160>,  <33.956905, 38.529301, 33.108406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023952, 38.857403, 33.327160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552703, -0.537544, 0.636841,
		0.816347, 0.195517, -0.543461,
		0.167621, 0.820256, 0.546886,
		34.074238, 39.103481, 33.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697727, 38.543003, 33.158058>,  <33.956905, 38.529301, 33.108406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697727, 38.543003, 33.158058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518078, 38.732281, 33.461208>,  <34.410290, 38.845848, 33.643101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518078, 38.732281, 33.461208>,  <34.697727, 38.543003, 33.158058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518078, 38.732281, 33.461208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553514, -0.518504, 0.651748,
		0.701364, 0.712211, -0.029046,
		-0.449121, 0.473190, 0.757879,
		34.383343, 38.874237, 33.688572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280079, 38.721218, 33.574108>,  <34.697727, 38.543003, 33.158058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280079, 38.721218, 33.574108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951153, 38.714481, 33.801620>,  <34.753796, 38.710442, 33.938126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951153, 38.714481, 33.801620>,  <35.280079, 38.721218, 33.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951153, 38.714481, 33.801620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503734, -0.486446, 0.713879,
		0.264659, 0.873548, 0.408496,
		-0.822319, -0.016839, 0.568778,
		34.704456, 38.709431, 33.972256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758324, 38.707081, 34.103333>,  <35.280079, 38.721218, 33.574108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758324, 38.707081, 34.103333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157974, 38.691681, 34.096737>,  <36.397762, 38.682442, 34.092781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157974, 38.691681, 34.096737>,  <35.758324, 38.707081, 34.103333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157974, 38.691681, 34.096737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010904, 0.619182, -0.785172,
		0.040437, 0.784303, 0.619059,
		0.999123, -0.038500, -0.016485,
		36.457710, 38.680130, 34.091793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941135, 39.400360, 33.919147>,  <35.758324, 38.707081, 34.103333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941135, 39.400360, 33.919147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284355, 39.210052, 33.841801>,  <36.490288, 39.095867, 33.795391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284355, 39.210052, 33.841801>,  <35.941135, 39.400360, 33.919147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284355, 39.210052, 33.841801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193556, 0.648349, -0.736329,
		0.475692, 0.594381, 0.648405,
		0.858052, -0.475768, -0.193368,
		36.541771, 39.067322, 33.783791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477882, 39.964809, 33.894188>,  <35.941135, 39.400360, 33.919147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477882, 39.964809, 33.894188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611485, 39.656876, 33.676640>,  <36.691647, 39.472115, 33.546108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611485, 39.656876, 33.676640>,  <36.477882, 39.964809, 33.894188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611485, 39.656876, 33.676640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150599, 0.613183, -0.775453,
		0.930463, 0.177097, 0.320741,
		0.334003, -0.769834, -0.543873,
		36.711685, 39.425926, 33.513477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133572, 40.192608, 33.587315>,  <36.477882, 39.964809, 33.894188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133572, 40.192608, 33.587315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006435, 39.895123, 33.352074>,  <36.930153, 39.716629, 33.210930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006435, 39.895123, 33.352074>,  <37.133572, 40.192608, 33.587315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006435, 39.895123, 33.352074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330927, 0.494242, -0.803873,
		0.888517, -0.450125, 0.089023,
		-0.317845, -0.743715, -0.588101,
		36.911083, 39.672009, 33.175644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654423, 40.139267, 33.200359>,  <37.133572, 40.192608, 33.587315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654423, 40.139267, 33.200359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368752, 39.955311, 32.989285>,  <37.197350, 39.844936, 32.862640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368752, 39.955311, 32.989285>,  <37.654423, 40.139267, 33.200359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368752, 39.955311, 32.989285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372094, 0.389099, -0.842703,
		0.592873, -0.798187, -0.106763,
		-0.714176, -0.459890, -0.527687,
		37.154499, 39.817345, 32.830978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909218, 40.050995, 32.509407>,  <37.654423, 40.139267, 33.200359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909218, 40.050995, 32.509407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522057, 39.984428, 32.434074>,  <37.289761, 39.944489, 32.388874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522057, 39.984428, 32.434074>,  <37.909218, 40.050995, 32.509407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522057, 39.984428, 32.434074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113117, 0.380716, -0.917747,
		0.224428, -0.909594, -0.349672,
		-0.967903, -0.166415, -0.188334,
		37.231686, 39.934505, 32.377575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836830, 39.706059, 31.870955>,  <37.909218, 40.050995, 32.509407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836830, 39.706059, 31.870955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486328, 39.894691, 31.910536>,  <37.276028, 40.007870, 31.934284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486328, 39.894691, 31.910536>,  <37.836830, 39.706059, 31.870955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486328, 39.894691, 31.910536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096002, 0.372100, -0.923214,
		-0.472193, -0.799469, -0.371327,
		-0.876252, 0.471583, 0.098952,
		37.223454, 40.036167, 31.940222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459770, 39.562298, 31.261751>,  <37.836830, 39.706059, 31.870955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459770, 39.562298, 31.261751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309845, 39.891560, 31.432365>,  <37.219891, 40.089115, 31.534735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309845, 39.891560, 31.432365>,  <37.459770, 39.562298, 31.261751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309845, 39.891560, 31.432365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043430, 0.475162, -0.878826,
		-0.926082, -0.310873, -0.213847,
		-0.374815, 0.823152, 0.426537,
		37.197399, 40.138504, 31.560328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915489, 39.816223, 30.776098>,  <37.459770, 39.562298, 31.261751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915489, 39.816223, 30.776098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008247, 40.132446, 31.002811>,  <37.063904, 40.322182, 31.138840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008247, 40.132446, 31.002811>,  <36.915489, 39.816223, 30.776098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008247, 40.132446, 31.002811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018696, 0.578934, -0.815160,
		-0.972561, 0.199628, 0.119472,
		0.231895, 0.790559, 0.566781,
		37.077816, 40.369614, 31.172846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457790, 40.305893, 30.518881>,  <36.915489, 39.816223, 30.776098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457790, 40.305893, 30.518881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727371, 40.517403, 30.725252>,  <36.889118, 40.644310, 30.849075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727371, 40.517403, 30.725252>,  <36.457790, 40.305893, 30.518881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727371, 40.517403, 30.725252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014305, 0.688887, -0.724727,
		-0.738637, 0.495811, 0.456712,
		0.673951, 0.528778, 0.515930,
		36.929558, 40.676037, 30.880032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240940, 41.060730, 30.445799>,  <36.457790, 40.305893, 30.518881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240940, 41.060730, 30.445799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628349, 41.063599, 30.545332>,  <36.860794, 41.065319, 30.605051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628349, 41.063599, 30.545332>,  <36.240940, 41.060730, 30.445799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628349, 41.063599, 30.545332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141947, 0.805238, -0.575711,
		-0.204499, 0.592909, 0.778871,
		0.968520, 0.007174, 0.248832,
		36.918907, 41.065750, 30.619982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428322, 41.683216, 30.557573>,  <36.240940, 41.060730, 30.445799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428322, 41.683216, 30.557573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778481, 41.500637, 30.493889>,  <36.988575, 41.391090, 30.455679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778481, 41.500637, 30.493889>,  <36.428322, 41.683216, 30.557573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778481, 41.500637, 30.493889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274042, 0.739878, -0.614395,
		0.398232, 0.494207, 0.772768,
		0.875392, -0.456443, -0.159210,
		37.041100, 41.363705, 30.446125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977650, 42.150669, 30.703981>,  <36.428322, 41.683216, 30.557573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977650, 42.150669, 30.703981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146515, 41.892643, 30.449213>,  <37.247833, 41.737827, 30.296352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146515, 41.892643, 30.449213>,  <36.977650, 42.150669, 30.703981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146515, 41.892643, 30.449213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216649, 0.754038, -0.620073,
		0.880249, 0.123786, 0.458081,
		0.422167, -0.645061, -0.636923,
		37.273167, 41.699123, 30.258137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656326, 42.446346, 30.551550>,  <36.977650, 42.150669, 30.703981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656326, 42.446346, 30.551550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566574, 42.195427, 30.253246>,  <37.512722, 42.044876, 30.074265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566574, 42.195427, 30.253246>,  <37.656326, 42.446346, 30.551550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566574, 42.195427, 30.253246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197520, 0.720110, -0.665152,
		0.954275, -0.296548, -0.037673,
		-0.224378, -0.627296, -0.745757,
		37.499260, 42.007236, 30.029520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226723, 42.500011, 30.070734>,  <37.656326, 42.446346, 30.551550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226723, 42.500011, 30.070734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955563, 42.331432, 29.829790>,  <37.792866, 42.230286, 29.685225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955563, 42.331432, 29.829790>,  <38.226723, 42.500011, 30.070734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955563, 42.331432, 29.829790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292893, 0.596695, -0.747107,
		0.674293, -0.682888, -0.281058,
		-0.677896, -0.421449, -0.602360,
		37.752193, 42.204998, 29.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552402, 42.473537, 29.486879>,  <38.226723, 42.500011, 30.070734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552402, 42.473537, 29.486879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166298, 42.448269, 29.385469>,  <37.934635, 42.433109, 29.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166298, 42.448269, 29.385469>,  <38.552402, 42.473537, 29.486879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166298, 42.448269, 29.385469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168705, 0.590249, -0.789395,
		0.199511, -0.804746, -0.559088,
		-0.965263, -0.063172, -0.253525,
		37.876720, 42.429317, 29.309412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492573, 42.518131, 28.746859>,  <38.552402, 42.473537, 29.486879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492573, 42.518131, 28.746859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111622, 42.618259, 28.816509>,  <37.883053, 42.678337, 28.858299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111622, 42.618259, 28.816509>,  <38.492573, 42.518131, 28.746859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111622, 42.618259, 28.816509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009987, 0.545128, -0.838294,
		-0.304768, -0.800108, -0.516666,
		-0.952374, 0.250325, 0.174128,
		37.825909, 42.693356, 28.868748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079357, 42.322449, 28.198730>,  <38.492573, 42.518131, 28.746859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079357, 42.322449, 28.198730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889267, 42.622826, 28.382143>,  <37.775211, 42.803051, 28.492191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889267, 42.622826, 28.382143>,  <38.079357, 42.322449, 28.198730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889267, 42.622826, 28.382143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029146, 0.507419, -0.861207,
		-0.879382, -0.422630, -0.219250,
		-0.475224, 0.750939, 0.458533,
		37.746700, 42.848106, 28.519703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775230, 42.659706, 27.667782>,  <38.079357, 42.322449, 28.198730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775230, 42.659706, 27.667782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712811, 42.921429, 27.963762>,  <37.675358, 43.078465, 28.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712811, 42.921429, 27.963762>,  <37.775230, 42.659706, 27.667782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712811, 42.921429, 27.963762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023199, 0.746494, -0.664987,
		-0.987477, -0.120937, -0.101310,
		-0.156048, 0.654309, 0.739951,
		37.665997, 43.117722, 28.185747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161522, 43.011997, 27.508982>,  <37.775230, 42.659706, 27.667782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161522, 43.011997, 27.508982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368690, 43.250908, 27.753937>,  <37.492992, 43.394257, 27.900909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368690, 43.250908, 27.753937>,  <37.161522, 43.011997, 27.508982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368690, 43.250908, 27.753937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170320, 0.773550, -0.610419,
		-0.838303, 0.211845, 0.502364,
		0.517918, 0.597279, 0.612388,
		37.524067, 43.430092, 27.937653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747253, 43.528404, 27.582134>,  <37.161522, 43.011997, 27.508982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747253, 43.528404, 27.582134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125031, 43.648872, 27.634789>,  <37.351696, 43.721153, 27.666382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125031, 43.648872, 27.634789>,  <36.747253, 43.528404, 27.582134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125031, 43.648872, 27.634789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119783, 0.688338, -0.715432,
		-0.306076, 0.659915, 0.686170,
		0.944441, 0.301168, 0.131637,
		37.408363, 43.739223, 27.674280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722721, 44.238434, 27.691919>,  <36.747253, 43.528404, 27.582134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722721, 44.238434, 27.691919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102936, 44.171230, 27.587416>,  <37.331066, 44.130909, 27.524714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102936, 44.171230, 27.587416>,  <36.722721, 44.238434, 27.691919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102936, 44.171230, 27.587416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077416, 0.686420, -0.723073,
		0.300812, 0.707533, 0.639461,
		0.950536, -0.168004, -0.261258,
		37.388096, 44.120831, 27.509039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979401, 44.894779, 27.553827>,  <36.722721, 44.238434, 27.691919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979401, 44.894779, 27.553827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217888, 44.631405, 27.370092>,  <37.360981, 44.473381, 27.259851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217888, 44.631405, 27.370092>,  <36.979401, 44.894779, 27.553827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217888, 44.631405, 27.370092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005017, 0.569085, -0.822263,
		0.802808, 0.492551, 0.335995,
		0.596217, -0.658433, -0.459338,
		37.396751, 44.433876, 27.232290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323799, 45.313900, 27.140709>,  <36.979401, 44.894779, 27.553827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323799, 45.313900, 27.140709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399014, 44.947559, 26.998806>,  <37.444141, 44.727753, 26.913664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399014, 44.947559, 26.998806>,  <37.323799, 45.313900, 27.140709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399014, 44.947559, 26.998806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095847, 0.342364, -0.934666,
		0.977473, 0.209757, -0.023404,
		0.188040, -0.915854, -0.354757,
		37.455425, 44.672802, 26.892380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826153, 45.350845, 26.552174>,  <37.323799, 45.313900, 27.140709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826153, 45.350845, 26.552174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643948, 44.998013, 26.504097>,  <37.534622, 44.786312, 26.475250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643948, 44.998013, 26.504097>,  <37.826153, 45.350845, 26.552174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643948, 44.998013, 26.504097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183761, 0.225270, -0.956810,
		0.871056, -0.413755, -0.264705,
		-0.455515, -0.882077, -0.120191,
		37.507294, 44.733391, 26.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037868, 45.026470, 25.859207>,  <37.826153, 45.350845, 26.552174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037868, 45.026470, 25.859207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703350, 44.831932, 25.960457>,  <37.502640, 44.715210, 26.021206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703350, 44.831932, 25.960457>,  <38.037868, 45.026470, 25.859207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703350, 44.831932, 25.960457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240007, -0.090350, -0.966558,
		0.492952, -0.869082, -0.041167,
		-0.836298, -0.486347, 0.253124,
		37.452461, 44.686028, 26.036394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072445, 44.323097, 25.473900>,  <38.037868, 45.026470, 25.859207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072445, 44.323097, 25.473900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702099, 44.459969, 25.538012>,  <37.479893, 44.542091, 25.576479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702099, 44.459969, 25.538012>,  <38.072445, 44.323097, 25.473900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702099, 44.459969, 25.538012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184419, -0.038986, -0.982074,
		-0.329796, -0.938826, 0.099200,
		-0.925864, 0.342179, 0.160280,
		37.424339, 44.562622, 25.586096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710026, 43.884068, 25.152540>,  <38.072445, 44.323097, 25.473900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710026, 43.884068, 25.152540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461895, 44.196854, 25.128139>,  <37.313015, 44.384525, 25.113499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461895, 44.196854, 25.128139>,  <37.710026, 43.884068, 25.152540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461895, 44.196854, 25.128139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089936, -0.148176, -0.984863,
		-0.779171, -0.605449, 0.162245,
		-0.620326, 0.781969, -0.061003,
		37.275799, 44.431442, 25.109838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234871, 43.709438, 24.511280>,  <37.710026, 43.884068, 25.152540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234871, 43.709438, 24.511280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170799, 44.097134, 24.586021>,  <37.132359, 44.329750, 24.630867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170799, 44.097134, 24.586021>,  <37.234871, 43.709438, 24.511280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170799, 44.097134, 24.586021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061957, 0.198798, -0.978080,
		-0.985142, -0.145089, -0.091895,
		-0.160178, 0.969241, 0.186855,
		37.122746, 44.387905, 24.642078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666180, 44.079216, 24.078753>,  <37.234871, 43.709438, 24.511280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666180, 44.079216, 24.078753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912411, 44.370117, 24.200193>,  <37.060150, 44.544659, 24.273058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912411, 44.370117, 24.200193>,  <36.666180, 44.079216, 24.078753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912411, 44.370117, 24.200193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080505, 0.441259, -0.893761,
		-0.783955, 0.525736, 0.330176,
		0.615575, 0.727250, 0.303603,
		37.097084, 44.588291, 24.291275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304806, 44.632198, 23.780685>,  <36.666180, 44.079216, 24.078753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304806, 44.632198, 23.780685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662117, 44.787510, 23.871288>,  <36.876503, 44.880695, 23.925650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662117, 44.787510, 23.871288>,  <36.304806, 44.632198, 23.780685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662117, 44.787510, 23.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084440, 0.349981, -0.932943,
		-0.441510, 0.852500, 0.279843,
		0.893274, 0.388274, 0.226505,
		36.930099, 44.903992, 23.939240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302963, 45.410969, 23.720695>,  <36.304806, 44.632198, 23.780685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302963, 45.410969, 23.720695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680813, 45.282207, 23.695192>,  <36.907524, 45.204952, 23.679890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680813, 45.282207, 23.695192>,  <36.302963, 45.410969, 23.720695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680813, 45.282207, 23.695192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161842, 0.626022, -0.762826,
		0.285470, 0.710265, 0.643453,
		0.944624, -0.321901, -0.063760,
		36.964199, 45.185638, 23.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649628, 45.940147, 23.458450>,  <36.302963, 45.410969, 23.720695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649628, 45.940147, 23.458450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914291, 45.646904, 23.395498>,  <37.073090, 45.470959, 23.357727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914291, 45.646904, 23.395498>,  <36.649628, 45.940147, 23.458450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914291, 45.646904, 23.395498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219109, 0.389775, -0.894465,
		0.717079, 0.557344, 0.418527,
		0.661656, -0.733105, -0.157380,
		37.112789, 45.426971, 23.348284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292320, 46.333195, 23.195509>,  <36.649628, 45.940147, 23.458450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292320, 46.333195, 23.195509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277233, 45.941868, 23.114050>,  <37.268181, 45.707073, 23.065174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277233, 45.941868, 23.114050>,  <37.292320, 46.333195, 23.195509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277233, 45.941868, 23.114050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326364, 0.180555, -0.927839,
		0.944491, -0.101458, 0.312478,
		-0.037717, -0.978318, -0.203645,
		37.265919, 45.648373, 23.052956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888226, 46.240601, 22.899097>,  <37.292320, 46.333195, 23.195509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888226, 46.240601, 22.899097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663120, 45.928024, 22.791288>,  <37.528057, 45.740479, 22.726603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663120, 45.928024, 22.791288>,  <37.888226, 46.240601, 22.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663120, 45.928024, 22.791288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226762, 0.167602, -0.959421,
		0.794905, -0.601046, 0.082881,
		-0.562765, -0.781443, -0.269522,
		37.494289, 45.693592, 22.710432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256573, 45.866783, 22.418034>,  <37.888226, 46.240601, 22.899097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256573, 45.866783, 22.418034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884399, 45.733932, 22.356081>,  <37.661095, 45.654221, 22.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884399, 45.733932, 22.356081>,  <38.256573, 45.866783, 22.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884399, 45.733932, 22.356081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119494, 0.124576, -0.984988,
		0.346438, -0.934971, -0.076222,
		-0.930431, -0.332130, -0.154881,
		37.605270, 45.634293, 22.309616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429295, 45.577240, 21.856895>,  <38.256573, 45.866783, 22.418034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429295, 45.577240, 21.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032436, 45.618683, 21.828873>,  <37.794319, 45.643547, 21.812059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032436, 45.618683, 21.828873>,  <38.429295, 45.577240, 21.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032436, 45.618683, 21.828873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086156, 0.160125, -0.983330,
		-0.090659, -0.981645, -0.167794,
		-0.992148, 0.103604, -0.070058,
		37.734791, 45.649765, 21.807856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255871, 45.186714, 21.285732>,  <38.429295, 45.577240, 21.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255871, 45.186714, 21.285732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970680, 45.458595, 21.354628>,  <37.799568, 45.621723, 21.395964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970680, 45.458595, 21.354628>,  <38.255871, 45.186714, 21.285732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970680, 45.458595, 21.354628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073083, 0.172263, -0.982336,
		-0.697371, -0.712968, -0.073144,
		-0.712974, 0.679707, 0.172237,
		37.756786, 45.662506, 21.406300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964333, 44.866852, 20.556606>,  <38.255871, 45.186714, 21.285732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964333, 44.866852, 20.556606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237122, 44.634430, 20.378937>,  <38.400795, 44.494976, 20.272335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237122, 44.634430, 20.378937>,  <37.964333, 44.866852, 20.556606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237122, 44.634430, 20.378937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339478, -0.286438, 0.895940,
		-0.647816, -0.761794, 0.001912,
		0.681974, -0.581053, -0.444172,
		38.441715, 44.460114, 20.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880959, 44.145245, 20.813360>,  <37.964333, 44.866852, 20.556606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880959, 44.145245, 20.813360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267502, 44.155891, 20.711029>,  <38.499428, 44.162281, 20.649630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267502, 44.155891, 20.711029>,  <37.880959, 44.145245, 20.813360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267502, 44.155891, 20.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234173, -0.502470, 0.832278,
		-0.106394, -0.864185, -0.491798,
		0.966356, 0.026616, -0.255828,
		38.557407, 44.163876, 20.634281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141727, 43.439400, 21.029102>,  <37.880959, 44.145245, 20.813360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141727, 43.439400, 21.029102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447029, 43.695911, 20.997587>,  <38.630211, 43.849815, 20.978678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447029, 43.695911, 20.997587>,  <38.141727, 43.439400, 21.029102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447029, 43.695911, 20.997587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381261, -0.348583, 0.856230,
		0.521614, -0.683562, -0.510551,
		0.763256, 0.641274, -0.078789,
		38.676006, 43.888294, 20.973951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879265, 43.045036, 21.039295>,  <38.141727, 43.439400, 21.029102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879265, 43.045036, 21.039295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930523, 43.425243, 21.152498>,  <38.961277, 43.653366, 21.220421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930523, 43.425243, 21.152498>,  <38.879265, 43.045036, 21.039295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930523, 43.425243, 21.152498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568830, -0.304203, 0.764129,
		0.812410, 0.063061, -0.579666,
		0.128150, 0.950517, 0.283009,
		38.968967, 43.710400, 21.237400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545002, 42.912178, 21.203487>,  <38.879265, 43.045036, 21.039295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545002, 42.912178, 21.203487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443592, 43.277592, 21.330719>,  <39.382744, 43.496841, 21.407059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443592, 43.277592, 21.330719>,  <39.545002, 42.912178, 21.203487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443592, 43.277592, 21.330719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659862, -0.077115, 0.747420,
		0.707323, 0.399381, -0.583257,
		-0.253527, 0.913536, 0.318081,
		39.367535, 43.551651, 21.426144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143471, 43.379860, 21.333965>,  <39.545002, 42.912178, 21.203487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143471, 43.379860, 21.333965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839554, 43.492065, 21.568579>,  <39.657204, 43.559387, 21.709347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839554, 43.492065, 21.568579>,  <40.143471, 43.379860, 21.333965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839554, 43.492065, 21.568579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513874, -0.293571, 0.806070,
		0.398302, 0.913854, 0.078906,
		-0.759795, 0.280511, 0.586536,
		39.611614, 43.576218, 21.744539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444637, 43.502163, 21.935865>,  <40.143471, 43.379860, 21.333965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444637, 43.502163, 21.935865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067799, 43.531605, 22.066730>,  <39.841694, 43.549271, 22.145250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067799, 43.531605, 22.066730>,  <40.444637, 43.502163, 21.935865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067799, 43.531605, 22.066730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289578, -0.313428, 0.904382,
		0.169106, 0.946755, 0.273967,
		-0.942097, 0.073601, 0.327162,
		39.785168, 43.553684, 22.164879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445766, 43.900311, 22.654058>,  <40.444637, 43.502163, 21.935865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445766, 43.900311, 22.654058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129749, 43.656021, 22.632721>,  <39.940140, 43.509449, 22.619919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129749, 43.656021, 22.632721>,  <40.445766, 43.900311, 22.654058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129749, 43.656021, 22.632721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182890, -0.317856, 0.930333,
		-0.585129, 0.725251, 0.362816,
		-0.790048, -0.610720, -0.053346,
		39.892735, 43.472805, 22.616716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338509, 43.918140, 23.371021>,  <40.445766, 43.900311, 22.654058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338509, 43.918140, 23.371021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124035, 43.615192, 23.221951>,  <39.995350, 43.433422, 23.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124035, 43.615192, 23.221951>,  <40.338509, 43.918140, 23.371021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124035, 43.615192, 23.221951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030987, -0.423551, 0.905342,
		-0.843529, 0.496982, 0.203635,
		-0.536189, -0.757372, -0.372678,
		39.963177, 43.387981, 23.110147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724602, 43.823666, 23.862570>,  <40.338509, 43.918140, 23.371021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724602, 43.823666, 23.862570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772289, 43.483955, 23.656847>,  <39.800903, 43.280128, 23.533413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772289, 43.483955, 23.656847>,  <39.724602, 43.823666, 23.862570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772289, 43.483955, 23.656847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099130, -0.525595, 0.844940,
		-0.987907, -0.049752, -0.146851,
		0.119222, -0.849279, -0.514307,
		39.808056, 43.229172, 23.502556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228550, 43.388939, 24.108377>,  <39.724602, 43.823666, 23.862570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228550, 43.388939, 24.108377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514580, 43.150490, 23.962336>,  <39.686199, 43.007420, 23.874710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514580, 43.150490, 23.962336>,  <39.228550, 43.388939, 24.108377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514580, 43.150490, 23.962336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149650, -0.640728, 0.753042,
		-0.682840, -0.483844, -0.547379,
		0.715077, -0.596122, -0.365107,
		39.729103, 42.971653, 23.852804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961704, 42.750843, 24.194693>,  <39.228550, 43.388939, 24.108377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961704, 42.750843, 24.194693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347668, 42.662224, 24.138304>,  <39.579247, 42.609051, 24.104471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347668, 42.662224, 24.138304>,  <38.961704, 42.750843, 24.194693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347668, 42.662224, 24.138304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079086, -0.757091, 0.648505,
		-0.250402, -0.614598, -0.748043,
		0.964906, -0.221547, -0.140971,
		39.637138, 42.595760, 24.096012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995342, 42.020809, 24.046600>,  <38.961704, 42.750843, 24.194693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995342, 42.020809, 24.046600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327988, 42.151909, 24.225933>,  <39.527573, 42.230568, 24.333534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327988, 42.151909, 24.225933>,  <38.995342, 42.020809, 24.046600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327988, 42.151909, 24.225933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091489, -0.715406, 0.692693,
		0.547771, -0.617069, -0.564954,
		0.831610, 0.327750, 0.448334,
		39.577473, 42.250233, 24.360434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478111, 41.541477, 24.109720>,  <38.995342, 42.020809, 24.046600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478111, 41.541477, 24.109720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613945, 41.802296, 24.380871>,  <39.695446, 41.958786, 24.543560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613945, 41.802296, 24.380871>,  <39.478111, 41.541477, 24.109720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613945, 41.802296, 24.380871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068053, -0.701780, 0.709135,
		0.938111, -0.286943, -0.193939,
		0.339584, 0.652049, 0.677875,
		39.715820, 41.997910, 24.584234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799431, 41.093044, 24.668114>,  <39.478111, 41.541477, 24.109720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799431, 41.093044, 24.668114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772655, 41.448574, 24.849449>,  <39.756592, 41.661892, 24.958250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772655, 41.448574, 24.849449>,  <39.799431, 41.093044, 24.668114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772655, 41.448574, 24.849449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210726, -0.456702, 0.864302,
		0.975251, -0.037678, 0.217867,
		-0.066935, 0.888822, 0.453339,
		39.752575, 41.715221, 24.985451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236446, 40.967510, 25.284220>,  <39.799431, 41.093044, 24.668114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236446, 40.967510, 25.284220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999809, 41.284134, 25.345470>,  <39.857826, 41.474110, 25.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999809, 41.284134, 25.345470>,  <40.236446, 40.967510, 25.284220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999809, 41.284134, 25.345470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117078, -0.272260, 0.955075,
		0.797692, 0.547086, 0.253741,
		-0.591592, 0.791563, 0.153128,
		39.822330, 41.521603, 25.391409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496147, 41.292534, 25.880487>,  <40.236446, 40.967510, 25.284220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496147, 41.292534, 25.880487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115955, 41.414967, 25.858929>,  <39.887840, 41.488426, 25.845993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115955, 41.414967, 25.858929>,  <40.496147, 41.292534, 25.880487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115955, 41.414967, 25.858929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131786, -0.239874, 0.961818,
		0.281465, 0.921290, 0.268332,
		-0.950479, 0.306081, -0.053897,
		39.830811, 41.506790, 25.842760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533073, 41.575756, 26.440012>,  <40.496147, 41.292534, 25.880487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533073, 41.575756, 26.440012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146080, 41.545563, 26.343452>,  <39.913883, 41.527447, 26.285517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146080, 41.545563, 26.343452>,  <40.533073, 41.575756, 26.440012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146080, 41.545563, 26.343452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228473, -0.148605, 0.962142,
		-0.108500, 0.986012, 0.126527,
		-0.967485, -0.075485, -0.241401,
		39.855835, 41.522919, 26.271032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079697, 41.964371, 26.981844>,  <40.533073, 41.575756, 26.440012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079697, 41.964371, 26.981844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828518, 41.712326, 26.799139>,  <39.677811, 41.561100, 26.689516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828518, 41.712326, 26.799139>,  <40.079697, 41.964371, 26.981844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828518, 41.712326, 26.799139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376167, -0.268053, 0.886931,
		-0.681306, 0.728767, -0.068705,
		-0.627950, -0.630116, -0.456764,
		39.640133, 41.523293, 26.662109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531406, 42.061245, 27.302685>,  <40.079697, 41.964371, 26.981844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531406, 42.061245, 27.302685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450546, 41.718266, 27.113405>,  <39.402031, 41.512478, 26.999838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450546, 41.718266, 27.113405>,  <39.531406, 42.061245, 27.302685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450546, 41.718266, 27.113405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400933, -0.368372, 0.838781,
		-0.893525, 0.359284, -0.269311,
		-0.202154, -0.857448, -0.473199,
		39.389900, 41.461033, 26.971445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837471, 41.919422, 27.454573>,  <39.531406, 42.061245, 27.302685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837471, 41.919422, 27.454573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002686, 41.579281, 27.324160>,  <39.101814, 41.375195, 27.245913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002686, 41.579281, 27.324160>,  <38.837471, 41.919422, 27.454573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002686, 41.579281, 27.324160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340540, -0.476235, 0.810699,
		-0.844649, -0.223822, -0.486283,
		0.413037, -0.850355, -0.326031,
		39.126598, 41.324173, 27.226351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287647, 41.400894, 27.410744>,  <38.837471, 41.919422, 27.454573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287647, 41.400894, 27.410744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647484, 41.234409, 27.463663>,  <38.863384, 41.134518, 27.495415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647484, 41.234409, 27.463663>,  <38.287647, 41.400894, 27.410744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647484, 41.234409, 27.463663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320327, -0.422906, 0.847668,
		-0.296856, -0.804935, -0.513766,
		0.899593, -0.416209, 0.132300,
		38.917362, 41.109547, 27.503353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219383, 40.716469, 27.609268>,  <38.287647, 41.400894, 27.410744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219383, 40.716469, 27.609268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604000, 40.756691, 27.711506>,  <38.834770, 40.780827, 27.772848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604000, 40.756691, 27.711506>,  <38.219383, 40.716469, 27.609268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604000, 40.756691, 27.711506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172725, -0.502152, 0.847354,
		0.213556, -0.858913, -0.465471,
		0.961541, 0.100559, 0.255593,
		38.892464, 40.786858, 27.788183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316338, 40.116600, 27.922863>,  <38.219383, 40.716469, 27.609268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316338, 40.116600, 27.922863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640499, 40.324707, 28.030615>,  <38.834995, 40.449574, 28.095266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640499, 40.324707, 28.030615>,  <38.316338, 40.116600, 27.922863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640499, 40.324707, 28.030615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110114, -0.586857, 0.802168,
		0.575431, -0.620418, -0.532880,
		0.810404, 0.520270, 0.269379,
		38.883621, 40.480789, 28.111429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817177, 39.609272, 28.074867>,  <38.316338, 40.116600, 27.922863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817177, 39.609272, 28.074867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961143, 39.928661, 28.267910>,  <39.047523, 40.120293, 28.383736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961143, 39.928661, 28.267910>,  <38.817177, 39.609272, 28.074867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961143, 39.928661, 28.267910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151041, -0.560313, 0.814393,
		0.920677, -0.220220, -0.322268,
		0.359916, 0.798469, 0.482605,
		39.069118, 40.168201, 28.412691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475529, 39.419678, 28.405239>,  <38.817177, 39.609272, 28.074867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475529, 39.419678, 28.405239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286762, 39.709633, 28.605972>,  <39.173504, 39.883606, 28.726412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286762, 39.709633, 28.605972>,  <39.475529, 39.419678, 28.405239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286762, 39.709633, 28.605972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169599, -0.483929, 0.858516,
		0.865178, 0.490256, 0.105432,
		-0.471914, 0.724887, 0.501832,
		39.145187, 39.927097, 28.756521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965958, 39.674709, 28.813318>,  <39.475529, 39.419678, 28.405239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965958, 39.674709, 28.813318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624996, 39.779812, 28.994150>,  <39.420422, 39.842873, 29.102650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624996, 39.779812, 28.994150>,  <39.965958, 39.674709, 28.813318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624996, 39.779812, 28.994150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246283, -0.560922, 0.790386,
		0.461258, 0.785064, 0.413418,
		-0.852400, 0.262754, 0.452079,
		39.369278, 39.858639, 29.129774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138165, 39.740219, 29.470467>,  <39.965958, 39.674709, 28.813318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138165, 39.740219, 29.470467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740372, 39.703819, 29.491350>,  <39.501698, 39.681980, 29.503881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740372, 39.703819, 29.491350>,  <40.138165, 39.740219, 29.470467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740372, 39.703819, 29.491350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094419, -0.559315, 0.823561,
		-0.045746, 0.823945, 0.564820,
		-0.994481, -0.091004, 0.052210,
		39.442028, 39.676517, 29.507013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062149, 39.971012, 30.109533>,  <40.138165, 39.740219, 29.470467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062149, 39.971012, 30.109533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784252, 39.715027, 29.978216>,  <39.617516, 39.561436, 29.899426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784252, 39.715027, 29.978216>,  <40.062149, 39.971012, 30.109533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784252, 39.715027, 29.978216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214221, -0.619827, 0.754933,
		-0.686618, 0.454154, 0.567714,
		-0.694740, -0.639967, -0.328295,
		39.575829, 39.523037, 29.879728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659481, 39.700039, 30.740705>,  <40.062149, 39.971012, 30.109533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659481, 39.700039, 30.740705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602139, 39.430683, 30.450603>,  <39.567734, 39.269070, 30.276543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602139, 39.430683, 30.450603>,  <39.659481, 39.700039, 30.740705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602139, 39.430683, 30.450603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182325, -0.738250, 0.649419,
		-0.972732, -0.039135, 0.228608,
		-0.143355, -0.673391, -0.725254,
		39.559132, 39.228664, 30.233027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404396, 39.144875, 31.109388>,  <39.659481, 39.700039, 30.740705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404396, 39.144875, 31.109388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508240, 38.951332, 30.775085>,  <39.570545, 38.835209, 30.574503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508240, 38.951332, 30.775085>,  <39.404396, 39.144875, 31.109388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508240, 38.951332, 30.775085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035793, -0.869655, 0.492360,
		-0.965051, -0.097906, -0.243088,
		0.259607, -0.483853, -0.835757,
		39.586121, 38.806175, 30.524359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949017, 38.427628, 30.876667>,  <39.404396, 39.144875, 31.109388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949017, 38.427628, 30.876667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321701, 38.424107, 30.731426>,  <39.545311, 38.421993, 30.644281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321701, 38.424107, 30.731426>,  <38.949017, 38.427628, 30.876667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321701, 38.424107, 30.731426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124096, -0.931829, 0.341020,
		-0.341352, -0.362791, -0.867100,
		0.931708, -0.008804, -0.363103,
		39.601212, 38.421467, 30.622496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097000, 37.678791, 30.711157>,  <38.949017, 38.427628, 30.876667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097000, 37.678791, 30.711157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449448, 37.866402, 30.687000>,  <39.660915, 37.978966, 30.672506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449448, 37.866402, 30.687000>,  <39.097000, 37.678791, 30.711157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449448, 37.866402, 30.687000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447679, -0.786164, 0.426063,
		0.152356, -0.402448, -0.902676,
		0.881119, 0.469022, -0.060391,
		39.713783, 38.007107, 30.668882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528679, 37.089687, 30.694948>,  <39.097000, 37.678791, 30.711157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528679, 37.089687, 30.694948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775295, 37.392803, 30.780392>,  <39.923264, 37.574673, 30.831657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775295, 37.392803, 30.780392>,  <39.528679, 37.089687, 30.694948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775295, 37.392803, 30.780392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561296, -0.613312, 0.555694,
		0.552108, -0.222711, -0.803478,
		0.616542, 0.757791, 0.213608,
		39.960258, 37.620140, 30.844475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107880, 36.899776, 30.403788>,  <39.528679, 37.089687, 30.694948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107880, 36.899776, 30.403788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184853, 37.158676, 30.698824>,  <40.231037, 37.314014, 30.875845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184853, 37.158676, 30.698824>,  <40.107880, 36.899776, 30.403788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184853, 37.158676, 30.698824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473645, -0.719550, 0.507847,
		0.859436, 0.251628, -0.445032,
		0.192434, 0.647249, 0.737589,
		40.242584, 37.352852, 30.920101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850849, 36.827805, 30.578911>,  <40.107880, 36.899776, 30.403788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850849, 36.827805, 30.578911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720287, 37.025112, 30.901436>,  <40.641949, 37.143497, 31.094952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720287, 37.025112, 30.901436>,  <40.850849, 36.827805, 30.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720287, 37.025112, 30.901436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483404, -0.645931, 0.590842,
		0.812268, 0.582630, -0.027612,
		-0.326407, 0.493270, 0.806315,
		40.622364, 37.173092, 31.143330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488201, 36.930626, 31.009024>,  <40.850849, 36.827805, 30.578911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488201, 36.930626, 31.009024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164398, 36.961533, 31.241823>,  <40.970116, 36.980076, 31.381504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164398, 36.961533, 31.241823>,  <41.488201, 36.930626, 31.009024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164398, 36.961533, 31.241823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463155, -0.525162, 0.713928,
		0.360808, 0.847487, 0.389336,
		-0.809509, 0.077268, 0.582000,
		40.921547, 36.984715, 31.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756645, 36.974632, 31.647568>,  <41.488201, 36.930626, 31.009024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756645, 36.974632, 31.647568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376350, 36.878429, 31.725811>,  <41.148174, 36.820709, 31.772757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376350, 36.878429, 31.725811>,  <41.756645, 36.974632, 31.647568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376350, 36.878429, 31.725811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291892, -0.481950, 0.826150,
		-0.104422, 0.842545, 0.528408,
		-0.950734, -0.240506, 0.195606,
		41.091129, 36.806278, 31.784492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693497, 37.238823, 32.340881>,  <41.756645, 36.974632, 31.647568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693497, 37.238823, 32.340881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421982, 36.954201, 32.268276>,  <41.259075, 36.783428, 32.224712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421982, 36.954201, 32.268276>,  <41.693497, 37.238823, 32.340881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421982, 36.954201, 32.268276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338817, -0.522758, 0.782258,
		-0.651503, 0.469485, 0.595925,
		-0.678783, -0.711553, -0.181509,
		41.218346, 36.740734, 32.213825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085239, 37.290268, 32.876125>,  <41.693497, 37.238823, 32.340881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085239, 37.290268, 32.876125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142952, 36.930550, 32.710979>,  <41.177582, 36.714718, 32.611893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142952, 36.930550, 32.710979>,  <41.085239, 37.290268, 32.876125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142952, 36.930550, 32.710979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021795, -0.414240, 0.909907,
		-0.989296, -0.140284, -0.040169,
		0.144285, -0.899292, -0.412864,
		41.186237, 36.660763, 32.587120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554897, 36.912613, 33.282887>,  <41.085239, 37.290268, 32.876125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554897, 36.912613, 33.282887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737583, 37.266273, 33.322269>,  <40.847195, 37.478470, 33.345898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737583, 37.266273, 33.322269>,  <40.554897, 36.912613, 33.282887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737583, 37.266273, 33.322269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600441, 0.224705, 0.767449,
		0.656414, -0.409624, 0.633505,
		0.456717, 0.884147, 0.098456,
		40.874599, 37.531517, 33.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796581, 37.030888, 34.026894>,  <40.554897, 36.912613, 33.282887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796581, 37.030888, 34.026894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728046, 37.377048, 33.838547>,  <40.686928, 37.584747, 33.725536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728046, 37.377048, 33.838547>,  <40.796581, 37.030888, 34.026894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728046, 37.377048, 33.838547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656658, 0.255991, 0.709415,
		0.734470, 0.430747, 0.524415,
		-0.171333, 0.865405, -0.470871,
		40.676647, 37.636669, 33.697285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626888, 37.537579, 34.574829>,  <40.796581, 37.030888, 34.026894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626888, 37.537579, 34.574829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524750, 37.762901, 34.260506>,  <40.463467, 37.898094, 34.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524750, 37.762901, 34.260506>,  <40.626888, 37.537579, 34.574829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524750, 37.762901, 34.260506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739605, 0.409670, 0.534000,
		0.622724, 0.717538, 0.312015,
		-0.255342, 0.563302, -0.785806,
		40.448147, 37.931892, 34.024765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743076, 38.247883, 34.600750>,  <40.626888, 37.537579, 34.574829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743076, 38.247883, 34.600750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427212, 38.180347, 34.364811>,  <40.237694, 38.139824, 34.223248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427212, 38.180347, 34.364811>,  <40.743076, 38.247883, 34.600750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427212, 38.180347, 34.364811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561578, 0.586111, 0.584041,
		0.247109, 0.792444, -0.557647,
		-0.789663, -0.168841, -0.589852,
		40.190311, 38.129696, 34.187855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494705, 38.770313, 34.811069>,  <40.743076, 38.247883, 34.600750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494705, 38.770313, 34.811069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208256, 38.594765, 34.593975>,  <40.036385, 38.489437, 34.463718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208256, 38.594765, 34.593975>,  <40.494705, 38.770313, 34.811069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208256, 38.594765, 34.593975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697351, 0.417080, 0.582877,
		-0.029444, 0.795888, -0.604727,
		-0.716125, -0.438870, -0.542733,
		39.993420, 38.463104, 34.431156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244892, 39.287827, 34.595348>,  <40.494705, 38.770313, 34.811069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244892, 39.287827, 34.595348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979912, 38.991566, 34.550468>,  <39.820923, 38.813808, 34.523540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979912, 38.991566, 34.550468>,  <40.244892, 39.287827, 34.595348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979912, 38.991566, 34.550468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681409, 0.533567, 0.500987,
		-0.311192, 0.408334, -0.858151,
		-0.662451, -0.740655, -0.112201,
		39.781178, 38.769371, 34.516808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542744, 39.587234, 34.368904>,  <40.244892, 39.287827, 34.595348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542744, 39.587234, 34.368904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489422, 39.236137, 34.552990>,  <39.457428, 39.025478, 34.663441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489422, 39.236137, 34.552990>,  <39.542744, 39.587234, 34.368904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489422, 39.236137, 34.552990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683733, 0.417605, 0.598427,
		-0.717453, -0.234893, -0.655809,
		-0.133303, -0.877742, 0.460217,
		39.449432, 38.972816, 34.691055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812344, 39.519146, 34.504135>,  <39.542744, 39.587234, 34.368904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812344, 39.519146, 34.504135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953671, 39.238396, 34.751534>,  <39.038467, 39.069946, 34.899971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953671, 39.238396, 34.751534>,  <38.812344, 39.519146, 34.504135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953671, 39.238396, 34.751534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561115, 0.370015, 0.740432,
		-0.748545, -0.608653, -0.263101,
		0.353315, -0.701876, 0.618497,
		39.059666, 39.027832, 34.937084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273643, 39.006287, 34.870232>,  <38.812344, 39.519146, 34.504135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273643, 39.006287, 34.870232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598385, 39.030369, 35.102531>,  <38.793228, 39.044819, 35.241913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598385, 39.030369, 35.102531>,  <38.273643, 39.006287, 34.870232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598385, 39.030369, 35.102531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540045, 0.455489, 0.707730,
		-0.221919, -0.888204, 0.402301,
		0.811852, 0.060201, 0.580752,
		38.841942, 39.048428, 35.276756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098316, 38.769547, 35.542461>,  <38.273643, 39.006287, 34.870232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098316, 38.769547, 35.542461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425751, 38.978935, 35.637032>,  <38.622211, 39.104568, 35.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425751, 38.978935, 35.637032>,  <38.098316, 38.769547, 35.542461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425751, 38.978935, 35.637032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474140, 0.383491, 0.792544,
		0.324201, -0.760867, 0.562117,
		0.818587, 0.523465, 0.236429,
		38.671326, 39.135975, 35.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136650, 38.683411, 36.286598>,  <38.098316, 38.769547, 35.542461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136650, 38.683411, 36.286598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378422, 38.981647, 36.174347>,  <38.523487, 39.160591, 36.106995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378422, 38.981647, 36.174347>,  <38.136650, 38.683411, 36.286598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378422, 38.981647, 36.174347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332101, 0.556013, 0.761944,
		0.724133, -0.367347, 0.583684,
		0.604434, 0.745591, -0.280632,
		38.559753, 39.205326, 36.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385384, 39.005013, 36.889374>,  <38.136650, 38.683411, 36.286598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385384, 39.005013, 36.889374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443832, 39.303509, 36.629597>,  <38.478901, 39.482605, 36.473732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443832, 39.303509, 36.629597>,  <38.385384, 39.005013, 36.889374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443832, 39.303509, 36.629597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364922, 0.650848, 0.665754,
		0.919499, 0.139712, 0.367425,
		0.146125, 0.746242, -0.649438,
		38.487671, 39.527382, 36.434765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700474, 39.573048, 37.326145>,  <38.385384, 39.005013, 36.889374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700474, 39.573048, 37.326145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591877, 39.747021, 36.982719>,  <38.526718, 39.851402, 36.776665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591877, 39.747021, 36.982719>,  <38.700474, 39.573048, 37.326145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591877, 39.747021, 36.982719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312809, 0.803760, 0.506084,
		0.910187, 0.405965, -0.082168,
		-0.271496, 0.434928, -0.858561,
		38.510429, 39.877499, 36.725151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820065, 40.234554, 37.351254>,  <38.700474, 39.573048, 37.326145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820065, 40.234554, 37.351254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517330, 40.194820, 37.092850>,  <38.335690, 40.170979, 36.937805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517330, 40.194820, 37.092850>,  <38.820065, 40.234554, 37.351254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517330, 40.194820, 37.092850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517195, 0.695352, 0.498994,
		0.399639, 0.711771, -0.577642,
		-0.756834, -0.099336, -0.646014,
		38.290279, 40.165020, 36.899044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556808, 40.929779, 37.248688>,  <38.820065, 40.234554, 37.351254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556808, 40.929779, 37.248688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260521, 40.690876, 37.125648>,  <38.082748, 40.547535, 37.051823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260521, 40.690876, 37.125648>,  <38.556808, 40.929779, 37.248688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260521, 40.690876, 37.125648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669012, 0.697568, 0.256559,
		0.061341, 0.395827, -0.916274,
		-0.740716, -0.597261, -0.307603,
		38.038307, 40.511700, 37.033367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147804, 41.335106, 36.847252>,  <38.556808, 40.929779, 37.248688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147804, 41.335106, 36.847252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886318, 41.035015, 36.886883>,  <37.729427, 40.854961, 36.910660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886318, 41.035015, 36.886883>,  <38.147804, 41.335106, 36.847252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886318, 41.035015, 36.886883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725118, 0.658452, 0.201604,
		-0.216486, 0.059950, -0.974443,
		-0.653711, -0.750231, 0.099075,
		37.690205, 40.809944, 36.916607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467316, 41.515282, 36.524979>,  <38.147804, 41.335106, 36.847252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467316, 41.515282, 36.524979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406487, 41.256168, 36.823574>,  <37.369987, 41.100700, 37.002731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406487, 41.256168, 36.823574>,  <37.467316, 41.515282, 36.524979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406487, 41.256168, 36.823574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674852, 0.619867, 0.400424,
		-0.722114, -0.442878, -0.531423,
		-0.152072, -0.647784, 0.746492,
		37.360867, 41.061832, 37.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711529, 41.555523, 36.615982>,  <37.467316, 41.515282, 36.524979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711529, 41.555523, 36.615982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844673, 41.394108, 36.956890>,  <36.924561, 41.297256, 37.161434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844673, 41.394108, 36.956890>,  <36.711529, 41.555523, 36.615982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844673, 41.394108, 36.956890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653179, 0.553200, 0.517037,
		-0.680121, -0.728782, -0.079449,
		0.332856, -0.403542, 0.852268,
		36.944530, 41.273045, 37.212570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066231, 41.409180, 37.082588>,  <36.711529, 41.555523, 36.615982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066231, 41.409180, 37.082588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402416, 41.446445, 37.296104>,  <36.604130, 41.468803, 37.424213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402416, 41.446445, 37.296104>,  <36.066231, 41.409180, 37.082588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402416, 41.446445, 37.296104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493923, 0.536834, 0.683995,
		-0.222835, -0.838528, 0.497207,
		0.840467, 0.093163, 0.533794,
		36.654556, 41.474396, 37.456242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989292, 41.000343, 37.776157>,  <36.066231, 41.409180, 37.082588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989292, 41.000343, 37.776157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214775, 41.330128, 37.756168>,  <36.350063, 41.528000, 37.744175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214775, 41.330128, 37.756168>,  <35.989292, 41.000343, 37.776157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214775, 41.330128, 37.756168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719638, 0.519927, 0.460214,
		0.405412, -0.223463, 0.886400,
		0.563704, 0.824464, -0.049972,
		36.383884, 41.577465, 37.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234097, 41.250477, 38.488564>,  <35.989292, 41.000343, 37.776157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234097, 41.250477, 38.488564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178711, 41.515976, 38.194553>,  <36.145477, 41.675278, 38.018147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178711, 41.515976, 38.194553>,  <36.234097, 41.250477, 38.488564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178711, 41.515976, 38.194553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643931, 0.503541, 0.576021,
		0.752449, 0.553066, 0.357685,
		-0.138469, 0.663751, -0.735025,
		36.137169, 41.715099, 37.974045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279408, 41.909164, 38.756172>,  <36.234097, 41.250477, 38.488564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279408, 41.909164, 38.756172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048023, 41.893253, 38.430275>,  <35.909195, 41.883705, 38.234737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048023, 41.893253, 38.430275>,  <36.279408, 41.909164, 38.756172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048023, 41.893253, 38.430275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750325, 0.417774, 0.512325,
		0.319998, 0.907680, -0.271512,
		-0.578458, -0.039779, -0.814742,
		35.874485, 41.881321, 38.185852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028614, 42.609589, 38.697014>,  <36.279408, 41.909164, 38.756172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028614, 42.609589, 38.697014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792747, 42.332539, 38.530853>,  <35.651226, 42.166309, 38.431156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792747, 42.332539, 38.530853>,  <36.028614, 42.609589, 38.697014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792747, 42.332539, 38.530853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762776, 0.308555, 0.568301,
		-0.265447, 0.651967, -0.710265,
		-0.589670, -0.692627, -0.415400,
		35.615849, 42.124752, 38.406235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388561, 42.797806, 38.081070>,  <36.028614, 42.609589, 38.697014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388561, 42.797806, 38.081070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213284, 42.450611, 38.174526>,  <36.108116, 42.242294, 38.230598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213284, 42.450611, 38.174526>,  <36.388561, 42.797806, 38.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213284, 42.450611, 38.174526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752047, -0.496384, -0.433623,
		0.492352, -0.014306, 0.870278,
		-0.438195, -0.867985, 0.233637,
		36.081825, 42.190216, 38.244617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966969, 42.437778, 38.612011>,  <36.388561, 42.797806, 38.081070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966969, 42.437778, 38.612011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719517, 42.217632, 38.387726>,  <36.571045, 42.085545, 38.253155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719517, 42.217632, 38.387726>,  <36.966969, 42.437778, 38.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719517, 42.217632, 38.387726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783417, -0.486249, -0.387065,
		-0.059619, -0.678720, 0.731973,
		-0.618630, -0.550364, -0.560711,
		36.533928, 42.052525, 38.219513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231808, 41.839729, 38.707653>,  <36.966969, 42.437778, 38.612011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231808, 41.839729, 38.707653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007153, 41.824398, 38.377056>,  <36.872360, 41.815201, 38.178699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007153, 41.824398, 38.377056>,  <37.231808, 41.839729, 38.707653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007153, 41.824398, 38.377056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617378, -0.684439, -0.387799,
		-0.550821, -0.728062, 0.408071,
		-0.561641, -0.038326, -0.826493,
		36.838661, 41.812901, 38.129108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541794, 41.331043, 38.470097>,  <37.231808, 41.839729, 38.707653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541794, 41.331043, 38.470097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268902, 41.372322, 38.180569>,  <37.105167, 41.397091, 38.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268902, 41.372322, 38.180569>,  <37.541794, 41.331043, 38.470097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268902, 41.372322, 38.180569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489080, -0.671471, -0.556711,
		-0.543477, -0.733809, 0.407623,
		-0.682227, 0.103200, -0.723820,
		37.064236, 41.403282, 37.963421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413776, 40.741104, 38.291420>,  <37.541794, 41.331043, 38.470097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413776, 40.741104, 38.291420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252693, 40.894436, 37.958942>,  <37.156044, 40.986435, 37.759457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252693, 40.894436, 37.958942>,  <37.413776, 40.741104, 38.291420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252693, 40.894436, 37.958942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353981, -0.772211, -0.527623,
		-0.844112, -0.506705, 0.175283,
		-0.402705, 0.383326, -0.831198,
		37.131882, 41.009434, 37.709583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161270, 40.151676, 37.986095>,  <37.413776, 40.741104, 38.291420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161270, 40.151676, 37.986095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221436, 40.424156, 37.699501>,  <37.257534, 40.587643, 37.527546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221436, 40.424156, 37.699501>,  <37.161270, 40.151676, 37.986095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221436, 40.424156, 37.699501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531047, -0.666964, -0.522636,
		-0.833886, -0.301876, -0.462066,
		0.150410, 0.681198, -0.716482,
		37.266560, 40.628517, 37.484558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881546, 39.880623, 37.335926>,  <37.161270, 40.151676, 37.986095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881546, 39.880623, 37.335926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137611, 40.172112, 37.238636>,  <37.291248, 40.347004, 37.180264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137611, 40.172112, 37.238636>,  <36.881546, 39.880623, 37.335926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137611, 40.172112, 37.238636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555779, -0.657870, -0.508249,
		-0.530383, 0.190181, -0.826151,
		0.640159, 0.728723, -0.243224,
		37.329659, 40.390728, 37.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046791, 39.757992, 36.613586>,  <36.881546, 39.880623, 37.335926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046791, 39.757992, 36.613586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355522, 39.977020, 36.742855>,  <37.540760, 40.108437, 36.820415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355522, 39.977020, 36.742855>,  <37.046791, 39.757992, 36.613586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355522, 39.977020, 36.742855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633823, -0.622283, -0.459382,
		-0.050439, 0.559401, -0.827361,
		0.771832, 0.547571, 0.323174,
		37.587070, 40.141293, 36.839806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632385, 39.842216, 36.013496>,  <37.046791, 39.757992, 36.613586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632385, 39.842216, 36.013496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786335, 39.868423, 36.381752>,  <37.878704, 39.884148, 36.602707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786335, 39.868423, 36.381752>,  <37.632385, 39.842216, 36.013496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786335, 39.868423, 36.381752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772758, -0.568310, -0.282609,
		0.504695, 0.820202, -0.269356,
		0.384874, 0.065515, 0.920641,
		37.901798, 39.888077, 36.657944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534786, 40.481392, 35.915314>,  <37.632385, 39.842216, 36.013496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534786, 40.481392, 35.915314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802567, 40.400238, 36.201157>,  <37.963234, 40.351547, 36.372662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802567, 40.400238, 36.201157>,  <37.534786, 40.481392, 35.915314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802567, 40.400238, 36.201157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604291, -0.410756, -0.682724,
		0.432045, 0.888885, -0.152380,
		0.669454, -0.202886, 0.714610,
		38.003403, 40.339371, 36.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234795, 40.504417, 35.619370>,  <37.534786, 40.481392, 35.915314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234795, 40.504417, 35.619370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321510, 40.317265, 35.962086>,  <38.373539, 40.204975, 36.167717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321510, 40.317265, 35.962086>,  <38.234795, 40.504417, 35.619370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321510, 40.317265, 35.962086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587507, -0.638400, -0.497274,
		0.779639, 0.611175, 0.136482,
		0.216791, -0.467879, 0.856791,
		38.386547, 40.176903, 36.219124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751713, 40.146683, 35.453281>,  <38.234795, 40.504417, 35.619370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751713, 40.146683, 35.453281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747284, 39.973450, 35.813797>,  <38.744629, 39.869511, 36.030106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747284, 39.973450, 35.813797>,  <38.751713, 40.146683, 35.453281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747284, 39.973450, 35.813797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562632, -0.747821, -0.352432,
		0.826633, 0.503192, 0.251943,
		-0.011067, -0.433083, 0.901286,
		38.743965, 39.843525, 36.084183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497829, 40.006676, 35.660290>,  <38.751713, 40.146683, 35.453281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497829, 40.006676, 35.660290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245453, 39.774361, 35.866047>,  <39.094028, 39.634972, 35.989502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245453, 39.774361, 35.866047>,  <39.497829, 40.006676, 35.660290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245453, 39.774361, 35.866047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329946, -0.800945, -0.499622,
		0.702175, -0.145510, 0.696977,
		-0.630941, -0.580787, 0.514393,
		39.056171, 39.600124, 36.020367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891182, 39.420364, 35.962738>,  <39.497829, 40.006676, 35.660290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891182, 39.420364, 35.962738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508263, 39.331757, 35.888424>,  <39.278511, 39.278591, 35.843834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508263, 39.331757, 35.888424>,  <39.891182, 39.420364, 35.962738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508263, 39.331757, 35.888424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284582, -0.835298, -0.470415,
		-0.050986, -0.503198, 0.862666,
		-0.957295, -0.221515, -0.185790,
		39.221073, 39.265301, 35.832687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874321, 38.741112, 35.862709>,  <39.891182, 39.420364, 35.962738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874321, 38.741112, 35.862709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526360, 38.841393, 35.692810>,  <39.317581, 38.901562, 35.590870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526360, 38.841393, 35.692810>,  <39.874321, 38.741112, 35.862709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526360, 38.841393, 35.692810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139868, -0.700426, -0.699886,
		-0.472968, -0.668244, 0.574239,
		-0.869907, 0.250706, -0.424745,
		39.265388, 38.916603, 35.565388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528645, 38.057491, 35.707088>,  <39.874321, 38.741112, 35.862709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528645, 38.057491, 35.707088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383522, 38.353168, 35.480122>,  <39.296448, 38.530575, 35.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383522, 38.353168, 35.480122>,  <39.528645, 38.057491, 35.707088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383522, 38.353168, 35.480122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194429, -0.535460, -0.821876,
		-0.911356, -0.408505, 0.050547,
		-0.362806, 0.739194, -0.567420,
		39.274681, 38.574928, 35.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159225, 37.763107, 35.105160>,  <39.528645, 38.057491, 35.707088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159225, 37.763107, 35.105160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232677, 38.130810, 34.965874>,  <39.276749, 38.351429, 34.882301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232677, 38.130810, 34.965874>,  <39.159225, 37.763107, 35.105160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232677, 38.130810, 34.965874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369761, -0.392817, -0.842004,
		-0.910800, 0.025861, -0.412037,
		0.183630, 0.919253, -0.348216,
		39.287766, 38.406586, 34.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871681, 37.800079, 34.405212>,  <39.159225, 37.763107, 35.105160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871681, 37.800079, 34.405212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170776, 38.061436, 34.452480>,  <39.350235, 38.218250, 34.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170776, 38.061436, 34.452480>,  <38.871681, 37.800079, 34.405212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170776, 38.061436, 34.452480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395670, -0.295540, -0.869541,
		-0.533229, 0.696945, -0.479515,
		0.747738, 0.653394, 0.118170,
		39.395100, 38.257454, 34.487930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029335, 37.874290, 33.772812>,  <38.871681, 37.800079, 34.405212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029335, 37.874290, 33.772812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335976, 38.034706, 33.973412>,  <39.519958, 38.130955, 34.093769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335976, 38.034706, 33.973412>,  <39.029335, 37.874290, 33.772812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335976, 38.034706, 33.973412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597807, -0.160608, -0.785387,
		-0.234425, 0.901873, -0.362864,
		0.766598, 0.401037, 0.501495,
		39.565956, 38.155018, 34.123859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335098, 38.200996, 33.253052>,  <39.029335, 37.874290, 33.772812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335098, 38.200996, 33.253052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596241, 38.121758, 33.545498>,  <39.752926, 38.074215, 33.720966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596241, 38.121758, 33.545498>,  <39.335098, 38.200996, 33.253052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596241, 38.121758, 33.545498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694586, -0.228515, -0.682151,
		0.302206, 0.953172, -0.011590,
		0.652856, -0.198100, 0.731119,
		39.792099, 38.062328, 33.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995872, 38.560184, 32.935574>,  <39.335098, 38.200996, 33.253052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995872, 38.560184, 32.935574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129177, 38.371220, 33.261951>,  <40.209160, 38.257839, 33.457779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129177, 38.371220, 33.261951>,  <39.995872, 38.560184, 32.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129177, 38.371220, 33.261951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849285, -0.225413, -0.477392,
		0.409451, 0.852063, 0.326094,
		0.333263, -0.472416, 0.815940,
		40.229156, 38.229496, 33.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675709, 38.802433, 33.095203>,  <39.995872, 38.560184, 32.935574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675709, 38.802433, 33.095203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667000, 38.441723, 33.267864>,  <40.661774, 38.225296, 33.371460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667000, 38.441723, 33.267864>,  <40.675709, 38.802433, 33.095203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667000, 38.441723, 33.267864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893674, -0.211109, -0.395953,
		0.448187, 0.377134, 0.810493,
		-0.021775, -0.901778, 0.431652,
		40.660469, 38.171188, 33.397358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301205, 38.695229, 33.489811>,  <40.675709, 38.802433, 33.095203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301205, 38.695229, 33.489811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156624, 38.323792, 33.456188>,  <41.069878, 38.100929, 33.436016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156624, 38.323792, 33.456188>,  <41.301205, 38.695229, 33.489811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156624, 38.323792, 33.456188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863511, -0.299378, -0.405857,
		0.351712, -0.219282, 0.910062,
		-0.361450, -0.928595, -0.084057,
		41.048187, 38.045212, 33.430969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740063, 38.172359, 33.746990>,  <41.301205, 38.695229, 33.489811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740063, 38.172359, 33.746990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543133, 37.975719, 33.459675>,  <41.424973, 37.857735, 33.287285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543133, 37.975719, 33.459675>,  <41.740063, 38.172359, 33.746990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543133, 37.975719, 33.459675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810030, -0.560778, -0.171405,
		-0.318537, -0.666223, 0.674301,
		-0.492327, -0.491605, -0.718289,
		41.395435, 37.828239, 33.244186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668331, 37.349850, 33.793388>,  <41.740063, 38.172359, 33.746990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668331, 37.349850, 33.793388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656326, 37.407082, 33.397686>,  <41.649124, 37.441422, 33.160263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656326, 37.407082, 33.397686>,  <41.668331, 37.349850, 33.793388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656326, 37.407082, 33.397686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634698, -0.761842, -0.129446,
		-0.772178, -0.631763, -0.067952,
		-0.030011, 0.143085, -0.989255,
		41.647324, 37.450008, 33.100910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684914, 36.720699, 33.362717>,  <41.668331, 37.349850, 33.793388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684914, 36.720699, 33.362717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847229, 37.034813, 33.175674>,  <41.944618, 37.223282, 33.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847229, 37.034813, 33.175674>,  <41.684914, 36.720699, 33.362717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847229, 37.034813, 33.175674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663125, -0.605054, -0.440653,
		-0.628967, -0.131268, -0.766270,
		0.405791, 0.785289, -0.467606,
		41.968967, 37.270401, 33.035393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424332, 36.968449, 33.143436>,  <41.684914, 36.720699, 33.362717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424332, 36.968449, 33.143436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687710, 36.680580, 33.231556>,  <42.845737, 36.507858, 33.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687710, 36.680580, 33.231556>,  <42.424332, 36.968449, 33.143436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687710, 36.680580, 33.231556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752628, 0.629139, -0.194254,
		0.001201, 0.293707, 0.955895,
		0.658445, -0.719667, 0.220296,
		42.885242, 36.464680, 33.297646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975857, 37.215591, 33.575607>,  <42.424332, 36.968449, 33.143436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975857, 37.215591, 33.575607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112831, 36.928741, 33.332798>,  <43.195015, 36.756634, 33.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112831, 36.928741, 33.332798>,  <42.975857, 37.215591, 33.575607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112831, 36.928741, 33.332798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729820, 0.609910, -0.308824,
		0.591692, -0.337263, 0.732226,
		0.342437, -0.717122, -0.607020,
		43.215561, 36.713604, 33.150692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673786, 37.490547, 33.389557>,  <42.975857, 37.215591, 33.575607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673786, 37.490547, 33.389557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631157, 37.211750, 33.105911>,  <43.605579, 37.044472, 32.935726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631157, 37.211750, 33.105911>,  <43.673786, 37.490547, 33.389557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631157, 37.211750, 33.105911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898981, 0.237161, -0.368221,
		0.424822, -0.676720, 0.601311,
		-0.106575, -0.696996, -0.709110,
		43.599186, 37.002651, 32.893177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117332, 36.859081, 33.496822>,  <43.673786, 37.490547, 33.389557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117332, 36.859081, 33.496822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037918, 37.016991, 33.137993>,  <43.990269, 37.111736, 32.922695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037918, 37.016991, 33.137993>,  <44.117332, 36.859081, 33.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037918, 37.016991, 33.137993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956884, 0.276084, -0.090281,
		0.212027, -0.876319, -0.432562,
		-0.198538, 0.394769, -0.897073,
		43.978355, 37.135422, 32.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506538, 36.504734, 32.897270>,  <44.117332, 36.859081, 33.496822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506538, 36.504734, 32.897270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432892, 36.896671, 32.866287>,  <44.388702, 37.131836, 32.847698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432892, 36.896671, 32.866287>,  <44.506538, 36.504734, 32.897270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432892, 36.896671, 32.866287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982370, 0.180851, -0.047354,
		-0.032391, -0.084813, -0.995870,
		-0.184120, 0.979847, -0.077460,
		44.377655, 37.190624, 32.843048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891155, 36.597530, 32.337482>,  <44.506538, 36.504734, 32.897270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891155, 36.597530, 32.337482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801735, 36.964909, 32.468006>,  <44.748085, 37.185337, 32.546318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801735, 36.964909, 32.468006>,  <44.891155, 36.597530, 32.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801735, 36.964909, 32.468006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909294, 0.317078, -0.269529,
		-0.351014, 0.236457, -0.906023,
		-0.223548, 0.918450, 0.326307,
		44.734669, 37.240444, 32.565899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365444, 36.930702, 32.856762>,  <44.891155, 36.597530, 32.337482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365444, 36.930702, 32.856762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478306, 36.550655, 32.909935>,  <45.546024, 36.322628, 32.941841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478306, 36.550655, 32.909935>,  <45.365444, 36.930702, 32.856762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478306, 36.550655, 32.909935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847207, 0.181751, -0.499206,
		0.450140, 0.253481, 0.856225,
		0.282159, -0.950113, 0.132937,
		45.562954, 36.265621, 32.949818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942596, 37.507954, 32.578941>,  <45.365444, 36.930702, 32.856762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942596, 37.507954, 32.578941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151917, 37.357750, 32.884922>,  <46.277508, 37.267628, 33.068508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151917, 37.357750, 32.884922>,  <45.942596, 37.507954, 32.578941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151917, 37.357750, 32.884922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757714, 0.615778, -0.216072,
		-0.389903, 0.692684, 0.606766,
		0.523303, -0.375508, 0.764950,
		46.308907, 37.245098, 33.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940243, 36.759502, 32.212379>,  <45.942596, 37.507954, 32.578941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940243, 36.759502, 32.212379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205467, 36.595436, 31.961903>,  <46.364601, 36.496998, 31.811617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205467, 36.595436, 31.961903>,  <45.940243, 36.759502, 32.212379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205467, 36.595436, 31.961903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521079, -0.347669, 0.779489,
		-0.537428, -0.843142, -0.016796,
		0.663059, -0.410168, -0.626191,
		46.404385, 36.472385, 31.774046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063278, 36.009911, 32.206524>,  <45.940243, 36.759502, 32.212379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063278, 36.009911, 32.206524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407879, 36.151932, 32.061329>,  <46.614639, 36.237144, 31.974213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407879, 36.151932, 32.061329>,  <46.063278, 36.009911, 32.206524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407879, 36.151932, 32.061329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458414, -0.236444, 0.856710,
		0.218354, -0.904450, -0.366458,
		0.861498, 0.355055, -0.362984,
		46.666328, 36.258450, 31.952435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434383, 35.493538, 32.609585>,  <46.063278, 36.009911, 32.206524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434383, 35.493538, 32.609585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094475, 35.325363, 32.482384>,  <45.890530, 35.224457, 32.406063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094475, 35.325363, 32.482384>,  <46.434383, 35.493538, 32.609585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094475, 35.325363, 32.482384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356870, -0.902801, 0.239986,
		-0.387993, 0.090446, 0.917214,
		-0.849767, -0.420439, -0.318003,
		45.839546, 35.199230, 32.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949989, 35.112698, 33.154564>,  <46.434383, 35.493538, 32.609585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949989, 35.112698, 33.154564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948872, 34.970024, 32.780876>,  <45.948200, 34.884418, 32.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948872, 34.970024, 32.780876>,  <45.949989, 35.112698, 33.154564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948872, 34.970024, 32.780876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434506, -0.841857, 0.320126,
		-0.900664, -0.405031, 0.157333,
		-0.002791, -0.356688, -0.934219,
		45.948036, 34.863018, 32.500610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774036, 34.418324, 33.175365>,  <45.949989, 35.112698, 33.154564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774036, 34.418324, 33.175365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962803, 34.464722, 32.825775>,  <46.076065, 34.492561, 32.616020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962803, 34.464722, 32.825775>,  <45.774036, 34.418324, 33.175365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962803, 34.464722, 32.825775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427864, -0.896877, 0.112003,
		-0.770859, -0.426800, -0.472882,
		0.471920, 0.115991, -0.873978,
		46.104378, 34.499519, 32.563583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639244, 34.803276, 33.776901>,  <45.774036, 34.418324, 33.175365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639244, 34.803276, 33.776901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623055, 34.910744, 34.161854>,  <45.613342, 34.975224, 34.392826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623055, 34.910744, 34.161854>,  <45.639244, 34.803276, 33.776901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623055, 34.910744, 34.161854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799326, -0.569220, 0.192526,
		0.599533, 0.777048, -0.191719,
		-0.040472, 0.268672, 0.962381,
		45.610912, 34.991344, 34.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263416, 35.113686, 33.948040>,  <45.639244, 34.803276, 33.776901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263416, 35.113686, 33.948040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097015, 34.939030, 34.267113>,  <45.997177, 34.834236, 34.458557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097015, 34.939030, 34.267113>,  <46.263416, 35.113686, 33.948040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097015, 34.939030, 34.267113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806980, -0.581620, 0.102477,
		0.419199, 0.686341, 0.594313,
		-0.415999, -0.436641, 0.797678,
		45.972218, 34.808037, 34.506416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757843, 35.139000, 34.442085>,  <46.263416, 35.113686, 33.948040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757843, 35.139000, 34.442085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494381, 34.838909, 34.465202>,  <46.336304, 34.658855, 34.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494381, 34.838909, 34.465202>,  <46.757843, 35.139000, 34.442085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494381, 34.838909, 34.465202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744752, -0.639039, 0.192285,
		-0.107325, 0.169691, 0.979636,
		-0.658654, -0.750223, 0.057793,
		46.296783, 34.613842, 34.482540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859970, 34.648045, 35.082851>,  <46.757843, 35.139000, 34.442085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859970, 34.648045, 35.082851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651382, 34.427803, 34.822113>,  <46.526230, 34.295658, 34.665668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651382, 34.427803, 34.822113>,  <46.859970, 34.648045, 35.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651382, 34.427803, 34.822113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485241, -0.819743, 0.304239,
		-0.701863, -0.157652, 0.694647,
		-0.521469, -0.550606, -0.651847,
		46.494942, 34.262623, 34.626560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529064, 34.591660, 35.193745>,  <46.859970, 34.648045, 35.082851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529064, 34.591660, 35.193745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715569, 34.825726, 34.928360>,  <47.827473, 34.966164, 34.769131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715569, 34.825726, 34.928360>,  <47.529064, 34.591660, 35.193745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715569, 34.825726, 34.928360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802401, 0.595532, -0.038654,
		0.372493, 0.550384, 0.747212,
		0.466263, 0.585166, -0.663460,
		47.855446, 35.001274, 34.729321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.644135, 39.458206, 24.584463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271439, 39.465145, 24.729544>,  <36.047821, 39.469307, 24.816591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271439, 39.465145, 24.729544>,  <36.644135, 39.458206, 24.584463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271439, 39.465145, 24.729544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326070, -0.399566, 0.856753,
		0.159787, 0.916540, 0.366636,
		-0.931744, 0.017349, 0.362702,
		35.991917, 39.470348, 24.838354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613571, 39.739700, 25.197340>,  <36.644135, 39.458206, 24.584463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613571, 39.739700, 25.197340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266121, 39.545322, 25.236013>,  <36.057652, 39.428696, 25.259218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266121, 39.545322, 25.236013>,  <36.613571, 39.739700, 25.197340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266121, 39.545322, 25.236013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219199, -0.201895, 0.954563,
		-0.444343, 0.850351, 0.281889,
		-0.868626, -0.485943, 0.096686,
		36.005531, 39.399540, 25.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427814, 39.837723, 25.983780>,  <36.613571, 39.739700, 25.197340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427814, 39.837723, 25.983780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206001, 39.534122, 25.847301>,  <36.072914, 39.351963, 25.765415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206001, 39.534122, 25.847301>,  <36.427814, 39.837723, 25.983780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206001, 39.534122, 25.847301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057916, -0.444219, 0.894044,
		-0.830142, 0.476020, 0.290293,
		-0.554536, -0.758996, -0.341196,
		36.039639, 39.306423, 25.744944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845596, 39.711433, 26.502060>,  <36.427814, 39.837723, 25.983780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845596, 39.711433, 26.502060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895741, 39.377705, 26.287329>,  <35.925827, 39.177467, 26.158489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895741, 39.377705, 26.287329>,  <35.845596, 39.711433, 26.502060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895741, 39.377705, 26.287329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126734, -0.523197, 0.842735,
		-0.983984, -0.173677, 0.040151,
		0.125357, -0.834327, -0.536829,
		35.933346, 39.127407, 26.126280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328548, 39.220146, 26.740011>,  <35.845596, 39.711433, 26.502060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328548, 39.220146, 26.740011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605469, 39.005093, 26.547482>,  <35.771622, 38.876060, 26.431963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605469, 39.005093, 26.547482>,  <35.328548, 39.220146, 26.740011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605469, 39.005093, 26.547482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007117, -0.672070, 0.740454,
		-0.721579, -0.509187, -0.469097,
		0.692295, -0.537635, -0.481328,
		35.813160, 38.843803, 26.403084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101921, 38.480145, 26.762695>,  <35.328548, 39.220146, 26.740011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101921, 38.480145, 26.762695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492107, 38.445484, 26.681749>,  <35.726219, 38.424690, 26.633183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492107, 38.445484, 26.681749>,  <35.101921, 38.480145, 26.762695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492107, 38.445484, 26.681749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040413, -0.833164, 0.551548,
		-0.216391, -0.546197, -0.809224,
		0.975470, -0.086647, -0.202363,
		35.784748, 38.419491, 26.621040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269920, 37.721546, 26.705746>,  <35.101921, 38.480145, 26.762695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269920, 37.721546, 26.705746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637497, 37.867977, 26.764448>,  <35.858044, 37.955837, 26.799669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637497, 37.867977, 26.764448>,  <35.269920, 37.721546, 26.705746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637497, 37.867977, 26.764448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196255, -0.747188, 0.634976,
		0.342106, -0.554703, -0.758464,
		0.918938, 0.366081, 0.146755,
		35.913177, 37.977802, 26.808475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760708, 37.092957, 26.852995>,  <35.269920, 37.721546, 26.705746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760708, 37.092957, 26.852995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940609, 37.431107, 26.968275>,  <36.048550, 37.633999, 27.037443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940609, 37.431107, 26.968275>,  <35.760708, 37.092957, 26.852995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940609, 37.431107, 26.968275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146557, -0.388158, 0.909865,
		0.881047, -0.366976, -0.298470,
		0.449753, 0.845377, 0.288202,
		36.075535, 37.684719, 27.054735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416534, 36.843651, 27.057459>,  <35.760708, 37.092957, 26.852995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416534, 36.843651, 27.057459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337322, 37.199604, 27.221848>,  <36.289795, 37.413174, 27.320480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337322, 37.199604, 27.221848>,  <36.416534, 36.843651, 27.057459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337322, 37.199604, 27.221848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161757, -0.383856, 0.909114,
		0.966757, 0.246510, -0.067929,
		-0.198031, 0.889880, 0.410970,
		36.277912, 37.466568, 27.345139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010612, 37.022598, 27.435080>,  <36.416534, 36.843651, 27.057459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010612, 37.022598, 27.435080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743130, 37.279324, 27.585226>,  <36.582642, 37.433361, 27.675314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743130, 37.279324, 27.585226>,  <37.010612, 37.022598, 27.435080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743130, 37.279324, 27.585226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283921, -0.246170, 0.926709,
		0.687182, 0.726272, -0.017610,
		-0.668707, 0.641817, 0.375368,
		36.542519, 37.471870, 27.697836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358109, 37.511276, 27.849312>,  <37.010612, 37.022598, 27.435080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358109, 37.511276, 27.849312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980061, 37.490742, 27.978374>,  <36.753231, 37.478420, 28.055811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980061, 37.490742, 27.978374>,  <37.358109, 37.511276, 27.849312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980061, 37.490742, 27.978374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324370, -0.265517, 0.907901,
		0.039059, 0.962738, 0.267600,
		-0.945124, -0.051339, 0.322654,
		36.696522, 37.475342, 28.075171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479427, 37.497978, 28.574203>,  <37.358109, 37.511276, 27.849312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479427, 37.497978, 28.574203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092255, 37.412769, 28.520935>,  <36.859951, 37.361645, 28.488974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092255, 37.412769, 28.520935>,  <37.479427, 37.497978, 28.574203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092255, 37.412769, 28.520935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070348, -0.279050, 0.957696,
		-0.241171, 0.936351, 0.255115,
		-0.967930, -0.213022, -0.133169,
		36.801876, 37.348862, 28.480984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119904, 37.832130, 29.153095>,  <37.479427, 37.497978, 28.574203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119904, 37.832130, 29.153095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939186, 37.511456, 28.996538>,  <36.830757, 37.319050, 28.902603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939186, 37.511456, 28.996538>,  <37.119904, 37.832130, 29.153095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939186, 37.511456, 28.996538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171776, -0.352338, 0.919973,
		-0.875431, 0.482866, 0.021473,
		-0.451789, -0.801685, -0.391392,
		36.803650, 37.270950, 28.879120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721767, 37.732700, 29.671780>,  <37.119904, 37.832130, 29.153095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721767, 37.732700, 29.671780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683117, 37.413700, 29.433569>,  <36.659927, 37.222298, 29.290642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683117, 37.413700, 29.433569>,  <36.721767, 37.732700, 29.671780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683117, 37.413700, 29.433569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194555, -0.571652, 0.797096,
		-0.976121, 0.192880, -0.099924,
		-0.096622, -0.797503, -0.595528,
		36.654129, 37.174450, 29.254911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102539, 37.390800, 29.840982>,  <36.721767, 37.732700, 29.671780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102539, 37.390800, 29.840982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347225, 37.126957, 29.666292>,  <36.494038, 36.968651, 29.561478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347225, 37.126957, 29.666292>,  <36.102539, 37.390800, 29.840982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347225, 37.126957, 29.666292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152018, -0.639787, 0.753368,
		-0.776336, -0.394455, -0.491638,
		0.611713, -0.659605, -0.436725,
		36.530739, 36.929077, 29.535275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716366, 36.743759, 29.848207>,  <36.102539, 37.390800, 29.840982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716366, 36.743759, 29.848207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104229, 36.647610, 29.830389>,  <36.336948, 36.589920, 29.819698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104229, 36.647610, 29.830389>,  <35.716366, 36.743759, 29.848207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104229, 36.647610, 29.830389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132916, -0.671311, 0.729160,
		-0.205175, -0.701115, -0.682891,
		0.969658, -0.240373, -0.044547,
		36.395126, 36.575497, 29.817024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740032, 36.021290, 30.066885>,  <35.716366, 36.743759, 29.848207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740032, 36.021290, 30.066885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130863, 36.106064, 30.074852>,  <36.365364, 36.156929, 30.079632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130863, 36.106064, 30.074852>,  <35.740032, 36.021290, 30.066885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130863, 36.106064, 30.074852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115516, -0.606482, 0.786661,
		0.178805, -0.766330, -0.617064,
		0.977080, 0.211939, 0.019919,
		36.423988, 36.169647, 30.080828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183243, 35.371204, 30.145866>,  <35.740032, 36.021290, 30.066885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183243, 35.371204, 30.145866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433067, 35.654366, 30.277798>,  <36.582962, 35.824265, 30.356956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433067, 35.654366, 30.277798>,  <36.183243, 35.371204, 30.145866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433067, 35.654366, 30.277798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241862, -0.576896, 0.780189,
		0.742578, -0.407505, -0.531524,
		0.624565, 0.707906, 0.329830,
		36.620438, 35.866737, 30.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729046, 35.000153, 30.347353>,  <36.183243, 35.371204, 30.145866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729046, 35.000153, 30.347353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791397, 35.352703, 30.525738>,  <36.828808, 35.564232, 30.632769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791397, 35.352703, 30.525738>,  <36.729046, 35.000153, 30.347353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791397, 35.352703, 30.525738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384284, -0.470027, 0.794607,
		0.909960, 0.047514, -0.411965,
		0.155880, 0.881372, 0.445964,
		36.838161, 35.617115, 30.659527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445438, 34.968884, 30.624069>,  <36.729046, 35.000153, 30.347353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445438, 34.968884, 30.624069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247040, 35.243484, 30.836746>,  <37.128002, 35.408245, 30.964352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247040, 35.243484, 30.836746>,  <37.445438, 34.968884, 30.624069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247040, 35.243484, 30.836746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269796, -0.460173, 0.845843,
		0.825346, 0.562985, 0.043029,
		-0.495998, 0.686505, 0.531693,
		37.098240, 35.449436, 30.996254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946438, 35.239151, 31.083458>,  <37.445438, 34.968884, 30.624069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946438, 35.239151, 31.083458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591343, 35.331631, 31.242693>,  <37.378288, 35.387119, 31.338234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591343, 35.331631, 31.242693>,  <37.946438, 35.239151, 31.083458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591343, 35.331631, 31.242693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324704, -0.298533, 0.897466,
		0.326335, 0.925973, 0.189947,
		-0.887735, 0.231198, 0.398089,
		37.325024, 35.400990, 31.362120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533222, 35.093216, 31.629856>,  <37.946438, 35.239151, 31.083458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533222, 35.093216, 31.629856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914181, 34.985374, 31.572941>,  <39.142757, 34.920670, 31.538792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914181, 34.985374, 31.572941>,  <38.533222, 35.093216, 31.629856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914181, 34.985374, 31.572941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108550, 0.136229, -0.984712,
		0.284869, 0.953286, 0.100479,
		0.952400, -0.269607, -0.142287,
		39.199902, 34.904491, 31.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792004, 35.544998, 31.083994>,  <38.533222, 35.093216, 31.629856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792004, 35.544998, 31.083994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 35.258709, 31.066881>,  <39.238132, 35.086937, 31.056614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 35.258709, 31.066881>,  <38.792004, 35.544998, 31.083994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070835, 35.258709, 31.066881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092122, 0.148575, -0.984601,
		0.711056, 0.682399, 0.169502,
		0.697074, -0.715721, -0.042781,
		39.279957, 35.043991, 31.054047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346706, 35.875053, 30.834124>,  <38.792004, 35.544998, 31.083994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346706, 35.875053, 30.834124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371780, 35.484505, 30.751396>,  <39.386826, 35.250175, 30.701759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371780, 35.484505, 30.751396>,  <39.346706, 35.875053, 30.834124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371780, 35.484505, 30.751396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226712, 0.215738, -0.949767,
		0.971942, 0.012648, 0.234878,
		0.062685, -0.976369, -0.206818,
		39.390587, 35.191593, 30.689350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975750, 35.722107, 30.593613>,  <39.346706, 35.875053, 30.834124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975750, 35.722107, 30.593613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745831, 35.421959, 30.463037>,  <39.607880, 35.241871, 30.384693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745831, 35.421959, 30.463037>,  <39.975750, 35.722107, 30.593613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745831, 35.421959, 30.463037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191401, 0.264572, -0.945181,
		0.795599, -0.605765, -0.008454,
		-0.574794, -0.750367, -0.326437,
		39.573391, 35.196850, 30.365107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345161, 35.234554, 29.936153>,  <39.975750, 35.722107, 30.593613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345161, 35.234554, 29.936153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950935, 35.167522, 29.926563>,  <39.714397, 35.127304, 29.920809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950935, 35.167522, 29.926563>,  <40.345161, 35.234554, 29.936153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950935, 35.167522, 29.926563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014674, 0.225674, -0.974092,
		0.168645, -0.959682, -0.224876,
		-0.985568, -0.167576, -0.023977,
		39.655266, 35.117249, 29.919371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249138, 35.026222, 29.281452>,  <40.345161, 35.234554, 29.936153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249138, 35.026222, 29.281452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868752, 35.091503, 29.386543>,  <39.640518, 35.130672, 29.449598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868752, 35.091503, 29.386543>,  <40.249138, 35.026222, 29.281452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868752, 35.091503, 29.386543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212492, 0.272483, -0.938403,
		-0.224742, -0.948217, -0.224443,
		-0.950967, 0.163207, 0.262727,
		39.583462, 35.140465, 29.465361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880283, 34.563168, 28.882349>,  <40.249138, 35.026222, 29.281452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880283, 34.563168, 28.882349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650063, 34.873085, 28.986984>,  <39.511929, 35.059036, 29.049767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650063, 34.873085, 28.986984>,  <39.880283, 34.563168, 28.882349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650063, 34.873085, 28.986984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096205, 0.253510, -0.962537,
		-0.812087, -0.579155, -0.071368,
		-0.575551, 0.774798, 0.261590,
		39.477398, 35.105526, 29.065462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429977, 34.698807, 28.358288>,  <39.880283, 34.563168, 28.882349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429977, 34.698807, 28.358288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376732, 35.043766, 28.553654>,  <39.344784, 35.250740, 28.670874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376732, 35.043766, 28.553654>,  <39.429977, 34.698807, 28.358288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376732, 35.043766, 28.553654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011776, 0.494143, -0.869301,
		-0.991031, -0.109963, -0.075932,
		-0.133113, 0.862398, 0.488416,
		39.336800, 35.302486, 28.700178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848015, 35.043449, 28.081261>,  <39.429977, 34.698807, 28.358288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848015, 35.043449, 28.081261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049755, 35.335361, 28.265890>,  <39.170799, 35.510509, 28.376669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049755, 35.335361, 28.265890>,  <38.848015, 35.043449, 28.081261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049755, 35.335361, 28.265890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202191, 0.619488, -0.758520,
		-0.839493, 0.289235, 0.459994,
		0.504351, 0.729779, 0.461575,
		39.201061, 35.554295, 28.404364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459209, 35.696945, 27.908344>,  <38.848015, 35.043449, 28.081261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459209, 35.696945, 27.908344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833366, 35.786041, 28.018206>,  <39.057861, 35.839500, 28.084122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833366, 35.786041, 28.018206>,  <38.459209, 35.696945, 27.908344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833366, 35.786041, 28.018206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004420, 0.783994, -0.620752,
		-0.353593, 0.579431, 0.734324,
		0.935389, 0.222740, 0.274654,
		39.113983, 35.852863, 28.100601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378731, 36.383469, 27.928629>,  <38.459209, 35.696945, 27.908344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378731, 36.383469, 27.928629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777279, 36.352993, 27.913427>,  <39.016407, 36.334705, 27.904306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777279, 36.352993, 27.913427>,  <38.378731, 36.383469, 27.928629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777279, 36.352993, 27.913427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033957, 0.764888, -0.643268,
		0.078079, 0.639642, 0.764698,
		0.996369, -0.076193, -0.038002,
		39.076191, 36.330135, 27.902027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574081, 36.970741, 27.953405>,  <38.378731, 36.383469, 27.928629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574081, 36.970741, 27.953405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888447, 36.791618, 27.782846>,  <39.077065, 36.684143, 27.680511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888447, 36.791618, 27.782846>,  <38.574081, 36.970741, 27.953405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888447, 36.791618, 27.782846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171444, 0.820352, -0.545555,
		0.594099, 0.355653, 0.721496,
		0.785909, -0.447810, -0.426396,
		39.124218, 36.657276, 27.654928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119072, 37.412659, 27.846281>,  <38.574081, 36.970741, 27.953405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119072, 37.412659, 27.846281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232105, 37.130051, 27.586750>,  <39.299923, 36.960484, 27.431032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232105, 37.130051, 27.586750>,  <39.119072, 37.412659, 27.846281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232105, 37.130051, 27.586750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090695, 0.693042, -0.715170,
		0.954946, 0.143249, 0.259918,
		0.282582, -0.706522, -0.648825,
		39.316879, 36.918095, 27.392103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787712, 37.671989, 27.495384>,  <39.119072, 37.412659, 27.846281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787712, 37.671989, 27.495384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605751, 37.402843, 27.262037>,  <39.496574, 37.241356, 27.122028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605751, 37.402843, 27.262037>,  <39.787712, 37.671989, 27.495384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605751, 37.402843, 27.262037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006048, 0.652720, -0.757575,
		0.890522, -0.348148, -0.292852,
		-0.454899, -0.672867, -0.583367,
		39.469280, 37.200985, 27.087027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874973, 37.971451, 26.888010>,  <39.787712, 37.671989, 27.495384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874973, 37.971451, 26.888010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585503, 37.702026, 26.827869>,  <39.411819, 37.540371, 26.791784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585503, 37.702026, 26.827869>,  <39.874973, 37.971451, 26.888010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585503, 37.702026, 26.827869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274606, 0.480906, -0.832659,
		0.633153, -0.561288, -0.532985,
		-0.723677, -0.673561, -0.150354,
		39.368401, 37.499958, 26.782763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042019, 37.718349, 26.160810>,  <39.874973, 37.971451, 26.888010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042019, 37.718349, 26.160810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.666683, 37.666412, 26.288975>,  <39.441483, 37.635250, 26.365873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.666683, 37.666412, 26.288975>,  <40.042019, 37.718349, 26.160810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666683, 37.666412, 26.288975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339636, 0.519308, -0.784198,
		-0.064571, -0.844666, -0.531385,
		-0.938338, -0.129841, 0.320412,
		39.385181, 37.627460, 26.385098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592804, 37.349464, 25.554237>,  <40.042019, 37.718349, 26.160810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592804, 37.349464, 25.554237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316345, 37.528419, 25.781275>,  <39.150471, 37.635792, 25.917498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316345, 37.528419, 25.781275>,  <39.592804, 37.349464, 25.554237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316345, 37.528419, 25.781275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270271, 0.568381, -0.777108,
		-0.670276, -0.690500, -0.271920,
		-0.691147, 0.447385, 0.567594,
		39.109001, 37.662636, 25.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966110, 37.329704, 25.071466>,  <39.592804, 37.349464, 25.554237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966110, 37.329704, 25.071466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890366, 37.592861, 25.363035>,  <38.844917, 37.750755, 25.537975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890366, 37.592861, 25.363035>,  <38.966110, 37.329704, 25.071466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890366, 37.592861, 25.363035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666785, 0.458783, -0.587295,
		-0.720792, -0.597243, 0.351796,
		-0.189360, 0.657889, 0.728920,
		38.833557, 37.790230, 25.581711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359180, 37.612679, 24.836672>,  <38.966110, 37.329704, 25.071466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359180, 37.612679, 24.836672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472286, 37.868416, 25.122688>,  <38.540150, 38.021858, 25.294298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472286, 37.868416, 25.122688>,  <38.359180, 37.612679, 24.836672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472286, 37.868416, 25.122688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488960, 0.737409, -0.465988,
		-0.825205, -0.217861, 0.521128,
		0.282764, 0.639346, 0.715039,
		38.557114, 38.060219, 25.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.799721, 38.041943, 24.965216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107250, 38.253242, 25.109365>,  <38.291767, 38.380020, 25.195854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107250, 38.253242, 25.109365>,  <37.799721, 38.041943, 24.965216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107250, 38.253242, 25.109365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339511, 0.814763, -0.469992,
		-0.541891, 0.238989, 0.805753,
		0.768822, 0.528247, 0.360373,
		38.337898, 38.411716, 25.217478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610855, 38.658215, 25.331757>,  <37.799721, 38.041943, 24.965216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610855, 38.658215, 25.331757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986137, 38.735458, 25.216881>,  <38.211308, 38.781807, 25.147955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986137, 38.735458, 25.216881>,  <37.610855, 38.658215, 25.331757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986137, 38.735458, 25.216881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290068, 0.891413, -0.348201,
		0.188761, 0.409988, 0.892345,
		0.938206, 0.193114, -0.287188,
		38.267597, 38.793392, 25.130724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669964, 39.293602, 25.575747>,  <37.610855, 38.658215, 25.331757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669964, 39.293602, 25.575747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974445, 39.261974, 25.318277>,  <38.157135, 39.242996, 25.163795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974445, 39.261974, 25.318277>,  <37.669964, 39.293602, 25.575747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974445, 39.261974, 25.318277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368023, 0.764568, -0.529145,
		0.533972, 0.639675, 0.552893,
		0.761205, -0.079071, -0.643673,
		38.202808, 39.238255, 25.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820560, 39.944393, 25.389101>,  <37.669964, 39.293602, 25.575747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820560, 39.944393, 25.389101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993988, 39.743790, 25.089632>,  <38.098045, 39.623428, 24.909950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993988, 39.743790, 25.089632>,  <37.820560, 39.944393, 25.389101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993988, 39.743790, 25.089632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221375, 0.746082, -0.627977,
		0.873507, 0.438006, 0.212453,
		0.433564, -0.501511, -0.748671,
		38.124058, 39.593338, 24.865030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102539, 40.550350, 24.989412>,  <37.820560, 39.944393, 25.389101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102539, 40.550350, 24.989412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106091, 40.239086, 24.738209>,  <38.108223, 40.052330, 24.587486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106091, 40.239086, 24.738209>,  <38.102539, 40.550350, 24.989412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106091, 40.239086, 24.738209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182979, 0.616163, -0.766069,
		0.983077, 0.121713, -0.136916,
		0.008878, -0.778157, -0.628006,
		38.108753, 40.005638, 24.549807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506065, 40.666904, 24.292784>,  <38.102539, 40.550350, 24.989412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506065, 40.666904, 24.292784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263062, 40.357651, 24.219908>,  <38.117260, 40.172100, 24.176182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263062, 40.357651, 24.219908>,  <38.506065, 40.666904, 24.292784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263062, 40.357651, 24.219908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106702, 0.306720, -0.945800,
		0.787111, -0.555145, -0.268831,
		-0.607512, -0.773134, -0.182188,
		38.080807, 40.125710, 24.165251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662151, 40.481735, 23.670002>,  <38.506065, 40.666904, 24.292784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662151, 40.481735, 23.670002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306587, 40.298847, 23.681261>,  <38.093250, 40.189114, 23.688017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306587, 40.298847, 23.681261>,  <38.662151, 40.481735, 23.670002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306587, 40.298847, 23.681261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228135, 0.388579, -0.892726,
		0.397232, -0.799975, -0.449719,
		-0.888910, -0.457216, 0.028146,
		38.039913, 40.161682, 23.689705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653072, 40.191376, 23.103813>,  <38.662151, 40.481735, 23.670002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653072, 40.191376, 23.103813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266659, 40.203331, 23.206491>,  <38.034813, 40.210506, 23.268099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266659, 40.203331, 23.206491>,  <38.653072, 40.191376, 23.103813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266659, 40.203331, 23.206491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221247, 0.417658, -0.881256,
		-0.133552, -0.908112, -0.396857,
		-0.966030, 0.029890, 0.256697,
		37.976849, 40.212299, 23.283501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317181, 39.716503, 22.611067>,  <38.653072, 40.191376, 23.103813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317181, 39.716503, 22.611067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064262, 39.994614, 22.747768>,  <37.912510, 40.161480, 22.829790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064262, 39.994614, 22.747768>,  <38.317181, 39.716503, 22.611067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064262, 39.994614, 22.747768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195057, 0.284050, -0.938759,
		-0.749771, -0.660233, -0.043985,
		-0.632294, 0.695275, 0.341756,
		37.874573, 40.203197, 22.850296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747654, 39.642971, 22.278212>,  <38.317181, 39.716503, 22.611067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747654, 39.642971, 22.278212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679153, 40.010685, 22.419968>,  <37.638054, 40.231312, 22.505022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679153, 40.010685, 22.419968>,  <37.747654, 39.642971, 22.278212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679153, 40.010685, 22.419968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271382, 0.301776, -0.913938,
		-0.947114, -0.252690, 0.197797,
		-0.171253, 0.919282, 0.354391,
		37.627777, 40.286469, 22.526285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197269, 39.854362, 21.911701>,  <37.747654, 39.642971, 22.278212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197269, 39.854362, 21.911701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331795, 40.195511, 22.071455>,  <37.412510, 40.400200, 22.167307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331795, 40.195511, 22.071455>,  <37.197269, 39.854362, 21.911701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331795, 40.195511, 22.071455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372378, 0.509961, -0.775419,
		-0.865000, 0.112063, 0.489097,
		0.336316, 0.852867, 0.399386,
		37.432690, 40.451370, 22.191271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660343, 40.335289, 21.622004>,  <37.197269, 39.854362, 21.911701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660343, 40.335289, 21.622004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992580, 40.541809, 21.705482>,  <37.191921, 40.665722, 21.755569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992580, 40.541809, 21.705482>,  <36.660343, 40.335289, 21.622004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992580, 40.541809, 21.705482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159095, 0.579141, -0.799553,
		-0.533671, 0.630900, 0.563170,
		0.830593, 0.516296, 0.208698,
		37.241756, 40.696697, 21.768091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395885, 41.050171, 21.639048>,  <36.660343, 40.335289, 21.622004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395885, 41.050171, 21.639048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787933, 41.061581, 21.560507>,  <37.023163, 41.068428, 21.513382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787933, 41.061581, 21.560507>,  <36.395885, 41.050171, 21.639048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787933, 41.061581, 21.560507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174166, 0.597734, -0.782547,
		0.095042, 0.801187, 0.590818,
		0.980119, 0.028525, -0.196350,
		37.081970, 41.070137, 21.501602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589520, 41.766273, 21.624073>,  <36.395885, 41.050171, 21.639048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589520, 41.766273, 21.624073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853966, 41.555294, 21.410637>,  <37.012634, 41.428707, 21.282576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853966, 41.555294, 21.410637>,  <36.589520, 41.766273, 21.624073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853966, 41.555294, 21.410637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011186, 0.704176, -0.709938,
		0.750198, 0.475322, 0.459644,
		0.661119, -0.527452, -0.533588,
		37.052299, 41.397057, 21.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131565, 42.255665, 21.416885>,  <36.589520, 41.766273, 21.624073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131565, 42.255665, 21.416885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207500, 41.969475, 21.147943>,  <37.253063, 41.797760, 20.986578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207500, 41.969475, 21.147943>,  <37.131565, 42.255665, 21.416885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207500, 41.969475, 21.147943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007775, 0.683690, -0.729731,
		0.981784, 0.143761, 0.124230,
		0.189842, -0.715472, -0.672354,
		37.264454, 41.754833, 20.946238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588821, 42.551880, 21.008625>,  <37.131565, 42.255665, 21.416885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588821, 42.551880, 21.008625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498188, 42.241692, 20.772896>,  <37.443810, 42.055576, 20.631458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498188, 42.241692, 20.772896>,  <37.588821, 42.551880, 21.008625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498188, 42.241692, 20.772896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040377, 0.597060, -0.801180,
		0.973155, -0.205327, -0.103971,
		-0.226580, -0.775474, -0.589322,
		37.430214, 42.009048, 20.596100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950111, 42.646095, 20.338932>,  <37.588821, 42.551880, 21.008625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950111, 42.646095, 20.338932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651920, 42.387444, 20.274271>,  <37.473007, 42.232250, 20.235474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651920, 42.387444, 20.274271>,  <37.950111, 42.646095, 20.338932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651920, 42.387444, 20.274271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000082, 0.242619, -0.970122,
		0.666534, -0.723188, -0.180919,
		-0.745474, -0.646634, -0.161654,
		37.428276, 42.193455, 20.225775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065037, 42.284550, 19.682463>,  <37.950111, 42.646095, 20.338932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065037, 42.284550, 19.682463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672775, 42.260406, 19.756956>,  <37.437420, 42.245922, 19.801651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672775, 42.260406, 19.756956>,  <38.065037, 42.284550, 19.682463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672775, 42.260406, 19.756956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187859, 0.557769, -0.808457,
		-0.055080, -0.827799, -0.558314,
		-0.980650, -0.060355, 0.186232,
		37.378582, 42.242298, 19.812826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759304, 42.080841, 19.058620>,  <38.065037, 42.284550, 19.682463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759304, 42.080841, 19.058620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.465065, 42.244946, 19.274242>,  <37.288521, 42.343410, 19.403616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.465065, 42.244946, 19.274242>,  <37.759304, 42.080841, 19.058620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465065, 42.244946, 19.274242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366470, 0.428247, -0.826017,
		-0.569735, -0.805162, -0.164667,
		-0.735596, 0.410265, 0.539056,
		37.244385, 42.368027, 19.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175182, 42.140369, 18.585272>,  <37.759304, 42.080841, 19.058620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175182, 42.140369, 18.585272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089306, 42.401970, 18.875425>,  <37.037781, 42.558929, 19.049519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089306, 42.401970, 18.875425>,  <37.175182, 42.140369, 18.585272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089306, 42.401970, 18.875425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314562, 0.656827, -0.685295,
		-0.924639, -0.375306, 0.064709,
		-0.214693, 0.654006, 0.725385,
		37.024899, 42.598171, 19.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571594, 42.339771, 18.409145>,  <37.175182, 42.140369, 18.585272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571594, 42.339771, 18.409145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707119, 42.628944, 18.650002>,  <36.788433, 42.802448, 18.794516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707119, 42.628944, 18.650002>,  <36.571594, 42.339771, 18.409145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707119, 42.628944, 18.650002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214770, 0.682523, -0.698596,
		-0.916014, 0.107370, 0.386510,
		0.338810, 0.722934, 0.602141,
		36.808762, 42.845825, 18.830645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041000, 42.873631, 18.372959>,  <36.571594, 42.339771, 18.409145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041000, 42.873631, 18.372959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389587, 43.031784, 18.489040>,  <36.598740, 43.126675, 18.558689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389587, 43.031784, 18.489040>,  <36.041000, 42.873631, 18.372959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389587, 43.031784, 18.489040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109311, 0.733397, -0.670954,
		-0.478119, 0.552991, 0.682351,
		0.871466, 0.395384, 0.290203,
		36.651028, 43.150398, 18.576101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474201, 42.921959, 17.887829>,  <36.041000, 42.873631, 18.372959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474201, 42.921959, 17.887829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232101, 42.821838, 17.585564>,  <35.086842, 42.761768, 17.404205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232101, 42.821838, 17.585564>,  <35.474201, 42.921959, 17.887829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232101, 42.821838, 17.585564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316518, 0.795344, -0.516956,
		0.730403, -0.552068, -0.402159,
		-0.605250, -0.250296, -0.755661,
		35.050526, 42.746750, 17.358866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968742, 42.193356, 17.667730>,  <35.474201, 42.921959, 17.887829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968742, 42.193356, 17.667730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135521, 42.190197, 17.304173>,  <35.235588, 42.188301, 17.086037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135521, 42.190197, 17.304173>,  <34.968742, 42.193356, 17.667730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135521, 42.190197, 17.304173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840326, 0.377767, -0.388774,
		0.346418, 0.925867, 0.150878,
		0.416950, -0.007892, -0.908895,
		35.260605, 42.187828, 17.031504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559273, 42.698174, 17.802795>,  <34.968742, 42.193356, 17.667730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559273, 42.698174, 17.802795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165470, 42.677181, 17.869719>,  <33.929188, 42.664585, 17.909872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165470, 42.677181, 17.869719>,  <34.559273, 42.698174, 17.802795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165470, 42.677181, 17.869719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175054, -0.239075, 0.955091,
		-0.010124, 0.969582, 0.244558,
		-0.984507, -0.052480, 0.167308,
		33.870117, 42.661438, 17.919910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329887, 43.148380, 18.323742>,  <34.559273, 42.698174, 17.802795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329887, 43.148380, 18.323742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079426, 42.837093, 18.342953>,  <33.929150, 42.650322, 18.354479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079426, 42.837093, 18.342953>,  <34.329887, 43.148380, 18.323742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079426, 42.837093, 18.342953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300809, -0.184282, 0.935710,
		-0.719339, 0.600343, 0.349485,
		-0.626151, -0.778221, 0.048027,
		33.891579, 42.603626, 18.357361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018227, 43.202244, 18.951586>,  <34.329887, 43.148380, 18.323742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018227, 43.202244, 18.951586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910755, 42.827003, 18.864149>,  <33.846272, 42.601860, 18.811687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910755, 42.827003, 18.864149>,  <34.018227, 43.202244, 18.951586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910755, 42.827003, 18.864149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046681, -0.239352, 0.969810,
		-0.962097, 0.250368, 0.108102,
		-0.268683, -0.938097, -0.218593,
		33.830151, 42.545574, 18.798571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536343, 43.031796, 19.513479>,  <34.018227, 43.202244, 18.951586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536343, 43.031796, 19.513479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651524, 42.683403, 19.354239>,  <33.720631, 42.474369, 19.258694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651524, 42.683403, 19.354239>,  <33.536343, 43.031796, 19.513479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651524, 42.683403, 19.354239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188657, -0.355968, 0.915257,
		-0.938879, -0.338653, 0.061815,
		0.287951, -0.870977, -0.398100,
		33.737907, 42.422112, 19.234808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278652, 42.549477, 19.861368>,  <33.536343, 43.031796, 19.513479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278652, 42.549477, 19.861368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548096, 42.305344, 19.694635>,  <33.709763, 42.158863, 19.594595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548096, 42.305344, 19.694635>,  <33.278652, 42.549477, 19.861368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548096, 42.305344, 19.694635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147023, -0.442055, 0.884857,
		-0.724318, -0.657330, -0.208039,
		0.673608, -0.610331, -0.416831,
		33.750179, 42.122246, 19.569586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161358, 41.887890, 20.095650>,  <33.278652, 42.549477, 19.861368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161358, 41.887890, 20.095650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544113, 41.896744, 19.979809>,  <33.773766, 41.902054, 19.910303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544113, 41.896744, 19.979809>,  <33.161358, 41.887890, 20.095650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544113, 41.896744, 19.979809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283938, -0.281189, 0.916685,
		-0.061146, -0.959397, -0.275351,
		0.956891, 0.022131, -0.289603,
		33.831181, 41.903381, 19.892927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363857, 41.334621, 20.393257>,  <33.161358, 41.887890, 20.095650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363857, 41.334621, 20.393257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707363, 41.520664, 20.307276>,  <33.913467, 41.632290, 20.255688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707363, 41.520664, 20.307276>,  <33.363857, 41.334621, 20.393257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707363, 41.520664, 20.307276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421611, -0.403050, 0.812277,
		0.291162, -0.788177, -0.542219,
		0.858760, 0.465110, -0.214951,
		33.964993, 41.660198, 20.242790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894901, 40.765942, 20.455570>,  <33.363857, 41.334621, 20.393257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894901, 40.765942, 20.455570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076107, 41.121632, 20.481045>,  <34.184830, 41.335045, 20.496330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076107, 41.121632, 20.481045>,  <33.894901, 40.765942, 20.455570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076107, 41.121632, 20.481045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486891, -0.306626, 0.817874,
		0.746801, -0.339503, -0.571862,
		0.453018, 0.889224, 0.063687,
		34.212013, 41.388397, 20.500151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697746, 40.689762, 20.410580>,  <33.894901, 40.765942, 20.455570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697746, 40.689762, 20.410580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608891, 41.028404, 20.604040>,  <34.555576, 41.231590, 20.720118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608891, 41.028404, 20.604040>,  <34.697746, 40.689762, 20.410580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608891, 41.028404, 20.604040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469282, -0.341975, 0.814142,
		0.854652, 0.407820, -0.321331,
		-0.222136, 0.846603, 0.483652,
		34.542248, 41.282387, 20.749136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375248, 40.978405, 20.647345>,  <34.697746, 40.689762, 20.410580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375248, 40.978405, 20.647345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097210, 41.154926, 20.874359>,  <34.930386, 41.260838, 21.010569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097210, 41.154926, 20.874359>,  <35.375248, 40.978405, 20.647345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097210, 41.154926, 20.874359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515473, -0.244353, 0.821328,
		0.501131, 0.863450, -0.057630,
		-0.695094, 0.441300, 0.567538,
		34.888683, 41.287315, 21.044621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707733, 41.190586, 21.228331>,  <35.375248, 40.978405, 20.647345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707733, 41.190586, 21.228331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338787, 41.231503, 21.377348>,  <35.117420, 41.256054, 21.466759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338787, 41.231503, 21.377348>,  <35.707733, 41.190586, 21.228331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338787, 41.231503, 21.377348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347262, -0.203051, 0.915521,
		0.169294, 0.973811, 0.151765,
		-0.922360, 0.102290, 0.372543,
		35.062080, 41.262188, 21.489111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749977, 41.563217, 21.888233>,  <35.707733, 41.190586, 21.228331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749977, 41.563217, 21.888233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387249, 41.396389, 21.912622>,  <35.169613, 41.296291, 21.927256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387249, 41.396389, 21.912622>,  <35.749977, 41.563217, 21.888233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387249, 41.396389, 21.912622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185499, -0.264989, 0.946240,
		-0.378496, 0.869384, 0.317666,
		-0.906825, -0.417075, 0.060973,
		35.115200, 41.271267, 21.930914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360558, 41.889038, 22.475922>,  <35.749977, 41.563217, 21.888233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360558, 41.889038, 22.475922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195244, 41.531799, 22.404840>,  <35.096054, 41.317455, 22.362192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195244, 41.531799, 22.404840>,  <35.360558, 41.889038, 22.475922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195244, 41.531799, 22.404840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060465, -0.221634, 0.973254,
		-0.908592, 0.391487, 0.145599,
		-0.413286, -0.893094, -0.177703,
		35.071259, 41.263870, 22.351530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871056, 41.725338, 23.067154>,  <35.360558, 41.889038, 22.475922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871056, 41.725338, 23.067154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951492, 41.378349, 22.885141>,  <34.999756, 41.170155, 22.775934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951492, 41.378349, 22.885141>,  <34.871056, 41.725338, 23.067154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951492, 41.378349, 22.885141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112516, -0.440990, 0.890431,
		-0.973089, -0.230257, 0.008924,
		0.201093, -0.867473, -0.455031,
		35.011822, 41.118107, 22.748632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557640, 41.310131, 23.415798>,  <34.871056, 41.725338, 23.067154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557640, 41.310131, 23.415798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815727, 41.063255, 23.235678>,  <34.970581, 40.915131, 23.127605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815727, 41.063255, 23.235678>,  <34.557640, 41.310131, 23.415798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815727, 41.063255, 23.235678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002450, -0.587730, 0.809054,
		-0.763995, -0.523119, -0.377702,
		0.645218, -0.617187, -0.450304,
		35.009293, 40.878098, 23.100586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365849, 40.633915, 23.696554>,  <34.557640, 41.310131, 23.415798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365849, 40.633915, 23.696554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741325, 40.598808, 23.563194>,  <34.966610, 40.577744, 23.483179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741325, 40.598808, 23.563194>,  <34.365849, 40.633915, 23.696554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741325, 40.598808, 23.563194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179927, -0.700188, 0.690914,
		-0.294081, -0.708543, -0.641470,
		0.938692, -0.087767, -0.333398,
		35.022934, 40.572479, 23.463175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507263, 39.963402, 23.501675>,  <34.365849, 40.633915, 23.696554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507263, 39.963402, 23.501675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859749, 40.126110, 23.598000>,  <35.071239, 40.223736, 23.655794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859749, 40.126110, 23.598000>,  <34.507263, 39.963402, 23.501675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859749, 40.126110, 23.598000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131361, -0.700089, 0.701869,
		0.454092, -0.586866, -0.670365,
		0.881218, 0.406773, 0.240813,
		35.124115, 40.248142, 23.670244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826683, 39.345150, 23.533974>,  <34.507263, 39.963402, 23.501675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826683, 39.345150, 23.533974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.081608, 39.605278, 23.699341>,  <35.234562, 39.761356, 23.798561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.081608, 39.605278, 23.699341>,  <34.826683, 39.345150, 23.533974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081608, 39.605278, 23.699341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272749, -0.692119, 0.668266,
		0.720724, -0.313134, -0.618469,
		0.637311, 0.650322, 0.413420,
		35.272800, 39.800373, 23.823366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490536, 39.055466, 23.656584>,  <34.826683, 39.345150, 23.533974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490536, 39.055466, 23.656584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459179, 39.343388, 23.932478>,  <35.440365, 39.516140, 24.098015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459179, 39.343388, 23.932478>,  <35.490536, 39.055466, 23.656584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459179, 39.343388, 23.932478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415676, -0.605251, 0.678884,
		0.906128, 0.339925, -0.251760,
		-0.078391, 0.719807, 0.689734,
		35.435661, 39.559330, 24.139399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201241, 39.132236, 23.995308>,  <35.490536, 39.055466, 23.656584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201241, 39.132236, 23.995308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949722, 39.316322, 24.246006>,  <35.798809, 39.426773, 24.396425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949722, 39.316322, 24.246006>,  <36.201241, 39.132236, 23.995308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949722, 39.316322, 24.246006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548359, -0.309006, 0.777057,
		0.551284, 0.832295, -0.058062,
		-0.628799, 0.460218, 0.626747,
		35.761082, 39.454388, 24.434031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.725128, 35.980473, 26.587358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595543, 36.267853, 26.833569>,  <39.517792, 36.440281, 26.981295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595543, 36.267853, 26.833569>,  <39.725128, 35.980473, 26.587358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595543, 36.267853, 26.833569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033468, -0.641504, 0.766389,
		0.945477, 0.268884, 0.183780,
		-0.323965, 0.718453, 0.615526,
		39.498352, 36.483387, 27.018227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127941, 36.055286, 27.122246>,  <39.725128, 35.980473, 26.587358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127941, 36.055286, 27.122246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811989, 36.231441, 27.292961>,  <39.622417, 36.337135, 27.395391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811989, 36.231441, 27.292961>,  <40.127941, 36.055286, 27.122246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811989, 36.231441, 27.292961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123462, -0.567495, 0.814068,
		0.600704, 0.695709, 0.393883,
		-0.789881, 0.440384, 0.426790,
		39.575024, 36.363556, 27.420998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372028, 36.032146, 27.832863>,  <40.127941, 36.055286, 27.122246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372028, 36.032146, 27.832863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.982147, 36.121021, 27.842501>,  <39.748219, 36.174347, 27.848284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.982147, 36.121021, 27.842501>,  <40.372028, 36.032146, 27.832863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982147, 36.121021, 27.842501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075319, -0.428073, 0.900600,
		0.210416, 0.876006, 0.433980,
		-0.974706, 0.222188, 0.024094,
		39.689735, 36.187679, 27.849730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280304, 36.211979, 28.457830>,  <40.372028, 36.032146, 27.832863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280304, 36.211979, 28.457830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.911839, 36.102230, 28.347429>,  <39.690762, 36.036381, 28.281189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.911839, 36.102230, 28.347429>,  <40.280304, 36.211979, 28.457830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911839, 36.102230, 28.347429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155040, -0.391773, 0.906905,
		-0.356965, 0.878198, 0.318347,
		-0.921162, -0.274377, -0.276005,
		39.635490, 36.019917, 28.264627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918388, 36.521931, 28.995609>,  <40.280304, 36.211979, 28.457830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918388, 36.521931, 28.995609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721607, 36.227047, 28.810349>,  <39.603539, 36.050117, 28.699192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721607, 36.227047, 28.810349>,  <39.918388, 36.521931, 28.995609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721607, 36.227047, 28.810349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253829, -0.387415, 0.886273,
		-0.832800, 0.553562, 0.003463,
		-0.491949, -0.737210, -0.463150,
		39.574024, 36.005882, 28.671404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257439, 36.385754, 29.345377>,  <39.918388, 36.521931, 28.995609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257439, 36.385754, 29.345377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280140, 36.041019, 29.143774>,  <39.293762, 35.834179, 29.022812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280140, 36.041019, 29.143774>,  <39.257439, 36.385754, 29.345377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280140, 36.041019, 29.143774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359094, -0.488660, 0.795150,
		-0.931574, 0.135857, -0.337213,
		0.056755, -0.861832, -0.504008,
		39.297165, 35.782471, 28.992571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679565, 36.075405, 29.530575>,  <39.257439, 36.385754, 29.345377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679565, 36.075405, 29.530575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928230, 35.791496, 29.398052>,  <39.077431, 35.621151, 29.318539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928230, 35.791496, 29.398052>,  <38.679565, 36.075405, 29.530575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928230, 35.791496, 29.398052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187115, -0.545292, 0.817095,
		-0.760608, -0.445964, -0.471796,
		0.621662, -0.709769, -0.331307,
		39.114731, 35.578568, 29.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406181, 35.529408, 29.779406>,  <38.679565, 36.075405, 29.530575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406181, 35.529408, 29.779406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770050, 35.397949, 29.677824>,  <38.988369, 35.319073, 29.616875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770050, 35.397949, 29.677824>,  <38.406181, 35.529408, 29.779406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770050, 35.397949, 29.677824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102275, -0.415372, 0.903884,
		-0.402527, -0.848215, -0.344244,
		0.909676, -0.328630, -0.253949,
		39.042950, 35.299355, 29.601637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394810, 34.883575, 30.072296>,  <38.406181, 35.529408, 29.779406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394810, 34.883575, 30.072296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781525, 34.962933, 30.007837>,  <39.013554, 35.010548, 29.969162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781525, 34.962933, 30.007837>,  <38.394810, 34.883575, 30.072296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781525, 34.962933, 30.007837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233843, -0.432052, 0.871004,
		0.103173, -0.879757, -0.464093,
		0.966785, 0.198389, -0.161148,
		39.071560, 35.022449, 29.959492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721348, 34.254856, 30.152353>,  <38.394810, 34.883575, 30.072296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721348, 34.254856, 30.152353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995911, 34.544006, 30.184095>,  <39.160648, 34.717499, 30.203140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995911, 34.544006, 30.184095>,  <38.721348, 34.254856, 30.152353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995911, 34.544006, 30.184095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222267, -0.312437, 0.923570,
		0.692422, -0.616303, -0.375129,
		0.686403, 0.722879, 0.079354,
		39.201832, 34.760872, 30.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371613, 33.909458, 30.494864>,  <38.721348, 34.254856, 30.152353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371613, 33.909458, 30.494864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405128, 34.304337, 30.549150>,  <39.425240, 34.541264, 30.581722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405128, 34.304337, 30.549150>,  <39.371613, 33.909458, 30.494864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405128, 34.304337, 30.549150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295193, -0.154672, 0.942835,
		0.951757, -0.038937, -0.304373,
		0.083790, 0.987198, 0.135716,
		39.430264, 34.600494, 30.589865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011078, 34.032734, 30.940882>,  <39.371613, 33.909458, 30.494864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011078, 34.032734, 30.940882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.785435, 34.357716, 30.999798>,  <39.650047, 34.552704, 31.035149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.785435, 34.357716, 30.999798>,  <40.011078, 34.032734, 30.940882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785435, 34.357716, 30.999798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029652, -0.158337, 0.986940,
		0.825168, 0.561109, 0.065229,
		-0.564109, 0.812457, 0.147292,
		39.616203, 34.601452, 31.043985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435471, 34.494446, 31.408873>,  <40.011078, 34.032734, 30.940882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435471, 34.494446, 31.408873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055298, 34.610001, 31.454863>,  <39.827194, 34.679333, 31.482456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055298, 34.610001, 31.454863>,  <40.435471, 34.494446, 31.408873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055298, 34.610001, 31.454863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141548, 0.072778, 0.987252,
		0.276838, 0.954593, -0.110063,
		-0.950434, 0.288888, 0.114973,
		39.770168, 34.696667, 31.489355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445049, 35.110401, 31.742836>,  <40.435471, 34.494446, 31.408873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445049, 35.110401, 31.742836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109051, 34.903198, 31.807432>,  <39.907452, 34.778877, 31.846189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109051, 34.903198, 31.807432>,  <40.445049, 35.110401, 31.742836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109051, 34.903198, 31.807432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155629, 0.055109, 0.986277,
		-0.519799, 0.853599, 0.034326,
		-0.839993, -0.518008, 0.161491,
		39.857052, 34.747795, 31.855879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009205, 35.624912, 31.727821>,  <40.445049, 35.110401, 31.742836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009205, 35.624912, 31.727821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066547, 35.865849, 32.041927>,  <41.100952, 36.010410, 32.230392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066547, 35.865849, 32.041927>,  <41.009205, 35.624912, 31.727821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066547, 35.865849, 32.041927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437568, 0.750268, -0.495613,
		-0.887684, -0.272558, 0.371118,
		0.143355, 0.602337, 0.785264,
		41.109554, 36.046551, 32.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280880, 35.877575, 31.964916>,  <41.009205, 35.624912, 31.727821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280880, 35.877575, 31.964916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 36.140232, 32.046028>,  <40.745796, 36.297825, 32.094696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 36.140232, 32.046028>,  <40.280880, 35.877575, 31.964916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571453, 36.140232, 32.046028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417762, 0.656211, -0.628381,
		-0.545688, 0.371761, 0.751011,
		0.726429, 0.656644, 0.202779,
		40.789383, 36.337227, 32.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914772, 36.454151, 32.146061>,  <40.280880, 35.877575, 31.964916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914772, 36.454151, 32.146061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276707, 36.555355, 32.009094>,  <40.493870, 36.616077, 31.926914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276707, 36.555355, 32.009094>,  <39.914772, 36.454151, 32.146061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276707, 36.555355, 32.009094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422866, 0.627558, -0.653724,
		0.049490, 0.736313, 0.674829,
		0.904840, 0.253010, -0.342419,
		40.548161, 36.631256, 31.906368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033455, 37.201523, 32.307335>,  <39.914772, 36.454151, 32.146061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033455, 37.201523, 32.307335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310516, 37.143177, 32.024788>,  <40.476753, 37.108170, 31.855261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310516, 37.143177, 32.024788>,  <40.033455, 37.201523, 32.307335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310516, 37.143177, 32.024788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480086, 0.637638, -0.602441,
		0.538283, 0.756400, 0.371633,
		0.692654, -0.145868, -0.706366,
		40.518314, 37.099415, 31.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121170, 37.850323, 32.146282>,  <40.033455, 37.201523, 32.307335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121170, 37.850323, 32.146282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277813, 37.637230, 31.846191>,  <40.371799, 37.509373, 31.666138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277813, 37.637230, 31.846191>,  <40.121170, 37.850323, 32.146282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277813, 37.637230, 31.846191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219180, 0.737867, -0.638368,
		0.893648, 0.414421, 0.172186,
		0.391603, -0.532736, -0.750226,
		40.395294, 37.477409, 31.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489983, 38.271961, 31.814535>,  <40.121170, 37.850323, 32.146282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489983, 38.271961, 31.814535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412682, 37.985592, 31.546175>,  <40.366299, 37.813770, 31.385159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412682, 37.985592, 31.546175>,  <40.489983, 38.271961, 31.814535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412682, 37.985592, 31.546175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158719, 0.697597, -0.698689,
		0.968225, -0.028542, -0.248446,
		-0.193258, -0.715921, -0.670901,
		40.354706, 37.770817, 31.344904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666378, 38.610546, 31.247616>,  <40.489983, 38.271961, 31.814535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666378, 38.610546, 31.247616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452972, 38.306118, 31.100035>,  <40.324928, 38.123459, 31.011486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452972, 38.306118, 31.100035>,  <40.666378, 38.610546, 31.247616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452972, 38.306118, 31.100035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297350, 0.577157, -0.760574,
		0.791797, -0.296070, -0.534228,
		-0.533516, -0.761073, -0.368955,
		40.292919, 38.077797, 30.989347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926239, 38.543644, 30.493828>,  <40.666378, 38.610546, 31.247616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926239, 38.543644, 30.493828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562943, 38.398254, 30.576763>,  <40.344967, 38.311020, 30.626524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562943, 38.398254, 30.576763>,  <40.926239, 38.543644, 30.493828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562943, 38.398254, 30.576763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403788, 0.631243, -0.662184,
		0.109803, -0.685143, -0.720085,
		-0.908239, -0.363472, 0.207341,
		40.290470, 38.289211, 30.638966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611526, 38.434513, 29.804144>,  <40.926239, 38.543644, 30.493828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611526, 38.434513, 29.804144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309223, 38.443459, 30.065931>,  <40.127842, 38.448826, 30.223003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309223, 38.443459, 30.065931>,  <40.611526, 38.434513, 29.804144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309223, 38.443459, 30.065931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515753, 0.595516, -0.615922,
		-0.403518, -0.803032, -0.438535,
		-0.755759, 0.022360, 0.654467,
		40.082497, 38.450165, 30.262272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011730, 38.248623, 29.433252>,  <40.611526, 38.434513, 29.804144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011730, 38.248623, 29.433252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863426, 38.411491, 29.767139>,  <39.774445, 38.509212, 29.967472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863426, 38.411491, 29.767139>,  <40.011730, 38.248623, 29.433252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863426, 38.411491, 29.767139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597296, 0.583701, -0.550028,
		-0.711181, -0.702498, 0.026791,
		-0.370756, 0.407171, 0.834716,
		39.752201, 38.533642, 30.017555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232430, 38.331116, 29.379745>,  <40.011730, 38.248623, 29.433252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232430, 38.331116, 29.379745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321625, 38.608932, 29.653355>,  <39.375141, 38.775623, 29.817520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321625, 38.608932, 29.653355>,  <39.232430, 38.331116, 29.379745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321625, 38.608932, 29.653355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518035, 0.678839, -0.520401,
		-0.825781, -0.238304, 0.511171,
		0.222990, 0.694542, 0.684023,
		39.388523, 38.817295, 29.858561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619095, 38.709969, 29.516638>,  <39.232430, 38.331116, 29.379745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619095, 38.709969, 29.516638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914040, 38.956646, 29.626900>,  <39.091007, 39.104652, 29.693056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914040, 38.956646, 29.626900>,  <38.619095, 38.709969, 29.516638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914040, 38.956646, 29.626900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355398, 0.701207, -0.618063,
		-0.574445, 0.357770, 0.736216,
		0.737364, 0.616693, 0.275654,
		39.135250, 39.141655, 29.709597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213287, 39.454113, 29.507484>,  <38.619095, 38.709969, 29.516638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213287, 39.454113, 29.507484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600700, 39.546932, 29.543480>,  <38.833149, 39.602623, 29.565077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600700, 39.546932, 29.543480>,  <38.213287, 39.454113, 29.507484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600700, 39.546932, 29.543480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122555, 0.759351, -0.639035,
		-0.216617, 0.607899, 0.763895,
		0.968534, 0.232045, 0.089987,
		38.891262, 39.616547, 29.570477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238487, 40.208351, 29.608866>,  <38.213287, 39.454113, 29.507484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238487, 40.208351, 29.608866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597675, 40.096657, 29.472816>,  <38.813187, 40.029640, 29.391188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597675, 40.096657, 29.472816>,  <38.238487, 40.208351, 29.608866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597675, 40.096657, 29.472816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099911, 0.623350, -0.775534,
		0.428571, 0.730386, 0.531849,
		0.897967, -0.279234, -0.340123,
		38.867065, 40.012886, 29.370779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119244, 40.742043, 30.171757>,  <38.238487, 40.208351, 29.608866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119244, 40.742043, 30.171757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786137, 40.948944, 30.250694>,  <37.586273, 41.073086, 30.298058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786137, 40.948944, 30.250694>,  <38.119244, 40.742043, 30.171757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786137, 40.948944, 30.250694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161124, -0.567482, 0.807468,
		0.529652, 0.640638, 0.555924,
		-0.832771, 0.517250, 0.197346,
		37.536304, 41.104118, 30.309898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221401, 40.846531, 30.863007>,  <38.119244, 40.742043, 30.171757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221401, 40.846531, 30.863007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839451, 40.953270, 30.810858>,  <37.610279, 41.017315, 30.779568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839451, 40.953270, 30.810858>,  <38.221401, 40.846531, 30.863007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839451, 40.953270, 30.810858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238209, -0.425961, 0.872819,
		0.177378, 0.864493, 0.470307,
		-0.954879, 0.266850, -0.130374,
		37.552986, 41.033325, 30.771746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956295, 41.242367, 31.461308>,  <38.221401, 40.846531, 30.863007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956295, 41.242367, 31.461308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.627266, 41.084118, 31.297911>,  <37.429848, 40.989170, 31.199873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.627266, 41.084118, 31.297911>,  <37.956295, 41.242367, 31.461308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627266, 41.084118, 31.297911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180212, -0.499960, 0.847091,
		-0.539356, 0.770406, 0.339956,
		-0.822568, -0.395619, -0.408493,
		37.380497, 40.965431, 31.175364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290524, 41.408543, 31.868446>,  <37.956295, 41.242367, 31.461308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290524, 41.408543, 31.868446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203297, 41.071930, 31.670750>,  <37.150959, 40.869965, 31.552132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203297, 41.071930, 31.670750>,  <37.290524, 41.408543, 31.868446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203297, 41.071930, 31.670750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222400, -0.450252, 0.864761,
		-0.950255, 0.298497, -0.088970,
		-0.218070, -0.841530, -0.494240,
		37.137875, 40.819469, 31.522478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573540, 41.156288, 32.074974>,  <37.290524, 41.408543, 31.868446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573540, 41.156288, 32.074974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775013, 40.842003, 31.931330>,  <36.895897, 40.653431, 31.845144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775013, 40.842003, 31.931330>,  <36.573540, 41.156288, 32.074974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775013, 40.842003, 31.931330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149109, -0.488519, 0.859719,
		-0.850924, -0.379477, -0.363214,
		0.503680, -0.785714, -0.359109,
		36.926117, 40.606289, 31.823597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124443, 40.584217, 32.185486>,  <36.573540, 41.156288, 32.074974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124443, 40.584217, 32.185486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475132, 40.412079, 32.099552>,  <36.685547, 40.308796, 32.047993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475132, 40.412079, 32.099552>,  <36.124443, 40.584217, 32.185486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475132, 40.412079, 32.099552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202906, -0.735861, 0.646017,
		-0.436100, -0.522789, -0.732468,
		0.876725, -0.430350, -0.214832,
		36.738148, 40.282974, 32.035103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944214, 39.869503, 32.211452>,  <36.124443, 40.584217, 32.185486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944214, 39.869503, 32.211452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.339474, 39.899921, 32.264790>,  <36.576630, 39.918171, 32.296791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.339474, 39.899921, 32.264790>,  <35.944214, 39.869503, 32.211452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339474, 39.899921, 32.264790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025068, -0.777062, 0.628925,
		0.151437, -0.624814, -0.765947,
		0.988149, 0.076041, 0.133339,
		36.635918, 39.922733, 32.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096100, 39.167969, 32.271000>,  <35.944214, 39.869503, 32.211452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096100, 39.167969, 32.271000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391476, 39.386414, 32.429226>,  <36.568703, 39.517479, 32.524162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391476, 39.386414, 32.429226>,  <36.096100, 39.167969, 32.271000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391476, 39.386414, 32.429226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112355, -0.678056, 0.726372,
		0.664894, -0.491938, -0.562062,
		0.738439, 0.546111, 0.395563,
		36.613007, 39.550247, 32.547894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521145, 38.653019, 32.456985>,  <36.096100, 39.167969, 32.271000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521145, 38.653019, 32.456985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622746, 38.974602, 32.672070>,  <36.683708, 39.167553, 32.801121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622746, 38.974602, 32.672070>,  <36.521145, 38.653019, 32.456985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622746, 38.974602, 32.672070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055989, -0.567234, 0.821652,
		0.965581, -0.178598, -0.189093,
		0.254005, 0.803958, 0.537710,
		36.698948, 39.215790, 32.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092609, 38.420547, 32.768490>,  <36.521145, 38.653019, 32.456985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092609, 38.420547, 32.768490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979877, 38.728191, 32.997940>,  <36.912239, 38.912777, 33.135609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979877, 38.728191, 32.997940>,  <37.092609, 38.420547, 32.768490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979877, 38.728191, 32.997940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002482, -0.598441, 0.801163,
		0.959460, 0.224370, 0.170569,
		-0.281832, 0.769108, 0.573623,
		36.895329, 38.958923, 33.170029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503311, 38.344231, 33.358997>,  <37.092609, 38.420547, 32.768490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503311, 38.344231, 33.358997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.201504, 38.567696, 33.496750>,  <37.020420, 38.701775, 33.579399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.201504, 38.567696, 33.496750>,  <37.503311, 38.344231, 33.358997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201504, 38.567696, 33.496750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014960, -0.509965, 0.860065,
		0.656110, 0.654086, 0.376420,
		-0.754517, 0.558666, 0.344378,
		36.975147, 38.735294, 33.600063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747742, 38.668530, 33.951206>,  <37.503311, 38.344231, 33.358997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747742, 38.668530, 33.951206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.349964, 38.644978, 33.986115>,  <37.111298, 38.630844, 34.007057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.349964, 38.644978, 33.986115>,  <37.747742, 38.668530, 33.951206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349964, 38.644978, 33.986115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105219, -0.583274, 0.805432,
		0.003475, 0.810139, 0.586228,
		-0.994443, -0.058883, 0.087269,
		37.051632, 38.627312, 34.012295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.529469, 44.231129, 28.109060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224590, 44.034504, 27.940569>,  <38.041664, 43.916531, 27.839474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224590, 44.034504, 27.940569>,  <38.529469, 44.231129, 28.109060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224590, 44.034504, 27.940569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127390, -0.524078, 0.842089,
		-0.634692, 0.695494, 0.336829,
		-0.762193, -0.491558, -0.421227,
		37.995934, 43.887035, 27.814201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209095, 44.162464, 28.767103>,  <38.529469, 44.231129, 28.109060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209095, 44.162464, 28.767103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988705, 43.936222, 28.521660>,  <37.856468, 43.800476, 28.374393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988705, 43.936222, 28.521660>,  <38.209095, 44.162464, 28.767103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988705, 43.936222, 28.521660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305483, -0.547553, 0.779016,
		-0.776597, 0.616668, 0.128908,
		-0.550979, -0.565602, -0.613609,
		37.823410, 43.766541, 28.337578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573486, 44.022640, 29.094316>,  <38.209095, 44.162464, 28.767103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573486, 44.022640, 29.094316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606468, 43.738419, 28.814798>,  <37.626259, 43.567886, 28.647087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606468, 43.738419, 28.814798>,  <37.573486, 44.022640, 29.094316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606468, 43.738419, 28.814798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367636, -0.673415, 0.641371,
		-0.926307, 0.204018, -0.316752,
		0.082454, -0.710555, -0.698793,
		37.631203, 43.525253, 28.605160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963459, 43.725262, 29.029207>,  <37.573486, 44.022640, 29.094316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963459, 43.725262, 29.029207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226307, 43.454124, 28.897316>,  <37.384018, 43.291443, 28.818182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226307, 43.454124, 28.897316>,  <36.963459, 43.725262, 29.029207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226307, 43.454124, 28.897316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338147, -0.656033, 0.674743,
		-0.673679, -0.331895, -0.660305,
		0.657125, -0.677840, -0.329726,
		37.423443, 43.250771, 28.798397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623856, 43.010578, 29.134285>,  <36.963459, 43.725262, 29.029207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623856, 43.010578, 29.134285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007038, 42.919163, 29.064901>,  <37.236946, 42.864315, 29.023272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007038, 42.919163, 29.064901>,  <36.623856, 43.010578, 29.134285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007038, 42.919163, 29.064901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115658, -0.860882, 0.495484,
		-0.262566, -0.454590, -0.851121,
		0.957958, -0.228536, -0.173461,
		37.294426, 42.850601, 29.012863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627270, 42.293819, 28.910059>,  <36.623856, 43.010578, 29.134285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627270, 42.293819, 28.910059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001091, 42.343494, 29.043442>,  <37.225384, 42.373299, 29.123470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001091, 42.343494, 29.043442>,  <36.627270, 42.293819, 28.910059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001091, 42.343494, 29.043442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046561, -0.886378, 0.460615,
		0.352771, -0.445994, -0.822582,
		0.934550, 0.124192, 0.333455,
		37.281456, 42.380753, 29.143478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929081, 41.684917, 28.809814>,  <36.627270, 42.293819, 28.910059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929081, 41.684917, 28.809814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160637, 41.861794, 29.083849>,  <37.299572, 41.967918, 29.248270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160637, 41.861794, 29.083849>,  <36.929081, 41.684917, 28.809814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160637, 41.861794, 29.083849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065957, -0.862825, 0.501182,
		0.812731, -0.244945, -0.528650,
		0.578894, 0.442194, 0.685088,
		37.334305, 41.994453, 29.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455597, 41.277275, 28.971205>,  <36.929081, 41.684917, 28.809814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455597, 41.277275, 28.971205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434494, 41.501045, 29.302084>,  <37.421833, 41.635307, 29.500612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434494, 41.501045, 29.302084>,  <37.455597, 41.277275, 28.971205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434494, 41.501045, 29.302084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038082, -0.826621, 0.561469,
		0.997881, 0.061122, 0.022304,
		-0.052755, 0.559430, 0.827197,
		37.418667, 41.668873, 29.550243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936390, 40.932087, 29.503983>,  <37.455597, 41.277275, 28.971205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936390, 40.932087, 29.503983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675472, 41.145706, 29.719131>,  <37.518921, 41.273876, 29.848221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675472, 41.145706, 29.719131>,  <37.936390, 40.932087, 29.503983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675472, 41.145706, 29.719131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154377, -0.601146, 0.784086,
		0.742077, 0.594491, 0.309681,
		-0.652296, 0.534045, 0.537872,
		37.479782, 41.305920, 29.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647102, 40.908314, 29.520557>,  <37.936390, 40.932087, 29.503983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647102, 40.908314, 29.520557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796524, 40.631371, 29.273624>,  <38.886177, 40.465206, 29.125465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796524, 40.631371, 29.273624>,  <38.647102, 40.908314, 29.520557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796524, 40.631371, 29.273624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070213, 0.684702, -0.725433,
		0.924947, 0.227644, 0.304386,
		0.373554, -0.692359, -0.617330,
		38.908592, 40.423664, 29.088425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228172, 41.211464, 29.154757>,  <38.647102, 40.908314, 29.520557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228172, 41.211464, 29.154757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159248, 40.895660, 28.919136>,  <39.117893, 40.706177, 28.777763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159248, 40.895660, 28.919136>,  <39.228172, 41.211464, 29.154757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159248, 40.895660, 28.919136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397022, 0.491610, -0.775044,
		0.901489, -0.367415, 0.228743,
		-0.172311, -0.789510, -0.589053,
		39.107555, 40.658806, 28.742420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825455, 41.215916, 28.648355>,  <39.228172, 41.211464, 29.154757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825455, 41.215916, 28.648355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529011, 40.994560, 28.496290>,  <39.351147, 40.861748, 28.405050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529011, 40.994560, 28.496290>,  <39.825455, 41.215916, 28.648355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529011, 40.994560, 28.496290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340410, 0.178339, -0.923210,
		0.578690, -0.813609, 0.056210,
		-0.741107, -0.553386, -0.380163,
		39.306679, 40.828545, 28.382240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153900, 40.992371, 28.016846>,  <39.825455, 41.215916, 28.648355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153900, 40.992371, 28.016846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768467, 40.896687, 27.969025>,  <39.537209, 40.839275, 27.940332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768467, 40.896687, 27.969025>,  <40.153900, 40.992371, 28.016846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768467, 40.896687, 27.969025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128355, -0.021498, -0.991495,
		0.234608, -0.970729, 0.051419,
		-0.963579, -0.239212, -0.119554,
		39.479393, 40.824924, 27.933159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075184, 40.524685, 27.495472>,  <40.153900, 40.992371, 28.016846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075184, 40.524685, 27.495472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702492, 40.669949, 27.494923>,  <39.478878, 40.757107, 27.494593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702492, 40.669949, 27.494923>,  <40.075184, 40.524685, 27.495472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702492, 40.669949, 27.494923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064112, 0.160771, -0.984907,
		-0.357454, -0.917753, -0.173078,
		-0.931727, 0.363156, -0.001371,
		39.422974, 40.778896, 27.494511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714905, 40.220127, 26.839432>,  <40.075184, 40.524685, 27.495472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714905, 40.220127, 26.839432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521240, 40.546978, 26.964575>,  <39.405041, 40.743088, 27.039661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521240, 40.546978, 26.964575>,  <39.714905, 40.220127, 26.839432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521240, 40.546978, 26.964575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111131, 0.412095, -0.904338,
		-0.867890, -0.403081, -0.290330,
		-0.484165, 0.817131, 0.312858,
		39.375992, 40.792118, 27.058432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267284, 40.346199, 26.353214>,  <39.714905, 40.220127, 26.839432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267284, 40.346199, 26.353214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310581, 40.687027, 26.558060>,  <39.336559, 40.891525, 26.680967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310581, 40.687027, 26.558060>,  <39.267284, 40.346199, 26.353214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310581, 40.687027, 26.558060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194433, 0.487044, -0.851460,
		-0.974925, 0.191736, -0.112951,
		0.108243, 0.852071, 0.512111,
		39.343056, 40.942650, 26.711693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793747, 40.762009, 26.053041>,  <39.267284, 40.346199, 26.353214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793747, 40.762009, 26.053041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062141, 40.996254, 26.234959>,  <39.223179, 41.136803, 26.344109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062141, 40.996254, 26.234959>,  <38.793747, 40.762009, 26.053041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062141, 40.996254, 26.234959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128768, 0.512015, -0.849270,
		-0.730206, 0.628409, 0.268145,
		0.670983, 0.585613, 0.454795,
		39.263435, 41.171940, 26.371397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612839, 41.370735, 25.890877>,  <38.793747, 40.762009, 26.053041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612839, 41.370735, 25.890877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987820, 41.430054, 26.016853>,  <39.212811, 41.465645, 26.092440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987820, 41.430054, 26.016853>,  <38.612839, 41.370735, 25.890877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987820, 41.430054, 26.016853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210641, 0.478641, -0.852369,
		-0.277146, 0.865397, 0.417468,
		0.937454, 0.148295, 0.314942,
		39.269054, 41.474541, 26.111336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649876, 42.005905, 25.762144>,  <38.612839, 41.370735, 25.890877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649876, 42.005905, 25.762144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011990, 41.837963, 25.788004>,  <39.229259, 41.737198, 25.803520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011990, 41.837963, 25.788004>,  <38.649876, 42.005905, 25.762144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011990, 41.837963, 25.788004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302540, 0.530386, -0.791934,
		0.298213, 0.736484, 0.607174,
		0.905284, -0.419859, 0.064648,
		39.283573, 41.712006, 25.807398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074333, 42.513828, 25.595858>,  <38.649876, 42.005905, 25.762144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074333, 42.513828, 25.595858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346973, 42.222893, 25.563871>,  <39.510559, 42.048332, 25.544680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346973, 42.222893, 25.563871>,  <39.074333, 42.513828, 25.595858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346973, 42.222893, 25.563871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302633, 0.379713, -0.874203,
		0.666209, 0.571657, 0.478930,
		0.681600, -0.727342, -0.079965,
		39.551453, 42.004688, 25.539883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693249, 42.860180, 25.531178>,  <39.074333, 42.513828, 25.595858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693249, 42.860180, 25.531178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715916, 42.500484, 25.357666>,  <39.729515, 42.284668, 25.253559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715916, 42.500484, 25.357666>,  <39.693249, 42.860180, 25.531178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715916, 42.500484, 25.357666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412933, 0.416686, -0.809851,
		0.908997, -0.133226, 0.394938,
		0.056672, -0.899235, -0.433780,
		39.732918, 42.230713, 25.227531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437992, 42.809082, 25.289318>,  <39.693249, 42.860180, 25.531178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437992, 42.809082, 25.289318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198727, 42.558651, 25.089228>,  <40.055168, 42.408394, 24.969173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198727, 42.558651, 25.089228>,  <40.437992, 42.809082, 25.289318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198727, 42.558651, 25.089228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383541, 0.324418, -0.864667,
		0.703632, -0.709069, 0.046073,
		-0.598162, -0.626079, -0.500228,
		40.019279, 42.370827, 24.939159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792152, 42.763798, 24.611431>,  <40.437992, 42.809082, 25.289318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792152, 42.763798, 24.611431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434196, 42.599052, 24.542675>,  <40.219425, 42.500206, 24.501421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434196, 42.599052, 24.542675>,  <40.792152, 42.763798, 24.611431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434196, 42.599052, 24.542675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048335, 0.472334, -0.880093,
		0.443666, -0.779276, -0.442593,
		-0.894888, -0.411860, -0.171892,
		40.165730, 42.475494, 24.491108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.267124, 40.794285, 23.973440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533924, 41.021141, 24.166710>,  <32.694004, 41.157257, 24.282671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533924, 41.021141, 24.166710>,  <32.267124, 40.794285, 23.973440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533924, 41.021141, 24.166710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236286, -0.776049, 0.584737,
		0.706596, -0.275854, -0.651634,
		0.667002, 0.567144, 0.483173,
		32.734024, 41.191284, 24.311663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775211, 40.294491, 24.131296>,  <32.267124, 40.794285, 23.973440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775211, 40.294491, 24.131296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.853306, 40.609680, 24.364872>,  <32.900162, 40.798794, 24.505016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.853306, 40.609680, 24.364872>,  <32.775211, 40.294491, 24.131296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853306, 40.609680, 24.364872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217505, -0.615356, 0.757647,
		0.956334, -0.020909, -0.291527,
		0.195234, 0.787972, 0.583938,
		32.911877, 40.846073, 24.540054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407139, 40.136509, 24.378946>,  <32.775211, 40.294491, 24.131296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407139, 40.136509, 24.378946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296116, 40.424992, 24.632818>,  <33.229504, 40.598080, 24.785141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296116, 40.424992, 24.632818>,  <33.407139, 40.136509, 24.378946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296116, 40.424992, 24.632818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459842, -0.480311, 0.746891,
		0.843508, 0.499159, -0.198327,
		-0.277559, 0.721208, 0.634681,
		33.212849, 40.641354, 24.823223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035591, 40.265045, 24.864828>,  <33.407139, 40.136509, 24.378946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035591, 40.265045, 24.864828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706051, 40.381084, 25.059605>,  <33.508327, 40.450706, 25.176470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706051, 40.381084, 25.059605>,  <34.035591, 40.265045, 24.864828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706051, 40.381084, 25.059605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278004, -0.541851, 0.793166,
		0.493946, 0.788822, 0.365756,
		-0.823852, 0.290099, 0.486940,
		33.458897, 40.468113, 25.205687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236336, 40.365429, 25.604332>,  <34.035591, 40.265045, 24.864828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236336, 40.365429, 25.604332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840172, 40.317055, 25.631031>,  <33.602474, 40.288029, 25.647051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840172, 40.317055, 25.631031>,  <34.236336, 40.365429, 25.604332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840172, 40.317055, 25.631031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121410, -0.531654, 0.838214,
		-0.065887, 0.838282, 0.541241,
		-0.990413, -0.120939, 0.066747,
		33.543049, 40.280773, 25.651054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036766, 40.626431, 26.287239>,  <34.236336, 40.365429, 25.604332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036766, 40.626431, 26.287239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708050, 40.422501, 26.185457>,  <33.510822, 40.300144, 26.124388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708050, 40.422501, 26.185457>,  <34.036766, 40.626431, 26.287239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708050, 40.422501, 26.185457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130440, -0.266385, 0.955000,
		-0.554662, 0.817998, 0.152411,
		-0.821788, -0.509821, -0.254453,
		33.461514, 40.269554, 26.109121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584290, 40.777699, 26.800745>,  <34.036766, 40.626431, 26.287239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584290, 40.777699, 26.800745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484879, 40.430389, 26.629007>,  <33.425232, 40.222004, 26.525965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484879, 40.430389, 26.629007>,  <33.584290, 40.777699, 26.800745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484879, 40.430389, 26.629007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104331, -0.464668, 0.879317,
		-0.962991, 0.173737, 0.206069,
		-0.248524, -0.868273, -0.429345,
		33.410320, 40.169907, 26.500204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069096, 40.562485, 27.196072>,  <33.584290, 40.777699, 26.800745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069096, 40.562485, 27.196072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194443, 40.224384, 27.022936>,  <33.269650, 40.021523, 26.919054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194443, 40.224384, 27.022936>,  <33.069096, 40.562485, 27.196072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194443, 40.224384, 27.022936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189124, -0.391117, 0.900699,
		-0.930609, -0.364109, 0.037294,
		0.313367, -0.845252, -0.432839,
		33.288452, 39.970810, 26.893084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774849, 40.031567, 27.589016>,  <33.069096, 40.562485, 27.196072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774849, 40.031567, 27.589016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.064182, 39.839890, 27.390154>,  <33.237782, 39.724884, 27.270836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.064182, 39.839890, 27.390154>,  <32.774849, 40.031567, 27.589016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064182, 39.839890, 27.390154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171606, -0.572651, 0.801637,
		-0.668836, -0.665165, -0.331985,
		0.723333, -0.479194, -0.497156,
		33.281181, 39.696133, 27.241007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652653, 39.311260, 27.640989>,  <32.774849, 40.031567, 27.589016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652653, 39.311260, 27.640989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.040710, 39.331295, 27.546070>,  <33.273544, 39.343315, 27.489119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.040710, 39.331295, 27.546070>,  <32.652653, 39.311260, 27.640989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040710, 39.331295, 27.546070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218075, -0.608297, 0.763164,
		-0.106123, -0.792128, -0.601059,
		0.970145, 0.050087, -0.237297,
		33.331753, 39.346321, 27.474880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910927, 38.607094, 27.697184>,  <32.652653, 39.311260, 27.640989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910927, 38.607094, 27.697184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238708, 38.835770, 27.713501>,  <33.435379, 38.972977, 27.723291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238708, 38.835770, 27.713501>,  <32.910927, 38.607094, 27.697184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238708, 38.835770, 27.713501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353650, -0.560358, 0.748953,
		0.451031, -0.599305, -0.661366,
		0.819453, 0.571693, 0.040795,
		33.484543, 39.007278, 27.725739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514050, 38.131802, 27.657679>,  <32.910927, 38.607094, 27.697184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514050, 38.131802, 27.657679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.686466, 38.447056, 27.833427>,  <33.789917, 38.636208, 27.938877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.686466, 38.447056, 27.833427>,  <33.514050, 38.131802, 27.657679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686466, 38.447056, 27.833427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137854, -0.538733, 0.831122,
		0.891739, -0.297679, -0.340864,
		0.431043, 0.788134, 0.439372,
		33.815781, 38.683495, 27.965239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183601, 37.933311, 27.770628>,  <33.514050, 38.131802, 27.657679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183601, 37.933311, 27.770628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104790, 38.238541, 28.016848>,  <34.057503, 38.421677, 28.164579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104790, 38.238541, 28.016848>,  <34.183601, 37.933311, 27.770628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104790, 38.238541, 28.016848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184879, -0.587672, 0.787694,
		0.962808, 0.269001, -0.025287,
		-0.197030, 0.763073, 0.615548,
		34.045681, 38.467461, 28.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730289, 37.871662, 28.248434>,  <34.183601, 37.933311, 27.770628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730289, 37.871662, 28.248434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444229, 38.091358, 28.421356>,  <34.272591, 38.223175, 28.525108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444229, 38.091358, 28.421356>,  <34.730289, 37.871662, 28.248434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444229, 38.091358, 28.421356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141144, -0.492270, 0.858923,
		0.684568, 0.675279, 0.274527,
		-0.715154, 0.549243, 0.432304,
		34.229683, 38.256130, 28.551048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463108, 38.074558, 28.174675>,  <34.730289, 37.871662, 28.248434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463108, 38.074558, 28.174675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789047, 37.893597, 28.029705>,  <35.984612, 37.785019, 27.942724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789047, 37.893597, 28.029705>,  <35.463108, 38.074558, 28.174675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789047, 37.893597, 28.029705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141213, 0.451465, -0.881044,
		0.562206, 0.769099, 0.303992,
		0.814851, -0.452401, -0.362424,
		36.033504, 37.757877, 27.920979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770336, 38.548885, 27.830952>,  <35.463108, 38.074558, 28.174675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770336, 38.548885, 27.830952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947773, 38.216824, 27.695860>,  <36.054237, 38.017586, 27.614805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947773, 38.216824, 27.695860>,  <35.770336, 38.548885, 27.830952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947773, 38.216824, 27.695860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161834, 0.444833, -0.880871,
		0.881495, 0.336094, 0.331674,
		0.443595, -0.830159, -0.337727,
		36.080853, 37.967777, 27.594542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482525, 38.735989, 27.634171>,  <35.770336, 38.548885, 27.830952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482525, 38.735989, 27.634171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342190, 38.418304, 27.435720>,  <36.257988, 38.227695, 27.316650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342190, 38.418304, 27.435720>,  <36.482525, 38.735989, 27.634171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342190, 38.418304, 27.435720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186004, 0.460143, -0.868142,
		0.917777, -0.396858, -0.013709,
		-0.350838, -0.794211, -0.496127,
		36.236938, 38.180042, 27.286882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970333, 38.666233, 27.120619>,  <36.482525, 38.735989, 27.634171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970333, 38.666233, 27.120619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654499, 38.456043, 26.993858>,  <36.464996, 38.329929, 26.917803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654499, 38.456043, 26.993858>,  <36.970333, 38.666233, 27.120619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654499, 38.456043, 26.993858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046196, 0.464064, -0.884596,
		0.611898, -0.713105, -0.342143,
		-0.789587, -0.525477, -0.316902,
		36.417622, 38.298401, 26.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119244, 38.369541, 26.424492>,  <36.970333, 38.666233, 27.120619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119244, 38.369541, 26.424492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725208, 38.400520, 26.485939>,  <36.488785, 38.419109, 26.522808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725208, 38.400520, 26.485939>,  <37.119244, 38.369541, 26.424492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725208, 38.400520, 26.485939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105166, 0.435594, -0.893979,
		-0.136152, -0.896806, -0.420954,
		-0.985090, 0.077447, 0.153620,
		36.429680, 38.423756, 26.532024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795742, 38.183651, 25.733856>,  <37.119244, 38.369541, 26.424492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795742, 38.183651, 25.733856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498634, 38.354801, 25.939856>,  <36.320370, 38.457489, 26.063456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498634, 38.354801, 25.939856>,  <36.795742, 38.183651, 25.733856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498634, 38.354801, 25.939856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272291, 0.509657, -0.816154,
		-0.611681, -0.746442, -0.262051,
		-0.742768, 0.427871, 0.514997,
		36.275803, 38.483162, 26.094355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102062, 38.076908, 25.406754>,  <36.795742, 38.183651, 25.733856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102062, 38.076908, 25.406754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029068, 38.397160, 25.635031>,  <35.985271, 38.589310, 25.771997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029068, 38.397160, 25.635031>,  <36.102062, 38.076908, 25.406754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029068, 38.397160, 25.635031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389827, 0.473951, -0.789561,
		-0.902625, -0.366559, 0.225615,
		-0.182490, 0.800628, 0.570694,
		35.974319, 38.637348, 25.806238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372513, 38.246365, 25.399696>,  <36.102062, 38.076908, 25.406754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372513, 38.246365, 25.399696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577900, 38.580956, 25.476269>,  <35.701134, 38.781712, 25.522213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577900, 38.580956, 25.476269>,  <35.372513, 38.246365, 25.399696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577900, 38.580956, 25.476269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385099, 0.423987, -0.819716,
		-0.766842, 0.347180, 0.539833,
		0.513471, 0.836481, 0.191432,
		35.731941, 38.831902, 25.533699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924294, 38.741482, 25.187927>,  <35.372513, 38.246365, 25.399696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924294, 38.741482, 25.187927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268791, 38.942635, 25.217243>,  <35.475491, 39.063328, 25.234833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268791, 38.942635, 25.217243>,  <34.924294, 38.741482, 25.187927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268791, 38.942635, 25.217243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304122, 0.625553, -0.718466,
		-0.407153, 0.596483, 0.691690,
		0.861241, 0.502884, 0.073292,
		35.527164, 39.093498, 25.239231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781525, 39.427765, 25.298544>,  <34.924294, 38.741482, 25.187927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781525, 39.427765, 25.298544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149548, 39.420815, 25.141983>,  <35.370361, 39.416645, 25.048046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149548, 39.420815, 25.141983>,  <34.781525, 39.427765, 25.298544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149548, 39.420815, 25.141983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251937, 0.738836, -0.625019,
		0.300044, 0.673661, 0.675392,
		0.920055, -0.017377, -0.391404,
		35.425564, 39.415600, 25.024561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967045, 40.137470, 25.181290>,  <34.781525, 39.427765, 25.298544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967045, 40.137470, 25.181290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185669, 39.894783, 24.950405>,  <35.316841, 39.749172, 24.811874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185669, 39.894783, 24.950405>,  <34.967045, 40.137470, 25.181290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185669, 39.894783, 24.950405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020609, 0.679316, -0.733556,
		0.837168, 0.412826, 0.358782,
		0.546558, -0.606715, -0.577210,
		35.349636, 39.712769, 24.777243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456825, 40.547363, 24.974432>,  <34.967045, 40.137470, 25.181290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456825, 40.547363, 24.974432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465088, 40.241161, 24.717194>,  <35.470047, 40.057438, 24.562851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465088, 40.241161, 24.717194>,  <35.456825, 40.547363, 24.974432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465088, 40.241161, 24.717194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033309, 0.643401, -0.764804,
		0.999232, -0.005619, 0.038792,
		0.020661, -0.765509, -0.643094,
		35.471287, 40.011509, 24.524265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854687, 40.751820, 24.450111>,  <35.456825, 40.547363, 24.974432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854687, 40.751820, 24.450111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688587, 40.451851, 24.244125>,  <35.588928, 40.271870, 24.120533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688587, 40.451851, 24.244125>,  <35.854687, 40.751820, 24.450111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688587, 40.451851, 24.244125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074102, 0.592081, -0.802464,
		0.906683, -0.295066, -0.301434,
		-0.415253, -0.749917, -0.514965,
		35.564011, 40.226875, 24.089636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244293, 40.811470, 23.846870>,  <35.854687, 40.751820, 24.450111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244293, 40.811470, 23.846870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897034, 40.619671, 23.795660>,  <35.688679, 40.504589, 23.764933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897034, 40.619671, 23.795660>,  <36.244293, 40.811470, 23.846870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897034, 40.619671, 23.795660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064908, 0.365447, -0.928566,
		0.492037, -0.797826, -0.348387,
		-0.868151, -0.479502, -0.128029,
		35.636589, 40.475822, 23.757252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720787, 40.214901, 23.695374>,  <36.244293, 40.811470, 23.846870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720787, 40.214901, 23.695374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092930, 40.206196, 23.548967>,  <37.316216, 40.200974, 23.461124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092930, 40.206196, 23.548967>,  <36.720787, 40.214901, 23.695374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092930, 40.206196, 23.548967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320239, -0.437929, 0.840039,
		-0.178569, -0.898746, -0.400460,
		0.930355, -0.021763, -0.366014,
		37.372036, 40.199665, 23.439163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902092, 39.636467, 23.915180>,  <36.720787, 40.214901, 23.695374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902092, 39.636467, 23.915180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248268, 39.820843, 23.836657>,  <37.455975, 39.931469, 23.789543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248268, 39.820843, 23.836657>,  <36.902092, 39.636467, 23.915180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248268, 39.820843, 23.836657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419488, -0.452455, 0.786965,
		0.273925, -0.763424, -0.584935,
		0.865445, 0.460943, -0.196308,
		37.507900, 39.959126, 23.777763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330051, 39.143417, 23.877474>,  <36.902092, 39.636467, 23.915180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330051, 39.143417, 23.877474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545444, 39.470467, 23.958992>,  <37.674679, 39.666695, 24.007904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545444, 39.470467, 23.958992>,  <37.330051, 39.143417, 23.877474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545444, 39.470467, 23.958992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486345, -0.499072, 0.717214,
		0.688120, -0.287088, -0.666386,
		0.538478, 0.817623, 0.203797,
		37.706989, 39.715755, 24.020130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048901, 38.914616, 23.825798>,  <37.330051, 39.143417, 23.877474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048901, 38.914616, 23.825798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047165, 39.238590, 24.060400>,  <38.046124, 39.432976, 24.201162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047165, 39.238590, 24.060400>,  <38.048901, 38.914616, 23.825798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047165, 39.238590, 24.060400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486286, -0.510782, 0.708962,
		0.873789, 0.288290, -0.391641,
		-0.004343, 0.809932, 0.586507,
		38.045860, 39.481571, 24.236353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734245, 39.043350, 23.899443>,  <38.048901, 38.914616, 23.825798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734245, 39.043350, 23.899443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540028, 39.199059, 24.212549>,  <38.423496, 39.292484, 24.400414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540028, 39.199059, 24.212549>,  <38.734245, 39.043350, 23.899443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540028, 39.199059, 24.212549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534476, -0.576378, 0.618162,
		0.691799, 0.718512, 0.071801,
		-0.485541, 0.389268, 0.782764,
		38.394363, 39.315838, 24.447378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220486, 39.031334, 24.353403>,  <38.734245, 39.043350, 23.899443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220486, 39.031334, 24.353403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877007, 39.069309, 24.554846>,  <38.670918, 39.092094, 24.675711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877007, 39.069309, 24.554846>,  <39.220486, 39.031334, 24.353403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877007, 39.069309, 24.554846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291704, -0.717416, 0.632632,
		0.421355, 0.690146, 0.588352,
		-0.858701, 0.094938, 0.503606,
		38.619396, 39.097790, 24.705927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423710, 39.230396, 25.007854>,  <39.220486, 39.031334, 24.353403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423710, 39.230396, 25.007854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065861, 39.051674, 25.006153>,  <38.851151, 38.944443, 25.005133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065861, 39.051674, 25.006153>,  <39.423710, 39.230396, 25.007854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065861, 39.051674, 25.006153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325874, -0.658947, 0.677935,
		-0.305707, 0.605109, 0.735110,
		-0.894623, -0.446802, -0.004255,
		38.797474, 38.917633, 25.004877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400791, 38.986359, 25.620583>,  <39.423710, 39.230396, 25.007854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400791, 38.986359, 25.620583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082993, 38.810959, 25.452536>,  <38.892315, 38.705719, 25.351707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082993, 38.810959, 25.452536>,  <39.400791, 38.986359, 25.620583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082993, 38.810959, 25.452536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045315, -0.732686, 0.679056,
		-0.605581, 0.520468, 0.601984,
		-0.794493, -0.438502, -0.420116,
		38.844646, 38.679409, 25.326500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967960, 38.999485, 26.135345>,  <39.400791, 38.986359, 25.620583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967960, 38.999485, 26.135345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842094, 38.705200, 25.895441>,  <38.766575, 38.528629, 25.751499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842094, 38.705200, 25.895441>,  <38.967960, 38.999485, 26.135345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842094, 38.705200, 25.895441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151747, -0.662719, 0.733333,
		-0.936996, 0.139740, 0.320174,
		-0.314661, -0.735715, -0.599759,
		38.747696, 38.484486, 25.715513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592884, 38.686630, 26.515278>,  <38.967960, 38.999485, 26.135345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592884, 38.686630, 26.515278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673676, 38.424377, 26.224249>,  <38.722149, 38.267029, 26.049631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673676, 38.424377, 26.224249>,  <38.592884, 38.686630, 26.515278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673676, 38.424377, 26.224249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344862, -0.647694, 0.679384,
		-0.916666, -0.388131, 0.095282,
		0.201976, -0.655627, -0.727570,
		38.734268, 38.227688, 26.005978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090454, 38.034943, 26.578165>,  <38.592884, 38.686630, 26.515278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090454, 38.034943, 26.578165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432678, 37.937408, 26.395491>,  <38.638012, 37.878887, 26.285885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432678, 37.937408, 26.395491>,  <38.090454, 38.034943, 26.578165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432678, 37.937408, 26.395491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238377, -0.597519, 0.765603,
		-0.459560, -0.763883, -0.453088,
		0.855559, -0.243835, -0.456688,
		38.689346, 37.864258, 26.258484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139355, 37.433640, 26.862629>,  <38.090454, 38.034943, 26.578165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139355, 37.433640, 26.862629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.499653, 37.470066, 26.692755>,  <38.715832, 37.491924, 26.590830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.499653, 37.470066, 26.692755>,  <38.139355, 37.433640, 26.862629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499653, 37.470066, 26.692755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387844, -0.608792, 0.692062,
		-0.195517, -0.788085, -0.583691,
		0.900750, 0.091071, -0.424683,
		38.769878, 37.497387, 26.565350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342022, 36.739716, 26.705744>,  <38.139355, 37.433640, 26.862629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342022, 36.739716, 26.705744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665604, 36.974010, 26.725805>,  <38.859753, 37.114586, 26.737843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665604, 36.974010, 26.725805>,  <38.342022, 36.739716, 26.705744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665604, 36.974010, 26.725805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385355, -0.592763, 0.707202,
		0.443959, -0.552765, -0.705231,
		0.808951, 0.585733, 0.050152,
		38.908287, 37.149731, 26.740850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927380, 36.271107, 26.439171>,  <38.342022, 36.739716, 26.705744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927380, 36.271107, 26.439171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108307, 36.566700, 26.638899>,  <39.216862, 36.744057, 26.758736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108307, 36.566700, 26.638899>,  <38.927380, 36.271107, 26.439171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108307, 36.566700, 26.638899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512121, -0.673566, 0.532955,
		0.730168, 0.014648, -0.683111,
		0.452314, 0.738982, 0.499318,
		39.243999, 36.788395, 26.788694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.893997, 42.259613, 23.989180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512253, 42.377186, 24.010344>,  <40.283207, 42.447731, 24.023043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512253, 42.377186, 24.010344>,  <40.893997, 42.259613, 23.989180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512253, 42.377186, 24.010344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057214, 0.353807, -0.933567,
		-0.293129, -0.887931, -0.354476,
		-0.954359, 0.293936, 0.052909,
		40.225945, 42.465366, 24.026217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677792, 42.280975, 23.295717>,  <40.893997, 42.259613, 23.989180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677792, 42.280975, 23.295717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.376965, 42.469418, 23.480091>,  <40.196468, 42.582481, 23.590715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.376965, 42.469418, 23.480091>,  <40.677792, 42.280975, 23.295717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376965, 42.469418, 23.480091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210193, 0.491397, -0.845191,
		-0.624673, -0.732524, -0.270540,
		-0.752065, 0.471103, 0.460934,
		40.151344, 42.610748, 23.618372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009666, 42.078259, 22.879257>,  <40.677792, 42.280975, 23.295717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009666, 42.078259, 22.879257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955353, 42.421539, 23.077265>,  <39.922764, 42.627510, 23.196070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955353, 42.421539, 23.077265>,  <40.009666, 42.078259, 22.879257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955353, 42.421539, 23.077265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203875, 0.464749, -0.861651,
		-0.969534, -0.217923, 0.111861,
		-0.135786, 0.858206, 0.495019,
		39.914616, 42.679001, 23.225771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327999, 42.345798, 22.687227>,  <40.009666, 42.078259, 22.879257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327999, 42.345798, 22.687227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532139, 42.669907, 22.802467>,  <39.654621, 42.864372, 22.871613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532139, 42.669907, 22.802467>,  <39.327999, 42.345798, 22.687227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532139, 42.669907, 22.802467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327386, 0.492849, -0.806175,
		-0.795212, 0.317110, 0.516797,
		0.510349, 0.810273, 0.288102,
		39.685242, 42.912987, 22.888899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759411, 42.929890, 22.828594>,  <39.327999, 42.345798, 22.687227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759411, 42.929890, 22.828594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117771, 43.092262, 22.756386>,  <39.332787, 43.189686, 22.713060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117771, 43.092262, 22.756386>,  <38.759411, 42.929890, 22.828594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117771, 43.092262, 22.756386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402263, 0.568752, -0.717430,
		-0.188558, 0.715359, 0.672835,
		0.895896, 0.405934, -0.180520,
		39.386539, 43.214043, 22.702230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563633, 43.457855, 22.639120>,  <38.759411, 42.929890, 22.828594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563633, 43.457855, 22.639120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932087, 43.477715, 22.484694>,  <39.153160, 43.489632, 22.392036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932087, 43.477715, 22.484694>,  <38.563633, 43.457855, 22.639120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932087, 43.477715, 22.484694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345713, 0.560129, -0.752820,
		0.178872, 0.826916, 0.533118,
		0.921134, 0.049648, -0.386067,
		39.208427, 43.492607, 22.368874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590927, 44.189602, 22.333010>,  <38.563633, 43.457855, 22.639120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590927, 44.189602, 22.333010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911671, 44.010288, 22.174994>,  <39.104118, 43.902699, 22.080183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911671, 44.010288, 22.174994>,  <38.590927, 44.189602, 22.333010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911671, 44.010288, 22.174994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081205, 0.573252, -0.815345,
		0.591963, 0.685875, 0.423267,
		0.801864, -0.448283, -0.395041,
		39.152229, 43.875805, 22.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135574, 44.714508, 22.118832>,  <38.590927, 44.189602, 22.333010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135574, 44.714508, 22.118832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163048, 44.387230, 21.890499>,  <39.179531, 44.190865, 21.753500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163048, 44.387230, 21.890499>,  <39.135574, 44.714508, 22.118832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163048, 44.387230, 21.890499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261642, 0.537379, -0.801728,
		0.962718, 0.204420, -0.177163,
		0.068685, -0.818191, -0.570829,
		39.183655, 44.141773, 21.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327904, 44.942368, 21.448700>,  <39.135574, 44.714508, 22.118832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327904, 44.942368, 21.448700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.218090, 44.561779, 21.393091>,  <39.152203, 44.333424, 21.359726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.218090, 44.561779, 21.393091>,  <39.327904, 44.942368, 21.448700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218090, 44.561779, 21.393091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239793, 0.207752, -0.948334,
		0.931197, -0.227017, -0.285192,
		-0.274537, -0.951474, -0.139021,
		39.135727, 44.276337, 21.351385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703022, 44.681057, 20.838873>,  <39.327904, 44.942368, 21.448700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703022, 44.681057, 20.838873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384090, 44.444008, 20.884579>,  <39.192730, 44.301777, 20.912003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384090, 44.444008, 20.884579>,  <39.703022, 44.681057, 20.838873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384090, 44.444008, 20.884579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248871, 0.150358, -0.956794,
		0.549841, -0.791319, -0.267373,
		-0.797331, -0.592626, 0.114264,
		39.144890, 44.266220, 20.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815838, 44.147919, 20.328012>,  <39.703022, 44.681057, 20.838873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815838, 44.147919, 20.328012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.424404, 44.152843, 20.410200>,  <39.189545, 44.155800, 20.459513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.424404, 44.152843, 20.410200>,  <39.815838, 44.147919, 20.328012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424404, 44.152843, 20.410200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202523, 0.120802, -0.971798,
		-0.036792, -0.992600, -0.115721,
		-0.978586, 0.012318, 0.205469,
		39.130829, 44.156540, 20.471842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539806, 43.672550, 19.960560>,  <39.815838, 44.147919, 20.328012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539806, 43.672550, 19.960560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.235294, 43.920464, 20.036783>,  <39.052586, 44.069214, 20.082518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.235294, 43.920464, 20.036783>,  <39.539806, 43.672550, 19.960560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235294, 43.920464, 20.036783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122878, 0.150658, -0.980920,
		-0.636670, -0.770173, -0.038535,
		-0.761284, 0.619787, 0.190557,
		39.006908, 44.106400, 20.093950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993214, 43.387894, 19.621201>,  <39.539806, 43.672550, 19.960560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993214, 43.387894, 19.621201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.971462, 43.786827, 19.640675>,  <38.958412, 44.026188, 19.652359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.971462, 43.786827, 19.640675>,  <38.993214, 43.387894, 19.621201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971462, 43.786827, 19.640675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286131, 0.031150, -0.957684,
		-0.956646, -0.066009, 0.283673,
		-0.054379, 0.997333, 0.048687,
		38.955147, 44.086025, 19.655281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450996, 43.582737, 19.307690>,  <38.993214, 43.387894, 19.621201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450996, 43.582737, 19.307690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706211, 43.888569, 19.271170>,  <38.859337, 44.072067, 19.249258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706211, 43.888569, 19.271170>,  <38.450996, 43.582737, 19.307690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706211, 43.888569, 19.271170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120287, -0.018147, -0.992573,
		-0.760556, 0.644276, 0.080391,
		0.638032, 0.764578, -0.091300,
		38.897621, 44.117943, 19.243780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675011, 43.641228, 19.143248>,  <38.450996, 43.582737, 19.307690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675011, 43.641228, 19.143248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341660, 43.517677, 18.959911>,  <37.141647, 43.443546, 18.849911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341660, 43.517677, 18.959911>,  <37.675011, 43.641228, 19.143248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341660, 43.517677, 18.959911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210888, -0.588825, 0.780263,
		-0.510889, 0.746912, 0.425575,
		-0.833378, -0.308880, -0.458340,
		37.091648, 43.425014, 18.822409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292076, 43.609623, 19.728703>,  <37.675011, 43.641228, 19.143248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292076, 43.609623, 19.728703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121723, 43.392147, 19.439419>,  <37.019512, 43.261662, 19.265848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121723, 43.392147, 19.439419>,  <37.292076, 43.609623, 19.728703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121723, 43.392147, 19.439419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241727, -0.701894, 0.670010,
		-0.871891, 0.460163, 0.167498,
		-0.425880, -0.543687, -0.723209,
		36.993958, 43.229042, 19.222456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689472, 43.379440, 20.005890>,  <37.292076, 43.609623, 19.728703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689472, 43.379440, 20.005890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779732, 43.129044, 19.707300>,  <36.833889, 42.978806, 19.528147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779732, 43.129044, 19.707300>,  <36.689472, 43.379440, 20.005890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779732, 43.129044, 19.707300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055904, -0.773293, 0.631579,
		-0.972604, -0.100783, -0.209487,
		0.225647, -0.625987, -0.746474,
		36.847427, 42.941246, 19.483358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250641, 42.863941, 20.115398>,  <36.689472, 43.379440, 20.005890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250641, 42.863941, 20.115398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553066, 42.714020, 19.900774>,  <36.734520, 42.624065, 19.771999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553066, 42.714020, 19.900774>,  <36.250641, 42.863941, 20.115398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553066, 42.714020, 19.900774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067906, -0.770452, 0.633870,
		-0.650971, -0.515680, -0.557056,
		0.756059, -0.374803, -0.536560,
		36.779884, 42.601578, 19.739805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138439, 42.141403, 20.150581>,  <36.250641, 42.863941, 20.115398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138439, 42.141403, 20.150581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520824, 42.193695, 20.045481>,  <36.750256, 42.225071, 19.982420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520824, 42.193695, 20.045481>,  <36.138439, 42.141403, 20.150581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520824, 42.193695, 20.045481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261552, -0.785615, 0.560713,
		-0.133117, -0.604746, -0.785215,
		0.955966, 0.130734, -0.262751,
		36.807613, 42.232914, 19.966656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330685, 41.543118, 20.018410>,  <36.138439, 42.141403, 20.150581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330685, 41.543118, 20.018410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662865, 41.748035, 20.105963>,  <36.862171, 41.870987, 20.158495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662865, 41.748035, 20.105963>,  <36.330685, 41.543118, 20.018410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662865, 41.748035, 20.105963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317849, -0.758381, 0.569061,
		0.457522, -0.403005, -0.792629,
		0.830449, 0.512295, 0.218881,
		36.911999, 41.901722, 20.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864567, 41.074333, 19.861320>,  <36.330685, 41.543118, 20.018410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864567, 41.074333, 19.861320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024471, 41.365406, 20.084269>,  <37.120415, 41.540051, 20.218039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024471, 41.365406, 20.084269>,  <36.864567, 41.074333, 19.861320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024471, 41.365406, 20.084269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293333, -0.677660, 0.674339,
		0.868415, -0.106081, -0.484358,
		0.399764, 0.727684, 0.557373,
		37.144402, 41.583710, 20.251480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516747, 40.817863, 20.090519>,  <36.864567, 41.074333, 19.861320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516747, 40.817863, 20.090519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446823, 41.102230, 20.363001>,  <37.404869, 41.272850, 20.526491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446823, 41.102230, 20.363001>,  <37.516747, 40.817863, 20.090519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446823, 41.102230, 20.363001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275208, -0.629004, 0.727059,
		0.945358, 0.314571, -0.085692,
		-0.174811, 0.710914, 0.681207,
		37.394379, 41.315506, 20.567364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066002, 40.770569, 20.677652>,  <37.516747, 40.817863, 20.090519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066002, 40.770569, 20.677652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754307, 40.961052, 20.840635>,  <37.567291, 41.075340, 20.938425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754307, 40.961052, 20.840635>,  <38.066002, 40.770569, 20.677652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754307, 40.961052, 20.840635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145280, -0.495173, 0.856561,
		0.609658, 0.726659, 0.316675,
		-0.779237, 0.476203, 0.407456,
		37.520535, 41.103912, 20.962872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380859, 40.918617, 21.322355>,  <38.066002, 40.770569, 20.677652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380859, 40.918617, 21.322355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997978, 41.016521, 21.384140>,  <37.768250, 41.075264, 21.421211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997978, 41.016521, 21.384140>,  <38.380859, 40.918617, 21.322355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997978, 41.016521, 21.384140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081213, -0.285095, 0.955052,
		0.277799, 0.926721, 0.253015,
		-0.957200, 0.244764, 0.154461,
		37.710819, 41.089951, 21.430479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265472, 41.370975, 22.016809>,  <38.380859, 40.918617, 21.322355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265472, 41.370975, 22.016809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924053, 41.173820, 21.949259>,  <37.719200, 41.055527, 21.908730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924053, 41.173820, 21.949259>,  <38.265472, 41.370975, 22.016809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924053, 41.173820, 21.949259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092215, -0.176096, 0.980044,
		-0.512789, 0.852087, 0.104855,
		-0.853548, -0.492886, -0.168876,
		37.667988, 41.025955, 21.898596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873154, 41.580578, 22.592110>,  <38.265472, 41.370975, 22.016809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873154, 41.580578, 22.592110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736099, 41.229053, 22.459270>,  <37.653866, 41.018139, 22.379568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736099, 41.229053, 22.459270>,  <37.873154, 41.580578, 22.592110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736099, 41.229053, 22.459270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210458, -0.272709, 0.938796,
		-0.915593, 0.391554, -0.091514,
		-0.342632, -0.878815, -0.332097,
		37.633308, 40.965408, 22.359642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275261, 41.453487, 22.973953>,  <37.873154, 41.580578, 22.592110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275261, 41.453487, 22.973953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397820, 41.097870, 22.837883>,  <37.471355, 40.884499, 22.756241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397820, 41.097870, 22.837883>,  <37.275261, 41.453487, 22.973953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397820, 41.097870, 22.837883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017307, -0.362505, 0.931821,
		-0.951748, -0.279615, -0.126455,
		0.306392, -0.889048, -0.340174,
		37.489738, 40.831154, 22.735830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884747, 40.942066, 23.332138>,  <37.275261, 41.453487, 22.973953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884747, 40.942066, 23.332138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210793, 40.751099, 23.200893>,  <37.406422, 40.636520, 23.122147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210793, 40.751099, 23.200893>,  <36.884747, 40.942066, 23.332138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210793, 40.751099, 23.200893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094515, -0.449208, 0.888414,
		-0.571534, -0.755173, -0.321034,
		0.815117, -0.477416, -0.328113,
		37.455326, 40.607876, 23.102459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287159, 40.459576, 23.147221>,  <36.884747, 40.942066, 23.332138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287159, 40.459576, 23.147221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896599, 40.477894, 23.231636>,  <35.662262, 40.488884, 23.282286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896599, 40.477894, 23.231636>,  <36.287159, 40.459576, 23.147221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896599, 40.477894, 23.231636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191912, 0.264088, -0.945213,
		-0.099021, -0.963411, -0.249068,
		-0.976404, 0.045796, 0.211040,
		35.603676, 40.491631, 23.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906925, 40.151901, 22.548916>,  <36.287159, 40.459576, 23.147221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906925, 40.151901, 22.548916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.627632, 40.368954, 22.735687>,  <35.460056, 40.499187, 22.847750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.627632, 40.368954, 22.735687>,  <35.906925, 40.151901, 22.548916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627632, 40.368954, 22.735687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447790, 0.177827, -0.876277,
		-0.558530, -0.820929, 0.118822,
		-0.698232, 0.542634, 0.466926,
		35.418163, 40.531742, 22.875765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186184, 39.921684, 22.273432>,  <35.906925, 40.151901, 22.548916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186184, 39.921684, 22.273432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123886, 40.293030, 22.408421>,  <35.086506, 40.515835, 22.489414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123886, 40.293030, 22.408421>,  <35.186184, 39.921684, 22.273432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123886, 40.293030, 22.408421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462019, 0.233504, -0.855578,
		-0.873087, -0.289172, 0.392554,
		-0.155746, 0.928362, 0.337472,
		35.077164, 40.571537, 22.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568684, 40.142696, 22.035480>,  <35.186184, 39.921684, 22.273432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568684, 40.142696, 22.035480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734177, 40.490204, 22.144341>,  <34.833473, 40.698708, 22.209656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734177, 40.490204, 22.144341>,  <34.568684, 40.142696, 22.035480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734177, 40.490204, 22.144341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317749, 0.417936, -0.851096,
		-0.853146, 0.265654, 0.448965,
		0.413735, 0.868768, 0.272149,
		34.858295, 40.750835, 22.225985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043224, 40.575035, 21.986887>,  <34.568684, 40.142696, 22.035480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043224, 40.575035, 21.986887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373455, 40.799984, 21.968317>,  <34.571594, 40.934952, 21.957174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373455, 40.799984, 21.968317>,  <34.043224, 40.575035, 21.986887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373455, 40.799984, 21.968317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342695, 0.434321, -0.833022,
		-0.448304, 0.703636, 0.551289,
		0.825581, 0.562371, -0.046424,
		34.621128, 40.968697, 21.954390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893753, 41.280991, 21.949448>,  <34.043224, 40.575035, 21.986887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893753, 41.280991, 21.949448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256763, 41.270817, 21.781761>,  <34.474571, 41.264713, 21.681149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256763, 41.270817, 21.781761>,  <33.893753, 41.280991, 21.949448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256763, 41.270817, 21.781761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340833, 0.538637, -0.770521,
		0.245403, 0.842154, 0.480161,
		0.907530, -0.025433, -0.419217,
		34.529022, 41.263187, 21.655996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980057, 41.966793, 21.623241>,  <33.893753, 41.280991, 21.949448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980057, 41.966793, 21.623241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274570, 41.749069, 21.462439>,  <34.451279, 41.618435, 21.365957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274570, 41.749069, 21.462439>,  <33.980057, 41.966793, 21.623241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274570, 41.749069, 21.462439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102015, 0.498017, -0.861146,
		0.668936, 0.675060, 0.311156,
		0.736286, -0.544309, -0.402008,
		34.495457, 41.585777, 21.341837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008007, 42.562466, 22.187874>,  <33.980057, 41.966793, 21.623241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008007, 42.562466, 22.187874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650902, 42.742573, 22.181686>,  <33.436638, 42.850636, 22.177973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650902, 42.742573, 22.181686>,  <34.008007, 42.562466, 22.187874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650902, 42.742573, 22.181686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217054, -0.399764, 0.890548,
		0.394800, 0.798404, 0.454626,
		-0.892760, 0.450267, -0.015470,
		33.383072, 42.877651, 22.177046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001389, 42.775738, 22.803122>,  <34.008007, 42.562466, 22.187874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001389, 42.775738, 22.803122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619850, 42.785381, 22.683392>,  <33.390926, 42.791168, 22.611553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619850, 42.785381, 22.683392>,  <34.001389, 42.775738, 22.803122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619850, 42.785381, 22.683392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269691, -0.507152, 0.818574,
		-0.132070, 0.861520, 0.490246,
		-0.953847, 0.024106, -0.299324,
		33.333694, 42.792614, 22.593594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602348, 43.128223, 23.252487>,  <34.001389, 42.775738, 22.803122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602348, 43.128223, 23.252487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328522, 42.907486, 23.061981>,  <33.164227, 42.775043, 22.947678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328522, 42.907486, 23.061981>,  <33.602348, 43.128223, 23.252487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328522, 42.907486, 23.061981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321268, -0.358075, 0.876681,
		-0.654332, 0.753158, 0.067836,
		-0.684570, -0.551847, -0.476266,
		33.123150, 42.741932, 22.919102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965137, 43.125130, 23.699043>,  <33.602348, 43.128223, 23.252487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965137, 43.125130, 23.699043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924324, 42.791138, 23.482744>,  <32.899837, 42.590744, 23.352964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924324, 42.791138, 23.482744>,  <32.965137, 43.125130, 23.699043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924324, 42.791138, 23.482744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264299, -0.501293, 0.823924,
		-0.959028, 0.226984, -0.169536,
		-0.102031, -0.834975, -0.540746,
		32.893715, 42.540646, 23.320520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373734, 42.737518, 23.954550>,  <32.965137, 43.125130, 23.699043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373734, 42.737518, 23.954550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582932, 42.463333, 23.751919>,  <32.708450, 42.298824, 23.630341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582932, 42.463333, 23.751919>,  <32.373734, 42.737518, 23.954550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582932, 42.463333, 23.751919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118945, -0.647220, 0.752966,
		-0.843995, -0.333543, -0.420026,
		0.522996, -0.685459, -0.506577,
		32.739830, 42.257694, 23.599945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914705, 42.190483, 24.057791>,  <32.373734, 42.737518, 23.954550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914705, 42.190483, 24.057791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282581, 42.058414, 23.972792>,  <32.503307, 41.979172, 23.921793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282581, 42.058414, 23.972792>,  <31.914705, 42.190483, 24.057791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282581, 42.058414, 23.972792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124661, -0.758726, 0.639370,
		-0.372330, -0.561532, -0.738953,
		0.919691, -0.330175, -0.212495,
		32.558487, 41.959362, 23.909042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862392, 41.477734, 24.017166>,  <31.914705, 42.190483, 24.057791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862392, 41.477734, 24.017166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250008, 41.551823, 24.082474>,  <32.482578, 41.596275, 24.121658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250008, 41.551823, 24.082474>,  <31.862392, 41.477734, 24.017166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250008, 41.551823, 24.082474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036158, -0.760585, 0.648231,
		0.244246, -0.622257, -0.743734,
		0.969039, 0.185220, 0.163270,
		32.540718, 41.607388, 24.131454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.800121, 46.446381, 21.685190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.088982, 46.195225, 21.569086>,  <37.262299, 46.044533, 21.499424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.088982, 46.195225, 21.569086>,  <36.800121, 46.446381, 21.685190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088982, 46.195225, 21.569086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247028, -0.626031, 0.739636,
		-0.646122, -0.462428, -0.607196,
		0.722152, -0.627890, -0.290260,
		37.305626, 46.006859, 21.482008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476395, 45.836826, 21.804852>,  <36.800121, 46.446381, 21.685190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476395, 45.836826, 21.804852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867912, 45.756302, 21.789715>,  <37.102821, 45.707985, 21.780634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867912, 45.756302, 21.789715>,  <36.476395, 45.836826, 21.804852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867912, 45.756302, 21.789715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071412, -0.508499, 0.858096,
		-0.191988, -0.837199, -0.512093,
		0.978795, -0.201313, -0.037840,
		37.161552, 45.695908, 21.778362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504662, 45.148647, 21.911858>,  <36.476395, 45.836826, 21.804852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504662, 45.148647, 21.911858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847260, 45.310856, 22.039591>,  <37.052818, 45.408180, 22.116230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847260, 45.310856, 22.039591>,  <36.504662, 45.148647, 21.911858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847260, 45.310856, 22.039591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067083, -0.525963, 0.847858,
		0.511784, -0.747604, -0.423278,
		0.856491, 0.405525, 0.319331,
		37.104206, 45.432514, 22.135389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915222, 44.585163, 22.228579>,  <36.504662, 45.148647, 21.911858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915222, 44.585163, 22.228579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077320, 44.913769, 22.389027>,  <37.174580, 45.110931, 22.485294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077320, 44.913769, 22.389027>,  <36.915222, 44.585163, 22.228579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077320, 44.913769, 22.389027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100368, -0.476087, 0.873652,
		0.908683, -0.313781, -0.275384,
		0.405242, 0.821513, 0.401118,
		37.198895, 45.160221, 22.509361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285099, 44.376850, 22.734236>,  <36.915222, 44.585163, 22.228579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285099, 44.376850, 22.734236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296486, 44.765312, 22.828932>,  <37.303318, 44.998390, 22.885750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296486, 44.765312, 22.828932>,  <37.285099, 44.376850, 22.734236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296486, 44.765312, 22.828932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057024, -0.238027, 0.969583,
		0.997967, -0.014099, -0.062155,
		0.028464, 0.971156, 0.236739,
		37.305027, 45.056660, 22.899954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867569, 44.444901, 23.109156>,  <37.285099, 44.376850, 22.734236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867569, 44.444901, 23.109156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626293, 44.753628, 23.189613>,  <37.481525, 44.938862, 23.237888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626293, 44.753628, 23.189613>,  <37.867569, 44.444901, 23.109156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626293, 44.753628, 23.189613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029198, -0.230654, 0.972598,
		0.797061, 0.592536, 0.116593,
		-0.603192, 0.771816, 0.201146,
		37.445335, 44.985172, 23.249958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220169, 44.886150, 23.585178>,  <37.867569, 44.444901, 23.109156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220169, 44.886150, 23.585178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831741, 44.971031, 23.628979>,  <37.598686, 45.021961, 23.655260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831741, 44.971031, 23.628979>,  <38.220169, 44.886150, 23.585178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831741, 44.971031, 23.628979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067570, -0.195638, 0.978346,
		0.229033, 0.957442, 0.175639,
		-0.971071, 0.212206, 0.109502,
		37.540421, 45.034695, 23.661829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108669, 45.411301, 24.132055>,  <38.220169, 44.886150, 23.585178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108669, 45.411301, 24.132055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746811, 45.247967, 24.083269>,  <37.529697, 45.149967, 24.053997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746811, 45.247967, 24.083269>,  <38.108669, 45.411301, 24.132055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746811, 45.247967, 24.083269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110981, -0.050584, 0.992534,
		-0.411458, 0.911429, 0.000443,
		-0.904647, -0.408337, -0.121965,
		37.475418, 45.125465, 24.046680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736977, 45.625813, 24.704567>,  <38.108669, 45.411301, 24.132055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736977, 45.625813, 24.704567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.521919, 45.317551, 24.567722>,  <37.392883, 45.132595, 24.485617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.521919, 45.317551, 24.567722>,  <37.736977, 45.625813, 24.704567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521919, 45.317551, 24.567722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419038, -0.107874, 0.901538,
		-0.731675, 0.628062, -0.264935,
		-0.537642, -0.770650, -0.342110,
		37.360626, 45.086357, 24.465090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037354, 45.624687, 24.992346>,  <37.736977, 45.625813, 24.704567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037354, 45.624687, 24.992346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.058529, 45.243412, 24.873264>,  <37.071236, 45.014648, 24.801815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.058529, 45.243412, 24.873264>,  <37.037354, 45.624687, 24.992346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058529, 45.243412, 24.873264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417341, -0.291956, 0.860574,
		-0.907206, 0.078686, -0.413261,
		0.052939, -0.953189, -0.297704,
		37.074409, 44.957455, 24.783953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415924, 45.388515, 25.238823>,  <37.037354, 45.624687, 24.992346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415924, 45.388515, 25.238823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692009, 45.105526, 25.178040>,  <36.857658, 44.935734, 25.141569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692009, 45.105526, 25.178040>,  <36.415924, 45.388515, 25.238823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692009, 45.105526, 25.178040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015373, -0.224291, 0.974401,
		-0.723447, -0.670204, -0.165684,
		0.690208, -0.707475, -0.151960,
		36.899071, 44.893284, 25.132452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191708, 44.808964, 25.653181>,  <36.415924, 45.388515, 25.238823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191708, 44.808964, 25.653181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.584034, 44.737331, 25.622395>,  <36.819431, 44.694351, 25.603922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.584034, 44.737331, 25.622395>,  <36.191708, 44.808964, 25.653181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584034, 44.737331, 25.622395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033051, -0.236346, 0.971107,
		-0.192096, -0.955024, -0.225894,
		0.980820, -0.179079, -0.076966,
		36.878281, 44.683605, 25.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609997, 44.265450, 25.893217>,  <36.191708, 44.808964, 25.653181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609997, 44.265450, 25.893217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.359058, 44.532623, 26.053368>,  <35.208496, 44.692928, 26.149458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.359058, 44.532623, 26.053368>,  <35.609997, 44.265450, 25.893217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359058, 44.532623, 26.053368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181387, 0.374661, -0.909246,
		-0.757323, -0.643034, -0.113887,
		-0.627345, 0.667935, 0.400377,
		35.170856, 44.733006, 26.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028992, 44.243248, 25.451635>,  <35.609997, 44.265450, 25.893217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028992, 44.243248, 25.451635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.978260, 44.600441, 25.624376>,  <34.947823, 44.814758, 25.728022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.978260, 44.600441, 25.624376>,  <35.028992, 44.243248, 25.451635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978260, 44.600441, 25.624376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240009, 0.394804, -0.886863,
		-0.962450, -0.216127, 0.164252,
		-0.126828, 0.892983, 0.431852,
		34.940212, 44.868336, 25.753931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444092, 44.552166, 25.145046>,  <35.028992, 44.243248, 25.451635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444092, 44.552166, 25.145046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649876, 44.848145, 25.318390>,  <34.773346, 45.025734, 25.422396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649876, 44.848145, 25.318390>,  <34.444092, 44.552166, 25.145046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649876, 44.848145, 25.318390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065423, 0.537767, -0.840551,
		-0.855013, 0.404081, 0.325071,
		0.514463, 0.739950, 0.433361,
		34.804214, 45.070129, 25.448399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992424, 45.132359, 24.930223>,  <34.444092, 44.552166, 25.145046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992424, 45.132359, 24.930223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366383, 45.253189, 25.004759>,  <34.590759, 45.325687, 25.049480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366383, 45.253189, 25.004759>,  <33.992424, 45.132359, 24.930223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366383, 45.253189, 25.004759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009551, 0.546233, -0.837579,
		-0.354795, 0.781269, 0.513556,
		0.934895, 0.302073, 0.186339,
		34.646851, 45.343811, 25.060661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955196, 45.892792, 24.918438>,  <33.992424, 45.132359, 24.930223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955196, 45.892792, 24.918438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331276, 45.773666, 24.852308>,  <34.556923, 45.702190, 24.812630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331276, 45.773666, 24.852308>,  <33.955196, 45.892792, 24.918438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331276, 45.773666, 24.852308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034796, 0.566787, -0.823129,
		0.338845, 0.768152, 0.543255,
		0.940199, -0.297816, -0.165325,
		34.613335, 45.684322, 24.802711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092163, 46.441097, 24.639154>,  <33.955196, 45.892792, 24.918438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092163, 46.441097, 24.639154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.390057, 46.181774, 24.575834>,  <34.568794, 46.026180, 24.537842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.390057, 46.181774, 24.575834>,  <34.092163, 46.441097, 24.639154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390057, 46.181774, 24.575834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258631, 0.499049, -0.827080,
		0.615205, 0.575015, 0.539333,
		0.744737, -0.648312, -0.158301,
		34.613476, 45.987282, 24.528343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637405, 46.856026, 24.359430>,  <34.092163, 46.441097, 24.639154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637405, 46.856026, 24.359430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734123, 46.491131, 24.227148>,  <34.792152, 46.272194, 24.147779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734123, 46.491131, 24.227148>,  <34.637405, 46.856026, 24.359430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734123, 46.491131, 24.227148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288336, 0.392969, -0.873177,
		0.926499, 0.115772, 0.358047,
		0.241790, -0.912235, -0.330704,
		34.806660, 46.217461, 24.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154213, 46.939884, 23.909019>,  <34.637405, 46.856026, 24.359430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154213, 46.939884, 23.909019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034893, 46.576344, 23.792402>,  <34.963299, 46.358219, 23.722433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034893, 46.576344, 23.792402>,  <35.154213, 46.939884, 23.909019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034893, 46.576344, 23.792402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195217, 0.240895, -0.950716,
		0.934294, -0.340514, 0.105565,
		-0.298302, -0.908856, -0.291541,
		34.945404, 46.303688, 23.704941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654938, 46.676792, 23.474251>,  <35.154213, 46.939884, 23.909019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654938, 46.676792, 23.474251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.308170, 46.500950, 23.380270>,  <35.100109, 46.395447, 23.323881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.308170, 46.500950, 23.380270>,  <35.654938, 46.676792, 23.474251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308170, 46.500950, 23.380270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200009, 0.124962, -0.971793,
		0.456564, -0.889457, -0.020407,
		-0.866918, -0.439604, -0.234952,
		35.048096, 46.369068, 23.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778770, 46.303066, 22.943853>,  <35.654938, 46.676792, 23.474251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778770, 46.303066, 22.943853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379570, 46.328129, 22.940727>,  <35.140049, 46.343166, 22.938852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379570, 46.328129, 22.940727>,  <35.778770, 46.303066, 22.943853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379570, 46.328129, 22.940727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013223, 0.086388, -0.996174,
		-0.061745, -0.994289, -0.087044,
		-0.998004, 0.062660, -0.007814,
		35.080170, 46.346928, 22.938383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613491, 45.811680, 22.444254>,  <35.778770, 46.303066, 22.943853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613491, 45.811680, 22.444254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301483, 46.060024, 22.475500>,  <35.114277, 46.209030, 22.494247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301483, 46.060024, 22.475500>,  <35.613491, 45.811680, 22.444254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301483, 46.060024, 22.475500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039077, 0.172917, -0.984161,
		-0.624533, -0.764613, -0.159140,
		-0.780020, 0.620859, 0.078114,
		35.067478, 46.246281, 22.498934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050705, 45.564552, 22.107792>,  <35.613491, 45.811680, 22.444254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050705, 45.564552, 22.107792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954414, 45.952652, 22.118095>,  <34.896641, 46.185513, 22.124277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954414, 45.952652, 22.118095>,  <35.050705, 45.564552, 22.107792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954414, 45.952652, 22.118095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192025, -0.021593, -0.981152,
		-0.951408, -0.241135, 0.191510,
		-0.240725, 0.970251, 0.025760,
		34.882198, 46.243729, 22.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562611, 45.658890, 21.504726>,  <35.050705, 45.564552, 22.107792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562611, 45.658890, 21.504726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.659939, 46.036049, 21.595709>,  <34.718334, 46.262344, 21.650299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.659939, 46.036049, 21.595709>,  <34.562611, 45.658890, 21.504726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659939, 46.036049, 21.595709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136971, 0.198753, -0.970431,
		-0.960226, 0.267280, -0.080789,
		0.243320, 0.942899, 0.227457,
		34.732933, 46.318920, 21.663946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298706, 45.781406, 20.933504>,  <34.562611, 45.658890, 21.504726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298706, 45.781406, 20.933504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.127823, 45.612072, 20.613934>,  <34.025291, 45.510471, 20.422192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.127823, 45.612072, 20.613934>,  <34.298706, 45.781406, 20.933504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127823, 45.612072, 20.613934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246845, -0.795442, 0.553480,
		-0.869805, 0.433662, 0.235322,
		-0.427208, -0.423331, -0.798927,
		33.999660, 45.485073, 20.374256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707512, 45.656281, 21.220337>,  <34.298706, 45.781406, 20.933504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707512, 45.656281, 21.220337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.713810, 45.436493, 20.886192>,  <33.717590, 45.304619, 20.685705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.713810, 45.436493, 20.886192>,  <33.707512, 45.656281, 21.220337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713810, 45.436493, 20.886192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401022, -0.768797, 0.498129,
		-0.915933, 0.327156, -0.232455,
		0.015745, -0.549472, -0.835363,
		33.718533, 45.271652, 20.635584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100994, 45.380806, 21.234795>,  <33.707512, 45.656281, 21.220337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100994, 45.380806, 21.234795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.317112, 45.145493, 20.994125>,  <33.446781, 45.004307, 20.849724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.317112, 45.145493, 20.994125>,  <33.100994, 45.380806, 21.234795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317112, 45.145493, 20.994125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497930, -0.799912, 0.334973,
		-0.678345, 0.118610, -0.725107,
		0.540291, -0.588279, -0.601676,
		33.479198, 44.969009, 20.813623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659206, 44.767017, 20.901855>,  <33.100994, 45.380806, 21.234795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659206, 44.767017, 20.901855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028713, 44.615360, 20.923389>,  <33.250420, 44.524364, 20.936310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028713, 44.615360, 20.923389>,  <32.659206, 44.767017, 20.901855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028713, 44.615360, 20.923389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342209, -0.754201, 0.560423,
		-0.171878, -0.536126, -0.826455,
		0.923770, -0.379145, 0.053836,
		33.305843, 44.501617, 20.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514633, 44.091629, 21.126379>,  <32.659206, 44.767017, 20.901855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514633, 44.091629, 21.126379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914173, 44.092796, 21.107224>,  <33.153896, 44.093498, 21.095730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914173, 44.092796, 21.107224>,  <32.514633, 44.091629, 21.126379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914173, 44.092796, 21.107224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031562, -0.791776, 0.609996,
		-0.036134, -0.610805, -0.790957,
		0.998849, 0.002922, -0.047888,
		33.213829, 44.093674, 21.092857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705143, 43.447563, 21.011122>,  <32.514633, 44.091629, 21.126379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705143, 43.447563, 21.011122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.038433, 43.611000, 21.160137>,  <33.238407, 43.709061, 21.249546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.038433, 43.611000, 21.160137>,  <32.705143, 43.447563, 21.011122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038433, 43.611000, 21.160137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113251, -0.785582, 0.608305,
		0.541206, -0.464667, -0.700843,
		0.833229, 0.408589, 0.372537,
		33.288403, 43.733578, 21.271898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164650, 42.899643, 21.037554>,  <32.705143, 43.447563, 21.011122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164650, 42.899643, 21.037554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.261784, 43.177036, 21.308880>,  <33.320065, 43.343472, 21.471676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.261784, 43.177036, 21.308880>,  <33.164650, 42.899643, 21.037554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261784, 43.177036, 21.308880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026095, -0.703664, 0.710054,
		0.969716, -0.154728, -0.188973,
		0.242839, 0.693481, 0.678316,
		33.334637, 43.385082, 21.512375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752377, 42.616028, 21.419744>,  <33.164650, 42.899643, 21.037554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752377, 42.616028, 21.419744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523979, 42.869900, 21.628031>,  <33.386940, 43.022224, 21.753002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523979, 42.869900, 21.628031>,  <33.752377, 42.616028, 21.419744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523979, 42.869900, 21.628031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028468, -0.649207, 0.760079,
		0.820460, 0.419176, 0.388762,
		-0.570994, 0.634682, 0.520716,
		33.352680, 43.060303, 21.784245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443810, 42.520325, 21.148907>,  <33.752377, 42.616028, 21.419744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443810, 42.520325, 21.148907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.487431, 42.138321, 21.038591>,  <34.513603, 41.909119, 20.972403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.487431, 42.138321, 21.038591>,  <34.443810, 42.520325, 21.148907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487431, 42.138321, 21.038591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077299, 0.268456, -0.960186,
		0.991026, 0.126026, -0.044547,
		0.109050, -0.955013, -0.275789,
		34.520145, 41.851818, 20.955854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024551, 42.382538, 20.551670>,  <34.443810, 42.520325, 21.148907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024551, 42.382538, 20.551670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.716148, 42.128529, 20.532505>,  <34.531109, 41.976124, 20.521006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.716148, 42.128529, 20.532505>,  <35.024551, 42.382538, 20.551670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716148, 42.128529, 20.532505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067115, 0.155845, -0.985499,
		0.633283, -0.756608, -0.162777,
		-0.771004, -0.635025, -0.047914,
		34.484848, 41.938023, 20.518131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045841, 42.310608, 19.926760>,  <35.024551, 42.382538, 20.551670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045841, 42.310608, 19.926760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717880, 42.099857, 20.016346>,  <34.521103, 41.973408, 20.070099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717880, 42.099857, 20.016346>,  <35.045841, 42.310608, 19.926760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717880, 42.099857, 20.016346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281744, 0.030786, -0.958996,
		0.498374, -0.849386, -0.173685,
		-0.819905, -0.526873, 0.223967,
		34.471909, 41.941795, 20.083536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018448, 41.881310, 19.433577>,  <35.045841, 42.310608, 19.926760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018448, 41.881310, 19.433577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648800, 41.861065, 19.585072>,  <34.427010, 41.848919, 19.675968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648800, 41.861065, 19.585072>,  <35.018448, 41.881310, 19.433577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648800, 41.861065, 19.585072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381429, 0.063242, -0.922232,
		0.022718, -0.996714, -0.077745,
		-0.924119, -0.050605, 0.378739,
		34.371563, 41.845879, 19.698692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687393, 41.336071, 19.063850>,  <35.018448, 41.881310, 19.433577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687393, 41.336071, 19.063850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.420017, 41.597713, 19.205463>,  <34.259594, 41.754700, 19.290432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.420017, 41.597713, 19.205463>,  <34.687393, 41.336071, 19.063850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420017, 41.597713, 19.205463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381366, 0.107242, -0.918182,
		-0.638556, -0.748762, 0.177769,
		-0.668436, 0.654106, 0.354033,
		34.219486, 41.793945, 19.311674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195839, 41.326828, 18.643587>,  <34.687393, 41.336071, 19.063850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195839, 41.326828, 18.643587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.052925, 41.646347, 18.837193>,  <33.967178, 41.838058, 18.953356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.052925, 41.646347, 18.837193>,  <34.195839, 41.326828, 18.643587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052925, 41.646347, 18.837193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319326, 0.382521, -0.867011,
		-0.877713, -0.464327, 0.118409,
		-0.357283, 0.798798, 0.484016,
		33.945740, 41.885986, 18.982397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522739, 41.320255, 18.555040>,  <34.195839, 41.326828, 18.643587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522739, 41.320255, 18.555040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.620743, 41.703182, 18.616377>,  <33.679546, 41.932938, 18.653179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.620743, 41.703182, 18.616377>,  <33.522739, 41.320255, 18.555040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620743, 41.703182, 18.616377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442368, 0.251122, -0.860958,
		-0.862717, 0.143109, 0.485014,
		0.245008, 0.957318, 0.153340,
		33.694244, 41.990379, 18.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029366, 41.693134, 18.287016>,  <33.522739, 41.320255, 18.555040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029366, 41.693134, 18.287016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326305, 41.960201, 18.309414>,  <33.504471, 42.120441, 18.322853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326305, 41.960201, 18.309414>,  <33.029366, 41.693134, 18.287016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326305, 41.960201, 18.309414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119846, 0.214548, -0.969333,
		-0.659203, 0.712876, 0.239288,
		0.742353, 0.667665, 0.055995,
		33.549011, 42.160500, 18.326212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693363, 42.393837, 18.240091>,  <33.029366, 41.693134, 18.287016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693363, 42.393837, 18.240091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.068146, 42.364365, 18.103460>,  <33.293015, 42.346680, 18.021482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.068146, 42.364365, 18.103460>,  <32.693363, 42.393837, 18.240091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068146, 42.364365, 18.103460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330319, 0.132116, -0.934577,
		0.113989, 0.988492, 0.099449,
		0.936961, -0.073682, -0.341578,
		33.349236, 42.342258, 18.000986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.559895, 35.166721, 32.132683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668629, 35.514324, 32.298061>,  <36.733868, 35.722885, 32.397289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668629, 35.514324, 32.298061>,  <36.559895, 35.166721, 32.132683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668629, 35.514324, 32.298061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641191, -0.156822, 0.751186,
		0.717622, -0.469294, 0.514569,
		0.271832, 0.869005, 0.413446,
		36.750179, 35.775024, 32.422096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336426, 35.903286, 31.991289>,  <36.559895, 35.166721, 32.132683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336426, 35.903286, 31.991289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635220, 35.751366, 31.773018>,  <36.814495, 35.660213, 31.642056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635220, 35.751366, 31.773018>,  <36.336426, 35.903286, 31.991289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635220, 35.751366, 31.773018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186035, 0.668575, -0.719999,
		0.638282, 0.639344, 0.428760,
		0.746985, -0.379798, -0.545679,
		36.859314, 35.637424, 31.609314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659489, 36.440678, 31.707357>,  <36.336426, 35.903286, 31.991289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659489, 36.440678, 31.707357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765823, 36.132240, 31.475931>,  <36.829624, 35.947178, 31.337074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765823, 36.132240, 31.475931>,  <36.659489, 36.440678, 31.707357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765823, 36.132240, 31.475931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116356, 0.570110, -0.813287,
		0.956969, 0.283525, 0.061837,
		0.265841, -0.771095, -0.578568,
		36.845577, 35.900913, 31.302361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022041, 36.781288, 31.246618>,  <36.659489, 36.440678, 31.707357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022041, 36.781288, 31.246618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992767, 36.422291, 31.072651>,  <36.975201, 36.206894, 30.968269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992767, 36.422291, 31.072651>,  <37.022041, 36.781288, 31.246618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992767, 36.422291, 31.072651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110376, 0.440699, -0.890843,
		0.991192, -0.017194, -0.131315,
		-0.073187, -0.897490, -0.434920,
		36.970810, 36.153046, 30.942175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454609, 36.753139, 30.720688>,  <37.022041, 36.781288, 31.246618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454609, 36.753139, 30.720688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202023, 36.465828, 30.603840>,  <37.050472, 36.293442, 30.533731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202023, 36.465828, 30.603840>,  <37.454609, 36.753139, 30.720688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202023, 36.465828, 30.603840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100040, 0.298116, -0.949273,
		0.768927, -0.628653, -0.116392,
		-0.631462, -0.718277, -0.292120,
		37.012585, 36.250343, 30.516205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736343, 36.401157, 30.121105>,  <37.454609, 36.753139, 30.720688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736343, 36.401157, 30.121105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344551, 36.323486, 30.099485>,  <37.109478, 36.276882, 30.086514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344551, 36.323486, 30.099485>,  <37.736343, 36.401157, 30.121105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344551, 36.323486, 30.099485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000877, 0.272255, -0.962225,
		0.201556, -0.942429, -0.266838,
		-0.979477, -0.194176, -0.054048,
		37.050709, 36.265232, 30.083271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585094, 36.142097, 29.508930>,  <37.736343, 36.401157, 30.121105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585094, 36.142097, 29.508930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215240, 36.265545, 29.598204>,  <36.993328, 36.339615, 29.651768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215240, 36.265545, 29.598204>,  <37.585094, 36.142097, 29.508930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215240, 36.265545, 29.598204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116174, 0.329530, -0.936970,
		-0.362716, -0.892280, -0.268839,
		-0.924630, 0.308622, 0.223185,
		36.937851, 36.358131, 29.665159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231739, 36.056999, 28.902170>,  <37.585094, 36.142097, 29.508930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231739, 36.056999, 28.902170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016575, 36.320267, 29.112873>,  <36.887478, 36.478226, 29.239294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016575, 36.320267, 29.112873>,  <37.231739, 36.056999, 28.902170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016575, 36.320267, 29.112873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366112, 0.380465, -0.849240,
		-0.759353, -0.649665, 0.036307,
		-0.537908, 0.658165, 0.526757,
		36.855202, 36.517715, 29.270901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634922, 35.943523, 28.593304>,  <37.231739, 36.056999, 28.902170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634922, 35.943523, 28.593304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653252, 36.299873, 28.774078>,  <36.664249, 36.513683, 28.882544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653252, 36.299873, 28.774078>,  <36.634922, 35.943523, 28.593304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653252, 36.299873, 28.774078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310595, 0.442695, -0.841161,
		-0.949437, -0.101826, 0.296986,
		0.045822, 0.890872, 0.451938,
		36.667000, 36.567135, 28.909660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020630, 36.220913, 28.457283>,  <36.634922, 35.943523, 28.593304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020630, 36.220913, 28.457283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239098, 36.533699, 28.577440>,  <36.370178, 36.721371, 28.649534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239098, 36.533699, 28.577440>,  <36.020630, 36.220913, 28.457283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239098, 36.533699, 28.577440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313474, 0.523337, -0.792371,
		-0.776811, 0.338602, 0.530955,
		0.546167, 0.781963, 0.300391,
		36.402946, 36.768288, 28.667557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622360, 36.777290, 28.415077>,  <36.020630, 36.220913, 28.457283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622360, 36.777290, 28.415077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987263, 36.941132, 28.416515>,  <36.206203, 37.039436, 28.417377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987263, 36.941132, 28.416515>,  <35.622360, 36.777290, 28.415077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987263, 36.941132, 28.416515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310357, 0.696889, -0.646548,
		-0.267332, 0.588703, 0.762865,
		0.912257, 0.409603, 0.003593,
		36.260941, 37.064014, 28.417593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470425, 37.491062, 28.575294>,  <35.622360, 36.777290, 28.415077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470425, 37.491062, 28.575294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829964, 37.488075, 28.400017>,  <36.045689, 37.486282, 28.294851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829964, 37.488075, 28.400017>,  <35.470425, 37.491062, 28.575294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829964, 37.488075, 28.400017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369660, 0.524171, -0.767200,
		0.235414, 0.851580, 0.468392,
		0.898850, -0.007463, -0.438192,
		36.099617, 37.485836, 28.268559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028015, 37.953636, 28.976913>,  <35.470425, 37.491062, 28.575294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028015, 37.953636, 28.976913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633682, 38.020020, 28.986691>,  <34.397083, 38.059849, 28.992558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633682, 38.020020, 28.986691>,  <35.028015, 37.953636, 28.976913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633682, 38.020020, 28.986691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020466, -0.263612, 0.964412,
		0.166497, 0.950245, 0.263273,
		-0.985830, 0.165960, 0.024443,
		34.337933, 38.069809, 28.994022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015491, 38.126278, 29.626413>,  <35.028015, 37.953636, 28.976913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015491, 38.126278, 29.626413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643215, 38.034866, 29.512159>,  <34.419849, 37.980019, 29.443607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643215, 38.034866, 29.512159>,  <35.015491, 38.126278, 29.626413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643215, 38.034866, 29.512159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185573, -0.377940, 0.907041,
		-0.315237, 0.897182, 0.309337,
		-0.930692, -0.228528, -0.285634,
		34.364006, 37.966309, 29.426470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524429, 38.601967, 30.002918>,  <35.015491, 38.126278, 29.626413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524429, 38.601967, 30.002918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340630, 38.263855, 29.893837>,  <34.230350, 38.060989, 29.828388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340630, 38.263855, 29.893837>,  <34.524429, 38.601967, 30.002918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340630, 38.263855, 29.893837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163747, -0.221152, 0.961394,
		-0.872955, 0.486410, -0.036794,
		-0.459495, -0.845279, -0.272704,
		34.202782, 38.010273, 29.812025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098789, 38.535641, 30.455805>,  <34.524429, 38.601967, 30.002918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098789, 38.535641, 30.455805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052734, 38.168045, 30.304964>,  <34.025101, 37.947487, 30.214458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052734, 38.168045, 30.304964>,  <34.098789, 38.535641, 30.455805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052734, 38.168045, 30.304964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318337, -0.325470, 0.890354,
		-0.940960, 0.222560, -0.255073,
		-0.115138, -0.918987, -0.377103,
		34.018192, 37.892349, 30.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413631, 38.311214, 30.644733>,  <34.098789, 38.535641, 30.455805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413631, 38.311214, 30.644733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582298, 37.958466, 30.560350>,  <33.683498, 37.746819, 30.509720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582298, 37.958466, 30.560350>,  <33.413631, 38.311214, 30.644733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582298, 37.958466, 30.560350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291906, -0.352290, 0.889203,
		-0.858479, -0.313368, -0.405972,
		0.421668, -0.881868, -0.210960,
		33.708797, 37.693905, 30.497063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999969, 37.761181, 30.844500>,  <33.413631, 38.311214, 30.644733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999969, 37.761181, 30.844500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363049, 37.594250, 30.826960>,  <33.580894, 37.494091, 30.816435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363049, 37.594250, 30.826960>,  <32.999969, 37.761181, 30.844500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363049, 37.594250, 30.826960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165384, -0.451826, 0.876642,
		-0.385657, -0.788475, -0.479141,
		0.907698, -0.417326, -0.043849,
		33.635357, 37.469051, 30.813805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976440, 37.081284, 31.097208>,  <32.999969, 37.761181, 30.844500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976440, 37.081284, 31.097208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363525, 37.173161, 31.138720>,  <33.595776, 37.228287, 31.163628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363525, 37.173161, 31.138720>,  <32.976440, 37.081284, 31.097208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363525, 37.173161, 31.138720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017075, -0.470539, 0.882214,
		0.251472, -0.851958, -0.459269,
		0.967714, 0.229694, 0.103781,
		33.653839, 37.242069, 31.169853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247009, 36.478737, 31.341825>,  <32.976440, 37.081284, 31.097208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247009, 36.478737, 31.341825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543484, 36.726749, 31.444744>,  <33.721371, 36.875557, 31.506495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543484, 36.726749, 31.444744>,  <33.247009, 36.478737, 31.341825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543484, 36.726749, 31.444744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185396, -0.557441, 0.809251,
		0.645189, -0.552106, -0.528120,
		0.741188, 0.620031, 0.257297,
		33.765839, 36.912758, 31.521933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767315, 36.037346, 31.687130>,  <33.247009, 36.478737, 31.341825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767315, 36.037346, 31.687130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822418, 36.415375, 31.805695>,  <33.855480, 36.642193, 31.876833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822418, 36.415375, 31.805695>,  <33.767315, 36.037346, 31.687130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822418, 36.415375, 31.805695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129547, -0.313883, 0.940582,
		0.981958, -0.091172, -0.165670,
		0.137756, 0.945074, 0.296409,
		33.863747, 36.698898, 31.894617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374260, 36.003201, 31.972290>,  <33.767315, 36.037346, 31.687130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374260, 36.003201, 31.972290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243328, 36.350147, 32.122238>,  <34.164768, 36.558315, 32.212208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243328, 36.350147, 32.122238>,  <34.374260, 36.003201, 31.972290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243328, 36.350147, 32.122238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027459, -0.405291, 0.913775,
		0.944511, 0.288812, 0.156481,
		-0.327330, 0.867368, 0.374872,
		34.145130, 36.610359, 32.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836140, 36.203453, 32.467205>,  <34.374260, 36.003201, 31.972290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836140, 36.203453, 32.467205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476223, 36.364456, 32.534561>,  <34.260273, 36.461060, 32.574974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476223, 36.364456, 32.534561>,  <34.836140, 36.203453, 32.467205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476223, 36.364456, 32.534561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017123, -0.418214, 0.908187,
		0.435977, 0.814299, 0.383198,
		-0.899795, 0.402510, 0.168389,
		34.206284, 36.485210, 32.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949795, 36.660347, 33.010380>,  <34.836140, 36.203453, 32.467205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949795, 36.660347, 33.010380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557083, 36.584347, 33.011543>,  <34.321457, 36.538746, 33.012241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557083, 36.584347, 33.011543>,  <34.949795, 36.660347, 33.010380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557083, 36.584347, 33.011543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057287, -0.281364, 0.957890,
		-0.181182, 0.940603, 0.287122,
		-0.981780, -0.190000, 0.002906,
		34.262550, 36.527348, 33.012417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788902, 37.000492, 33.620560>,  <34.949795, 36.660347, 33.010380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788902, 37.000492, 33.620560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481651, 36.758785, 33.535854>,  <34.297302, 36.613762, 33.485031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481651, 36.758785, 33.535854>,  <34.788902, 37.000492, 33.620560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481651, 36.758785, 33.535854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045647, -0.278211, 0.959435,
		-0.638668, 0.746635, 0.186118,
		-0.768127, -0.604264, -0.211766,
		34.251213, 36.577507, 33.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416985, 37.027679, 34.121494>,  <34.788902, 37.000492, 33.620560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416985, 37.027679, 34.121494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299770, 36.680969, 33.960083>,  <34.229443, 36.472942, 33.863235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299770, 36.680969, 33.960083>,  <34.416985, 37.027679, 34.121494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299770, 36.680969, 33.960083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101551, -0.447879, 0.888308,
		-0.950694, 0.219325, 0.219265,
		-0.293032, -0.866776, -0.403523,
		34.211861, 36.420937, 33.839027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250690, 37.686176, 34.420731>,  <34.416985, 37.027679, 34.121494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250690, 37.686176, 34.420731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459499, 37.951462, 34.635258>,  <34.584785, 38.110634, 34.763973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459499, 37.951462, 34.635258>,  <34.250690, 37.686176, 34.420731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459499, 37.951462, 34.635258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428381, 0.747599, -0.507529,
		-0.737550, 0.035195, 0.674374,
		0.522025, 0.663217, 0.536315,
		34.616108, 38.150425, 34.796154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815159, 38.128101, 34.748138>,  <34.250690, 37.686176, 34.420731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815159, 38.128101, 34.748138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150974, 38.326778, 34.660076>,  <34.352463, 38.445984, 34.607239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150974, 38.326778, 34.660076>,  <33.815159, 38.128101, 34.748138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150974, 38.326778, 34.660076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510658, 0.583076, -0.631863,
		-0.185478, 0.642896, 0.743157,
		0.839539, 0.496696, -0.220153,
		34.402836, 38.475788, 34.594028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712341, 38.864872, 34.853992>,  <33.815159, 38.128101, 34.748138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712341, 38.864872, 34.853992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006336, 38.867908, 34.582775>,  <34.182732, 38.869728, 34.420044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006336, 38.867908, 34.582775>,  <33.712341, 38.864872, 34.853992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006336, 38.867908, 34.582775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511420, 0.662788, -0.546956,
		0.445247, 0.748768, 0.491021,
		0.734987, 0.007587, -0.678039,
		34.226833, 38.870186, 34.379364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856243, 39.556087, 34.654732>,  <33.712341, 38.864872, 34.853992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856243, 39.556087, 34.654732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029137, 39.352219, 34.357166>,  <34.132874, 39.229897, 34.178627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029137, 39.352219, 34.357166>,  <33.856243, 39.556087, 34.654732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029137, 39.352219, 34.357166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284660, 0.705657, -0.648858,
		0.855656, 0.492218, 0.159922,
		0.432230, -0.509676, -0.743914,
		34.158806, 39.199314, 34.133991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326553, 40.005222, 34.301590>,  <33.856243, 39.556087, 34.654732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326553, 40.005222, 34.301590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240623, 39.727390, 34.026951>,  <34.189064, 39.560692, 33.862167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240623, 39.727390, 34.026951>,  <34.326553, 40.005222, 34.301590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240623, 39.727390, 34.026951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222527, 0.719327, -0.658066,
		0.950963, 0.011415, -0.309093,
		-0.214827, -0.694578, -0.686594,
		34.176174, 39.519016, 33.820972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385628, 40.407059, 33.680923>,  <34.326553, 40.005222, 34.301590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385628, 40.407059, 33.680923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225872, 40.062897, 33.554310>,  <34.130020, 39.856400, 33.478340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225872, 40.062897, 33.554310>,  <34.385628, 40.407059, 33.680923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225872, 40.062897, 33.554310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206218, 0.420729, -0.883437,
		0.893289, -0.287557, -0.345464,
		-0.399385, -0.860406, -0.316533,
		34.106056, 39.804775, 33.459351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674759, 40.200943, 33.053196>,  <34.385628, 40.407059, 33.680923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674759, 40.200943, 33.053196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322048, 40.012840, 33.038654>,  <34.110420, 39.899979, 33.029930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322048, 40.012840, 33.038654>,  <34.674759, 40.200943, 33.053196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322048, 40.012840, 33.038654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108015, 0.276365, -0.954963,
		0.459126, -0.838141, -0.294488,
		-0.881780, -0.470257, -0.036355,
		34.057514, 39.871765, 33.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773037, 39.685940, 32.507118>,  <34.674759, 40.200943, 33.053196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773037, 39.685940, 32.507118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399899, 39.799950, 32.595261>,  <34.176014, 39.868355, 32.648144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399899, 39.799950, 32.595261>,  <34.773037, 39.685940, 32.507118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399899, 39.799950, 32.595261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122646, 0.323860, -0.938122,
		-0.338747, -0.902152, -0.267156,
		-0.932850, 0.285020, 0.220351,
		34.120045, 39.885456, 32.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434395, 39.677563, 31.963329>,  <34.773037, 39.685940, 32.507118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434395, 39.677563, 31.963329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161934, 39.886810, 32.168221>,  <33.998455, 40.012360, 32.291157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161934, 39.886810, 32.168221>,  <34.434395, 39.677563, 31.963329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161934, 39.886810, 32.168221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266878, 0.474089, -0.839057,
		-0.681765, -0.708230, -0.183320,
		-0.681155, 0.523116, 0.512228,
		33.957588, 40.043747, 32.321888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824486, 39.636166, 31.576202>,  <34.434395, 39.677563, 31.963329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824486, 39.636166, 31.576202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799656, 39.958008, 31.812426>,  <33.784756, 40.151112, 31.954161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799656, 39.958008, 31.812426>,  <33.824486, 39.636166, 31.576202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799656, 39.958008, 31.812426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068973, 0.586827, -0.806769,
		-0.995685, -0.090815, 0.019066,
		-0.062078, 0.804603, 0.590559,
		33.781033, 40.199390, 31.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238388, 39.983295, 31.384676>,  <33.824486, 39.636166, 31.576202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238388, 39.983295, 31.384676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500015, 40.245686, 31.535353>,  <33.656990, 40.403118, 31.625759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500015, 40.245686, 31.535353>,  <33.238388, 39.983295, 31.384676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500015, 40.245686, 31.535353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174210, 0.615221, -0.768866,
		-0.736106, 0.437264, 0.516671,
		0.654064, 0.655976, 0.376692,
		33.696236, 40.442478, 31.648361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847729, 40.617451, 31.272917>,  <33.238388, 39.983295, 31.384676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847729, 40.617451, 31.272917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232738, 40.696117, 31.347610>,  <33.463745, 40.743317, 31.392427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232738, 40.696117, 31.347610>,  <32.847729, 40.617451, 31.272917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232738, 40.696117, 31.347610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041460, 0.787177, -0.615332,
		-0.268007, 0.584530, 0.765831,
		0.962525, 0.196664, 0.186734,
		33.521496, 40.755116, 31.403631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803509, 41.341820, 31.237494>,  <32.847729, 40.617451, 31.272917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803509, 41.341820, 31.237494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188026, 41.236225, 31.205954>,  <33.418739, 41.172867, 31.187029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188026, 41.236225, 31.205954>,  <32.803509, 41.341820, 31.237494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188026, 41.236225, 31.205954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180515, 0.819709, -0.543592,
		0.208135, 0.508320, 0.835638,
		0.961298, -0.263985, -0.078850,
		33.476418, 41.157028, 31.182299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170601, 42.007591, 31.117699>,  <32.803509, 41.341820, 31.237494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170601, 42.007591, 31.117699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435959, 41.732018, 31.000891>,  <33.595173, 41.566673, 30.930807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435959, 41.732018, 31.000891>,  <33.170601, 42.007591, 31.117699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435959, 41.732018, 31.000891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421625, 0.666572, -0.614748,
		0.618171, 0.284700, 0.732673,
		0.663398, -0.688932, -0.292019,
		33.634979, 41.525337, 30.913284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863262, 42.392147, 31.058022>,  <33.170601, 42.007591, 31.117699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863262, 42.392147, 31.058022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907959, 42.061455, 30.837465>,  <33.934776, 41.863041, 30.705132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907959, 42.061455, 30.837465>,  <33.863262, 42.392147, 31.058022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907959, 42.061455, 30.837465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351388, 0.551891, -0.756269,
		0.929537, -0.109242, 0.352174,
		0.111746, -0.826730, -0.551389,
		33.941483, 41.813435, 30.672049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566132, 42.448387, 30.785749>,  <33.863262, 42.392147, 31.058022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566132, 42.448387, 30.785749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375252, 42.181759, 30.556675>,  <34.260723, 42.021782, 30.419231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375252, 42.181759, 30.556675>,  <34.566132, 42.448387, 30.785749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375252, 42.181759, 30.556675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242683, 0.526373, -0.814884,
		0.844624, -0.527840, -0.089418,
		-0.477196, -0.666570, -0.572685,
		34.232094, 41.981789, 30.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111897, 42.234428, 30.247955>,  <34.566132, 42.448387, 30.785749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111897, 42.234428, 30.247955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729275, 42.189213, 30.140461>,  <34.499702, 42.162083, 30.075964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729275, 42.189213, 30.140461>,  <35.111897, 42.234428, 30.247955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729275, 42.189213, 30.140461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205758, 0.391266, -0.896981,
		0.206543, -0.913308, -0.351009,
		-0.956558, -0.113042, -0.268734,
		34.442307, 42.155300, 30.059841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128929, 42.198280, 29.517286>,  <35.111897, 42.234428, 30.247955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128929, 42.198280, 29.517286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735172, 42.257290, 29.555691>,  <34.498920, 42.292694, 29.578733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735172, 42.257290, 29.555691>,  <35.128929, 42.198280, 29.517286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735172, 42.257290, 29.555691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003921, 0.563718, -0.825958,
		-0.175971, -0.812686, -0.555495,
		-0.984387, 0.147523, 0.096012,
		34.439857, 42.301548, 29.584494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822540, 42.005035, 28.894321>,  <35.128929, 42.198280, 29.517286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822540, 42.005035, 28.894321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588963, 42.266552, 29.086805>,  <34.448818, 42.423462, 29.202295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588963, 42.266552, 29.086805>,  <34.822540, 42.005035, 28.894321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588963, 42.266552, 29.086805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062180, 0.627055, -0.776490,
		-0.809412, -0.423502, -0.406816,
		-0.583940, 0.653796, 0.481212,
		34.413780, 42.462692, 29.231169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362480, 42.254093, 28.453157>,  <34.822540, 42.005035, 28.894321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362480, 42.254093, 28.453157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276505, 42.536469, 28.723106>,  <34.224918, 42.705894, 28.885077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276505, 42.536469, 28.723106>,  <34.362480, 42.254093, 28.453157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276505, 42.536469, 28.723106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092859, 0.673120, -0.733680,
		-0.972203, -0.220363, -0.079126,
		-0.214937, 0.705938, 0.674873,
		34.212025, 42.748249, 28.925568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710136, 42.606377, 28.257572>,  <34.362480, 42.254093, 28.453157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710136, 42.606377, 28.257572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919319, 42.856663, 28.489086>,  <34.044830, 43.006836, 28.627995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919319, 42.856663, 28.489086>,  <33.710136, 42.606377, 28.257572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919319, 42.856663, 28.489086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014196, 0.685340, -0.728085,
		-0.852241, 0.372540, 0.367285,
		0.522956, 0.625718, 0.578786,
		34.076206, 43.044380, 28.662722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297878, 43.154209, 28.248875>,  <33.710136, 42.606377, 28.257572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297878, 43.154209, 28.248875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683453, 43.220966, 28.331799>,  <33.914799, 43.261021, 28.381552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683453, 43.220966, 28.331799>,  <33.297878, 43.154209, 28.248875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683453, 43.220966, 28.331799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020748, 0.729458, -0.683711,
		-0.265328, 0.663354, 0.699687,
		0.963935, 0.166891, 0.207309,
		33.972633, 43.271034, 28.393991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352310, 43.870140, 28.096815>,  <33.297878, 43.154209, 28.248875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352310, 43.870140, 28.096815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728851, 43.739357, 28.130161>,  <33.954777, 43.660885, 28.150169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728851, 43.739357, 28.130161>,  <33.352310, 43.870140, 28.096815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728851, 43.739357, 28.130161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310311, 0.741849, -0.594447,
		0.132514, 0.585454, 0.799802,
		0.941354, -0.326960, 0.083368,
		34.011257, 43.641270, 28.155172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813835, 44.459450, 28.135746>,  <33.352310, 43.870140, 28.096815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813835, 44.459450, 28.135746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023457, 44.151077, 27.990950>,  <34.149231, 43.966053, 27.904072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023457, 44.151077, 27.990950>,  <33.813835, 44.459450, 28.135746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023457, 44.151077, 27.990950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432562, 0.607054, -0.666615,
		0.733658, 0.192761, 0.651605,
		0.524057, -0.770927, -0.361989,
		34.180676, 43.919800, 27.882353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450935, 44.736080, 27.964016>,  <33.813835, 44.459450, 28.135746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450935, 44.736080, 27.964016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464153, 44.396774, 27.752598>,  <34.472084, 44.193192, 27.625746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464153, 44.396774, 27.752598>,  <34.450935, 44.736080, 27.964016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464153, 44.396774, 27.752598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575964, 0.448355, -0.683552,
		0.816806, -0.281836, 0.503384,
		0.033046, -0.848261, -0.528547,
		34.474068, 44.142296, 27.594034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149681, 44.648151, 27.730757>,  <34.450935, 44.736080, 27.964016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149681, 44.648151, 27.730757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898205, 44.443050, 27.496893>,  <34.747318, 44.319988, 27.356575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898205, 44.443050, 27.496893>,  <35.149681, 44.648151, 27.730757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898205, 44.443050, 27.496893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450080, 0.373184, -0.811271,
		0.634169, -0.773185, -0.003838,
		-0.628695, -0.512756, -0.584657,
		34.709595, 44.289223, 27.321495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526218, 44.581444, 27.193726>,  <35.149681, 44.648151, 27.730757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526218, 44.581444, 27.193726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168415, 44.491982, 27.038891>,  <34.953732, 44.438305, 26.945990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168415, 44.491982, 27.038891>,  <35.526218, 44.581444, 27.193726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168415, 44.491982, 27.038891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277572, 0.400895, -0.873062,
		0.350442, -0.888405, -0.296524,
		-0.894508, -0.223651, -0.387087,
		34.900063, 44.424885, 26.922764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661636, 44.195976, 26.609430>,  <35.526218, 44.581444, 27.193726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661636, 44.195976, 26.609430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316349, 44.394032, 26.570040>,  <35.109177, 44.512863, 26.546406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316349, 44.394032, 26.570040>,  <35.661636, 44.195976, 26.609430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316349, 44.394032, 26.570040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310804, 0.367528, -0.876541,
		-0.397813, -0.787252, -0.471147,
		-0.863218, 0.495134, -0.098474,
		35.057384, 44.542572, 26.540497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370468, 44.102005, 26.320265>,  <35.661636, 44.195976, 26.609430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370468, 44.102005, 26.320265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705044, 44.296959, 26.220001>,  <36.905788, 44.413929, 26.159843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705044, 44.296959, 26.220001>,  <36.370468, 44.102005, 26.320265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705044, 44.296959, 26.220001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439714, -0.323782, 0.837745,
		0.327144, -0.810940, -0.485133,
		0.836438, 0.487383, -0.250658,
		36.955975, 44.443172, 26.144804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940128, 43.584454, 26.446466>,  <36.370468, 44.102005, 26.320265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940128, 43.584454, 26.446466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131966, 43.935280, 26.435509>,  <37.247066, 44.145775, 26.428934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131966, 43.935280, 26.435509>,  <36.940128, 43.584454, 26.446466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131966, 43.935280, 26.435509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528903, -0.264021, 0.806570,
		0.700182, -0.401311, -0.590503,
		0.479591, 0.877065, -0.027392,
		37.275845, 44.198399, 26.427292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676765, 43.493496, 26.461180>,  <36.940128, 43.584454, 26.446466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676765, 43.493496, 26.461180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588589, 43.861897, 26.589651>,  <37.535683, 44.082939, 26.666733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588589, 43.861897, 26.589651>,  <37.676765, 43.493496, 26.461180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588589, 43.861897, 26.589651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436127, -0.201462, 0.877044,
		0.872468, 0.333408, -0.357266,
		-0.220438, 0.921006, 0.321177,
		37.522457, 44.138199, 26.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335876, 43.714340, 26.714544>,  <37.676765, 43.493496, 26.461180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335876, 43.714340, 26.714544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023232, 43.917530, 26.859343>,  <37.835644, 44.039444, 26.946222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023232, 43.917530, 26.859343>,  <38.335876, 43.714340, 26.714544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023232, 43.917530, 26.859343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265574, -0.254109, 0.929999,
		0.564399, 0.823040, 0.063712,
		-0.781617, 0.507970, 0.361997,
		37.788746, 44.069920, 26.967941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670399, 44.083916, 27.284447>,  <38.335876, 43.714340, 26.714544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670399, 44.083916, 27.284447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274120, 44.065079, 27.335508>,  <38.036354, 44.053776, 27.366146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274120, 44.065079, 27.335508>,  <38.670399, 44.083916, 27.284447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274120, 44.065079, 27.335508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134538, -0.479198, 0.867334,
		0.020327, 0.876443, 0.481077,
		-0.990700, -0.047093, 0.127656,
		37.976910, 44.050949, 27.373806>
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
