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
	<24.084373, 34.745243, 35.227524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340851, 34.974533, 35.023453>,  <24.494738, 35.112106, 34.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340851, 34.974533, 35.023453>,  <24.084373, 34.745243, 35.227524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340851, 34.974533, 35.023453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431899, -0.819111, -0.377519,
		-0.634298, 0.021717, -0.772784,
		0.641194, 0.573224, -0.510181,
		24.533209, 35.146500, 34.870399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.925327, 34.802181, 34.456451>,  <24.084373, 34.745243, 35.227524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.925327, 34.802181, 34.456451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279982, 34.806374, 34.641392>,  <24.492775, 34.808887, 34.752354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279982, 34.806374, 34.641392>,  <23.925327, 34.802181, 34.456451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279982, 34.806374, 34.641392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065639, -0.992474, -0.103376,
		0.457786, 0.122005, -0.880651,
		0.886636, 0.010481, 0.462349,
		24.545973, 34.809517, 34.780098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412962, 34.535763, 34.090816>,  <23.925327, 34.802181, 34.456451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412962, 34.535763, 34.090816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566475, 34.492794, 34.457680>,  <24.658583, 34.467010, 34.677795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566475, 34.492794, 34.457680>,  <24.412962, 34.535763, 34.090816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566475, 34.492794, 34.457680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148412, -0.973123, -0.176085,
		0.911420, 0.203695, -0.357522,
		0.383780, -0.107427, 0.917154,
		24.681608, 34.460567, 34.732826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093668, 34.191723, 33.949280>,  <24.412962, 34.535763, 34.090816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093668, 34.191723, 33.949280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971798, 34.117432, 34.322948>,  <24.898676, 34.072857, 34.547150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971798, 34.117432, 34.322948>,  <25.093668, 34.191723, 33.949280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971798, 34.117432, 34.322948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148837, -0.978039, -0.145902,
		0.940756, 0.094587, 0.325626,
		-0.304674, -0.185724, 0.934174,
		24.880396, 34.061714, 34.603199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668844, 33.968395, 34.312634>,  <25.093668, 34.191723, 33.949280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668844, 33.968395, 34.312634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336304, 33.818920, 34.477173>,  <25.136780, 33.729233, 34.575897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336304, 33.818920, 34.477173>,  <25.668844, 33.968395, 34.312634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336304, 33.818920, 34.477173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348145, -0.927132, -0.138644,
		0.433187, 0.027948, 0.900871,
		-0.831351, -0.373692, 0.411351,
		25.086899, 33.706814, 34.600578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779129, 33.470478, 34.872444>,  <25.668844, 33.968395, 34.312634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779129, 33.470478, 34.872444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431293, 33.340599, 34.723644>,  <25.222591, 33.262672, 34.634365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431293, 33.340599, 34.723644>,  <25.779129, 33.470478, 34.872444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431293, 33.340599, 34.723644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284902, -0.945265, 0.159072,
		-0.403292, 0.032343, 0.914500,
		-0.869590, -0.324695, -0.372003,
		25.170416, 33.243191, 34.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448080, 33.096348, 35.400322>,  <25.779129, 33.470478, 34.872444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448080, 33.096348, 35.400322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312456, 32.981991, 35.041813>,  <25.231083, 32.913376, 34.826706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312456, 32.981991, 35.041813>,  <25.448080, 33.096348, 35.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312456, 32.981991, 35.041813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225343, -0.949652, 0.217673,
		-0.913379, -0.128165, 0.386411,
		-0.339058, -0.285893, -0.896273,
		25.210739, 32.896221, 34.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934082, 32.381786, 35.410679>,  <25.448080, 33.096348, 35.400322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934082, 32.381786, 35.410679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157707, 32.456753, 35.087612>,  <25.291882, 32.501732, 34.893772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157707, 32.456753, 35.087612>,  <24.934082, 32.381786, 35.410679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157707, 32.456753, 35.087612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565974, -0.798127, 0.206561,
		-0.605906, -0.572598, -0.552276,
		0.559063, 0.187417, -0.807665,
		25.325426, 32.512978, 34.845314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978418, 31.773647, 35.134846>,  <24.934082, 32.381786, 35.410679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978418, 31.773647, 35.134846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259657, 31.978138, 34.937138>,  <25.428400, 32.100834, 34.818512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259657, 31.978138, 34.937138>,  <24.978418, 31.773647, 35.134846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259657, 31.978138, 34.937138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608630, -0.792090, 0.046514,
		-0.367725, -0.333530, -0.868064,
		0.703099, 0.511225, -0.494268,
		25.470587, 32.131504, 34.788857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126026, 31.341667, 34.594448>,  <24.978418, 31.773647, 35.134846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126026, 31.341667, 34.594448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456366, 31.565847, 34.619328>,  <25.654570, 31.700356, 34.634254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456366, 31.565847, 34.619328>,  <25.126026, 31.341667, 34.594448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456366, 31.565847, 34.619328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563684, -0.823506, -0.064023,
		0.015336, 0.087932, -0.996008,
		0.825848, 0.560452, 0.062195,
		25.704121, 31.733982, 34.637985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685993, 31.065134, 34.126770>,  <25.126026, 31.341667, 34.594448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685993, 31.065134, 34.126770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895346, 31.291752, 34.381359>,  <26.020958, 31.427723, 34.534111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895346, 31.291752, 34.381359>,  <25.685993, 31.065134, 34.126770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895346, 31.291752, 34.381359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667714, -0.736729, 0.106715,
		0.529365, 0.369128, -0.763883,
		0.523383, 0.566547, 0.636471,
		26.052361, 31.461716, 34.572300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437977, 31.087801, 34.051800>,  <25.685993, 31.065134, 34.126770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437977, 31.087801, 34.051800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346512, 31.124557, 34.439465>,  <26.291634, 31.146610, 34.672062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346512, 31.124557, 34.439465>,  <26.437977, 31.087801, 34.051800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346512, 31.124557, 34.439465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563953, -0.798971, 0.208813,
		0.793518, 0.594307, 0.130873,
		-0.228663, 0.091890, 0.969159,
		26.277912, 31.152124, 34.730213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099775, 30.755173, 34.241673>,  <26.437977, 31.087801, 34.051800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099775, 30.755173, 34.241673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238209, 30.679087, 34.609161>,  <27.321268, 30.633436, 34.829655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238209, 30.679087, 34.609161>,  <27.099775, 30.755173, 34.241673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238209, 30.679087, 34.609161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673003, 0.631930, 0.384357,
		-0.653677, -0.751321, 0.090685,
		0.346082, -0.190214, 0.918720,
		27.342033, 30.622023, 34.884777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729197, 30.435230, 34.807819>,  <27.099775, 30.755173, 34.241673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729197, 30.435230, 34.807819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984257, 30.734892, 34.879559>,  <27.137293, 30.914690, 34.922600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984257, 30.734892, 34.879559>,  <26.729197, 30.435230, 34.807819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984257, 30.734892, 34.879559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765326, 0.589629, 0.258097,
		0.087608, -0.301834, 0.949327,
		0.637653, 0.749156, 0.179345,
		27.175552, 30.959639, 34.933361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522327, 30.840343, 35.335537>,  <26.729197, 30.435230, 34.807819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522327, 30.840343, 35.335537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720152, 31.055126, 35.062160>,  <26.838846, 31.183996, 34.898136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720152, 31.055126, 35.062160>,  <26.522327, 30.840343, 35.335537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720152, 31.055126, 35.062160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628033, 0.764356, 0.146066,
		0.600820, 0.356982, 0.715248,
		0.494561, 0.536958, -0.683436,
		26.868521, 31.216213, 34.857128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658562, 31.530214, 35.714458>,  <26.522327, 30.840343, 35.335537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658562, 31.530214, 35.714458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644999, 31.546091, 35.315002>,  <26.636862, 31.555616, 35.075329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644999, 31.546091, 35.315002>,  <26.658562, 31.530214, 35.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644999, 31.546091, 35.315002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672434, 0.738316, 0.052176,
		0.739380, 0.673286, 0.001657,
		-0.033906, 0.039692, -0.998637,
		26.634827, 31.557999, 35.015411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793709, 32.227264, 35.393826>,  <26.658562, 31.530214, 35.714458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793709, 32.227264, 35.393826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575672, 32.014381, 35.134708>,  <26.444851, 31.886652, 34.979240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575672, 32.014381, 35.134708>,  <26.793709, 32.227264, 35.393826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575672, 32.014381, 35.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508933, 0.824070, -0.248789,
		0.666231, 0.194069, -0.720051,
		-0.545090, -0.532209, -0.647789,
		26.412146, 31.854719, 34.940372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749851, 32.569824, 34.782681>,  <26.793709, 32.227264, 35.393826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749851, 32.569824, 34.782681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426493, 32.338345, 34.739594>,  <26.232477, 32.199455, 34.713741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426493, 32.338345, 34.739594>,  <26.749851, 32.569824, 34.782681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426493, 32.338345, 34.739594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551756, 0.808706, -0.203861,
		0.205082, -0.105369, -0.973056,
		-0.808397, -0.578698, -0.107713,
		26.183973, 32.164734, 34.707279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424759, 32.756454, 34.195549>,  <26.749851, 32.569824, 34.782681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424759, 32.756454, 34.195549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137728, 32.569683, 34.402260>,  <25.965509, 32.457619, 34.526287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137728, 32.569683, 34.402260>,  <26.424759, 32.756454, 34.195549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137728, 32.569683, 34.402260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610008, 0.779424, -0.142789,
		-0.336115, -0.417700, -0.844129,
		-0.717577, -0.466932, 0.516776,
		25.922455, 32.429604, 34.557293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831545, 32.701504, 33.680527>,  <26.424759, 32.756454, 34.195549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831545, 32.701504, 33.680527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719767, 32.695625, 34.064545>,  <25.652699, 32.692097, 34.294956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719767, 32.695625, 34.064545>,  <25.831545, 32.701504, 33.680527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719767, 32.695625, 34.064545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759488, 0.615128, -0.211652,
		-0.587442, -0.788291, -0.183057,
		-0.279447, -0.014696, 0.960049,
		25.635933, 32.691216, 34.352558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154743, 32.382130, 33.705311>,  <25.831545, 32.701504, 33.680527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154743, 32.382130, 33.705311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086479, 32.388863, 34.099384>,  <25.045521, 32.392902, 34.335831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086479, 32.388863, 34.099384>,  <25.154743, 32.382130, 33.705311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086479, 32.388863, 34.099384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279494, 0.957959, -0.064784,
		-0.944859, -0.286410, -0.158780,
		-0.170659, 0.016834, 0.985186,
		25.035282, 32.393913, 34.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474409, 32.385712, 33.848690>,  <25.154743, 32.382130, 33.705311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474409, 32.385712, 33.848690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671791, 32.556061, 34.152039>,  <24.790220, 32.658272, 34.334049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671791, 32.556061, 34.152039>,  <24.474409, 32.385712, 33.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671791, 32.556061, 34.152039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441466, 0.873897, -0.203498,
		-0.749406, -0.234380, 0.619239,
		0.493455, 0.425876, 0.758375,
		24.819828, 32.683823, 34.379551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960691, 32.957134, 34.154819>,  <24.474409, 32.385712, 33.848690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960691, 32.957134, 34.154819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330532, 33.029102, 34.289127>,  <24.552437, 33.072285, 34.369713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330532, 33.029102, 34.289127>,  <23.960691, 32.957134, 34.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330532, 33.029102, 34.289127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175008, 0.983533, -0.045119,
		-0.338355, -0.017045, 0.940864,
		0.924602, 0.179925, 0.335767,
		24.607912, 33.083080, 34.389858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.126652, 33.358944, 34.716312>,  <23.960691, 32.957134, 34.154819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.126652, 33.358944, 34.716312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.052423, 33.604992, 34.409798>,  <24.007887, 33.752621, 34.225891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.052423, 33.604992, 34.409798>,  <24.126652, 33.358944, 34.716312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.052423, 33.604992, 34.409798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898934, -0.208666, -0.385196,
		-0.396839, -0.760321, -0.514229,
		-0.185571, 0.615119, -0.766285,
		23.996752, 33.789528, 34.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.994036, 33.612621, 35.324257>,  <24.126652, 33.358944, 34.716312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.994036, 33.612621, 35.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343275, 33.598835, 35.129726>,  <24.552818, 33.590561, 35.013008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343275, 33.598835, 35.129726>,  <23.994036, 33.612621, 35.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343275, 33.598835, 35.129726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158966, 0.963111, 0.217132,
		0.460901, -0.266886, 0.846370,
		0.873098, -0.034468, -0.486325,
		24.605204, 33.588493, 34.983829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480648, 33.842167, 35.799168>,  <23.994036, 33.612621, 35.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480648, 33.842167, 35.799168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621689, 33.895481, 35.428673>,  <24.706314, 33.927467, 35.206375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621689, 33.895481, 35.428673>,  <24.480648, 33.842167, 35.799168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621689, 33.895481, 35.428673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105772, 0.977785, 0.180967,
		0.929776, -0.161779, 0.330672,
		0.352603, 0.133283, -0.926233,
		24.727470, 33.935467, 35.150803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069233, 34.153057, 35.913128>,  <24.480648, 33.842167, 35.799168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069233, 34.153057, 35.913128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932901, 34.234638, 35.546032>,  <24.851103, 34.283588, 35.325775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932901, 34.234638, 35.546032>,  <25.069233, 34.153057, 35.913128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932901, 34.234638, 35.546032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288424, 0.951793, 0.104410,
		0.894789, -0.229110, -0.383224,
		-0.340829, 0.203956, -0.917735,
		24.830652, 34.295826, 35.270710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539209, 34.613396, 35.479927>,  <25.069233, 34.153057, 35.913128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539209, 34.613396, 35.479927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148069, 34.655094, 35.407326>,  <24.913385, 34.680111, 35.363766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148069, 34.655094, 35.407326>,  <25.539209, 34.613396, 35.479927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148069, 34.655094, 35.407326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076985, 0.985494, 0.151248,
		0.194638, 0.133924, -0.971689,
		-0.977849, 0.104244, -0.181505,
		24.854715, 34.686367, 35.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372807, 35.180603, 34.940468>,  <25.539209, 34.613396, 35.479927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372807, 35.180603, 34.940468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097239, 35.106339, 35.220730>,  <24.931898, 35.061779, 35.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097239, 35.106339, 35.220730>,  <25.372807, 35.180603, 34.940468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097239, 35.106339, 35.220730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018725, 0.970876, 0.238850,
		-0.724596, 0.151428, -0.672332,
		-0.688920, -0.185659, 0.700657,
		24.890562, 35.050640, 35.430927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196249, 35.552750, 34.215546>,  <25.372807, 35.180603, 34.940468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196249, 35.552750, 34.215546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551430, 35.589931, 34.035366>,  <25.764538, 35.612240, 33.927258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551430, 35.589931, 34.035366>,  <25.196249, 35.552750, 34.215546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551430, 35.589931, 34.035366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415783, 0.580932, -0.699744,
		0.196635, 0.808627, 0.554488,
		0.887952, 0.092953, -0.450445,
		25.817816, 35.617817, 33.900234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262325, 36.262794, 33.950413>,  <25.196249, 35.552750, 34.215546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262325, 36.262794, 33.950413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580273, 36.112915, 33.759506>,  <25.771042, 36.022987, 33.644962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580273, 36.112915, 33.759506>,  <25.262325, 36.262794, 33.950413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580273, 36.112915, 33.759506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185852, 0.598415, -0.779332,
		0.577617, 0.708169, 0.406024,
		0.794869, -0.374696, -0.477269,
		25.818733, 36.000507, 33.616325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667028, 36.859764, 33.668095>,  <25.262325, 36.262794, 33.950413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667028, 36.859764, 33.668095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753443, 36.535480, 33.450439>,  <25.805292, 36.340912, 33.319847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753443, 36.535480, 33.450439>,  <25.667028, 36.859764, 33.668095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753443, 36.535480, 33.450439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031143, 0.551293, -0.833731,
		0.975888, 0.197063, 0.093851,
		0.216037, -0.810705, -0.544137,
		25.818254, 36.292271, 33.287197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021805, 37.194775, 33.115986>,  <25.667028, 36.859764, 33.668095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021805, 37.194775, 33.115986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913820, 36.830799, 32.990040>,  <25.849030, 36.612415, 32.914474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913820, 36.830799, 32.990040>,  <26.021805, 37.194775, 33.115986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913820, 36.830799, 32.990040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024382, 0.320440, -0.946955,
		0.962562, -0.263319, -0.064321,
		-0.269962, -0.909935, -0.314863,
		25.832832, 36.557819, 32.895580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434162, 37.075172, 32.476082>,  <26.021805, 37.194775, 33.115986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434162, 37.075172, 32.476082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138933, 36.805573, 32.463585>,  <25.961796, 36.643814, 32.456085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138933, 36.805573, 32.463585>,  <26.434162, 37.075172, 32.476082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138933, 36.805573, 32.463585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130498, 0.188028, -0.973456,
		0.661981, -0.714404, -0.226734,
		-0.738073, -0.673997, -0.031243,
		25.917511, 36.603374, 32.454212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447548, 36.328846, 32.176800>,  <26.434162, 37.075172, 32.476082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447548, 36.328846, 32.176800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119150, 36.102150, 32.149155>,  <25.922112, 35.966133, 32.132568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119150, 36.102150, 32.149155>,  <26.447548, 36.328846, 32.176800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119150, 36.102150, 32.149155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243331, 0.456841, -0.855621,
		0.516488, -0.685641, -0.512969,
		-0.820993, -0.566739, -0.069115,
		25.872852, 35.932129, 32.128422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353056, 35.934856, 31.499935>,  <26.447548, 36.328846, 32.176800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353056, 35.934856, 31.499935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983299, 36.010021, 31.632715>,  <25.761446, 36.055119, 31.712383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983299, 36.010021, 31.632715>,  <26.353056, 35.934856, 31.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983299, 36.010021, 31.632715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227330, 0.427413, -0.875008,
		-0.306303, -0.884312, -0.352379,
		-0.924391, 0.187911, 0.331948,
		25.705982, 36.066395, 31.732300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965742, 35.744968, 31.033255>,  <26.353056, 35.934856, 31.499935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965742, 35.744968, 31.033255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745615, 36.011208, 31.234900>,  <25.613539, 36.170952, 31.355886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745615, 36.011208, 31.234900>,  <25.965742, 35.744968, 31.033255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745615, 36.011208, 31.234900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357077, 0.358148, -0.862686,
		-0.754751, -0.654755, 0.040576,
		-0.550316, 0.665601, 0.504110,
		25.580521, 36.210888, 31.386133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251444, 35.608494, 30.934372>,  <25.965742, 35.744968, 31.033255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251444, 35.608494, 30.934372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298120, 35.998405, 31.010471>,  <25.326126, 36.232353, 31.056131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298120, 35.998405, 31.010471>,  <25.251444, 35.608494, 30.934372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298120, 35.998405, 31.010471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380752, 0.220831, -0.897921,
		-0.917285, 0.032341, 0.396917,
		0.116691, 0.974776, 0.190251,
		25.333128, 36.290836, 31.067547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052509, 35.269695, 30.185200>,  <25.251444, 35.608494, 30.934372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052509, 35.269695, 30.185200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673450, 35.144798, 30.211948>,  <24.446016, 35.069859, 30.227999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673450, 35.144798, 30.211948>,  <25.052509, 35.269695, 30.185200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673450, 35.144798, 30.211948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206244, -0.438606, 0.874694,
		-0.243786, 0.842692, 0.480041,
		-0.947645, -0.312243, 0.066874,
		24.389156, 35.051125, 30.232010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835348, 35.966721, 30.254333>,  <25.052509, 35.269695, 30.185200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835348, 35.966721, 30.254333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835602, 35.704319, 29.952431>,  <24.835754, 35.546879, 29.771290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835602, 35.704319, 29.952431>,  <24.835348, 35.966721, 30.254333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835602, 35.704319, 29.952431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621034, -0.591825, 0.513867,
		-0.783783, 0.468403, -0.407777,
		0.000636, -0.656004, -0.754757,
		24.835793, 35.507519, 29.726004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278679, 36.597343, 30.051291>,  <24.835348, 35.966721, 30.254333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278679, 36.597343, 30.051291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108910, 36.953976, 30.114479>,  <25.007048, 37.167953, 30.152391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108910, 36.953976, 30.114479>,  <25.278679, 36.597343, 30.051291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108910, 36.953976, 30.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241138, -0.056867, 0.968823,
		0.872765, 0.449283, -0.190857,
		-0.424422, 0.891578, 0.157971,
		24.981583, 37.221451, 30.161871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736355, 36.962273, 30.404863>,  <25.278679, 36.597343, 30.051291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736355, 36.962273, 30.404863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380537, 37.107880, 30.515284>,  <25.167046, 37.195244, 30.581535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380537, 37.107880, 30.515284>,  <25.736355, 36.962273, 30.404863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380537, 37.107880, 30.515284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233210, -0.157777, 0.959541,
		0.392842, 0.917932, 0.055458,
		-0.889544, 0.364014, 0.276052,
		25.113674, 37.217083, 30.598099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815048, 37.431667, 30.943865>,  <25.736355, 36.962273, 30.404863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815048, 37.431667, 30.943865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471231, 37.231007, 30.982916>,  <25.264940, 37.110611, 31.006346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471231, 37.231007, 30.982916>,  <25.815048, 37.431667, 30.943865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471231, 37.231007, 30.982916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326900, -0.392839, 0.859543,
		-0.392839, 0.770729, 0.501652,
		-0.859543, -0.501652, 0.097628,
		25.213369, 37.080509, 31.012205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358305, 37.536934, 31.522598>,  <25.815048, 37.431667, 30.943865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358305, 37.536934, 31.522598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344383, 37.157780, 31.395918>,  <25.336029, 36.930286, 31.319910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344383, 37.157780, 31.395918>,  <25.358305, 37.536934, 31.522598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344383, 37.157780, 31.395918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187861, -0.317451, 0.929480,
		-0.981579, -0.027145, 0.189120,
		-0.034806, -0.947886, -0.316703,
		25.333942, 36.873413, 31.300907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916407, 37.136135, 32.001984>,  <25.358305, 37.536934, 31.522598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916407, 37.136135, 32.001984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149818, 36.863476, 31.825418>,  <25.289865, 36.699879, 31.719479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149818, 36.863476, 31.825418>,  <24.916407, 37.136135, 32.001984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149818, 36.863476, 31.825418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183009, -0.419190, 0.889262,
		-0.791202, -0.599693, -0.119861,
		0.583529, -0.681651, -0.441414,
		25.324877, 36.658981, 31.692995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663048, 36.494011, 32.262859>,  <24.916407, 37.136135, 32.001984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663048, 36.494011, 32.262859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049524, 36.484032, 32.160213>,  <25.281410, 36.478046, 32.098625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049524, 36.484032, 32.160213>,  <24.663048, 36.494011, 32.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049524, 36.484032, 32.160213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206220, -0.522633, 0.827241,
		-0.154751, -0.852193, -0.499819,
		0.966191, -0.024944, -0.256617,
		25.339382, 36.476547, 32.083229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893393, 35.826389, 32.441750>,  <24.663048, 36.494011, 32.262859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893393, 35.826389, 32.441750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215593, 36.063301, 32.449402>,  <25.408915, 36.205448, 32.453995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215593, 36.063301, 32.449402>,  <24.893393, 35.826389, 32.441750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215593, 36.063301, 32.449402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286296, -0.417222, 0.862531,
		0.518843, -0.689295, -0.505641,
		0.805503, 0.592282, 0.019130,
		25.457245, 36.240986, 32.455139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389030, 35.397388, 32.505054>,  <24.893393, 35.826389, 32.441750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389030, 35.397388, 32.505054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542522, 35.751446, 32.610329>,  <25.634619, 35.963882, 32.673492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542522, 35.751446, 32.610329>,  <25.389030, 35.397388, 32.505054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542522, 35.751446, 32.610329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276291, -0.381993, 0.881898,
		0.881143, -0.265698, -0.391141,
		0.383731, 0.885148, 0.263181,
		25.657642, 36.016991, 32.689281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087902, 35.231922, 32.656471>,  <25.389030, 35.397388, 32.505054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087902, 35.231922, 32.656471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012426, 35.570175, 32.856190>,  <25.967140, 35.773129, 32.976021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012426, 35.570175, 32.856190>,  <26.087902, 35.231922, 32.656471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012426, 35.570175, 32.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515081, -0.347660, 0.783469,
		0.836115, 0.405011, -0.369971,
		-0.188690, 0.845635, 0.499297,
		25.955820, 35.823864, 33.005978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681911, 35.422489, 32.954582>,  <26.087902, 35.231922, 32.656471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681911, 35.422489, 32.954582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388767, 35.594090, 33.165813>,  <26.212881, 35.697052, 33.292553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388767, 35.594090, 33.165813>,  <26.681911, 35.422489, 32.954582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388767, 35.594090, 33.165813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404639, -0.349155, 0.845197,
		0.546976, 0.833094, 0.082290,
		-0.732861, 0.429005, 0.528081,
		26.168909, 35.722790, 33.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985134, 35.918270, 33.465477>,  <26.681911, 35.422489, 32.954582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985134, 35.918270, 33.465477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622990, 35.825802, 33.607956>,  <26.405703, 35.770321, 33.693443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622990, 35.825802, 33.607956>,  <26.985134, 35.918270, 33.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622990, 35.825802, 33.607956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421023, -0.379430, 0.823877,
		-0.055304, 0.895875, 0.440850,
		-0.905363, -0.231172, 0.356200,
		26.351381, 35.756451, 33.714817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920765, 36.243725, 34.120930>,  <26.985134, 35.918270, 33.465477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920765, 36.243725, 34.120930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656038, 35.943932, 34.114357>,  <26.497202, 35.764053, 34.110413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656038, 35.943932, 34.114357>,  <26.920765, 36.243725, 34.120930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656038, 35.943932, 34.114357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197664, -0.195607, 0.960555,
		-0.723138, 0.632462, 0.277602,
		-0.661816, -0.749486, -0.016436,
		26.457493, 35.719086, 34.109425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477386, 36.286392, 34.815327>,  <26.920765, 36.243725, 34.120930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477386, 36.286392, 34.815327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451601, 35.905880, 34.694721>,  <26.436129, 35.677574, 34.622360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451601, 35.905880, 34.694721>,  <26.477386, 36.286392, 34.815327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451601, 35.905880, 34.694721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144491, -0.307854, 0.940398,
		-0.987404, 0.017058, 0.157297,
		-0.064465, -0.951281, -0.301512,
		26.432261, 35.620495, 34.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035852, 36.482574, 35.335445>,  <26.477386, 36.286392, 34.815327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035852, 36.482574, 35.335445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159555, 36.853828, 35.252571>,  <27.233778, 37.076580, 35.202847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159555, 36.853828, 35.252571>,  <27.035852, 36.482574, 35.335445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159555, 36.853828, 35.252571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935058, -0.336473, -0.111584,
		-0.173276, -0.159219, -0.971918,
		0.309258, 0.928135, -0.207181,
		27.252333, 37.132271, 35.190418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420456, 36.492390, 34.703331>,  <27.035852, 36.482574, 35.335445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420456, 36.492390, 34.703331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530005, 36.760685, 34.979042>,  <27.595734, 36.921661, 35.144470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530005, 36.760685, 34.979042>,  <27.420456, 36.492390, 34.703331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530005, 36.760685, 34.979042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917929, -0.396198, 0.020820,
		0.287057, 0.627009, -0.724195,
		0.273870, 0.670736, 0.689281,
		27.612165, 36.961906, 35.185825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061096, 36.982082, 34.459084>,  <27.420456, 36.492390, 34.703331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061096, 36.982082, 34.459084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059872, 36.894779, 34.849438>,  <28.059137, 36.842396, 35.083649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059872, 36.894779, 34.849438>,  <28.061096, 36.982082, 34.459084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059872, 36.894779, 34.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920904, -0.380997, -0.082321,
		0.389777, 0.898446, 0.202160,
		-0.003062, -0.218256, 0.975887,
		28.058952, 36.829304, 35.142204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612181, 37.301697, 34.909164>,  <28.061096, 36.982082, 34.459084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612181, 37.301697, 34.909164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495125, 36.939960, 35.033440>,  <28.424891, 36.722919, 35.108006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495125, 36.939960, 35.033440>,  <28.612181, 37.301697, 34.909164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495125, 36.939960, 35.033440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933946, -0.340038, -0.110083,
		0.205197, 0.257948, 0.944117,
		-0.292640, -0.904344, 0.310684,
		28.407333, 36.668659, 35.126644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919935, 36.950443, 35.467552>,  <28.612181, 37.301697, 34.909164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919935, 36.950443, 35.467552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849888, 36.661095, 35.200397>,  <28.807859, 36.487488, 35.040104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849888, 36.661095, 35.200397>,  <28.919935, 36.950443, 35.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849888, 36.661095, 35.200397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980946, -0.186159, -0.055580,
		-0.084128, -0.664892, 0.742187,
		-0.175120, -0.723370, -0.667884,
		28.797352, 36.444084, 35.000031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588249, 36.558632, 35.489662>,  <28.919935, 36.950443, 35.467552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588249, 36.558632, 35.489662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427105, 36.388027, 35.165737>,  <29.330418, 36.285664, 34.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427105, 36.388027, 35.165737>,  <29.588249, 36.558632, 35.489662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427105, 36.388027, 35.165737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834919, -0.533751, -0.134238,
		-0.374984, -0.730206, 0.571127,
		-0.402861, -0.426508, -0.809811,
		29.306246, 36.260075, 34.922794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912868, 36.219059, 36.050762>,  <29.588249, 36.558632, 35.489662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912868, 36.219059, 36.050762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003750, 36.597717, 36.142189>,  <30.058279, 36.824913, 36.197044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003750, 36.597717, 36.142189>,  <29.912868, 36.219059, 36.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003750, 36.597717, 36.142189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973835, -0.219653, -0.058291,
		-0.004975, 0.235835, -0.971780,
		0.227201, 0.946644, 0.228572,
		30.071911, 36.881710, 36.210762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484026, 36.443989, 35.586845>,  <29.912868, 36.219059, 36.050762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484026, 36.443989, 35.586845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510033, 36.751175, 35.841721>,  <30.525637, 36.935486, 35.994644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510033, 36.751175, 35.841721>,  <30.484026, 36.443989, 35.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510033, 36.751175, 35.841721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985283, 0.051752, -0.162907,
		-0.158082, 0.638400, -0.753296,
		0.065016, 0.767963, 0.637186,
		30.529537, 36.981564, 36.032875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476946, 37.123371, 35.192856>,  <30.484026, 36.443989, 35.586845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476946, 37.123371, 35.192856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656919, 37.082352, 35.547718>,  <30.764904, 37.057739, 35.760635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656919, 37.082352, 35.547718>,  <30.476946, 37.123371, 35.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656919, 37.082352, 35.547718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884228, -0.088229, -0.458647,
		0.125308, 0.990807, 0.050982,
		0.449933, -0.102552, 0.887155,
		30.791899, 37.051586, 35.813866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080523, 37.630093, 35.256275>,  <30.476946, 37.123371, 35.192856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080523, 37.630093, 35.256275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104635, 37.283649, 35.454758>,  <31.119102, 37.075783, 35.573849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104635, 37.283649, 35.454758>,  <31.080523, 37.630093, 35.256275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104635, 37.283649, 35.454758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861813, -0.205656, -0.463663,
		0.503631, 0.455591, 0.734025,
		0.060284, -0.866108, 0.496209,
		31.122721, 37.023819, 35.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751329, 37.629261, 35.596359>,  <31.080523, 37.630093, 35.256275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751329, 37.629261, 35.596359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633640, 37.255093, 35.517963>,  <31.563026, 37.030590, 35.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633640, 37.255093, 35.517963>,  <31.751329, 37.629261, 35.596359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633640, 37.255093, 35.517963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928809, -0.231525, -0.289327,
		0.225268, -0.267162, 0.936952,
		-0.294225, -0.935425, -0.195988,
		31.545372, 36.974464, 35.459167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195332, 37.128590, 35.858589>,  <31.751329, 37.629261, 35.596359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195332, 37.128590, 35.858589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035572, 36.928932, 35.550995>,  <31.939716, 36.809139, 35.366440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035572, 36.928932, 35.550995>,  <32.195332, 37.128590, 35.858589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035572, 36.928932, 35.550995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912589, -0.296540, -0.281505,
		-0.087522, -0.814198, 0.573952,
		-0.399400, -0.499144, -0.768983,
		31.915752, 36.779190, 35.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708145, 36.636356, 35.729786>,  <32.195332, 37.128590, 35.858589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708145, 36.636356, 35.729786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485729, 36.560410, 35.406113>,  <32.352280, 36.514843, 35.211910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485729, 36.560410, 35.406113>,  <32.708145, 36.636356, 35.729786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485729, 36.560410, 35.406113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778714, -0.459349, -0.427321,
		-0.290562, -0.867726, 0.403269,
		-0.556038, -0.189868, -0.809180,
		32.318916, 36.503448, 35.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755367, 35.935886, 35.589600>,  <32.708145, 36.636356, 35.729786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755367, 35.935886, 35.589600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622063, 36.081001, 35.241505>,  <32.542080, 36.168072, 35.032646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622063, 36.081001, 35.241505>,  <32.755367, 35.935886, 35.589600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622063, 36.081001, 35.241505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642977, -0.587620, -0.491205,
		-0.689576, -0.723246, -0.037433,
		-0.333265, 0.362792, -0.870239,
		32.522083, 36.189838, 34.980434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578976, 35.321415, 35.166145>,  <32.755367, 35.935886, 35.589600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578976, 35.321415, 35.166145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672657, 35.623116, 34.920788>,  <32.728867, 35.804134, 34.773575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672657, 35.623116, 34.920788>,  <32.578976, 35.321415, 35.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672657, 35.623116, 34.920788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572759, -0.616866, -0.539836,
		-0.785555, -0.224898, -0.576475,
		0.234200, 0.754253, -0.613395,
		32.742916, 35.849392, 34.736771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373253, 35.100651, 34.503769>,  <32.578976, 35.321415, 35.166145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373253, 35.100651, 34.503769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651592, 35.387741, 34.493458>,  <32.818596, 35.559998, 34.487270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651592, 35.387741, 34.493458>,  <32.373253, 35.100651, 34.503769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651592, 35.387741, 34.493458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561913, -0.566429, -0.602836,
		-0.447274, 0.404996, -0.797449,
		0.695844, 0.717730, -0.025776,
		32.860344, 35.603062, 34.485725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607971, 35.213013, 33.775620>,  <32.373253, 35.100651, 34.503769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607971, 35.213013, 33.775620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915852, 35.338898, 33.997795>,  <33.100582, 35.414429, 34.131100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915852, 35.338898, 33.997795>,  <32.607971, 35.213013, 33.775620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915852, 35.338898, 33.997795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628722, -0.524622, -0.574004,
		0.110750, 0.791030, -0.601669,
		0.769703, 0.314712, 0.555440,
		33.146763, 35.433311, 34.164429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077797, 35.232170, 33.291317>,  <32.607971, 35.213013, 33.775620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077797, 35.232170, 33.291317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291313, 35.260616, 33.628365>,  <33.419422, 35.277683, 33.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291313, 35.260616, 33.628365>,  <33.077797, 35.232170, 33.291317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291313, 35.260616, 33.628365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744765, -0.511462, -0.428639,
		0.400487, 0.856358, -0.325976,
		0.533793, 0.071111, 0.842620,
		33.451450, 35.281948, 33.881149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813267, 35.225483, 33.129261>,  <33.077797, 35.232170, 33.291317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813267, 35.225483, 33.129261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817268, 35.112728, 33.513020>,  <33.819672, 35.045074, 33.743275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817268, 35.112728, 33.513020>,  <33.813267, 35.225483, 33.129261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817268, 35.112728, 33.513020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653146, -0.724652, -0.219727,
		0.757166, 0.628824, 0.176861,
		0.010007, -0.281886, 0.959396,
		33.820271, 35.028164, 33.800838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620731, 35.102936, 33.358932>,  <33.813267, 35.225483, 33.129261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620731, 35.102936, 33.358932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412521, 34.897133, 33.631500>,  <34.287594, 34.773651, 33.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412521, 34.897133, 33.631500>,  <34.620731, 35.102936, 33.358932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412521, 34.897133, 33.631500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636982, -0.765444, -0.091375,
		0.568601, 0.386488, 0.726168,
		-0.520526, -0.514512, 0.681418,
		34.256363, 34.742779, 33.835926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172630, 34.836163, 33.737816>,  <34.620731, 35.102936, 33.358932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172630, 34.836163, 33.737816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860062, 34.599541, 33.817261>,  <34.672520, 34.457569, 33.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860062, 34.599541, 33.817261>,  <35.172630, 34.836163, 33.737816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860062, 34.599541, 33.817261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575827, -0.806224, -0.135744,
		0.240426, 0.008293, 0.970632,
		-0.781421, -0.591552, 0.198613,
		34.625637, 34.422073, 33.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422569, 34.328495, 34.221455>,  <35.172630, 34.836163, 33.737816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422569, 34.328495, 34.221455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094238, 34.192326, 34.037994>,  <34.897240, 34.110626, 33.927917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094238, 34.192326, 34.037994>,  <35.422569, 34.328495, 34.221455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094238, 34.192326, 34.037994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467420, -0.861845, -0.196832,
		-0.328282, -0.375948, 0.866542,
		-0.820823, -0.340422, -0.458653,
		34.847992, 34.090199, 33.900398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612972, 33.562748, 34.179417>,  <35.422569, 34.328495, 34.221455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612972, 33.562748, 34.179417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310234, 33.627365, 33.926094>,  <35.128590, 33.666134, 33.774101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310234, 33.627365, 33.926094>,  <35.612972, 33.562748, 34.179417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310234, 33.627365, 33.926094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416604, -0.627381, -0.657901,
		-0.503605, -0.761772, 0.407535,
		-0.756850, 0.161541, -0.633310,
		35.083179, 33.675827, 33.736099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250813, 32.983315, 34.060986>,  <35.612972, 33.562748, 34.179417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250813, 32.983315, 34.060986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217243, 33.223721, 33.743061>,  <35.197102, 33.367966, 33.552307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217243, 33.223721, 33.743061>,  <35.250813, 32.983315, 34.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217243, 33.223721, 33.743061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398837, -0.710693, -0.579521,
		-0.913173, -0.365638, -0.180063,
		-0.083926, 0.601019, -0.794816,
		35.192066, 33.404026, 33.504616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315247, 32.498405, 33.505543>,  <35.250813, 32.983315, 34.060986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315247, 32.498405, 33.505543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353680, 32.858128, 33.334888>,  <35.376740, 33.073959, 33.232494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353680, 32.858128, 33.334888>,  <35.315247, 32.498405, 33.505543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353680, 32.858128, 33.334888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265851, -0.436231, -0.859666,
		-0.959214, -0.030825, -0.280994,
		0.096079, 0.899306, -0.426634,
		35.382504, 33.127918, 33.206898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108715, 32.348083, 32.884319>,  <35.315247, 32.498405, 33.505543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108715, 32.348083, 32.884319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292809, 32.697533, 32.821106>,  <35.403263, 32.907200, 32.783176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292809, 32.697533, 32.821106>,  <35.108715, 32.348083, 32.884319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292809, 32.697533, 32.821106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304769, -0.322659, -0.896107,
		-0.833847, 0.364255, -0.414751,
		0.460234, 0.873619, -0.158035,
		35.430878, 32.959618, 32.773697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821373, 32.733231, 32.231190>,  <35.108715, 32.348083, 32.884319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821373, 32.733231, 32.231190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203964, 32.817734, 32.311710>,  <35.433517, 32.868435, 32.360023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203964, 32.817734, 32.311710>,  <34.821373, 32.733231, 32.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203964, 32.817734, 32.311710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268845, -0.369734, -0.889392,
		-0.113463, 0.904802, -0.410438,
		0.956477, 0.211258, 0.201300,
		35.490906, 32.881111, 32.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077610, 32.961472, 31.621851>,  <34.821373, 32.733231, 32.231190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077610, 32.961472, 31.621851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408669, 32.879833, 31.830980>,  <35.607304, 32.830849, 31.956459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408669, 32.879833, 31.830980>,  <35.077610, 32.961472, 31.621851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408669, 32.879833, 31.830980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445649, -0.327282, -0.833237,
		0.341170, 0.922622, -0.179919,
		0.827647, -0.204095, 0.522825,
		35.656963, 32.818604, 31.987827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547337, 33.221401, 31.174898>,  <35.077610, 32.961472, 31.621851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547337, 33.221401, 31.174898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725796, 32.960556, 31.420074>,  <35.832870, 32.804050, 31.567181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725796, 32.960556, 31.420074>,  <35.547337, 33.221401, 31.174898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725796, 32.960556, 31.420074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440938, -0.435817, -0.784625,
		0.778795, 0.620331, 0.093101,
		0.446153, -0.652114, 0.612940,
		35.859642, 32.764923, 31.603956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278736, 33.228199, 30.974302>,  <35.547337, 33.221401, 31.174898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278736, 33.228199, 30.974302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207291, 32.884003, 31.165155>,  <36.164421, 32.677486, 31.279667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207291, 32.884003, 31.165155>,  <36.278736, 33.228199, 30.974302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207291, 32.884003, 31.165155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, -0.509400, -0.799895,
		0.931352, 0.008521, 0.364021,
		-0.178616, -0.860488, 0.477134,
		36.153706, 32.625854, 31.308296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887569, 32.858536, 30.841599>,  <36.278736, 33.228199, 30.974302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887569, 32.858536, 30.841599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609421, 32.586418, 30.934258>,  <36.442532, 32.423149, 30.989853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609421, 32.586418, 30.934258>,  <36.887569, 32.858536, 30.841599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609421, 32.586418, 30.934258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280635, -0.553796, -0.783935,
		0.661590, -0.480118, 0.576008,
		-0.695372, -0.680292, 0.231648,
		36.400810, 32.382332, 31.003752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184315, 32.269680, 30.567392>,  <36.887569, 32.858536, 30.841599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184315, 32.269680, 30.567392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796024, 32.180515, 30.603188>,  <36.563049, 32.127018, 30.624664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796024, 32.180515, 30.603188>,  <37.184315, 32.269680, 30.567392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796024, 32.180515, 30.603188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094476, -0.696843, -0.710974,
		0.220841, -0.681704, 0.697501,
		-0.970723, -0.222910, 0.089487,
		36.504807, 32.113644, 30.630033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159763, 31.589745, 30.516186>,  <37.184315, 32.269680, 30.567392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159763, 31.589745, 30.516186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776325, 31.667484, 30.432936>,  <36.546261, 31.714128, 30.382986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776325, 31.667484, 30.432936>,  <37.159763, 31.589745, 30.516186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776325, 31.667484, 30.432936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000260, -0.730281, -0.683146,
		-0.284758, -0.654918, 0.699997,
		-0.958599, 0.194349, -0.208123,
		36.488747, 31.725790, 30.370499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891579, 30.913622, 30.407795>,  <37.159763, 31.589745, 30.516186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891579, 30.913622, 30.407795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626022, 31.168091, 30.250549>,  <36.466690, 31.320772, 30.156202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626022, 31.168091, 30.250549>,  <36.891579, 30.913622, 30.407795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626022, 31.168091, 30.250549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204436, -0.660039, -0.722880,
		-0.719347, -0.399544, 0.568247,
		-0.663887, 0.636171, -0.393116,
		36.426857, 31.358942, 30.132616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335728, 30.580814, 30.330856>,  <36.891579, 30.913622, 30.407795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335728, 30.580814, 30.330856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295887, 30.889746, 30.079910>,  <36.271980, 31.075106, 29.929342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295887, 30.889746, 30.079910>,  <36.335728, 30.580814, 30.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295887, 30.889746, 30.079910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335276, -0.619680, -0.709639,
		-0.936840, 0.139656, 0.320668,
		-0.099606, 0.772330, -0.627364,
		36.266006, 31.121445, 29.891701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796261, 30.364813, 30.019381>,  <36.335728, 30.580814, 30.330856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796261, 30.364813, 30.019381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890705, 30.654848, 29.760616>,  <35.947372, 30.828869, 29.605358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890705, 30.654848, 29.760616>,  <35.796261, 30.364813, 30.019381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890705, 30.654848, 29.760616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351882, -0.556753, -0.752466,
		-0.905776, 0.405303, 0.123690,
		0.236112, 0.725090, -0.646913,
		35.961540, 30.872375, 29.566542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249290, 30.325218, 29.591667>,  <35.796261, 30.364813, 30.019381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249290, 30.325218, 29.591667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549431, 30.495914, 29.389730>,  <35.729515, 30.598331, 29.268568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549431, 30.495914, 29.389730>,  <35.249290, 30.325218, 29.591667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549431, 30.495914, 29.389730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154261, -0.629586, -0.761463,
		-0.642789, 0.649241, -0.406580,
		0.750350, 0.426741, -0.504843,
		35.774536, 30.623938, 29.238277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023376, 30.319447, 28.995770>,  <35.249290, 30.325218, 29.591667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023376, 30.319447, 28.995770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421783, 30.329304, 28.961515>,  <35.660828, 30.335218, 28.940964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421783, 30.329304, 28.961515>,  <35.023376, 30.319447, 28.995770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421783, 30.329304, 28.961515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044549, -0.694581, -0.718034,
		-0.077173, 0.718992, -0.690720,
		0.996022, 0.024642, -0.085633,
		35.720589, 30.336697, 28.935825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192204, 30.243881, 28.280291>,  <35.023376, 30.319447, 28.995770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192204, 30.243881, 28.280291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549267, 30.164610, 28.442223>,  <35.763504, 30.117046, 28.539383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549267, 30.164610, 28.442223>,  <35.192204, 30.243881, 28.280291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549267, 30.164610, 28.442223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165633, -0.691091, -0.703533,
		0.419201, 0.695067, -0.584083,
		0.892657, -0.198178, 0.404832,
		35.817062, 30.105156, 28.563671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657063, 30.258205, 27.729935>,  <35.192204, 30.243881, 28.280291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657063, 30.258205, 27.729935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846371, 30.058880, 28.020506>,  <35.959957, 29.939285, 28.194849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846371, 30.058880, 28.020506>,  <35.657063, 30.258205, 27.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846371, 30.058880, 28.020506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311769, -0.676509, -0.667185,
		0.823903, 0.542236, -0.164812,
		0.473269, -0.498313, 0.726430,
		35.988350, 29.909386, 28.238436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370083, 30.101603, 27.509581>,  <35.657063, 30.258205, 27.729935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370083, 30.101603, 27.509581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238647, 29.838064, 27.780270>,  <36.159786, 29.679941, 27.942682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238647, 29.838064, 27.780270>,  <36.370083, 30.101603, 27.509581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238647, 29.838064, 27.780270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160719, -0.745063, -0.647341,
		0.930698, -0.103947, 0.350708,
		-0.328588, -0.658844, 0.676723,
		36.140072, 29.640411, 27.983286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885181, 29.603901, 27.369493>,  <36.370083, 30.101603, 27.509581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885181, 29.603901, 27.369493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587021, 29.431971, 27.573305>,  <36.408123, 29.328812, 27.695593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587021, 29.431971, 27.573305>,  <36.885181, 29.603901, 27.369493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587021, 29.431971, 27.573305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119950, -0.838365, -0.531748,
		0.655731, -0.335249, 0.676480,
		-0.745405, -0.429827, 0.509529,
		36.363400, 29.303022, 27.726164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115524, 28.964968, 27.476898>,  <36.885181, 29.603901, 27.369493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115524, 28.964968, 27.476898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718987, 28.927059, 27.513227>,  <36.481064, 28.904314, 27.535025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718987, 28.927059, 27.513227>,  <37.115524, 28.964968, 27.476898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718987, 28.927059, 27.513227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027902, -0.828237, -0.559683,
		0.128267, -0.552306, 0.823715,
		-0.991347, -0.094772, 0.090825,
		36.421581, 28.898628, 27.540476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964218, 28.295639, 27.564110>,  <37.115524, 28.964968, 27.476898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964218, 28.295639, 27.564110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623062, 28.453377, 27.427250>,  <36.418369, 28.548019, 27.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623062, 28.453377, 27.427250>,  <36.964218, 28.295639, 27.564110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623062, 28.453377, 27.427250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058834, -0.723775, -0.687524,
		-0.518758, -0.566255, 0.640504,
		-0.852894, 0.394342, -0.342149,
		36.367195, 28.571680, 27.324606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443169, 27.703318, 27.408867>,  <36.964218, 28.295639, 27.564110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443169, 27.703318, 27.408867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306660, 28.013733, 27.196716>,  <36.224754, 28.199982, 27.069426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306660, 28.013733, 27.196716>,  <36.443169, 27.703318, 27.408867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306660, 28.013733, 27.196716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078012, -0.585689, -0.806773,
		-0.936720, -0.233956, 0.260421,
		-0.341275, 0.776037, -0.530375,
		36.204277, 28.246544, 27.037603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992317, 27.391308, 26.966682>,  <36.443169, 27.703318, 27.408867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992317, 27.391308, 26.966682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079720, 27.749121, 26.810698>,  <36.132160, 27.963808, 26.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079720, 27.749121, 26.810698>,  <35.992317, 27.391308, 26.966682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079720, 27.749121, 26.810698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128003, -0.422441, -0.897307,
		-0.967404, 0.146149, -0.206808,
		0.218505, 0.894530, -0.389963,
		36.145271, 28.017479, 26.693708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499809, 27.438768, 26.435444>,  <35.992317, 27.391308, 26.966682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499809, 27.438768, 26.435444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810978, 27.677486, 26.356783>,  <35.997681, 27.820717, 26.309586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810978, 27.677486, 26.356783>,  <35.499809, 27.438768, 26.435444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810978, 27.677486, 26.356783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073836, -0.397614, -0.914577,
		-0.624008, 0.696950, -0.353377,
		0.777922, 0.596796, -0.196654,
		36.044353, 27.856525, 26.297787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520592, 27.462320, 25.705412>,  <35.499809, 27.438768, 26.435444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520592, 27.462320, 25.705412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862003, 27.663380, 25.760296>,  <36.066853, 27.784016, 25.793226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862003, 27.663380, 25.760296>,  <35.520592, 27.462320, 25.705412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862003, 27.663380, 25.760296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278185, -0.216951, -0.935706,
		-0.440562, 0.836826, -0.325004,
		0.853533, 0.502648, 0.137212,
		36.118065, 27.814175, 25.801460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732765, 27.934446, 25.074610>,  <35.520592, 27.462320, 25.705412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732765, 27.934446, 25.074610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081074, 27.861761, 25.257362>,  <36.290058, 27.818150, 25.367014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081074, 27.861761, 25.257362>,  <35.732765, 27.934446, 25.074610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081074, 27.861761, 25.257362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429832, -0.169877, -0.886784,
		0.238753, 0.968567, -0.069818,
		0.870771, -0.181713, 0.456879,
		36.342304, 27.807247, 25.394426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176189, 28.283150, 24.695017>,  <35.732765, 27.934446, 25.074610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176189, 28.283150, 24.695017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378983, 28.005405, 24.899305>,  <36.500660, 27.838758, 25.021877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378983, 28.005405, 24.899305>,  <36.176189, 28.283150, 24.695017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378983, 28.005405, 24.899305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414736, -0.322910, -0.850719,
		0.755621, 0.643114, 0.124266,
		0.506983, -0.694359, 0.510720,
		36.531078, 27.797098, 25.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825974, 28.293043, 24.300468>,  <36.176189, 28.283150, 24.695017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825974, 28.293043, 24.300468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775974, 27.962618, 24.520287>,  <36.745975, 27.764362, 24.652176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775974, 27.962618, 24.520287>,  <36.825974, 28.293043, 24.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775974, 27.962618, 24.520287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238597, -0.562659, -0.791509,
		0.963041, 0.032184, 0.267426,
		-0.124996, -0.826062, 0.549543,
		36.738476, 27.714800, 24.685150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193989, 27.914558, 23.945408>,  <36.825974, 28.293043, 24.300468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193989, 27.914558, 23.945408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006615, 27.614935, 24.132803>,  <36.894188, 27.435162, 24.245239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006615, 27.614935, 24.132803>,  <37.193989, 27.914558, 23.945408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006615, 27.614935, 24.132803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163526, -0.594611, -0.787208,
		0.868231, -0.292149, 0.401029,
		-0.468438, -0.749057, 0.468486,
		36.866085, 27.390217, 24.273348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463215, 27.220549, 23.691290>,  <37.193989, 27.914558, 23.945408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463215, 27.220549, 23.691290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101963, 27.132633, 23.838833>,  <36.885212, 27.079884, 23.927359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101963, 27.132633, 23.838833>,  <37.463215, 27.220549, 23.691290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101963, 27.132633, 23.838833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144880, -0.652692, -0.743641,
		0.404194, -0.725042, 0.557620,
		-0.903126, -0.219787, 0.368859,
		36.831024, 27.066696, 23.949490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373535, 26.632996, 23.553463>,  <37.463215, 27.220549, 23.691290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373535, 26.632996, 23.553463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983276, 26.710438, 23.594706>,  <36.749123, 26.756903, 23.619452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983276, 26.710438, 23.594706>,  <37.373535, 26.632996, 23.553463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983276, 26.710438, 23.594706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197079, -0.567355, -0.799543,
		-0.096299, -0.800391, 0.591693,
		-0.975647, 0.193606, 0.103105,
		36.690582, 26.768520, 23.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052052, 26.005241, 23.373476>,  <37.373535, 26.632996, 23.553463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052052, 26.005241, 23.373476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737953, 26.252600, 23.361021>,  <36.549492, 26.401014, 23.353548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737953, 26.252600, 23.361021>,  <37.052052, 26.005241, 23.373476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737953, 26.252600, 23.361021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397846, -0.542450, -0.739910,
		-0.474446, -0.568628, 0.671985,
		-0.785252, 0.618394, -0.031137,
		36.502377, 26.438118, 23.351679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451515, 25.637712, 23.384960>,  <37.052052, 26.005241, 23.373476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451515, 25.637712, 23.384960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329750, 25.980904, 23.219450>,  <36.256691, 26.186819, 23.120144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329750, 25.980904, 23.219450>,  <36.451515, 25.637712, 23.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329750, 25.980904, 23.219450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480167, -0.513376, -0.711256,
		-0.822664, -0.017831, 0.568249,
		-0.304408, 0.857978, -0.413774,
		36.238426, 26.238297, 23.095318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776554, 25.766687, 23.091106>,  <36.451515, 25.637712, 23.384960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776554, 25.766687, 23.091106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026569, 25.985455, 22.868319>,  <36.176579, 26.116714, 22.734646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026569, 25.985455, 22.868319>,  <35.776554, 25.766687, 23.091106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026569, 25.985455, 22.868319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263508, -0.523801, -0.810059,
		-0.734775, 0.653081, -0.183277,
		0.625035, 0.546916, -0.556968,
		36.214081, 26.149530, 22.701227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295712, 25.961874, 22.672798>,  <35.776554, 25.766687, 23.091106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295712, 25.961874, 22.672798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663475, 26.006870, 22.522051>,  <35.884132, 26.033869, 22.431602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663475, 26.006870, 22.522051>,  <35.295712, 25.961874, 22.672798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663475, 26.006870, 22.522051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322985, -0.330825, -0.886699,
		-0.224425, 0.936963, -0.267831,
		0.919410, 0.112492, -0.376870,
		35.939297, 26.040617, 22.408989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245514, 26.258797, 22.009930>,  <35.295712, 25.961874, 22.672798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245514, 26.258797, 22.009930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628075, 26.164919, 21.940395>,  <35.857609, 26.108593, 21.898674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628075, 26.164919, 21.940395>,  <35.245514, 26.258797, 22.009930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628075, 26.164919, 21.940395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255790, -0.385797, -0.886415,
		0.140971, 0.892233, -0.429008,
		0.956399, -0.234695, -0.173838,
		35.914993, 26.094511, 21.888245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484028, 26.548174, 21.359022>,  <35.245514, 26.258797, 22.009930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484028, 26.548174, 21.359022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 26.229914, 21.444403>,  <35.846848, 26.038958, 21.495630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 26.229914, 21.444403>,  <35.484028, 26.548174, 21.359022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710789, 26.229914, 21.444403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143661, -0.350626, -0.925431,
		0.811160, 0.493967, -0.313075,
		0.566905, -0.795649, 0.213450,
		35.880859, 25.991219, 21.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223789, 26.501541, 21.055614>,  <35.484028, 26.548174, 21.359022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223789, 26.501541, 21.055614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017105, 26.164577, 21.116737>,  <35.893093, 25.962399, 21.153412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017105, 26.164577, 21.116737>,  <36.223789, 26.501541, 21.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017105, 26.164577, 21.116737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021431, -0.165699, -0.985943,
		0.855890, -0.512725, 0.067565,
		-0.516713, -0.842411, 0.152809,
		35.862091, 25.911854, 21.162580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685810, 25.874874, 20.751509>,  <36.223789, 26.501541, 21.055614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685810, 25.874874, 20.751509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085773, 25.874329, 20.746140>,  <37.325752, 25.874001, 20.742918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085773, 25.874329, 20.746140>,  <36.685810, 25.874874, 20.751509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085773, 25.874329, 20.746140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005071, 0.959966, 0.280071,
		0.012504, -0.280114, 0.959885,
		0.999909, -0.001366, -0.013424,
		37.385746, 25.873919, 20.742113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047653, 25.955164, 21.476154>,  <36.685810, 25.874874, 20.751509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047653, 25.955164, 21.476154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271313, 26.081530, 21.169548>,  <37.405510, 26.157349, 20.985584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271313, 26.081530, 21.169548>,  <37.047653, 25.955164, 21.476154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271313, 26.081530, 21.169548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045360, 0.911513, 0.408761,
		0.827823, -0.263329, 0.495345,
		0.559152, 0.315913, -0.766517,
		37.439060, 26.176304, 20.939592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643917, 26.414434, 21.778730>,  <37.047653, 25.955164, 21.476154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643917, 26.414434, 21.778730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608055, 26.515421, 21.393353>,  <37.586536, 26.576014, 21.162127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608055, 26.515421, 21.393353>,  <37.643917, 26.414434, 21.778730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608055, 26.515421, 21.393353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050096, 0.967257, 0.248804,
		0.994712, -0.025959, -0.099367,
		-0.089655, 0.252467, -0.963443,
		37.581158, 26.591162, 21.104319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105473, 26.976664, 21.634199>,  <37.643917, 26.414434, 21.778730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105473, 26.976664, 21.634199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829082, 27.006561, 21.346598>,  <37.663250, 27.024500, 21.174036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829082, 27.006561, 21.346598>,  <38.105473, 26.976664, 21.634199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829082, 27.006561, 21.346598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192512, 0.939693, 0.282695,
		0.696774, 0.333752, -0.634914,
		-0.690974, 0.074746, -0.719005,
		37.621792, 27.028984, 21.130896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093540, 27.622143, 21.523800>,  <38.105473, 26.976664, 21.634199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093540, 27.622143, 21.523800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739830, 27.535486, 21.358335>,  <37.527603, 27.483492, 21.259056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739830, 27.535486, 21.358335>,  <38.093540, 27.622143, 21.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739830, 27.535486, 21.358335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315298, 0.930442, 0.186719,
		0.344438, 0.295539, -0.891078,
		-0.884279, -0.216641, -0.413662,
		37.474545, 27.470493, 21.234238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064434, 28.034712, 20.969629>,  <38.093540, 27.622143, 21.523800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064434, 28.034712, 20.969629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716621, 27.941509, 21.143812>,  <37.507935, 27.885588, 21.248322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716621, 27.941509, 21.143812>,  <38.064434, 28.034712, 20.969629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716621, 27.941509, 21.143812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038560, 0.911049, 0.410491,
		-0.492369, 0.340144, -0.801171,
		-0.869532, -0.233007, 0.435457,
		37.455761, 27.871607, 21.274448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622841, 28.659222, 20.973341>,  <38.064434, 28.034712, 20.969629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622841, 28.659222, 20.973341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449104, 28.428518, 21.250092>,  <37.344860, 28.290096, 21.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449104, 28.428518, 21.250092>,  <37.622841, 28.659222, 20.973341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449104, 28.428518, 21.250092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258638, 0.815629, 0.517549,
		-0.862815, 0.045849, -0.503436,
		-0.434346, -0.576756, 0.691878,
		37.318802, 28.255491, 21.457655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857063, 28.863716, 20.988358>,  <37.622841, 28.659222, 20.973341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857063, 28.863716, 20.988358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965218, 28.703987, 21.338770>,  <37.030109, 28.608149, 21.549017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965218, 28.703987, 21.338770>,  <36.857063, 28.863716, 20.988358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965218, 28.703987, 21.338770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289920, 0.833916, 0.469607,
		-0.918064, -0.380952, 0.109703,
		0.270381, -0.399324, 0.876033,
		37.046333, 28.584190, 21.601580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261021, 28.924381, 21.454809>,  <36.857063, 28.863716, 20.988358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261021, 28.924381, 21.454809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576126, 28.874155, 21.696026>,  <36.765190, 28.844019, 21.840755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576126, 28.874155, 21.696026>,  <36.261021, 28.924381, 21.454809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576126, 28.874155, 21.696026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287707, 0.790647, 0.540465,
		-0.544657, -0.599258, 0.586718,
		0.787765, -0.125565, 0.603042,
		36.812454, 28.836485, 21.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018497, 29.057564, 22.117249>,  <36.261021, 28.924381, 21.454809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018497, 29.057564, 22.117249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412373, 29.088934, 22.179531>,  <36.648697, 29.107756, 22.216902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412373, 29.088934, 22.179531>,  <36.018497, 29.057564, 22.117249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412373, 29.088934, 22.179531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160570, 0.755872, 0.634725,
		-0.067917, -0.650006, 0.756888,
		0.984685, 0.078425, 0.155708,
		36.707779, 29.112461, 22.226244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118835, 29.035395, 22.810881>,  <36.018497, 29.057564, 22.117249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118835, 29.035395, 22.810881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437023, 29.229366, 22.665514>,  <36.627937, 29.345749, 22.578295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437023, 29.229366, 22.665514>,  <36.118835, 29.035395, 22.810881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437023, 29.229366, 22.665514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114975, 0.709583, 0.695179,
		0.594986, -0.511210, 0.620207,
		0.795470, 0.484930, -0.363415,
		36.675663, 29.374846, 22.556490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462925, 29.213366, 23.372795>,  <36.118835, 29.035395, 22.810881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462925, 29.213366, 23.372795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655636, 29.454700, 23.118591>,  <36.771263, 29.599503, 22.966068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655636, 29.454700, 23.118591>,  <36.462925, 29.213366, 23.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655636, 29.454700, 23.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104876, 0.680313, 0.725379,
		0.869996, -0.416120, 0.264483,
		0.481776, 0.603339, -0.635511,
		36.800167, 29.635702, 22.927938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079311, 29.481674, 23.675417>,  <36.462925, 29.213366, 23.372795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079311, 29.481674, 23.675417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961494, 29.742115, 23.395613>,  <36.890804, 29.898380, 23.227730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961494, 29.742115, 23.395613>,  <37.079311, 29.481674, 23.675417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961494, 29.742115, 23.395613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133483, 0.752835, 0.644532,
		0.946271, 0.096467, -0.308650,
		-0.294538, 0.651102, -0.699510,
		36.873135, 29.937445, 23.185760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604301, 30.027384, 23.718636>,  <37.079311, 29.481674, 23.675417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604301, 30.027384, 23.718636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302082, 30.195902, 23.517971>,  <37.120750, 30.297012, 23.397572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302082, 30.195902, 23.517971>,  <37.604301, 30.027384, 23.718636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302082, 30.195902, 23.517971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000726, 0.766319, 0.642460,
		0.655098, 0.485043, -0.579293,
		-0.755544, 0.421295, -0.501661,
		37.075420, 30.322290, 23.367474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857815, 30.719791, 23.582598>,  <37.604301, 30.027384, 23.718636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857815, 30.719791, 23.582598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458141, 30.728067, 23.568691>,  <37.218338, 30.733034, 23.560347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458141, 30.728067, 23.568691>,  <37.857815, 30.719791, 23.582598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458141, 30.728067, 23.568691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008471, 0.733288, 0.679866,
		0.039561, 0.679603, -0.732512,
		-0.999181, 0.020691, -0.034767,
		37.158386, 30.734274, 23.558262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678024, 31.357122, 23.720190>,  <37.857815, 30.719791, 23.582598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678024, 31.357122, 23.720190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305431, 31.217829, 23.762295>,  <37.081875, 31.134253, 23.787558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305431, 31.217829, 23.762295>,  <37.678024, 31.357122, 23.720190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305431, 31.217829, 23.762295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153730, 0.639019, 0.753672,
		-0.329718, 0.685848, -0.648767,
		-0.931479, -0.348234, 0.105261,
		37.025990, 31.113359, 23.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214745, 31.988289, 23.702738>,  <37.678024, 31.357122, 23.720190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214745, 31.988289, 23.702738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971176, 31.713802, 23.861897>,  <36.825035, 31.549110, 23.957392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971176, 31.713802, 23.861897>,  <37.214745, 31.988289, 23.702738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971176, 31.713802, 23.861897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228825, 0.632251, 0.740201,
		-0.759509, 0.359675, -0.542015,
		-0.608922, -0.686216, 0.397897,
		36.788498, 31.507938, 23.981266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555553, 32.295208, 23.776749>,  <37.214745, 31.988289, 23.702738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555553, 32.295208, 23.776749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576256, 32.001617, 24.047628>,  <36.588676, 31.825462, 24.210157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576256, 32.001617, 24.047628>,  <36.555553, 32.295208, 23.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576256, 32.001617, 24.047628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461088, 0.583944, 0.668137,
		-0.885844, -0.346828, -0.308206,
		0.051754, -0.733976, 0.677201,
		36.591782, 31.781425, 24.250790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870586, 32.295033, 24.089556>,  <36.555553, 32.295208, 23.776749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870586, 32.295033, 24.089556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.050018, 24.356342>,  <36.142082, 31.903011, 24.516415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.050018, 24.356342>,  <35.870586, 32.295033, 24.089556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040272, 32.050018, 24.356342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535003, 0.424715, 0.730335,
		-0.730624, -0.666649, -0.147535,
		0.424217, -0.612533, 0.666966,
		36.167538, 31.866259, 24.556433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284267, 31.866610, 24.531118>,  <35.870586, 32.295033, 24.089556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284267, 31.866610, 24.531118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631268, 31.902937, 24.726749>,  <35.839466, 31.924734, 24.844128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631268, 31.902937, 24.726749>,  <35.284267, 31.866610, 24.531118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631268, 31.902937, 24.726749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483695, 0.383532, 0.786729,
		-0.116129, -0.919051, 0.376642,
		0.867498, 0.090818, 0.489080,
		35.891518, 31.930183, 24.873474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091633, 31.811583, 25.260641>,  <35.284267, 31.866610, 24.531118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091633, 31.811583, 25.260641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461109, 31.963726, 25.279057>,  <35.682796, 32.055012, 25.290106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461109, 31.963726, 25.279057>,  <35.091633, 31.811583, 25.260641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461109, 31.963726, 25.279057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279323, 0.586289, 0.760424,
		0.262242, -0.715257, 0.647793,
		0.923692, 0.380359, 0.046038,
		35.738216, 32.077835, 25.292868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343529, 31.681131, 25.966917>,  <35.091633, 31.811583, 25.260641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343529, 31.681131, 25.966917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537777, 31.996315, 25.815498>,  <35.654324, 32.185425, 25.724648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537777, 31.996315, 25.815498>,  <35.343529, 31.681131, 25.966917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537777, 31.996315, 25.815498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290928, 0.554027, 0.780009,
		0.824339, -0.268657, 0.498285,
		0.485618, 0.787957, -0.378546,
		35.683464, 32.232704, 25.701935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673634, 31.974537, 26.494560>,  <35.343529, 31.681131, 25.966917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673634, 31.974537, 26.494560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671490, 32.284294, 26.241488>,  <35.670204, 32.470150, 26.089643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671490, 32.284294, 26.241488>,  <35.673634, 31.974537, 26.494560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671490, 32.284294, 26.241488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397455, 0.578922, 0.711954,
		0.917606, 0.255276, 0.304686,
		-0.005355, 0.774392, -0.632683,
		35.669884, 32.516613, 26.051683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009373, 32.479294, 26.802605>,  <35.673634, 31.974537, 26.494560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009373, 32.479294, 26.802605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756966, 32.648506, 26.542496>,  <35.605522, 32.750034, 26.386431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756966, 32.648506, 26.542496>,  <36.009373, 32.479294, 26.802605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756966, 32.648506, 26.542496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339567, 0.603046, 0.721824,
		0.697501, 0.676297, -0.236886,
		-0.631020, 0.423034, -0.650274,
		35.567661, 32.775417, 26.347414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241341, 33.130131, 26.920338>,  <36.009373, 32.479294, 26.802605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241341, 33.130131, 26.920338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880150, 33.136116, 26.748564>,  <35.663437, 33.139706, 26.645500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880150, 33.136116, 26.748564>,  <36.241341, 33.130131, 26.920338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880150, 33.136116, 26.748564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290685, 0.714729, 0.636132,
		0.316446, 0.699241, -0.641033,
		-0.902975, 0.014962, -0.429432,
		35.609257, 33.140606, 26.619734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045235, 33.822445, 26.880066>,  <36.241341, 33.130131, 26.920338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045235, 33.822445, 26.880066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706909, 33.611172, 26.850096>,  <35.503914, 33.484406, 26.832113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706909, 33.611172, 26.850096>,  <36.045235, 33.822445, 26.880066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706909, 33.611172, 26.850096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404603, 0.543596, 0.735390,
		-0.347693, 0.652321, -0.673488,
		-0.845817, -0.528186, -0.074927,
		35.453163, 33.452717, 26.827618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565281, 34.310436, 26.926468>,  <36.045235, 33.822445, 26.880066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565281, 34.310436, 26.926468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349247, 33.984158, 27.009363>,  <35.219627, 33.788391, 27.059101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349247, 33.984158, 27.009363>,  <35.565281, 34.310436, 26.926468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349247, 33.984158, 27.009363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373744, 0.453090, 0.809336,
		-0.754069, 0.359658, -0.549569,
		-0.540089, -0.815693, 0.207240,
		35.187222, 33.739449, 27.071535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765644, 34.518288, 27.023603>,  <35.565281, 34.310436, 26.926468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765644, 34.518288, 27.023603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845490, 34.180893, 27.223076>,  <34.893398, 33.978455, 27.342760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845490, 34.180893, 27.223076>,  <34.765644, 34.518288, 27.023603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845490, 34.180893, 27.223076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404944, 0.392423, 0.825848,
		-0.892286, -0.366792, -0.263230,
		0.199617, -0.843486, 0.498683,
		34.905376, 33.927849, 27.372681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466442, 34.711021, 27.611549>,  <34.765644, 34.518288, 27.023603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466442, 34.711021, 27.611549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614868, 34.357357, 27.725082>,  <34.703926, 34.145157, 27.793203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614868, 34.357357, 27.725082>,  <34.466442, 34.711021, 27.611549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614868, 34.357357, 27.725082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343855, 0.153101, 0.926458,
		-0.862596, -0.441376, -0.247214,
		0.371068, -0.884165, 0.283833,
		34.726189, 34.092106, 27.810232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957973, 34.291702, 27.917351>,  <34.466442, 34.711021, 27.611549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957973, 34.291702, 27.917351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307438, 34.174915, 28.073025>,  <34.517117, 34.104843, 28.166430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307438, 34.174915, 28.073025>,  <33.957973, 34.291702, 27.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307438, 34.174915, 28.073025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312654, 0.275960, 0.908897,
		-0.372771, -0.915750, 0.149811,
		0.873664, -0.291972, 0.389183,
		34.569538, 34.087322, 28.189779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743382, 34.145016, 28.498568>,  <33.957973, 34.291702, 27.917351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743382, 34.145016, 28.498568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138367, 34.159859, 28.559944>,  <34.375359, 34.168766, 28.596769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138367, 34.159859, 28.559944>,  <33.743382, 34.145016, 28.498568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138367, 34.159859, 28.559944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155906, 0.381855, 0.910977,
		-0.024790, -0.923477, 0.382852,
		0.987461, 0.037106, 0.153442,
		34.434605, 34.170990, 28.605976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832478, 33.817638, 29.195322>,  <33.743382, 34.145016, 28.498568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832478, 33.817638, 29.195322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168530, 34.016163, 29.107822>,  <34.370163, 34.135277, 29.055323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168530, 34.016163, 29.107822>,  <33.832478, 33.817638, 29.195322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168530, 34.016163, 29.107822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200350, 0.090812, 0.975507,
		0.504019, -0.863383, -0.023142,
		0.840134, 0.496310, -0.218750,
		34.420570, 34.165054, 29.042198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293144, 33.571003, 29.677761>,  <33.832478, 33.817638, 29.195322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293144, 33.571003, 29.677761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412590, 33.927025, 29.539991>,  <34.484257, 34.140640, 29.457329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412590, 33.927025, 29.539991>,  <34.293144, 33.571003, 29.677761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412590, 33.927025, 29.539991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062128, 0.341995, 0.937646,
		0.952349, -0.301393, 0.046828,
		0.298615, 0.890057, -0.344423,
		34.502174, 34.194042, 29.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775047, 33.734589, 30.156179>,  <34.293144, 33.571003, 29.677761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775047, 33.734589, 30.156179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682205, 34.062832, 29.947285>,  <34.626499, 34.259777, 29.821947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682205, 34.062832, 29.947285>,  <34.775047, 33.734589, 30.156179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682205, 34.062832, 29.947285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081323, 0.551392, 0.830273,
		0.969285, 0.150239, -0.194715,
		-0.232104, 0.820606, -0.522238,
		34.612576, 34.309013, 29.790613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364441, 34.219303, 30.312433>,  <34.775047, 33.734589, 30.156179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364441, 34.219303, 30.312433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062466, 34.446236, 30.180857>,  <34.881279, 34.582394, 30.101912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062466, 34.446236, 30.180857>,  <35.364441, 34.219303, 30.312433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062466, 34.446236, 30.180857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005318, 0.496279, 0.868147,
		0.655769, 0.657150, -0.371645,
		-0.754943, 0.567328, -0.328939,
		34.835983, 34.616432, 30.082174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509293, 34.954113, 30.441774>,  <35.364441, 34.219303, 30.312433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509293, 34.954113, 30.441774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111164, 34.949547, 30.403385>,  <34.872288, 34.946808, 30.380352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111164, 34.949547, 30.403385>,  <35.509293, 34.954113, 30.441774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111164, 34.949547, 30.403385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080844, 0.642508, 0.762002,
		0.052966, 0.766194, -0.640423,
		-0.995318, -0.011414, -0.095973,
		34.812569, 34.946121, 30.374594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185165, 35.693054, 30.449812>,  <35.509293, 34.954113, 30.441774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185165, 35.693054, 30.449812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913105, 35.423141, 30.564407>,  <34.749870, 35.261196, 30.633165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913105, 35.423141, 30.564407>,  <35.185165, 35.693054, 30.449812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913105, 35.423141, 30.564407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215809, 0.557788, 0.801436,
		-0.700591, 0.483267, -0.525001,
		-0.680146, -0.674778, 0.286488,
		34.709061, 35.220707, 30.650354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579273, 36.187820, 30.681370>,  <35.185165, 35.693054, 30.449812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579273, 36.187820, 30.681370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456390, 35.827614, 30.804453>,  <34.382660, 35.611488, 30.878304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456390, 35.827614, 30.804453>,  <34.579273, 36.187820, 30.681370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456390, 35.827614, 30.804453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509435, 0.428734, 0.746099,
		-0.803803, 0.072450, -0.590467,
		-0.307208, -0.900521, 0.307709,
		34.364227, 35.557457, 30.896765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844551, 36.219307, 30.670105>,  <34.579273, 36.187820, 30.681370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844551, 36.219307, 30.670105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989349, 35.967789, 30.945372>,  <34.076229, 35.816879, 31.110531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989349, 35.967789, 30.945372>,  <33.844551, 36.219307, 30.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989349, 35.967789, 30.945372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452237, 0.527074, 0.719497,
		-0.815131, -0.571671, -0.093565,
		0.362000, -0.628797, 0.688165,
		34.097950, 35.779148, 31.151821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329910, 36.115128, 31.125216>,  <33.844551, 36.219307, 30.670105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329910, 36.115128, 31.125216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641861, 36.000717, 31.347918>,  <33.829033, 35.932072, 31.481539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641861, 36.000717, 31.347918>,  <33.329910, 36.115128, 31.125216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641861, 36.000717, 31.347918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406098, 0.445650, 0.797797,
		-0.476311, -0.848282, 0.231397,
		0.779879, -0.286030, 0.556754,
		33.875824, 35.914909, 31.514944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010265, 35.993858, 31.815126>,  <33.329910, 36.115128, 31.125216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010265, 35.993858, 31.815126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401951, 36.038822, 31.882668>,  <33.636963, 36.065800, 31.923193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401951, 36.038822, 31.882668>,  <33.010265, 35.993858, 31.815126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401951, 36.038822, 31.882668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202846, 0.542432, 0.815243,
		0.000045, -0.832546, 0.553956,
		0.979211, 0.112404, 0.168854,
		33.695713, 36.072544, 31.933323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102821, 35.911560, 32.533932>,  <33.010265, 35.993858, 31.815126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102821, 35.911560, 32.533932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440201, 36.108150, 32.447178>,  <33.642628, 36.226105, 32.395126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440201, 36.108150, 32.447178>,  <33.102821, 35.911560, 32.533932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440201, 36.108150, 32.447178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117671, 0.562952, 0.818070,
		0.524154, -0.664485, 0.532657,
		0.843455, 0.491473, -0.216883,
		33.693237, 36.255592, 32.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377022, 36.163918, 33.241772>,  <33.102821, 35.911560, 32.533932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377022, 36.163918, 33.241772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552414, 36.394623, 32.966068>,  <33.657650, 36.533047, 32.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552414, 36.394623, 32.966068>,  <33.377022, 36.163918, 33.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552414, 36.394623, 32.966068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023050, 0.759448, 0.650159,
		0.898445, -0.300969, 0.319709,
		0.438480, 0.576764, -0.689260,
		33.683956, 36.567654, 32.759289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985874, 36.423317, 33.460541>,  <33.377022, 36.163918, 33.241772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985874, 36.423317, 33.460541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894085, 36.680042, 33.167850>,  <33.839012, 36.834076, 32.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894085, 36.680042, 33.167850>,  <33.985874, 36.423317, 33.460541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894085, 36.680042, 33.167850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084239, 0.762059, 0.642004,
		0.969663, 0.085683, -0.228938,
		-0.229474, 0.641813, -0.731723,
		33.825241, 36.872585, 32.948334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574444, 36.900879, 33.586082>,  <33.985874, 36.423317, 33.460541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574444, 36.900879, 33.586082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283104, 37.075726, 33.375015>,  <34.108299, 37.180634, 33.248375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283104, 37.075726, 33.375015>,  <34.574444, 36.900879, 33.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283104, 37.075726, 33.375015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017979, 0.782012, 0.623003,
		0.684972, 0.444276, -0.577436,
		-0.728348, 0.437121, -0.527669,
		34.064598, 37.206863, 33.216713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341446, 36.480907, 33.497238>,  <34.574444, 36.900879, 33.586082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341446, 36.480907, 33.497238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725216, 36.526569, 33.600372>,  <35.955479, 36.553967, 33.662254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725216, 36.526569, 33.600372>,  <35.341446, 36.480907, 33.497238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725216, 36.526569, 33.600372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223541, 0.249417, -0.942242,
		-0.171872, 0.961644, 0.213777,
		0.959421, 0.114157, 0.257835,
		36.013042, 36.560818, 33.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626991, 37.066078, 33.070965>,  <35.341446, 36.480907, 33.497238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626991, 37.066078, 33.070965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946564, 36.863182, 33.200218>,  <36.138306, 36.741444, 33.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946564, 36.863182, 33.200218>,  <35.626991, 37.066078, 33.070965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946564, 36.863182, 33.200218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384427, 0.017512, -0.922990,
		0.462519, 0.861627, 0.208987,
		0.798932, -0.507240, 0.323133,
		36.186245, 36.711010, 33.297157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172604, 37.446854, 32.833630>,  <35.626991, 37.066078, 33.070965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172604, 37.446854, 32.833630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317196, 37.084225, 32.920765>,  <36.403950, 36.866646, 32.973045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317196, 37.084225, 32.920765>,  <36.172604, 37.446854, 32.833630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317196, 37.084225, 32.920765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393209, -0.063613, -0.917246,
		0.845411, 0.417220, 0.333479,
		0.361480, -0.906577, 0.217834,
		36.425640, 36.812252, 32.986115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607765, 37.390335, 32.448761>,  <36.172604, 37.446854, 32.833630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607765, 37.390335, 32.448761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579922, 37.004280, 32.549686>,  <36.563217, 36.772648, 32.610241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579922, 37.004280, 32.549686>,  <36.607765, 37.390335, 32.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579922, 37.004280, 32.549686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460674, -0.255441, -0.850017,
		0.884836, 0.057065, 0.462395,
		-0.069609, -0.965139, 0.252312,
		36.559040, 36.714737, 32.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316269, 37.066311, 32.398300>,  <36.607765, 37.390335, 32.448761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316269, 37.066311, 32.398300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040134, 36.779221, 32.361843>,  <36.874454, 36.606968, 32.339970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040134, 36.779221, 32.361843>,  <37.316269, 37.066311, 32.398300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040134, 36.779221, 32.361843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385605, -0.258416, -0.885737,
		0.612164, -0.646600, 0.455153,
		-0.690336, -0.717725, -0.091139,
		36.833035, 36.563904, 32.334499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689663, 36.478058, 32.327808>,  <37.316269, 37.066311, 32.398300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689663, 36.478058, 32.327808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326309, 36.427017, 32.168530>,  <37.108295, 36.396393, 32.072964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326309, 36.427017, 32.168530>,  <37.689663, 36.478058, 32.327808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326309, 36.427017, 32.168530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418099, -0.264095, -0.869165,
		0.005745, -0.956019, 0.293249,
		-0.908383, -0.127600, -0.398194,
		37.053795, 36.388737, 32.049072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715260, 35.823387, 32.007931>,  <37.689663, 36.478058, 32.327808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715260, 35.823387, 32.007931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393169, 35.991280, 31.840391>,  <37.199917, 36.092014, 31.739866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393169, 35.991280, 31.840391>,  <37.715260, 35.823387, 32.007931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393169, 35.991280, 31.840391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223647, -0.439217, -0.870098,
		-0.549178, -0.794298, 0.259795,
		-0.805224, 0.419737, -0.418851,
		37.151604, 36.117199, 31.714737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250416, 35.316109, 31.627796>,  <37.715260, 35.823387, 32.007931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250416, 35.316109, 31.627796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 35.654701, 31.429781>,  <37.124996, 35.857857, 31.310972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 35.654701, 31.429781>,  <37.250416, 35.316109, 31.627796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172028, 35.654701, 31.429781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256006, -0.443155, -0.859113,
		-0.946603, -0.295091, -0.129861,
		-0.195968, 0.846484, -0.495037,
		37.113235, 35.908646, 31.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048363, 35.125515, 31.011963>,  <37.250416, 35.316109, 31.627796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048363, 35.125515, 31.011963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125870, 35.509289, 30.930040>,  <37.172375, 35.739552, 30.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125870, 35.509289, 30.930040>,  <37.048363, 35.125515, 31.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125870, 35.509289, 30.930040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224935, -0.246651, -0.942639,
		-0.954912, 0.136589, -0.263604,
		0.193772, 0.959430, -0.204806,
		37.184002, 35.797119, 30.868599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642773, 35.240318, 30.427290>,  <37.048363, 35.125515, 31.011963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642773, 35.240318, 30.427290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923767, 35.524658, 30.441206>,  <37.092365, 35.695263, 30.449556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923767, 35.524658, 30.441206>,  <36.642773, 35.240318, 30.427290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923767, 35.524658, 30.441206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194251, -0.144480, -0.970254,
		-0.684674, 0.688349, -0.239578,
		0.702487, 0.710846, 0.034790,
		37.134514, 35.737911, 30.451643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572910, 35.623810, 29.817715>,  <36.642773, 35.240318, 30.427290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572910, 35.623810, 29.817715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962814, 35.672916, 29.892311>,  <37.196754, 35.702381, 29.937069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962814, 35.672916, 29.892311>,  <36.572910, 35.623810, 29.817715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962814, 35.672916, 29.892311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214376, -0.281186, -0.935402,
		-0.062398, 0.951768, -0.300407,
		0.974756, 0.122768, 0.186491,
		37.255241, 35.709747, 29.948259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845116, 35.819347, 29.117043>,  <36.572910, 35.623810, 29.817715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845116, 35.819347, 29.117043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174919, 35.733063, 29.326290>,  <37.372803, 35.681290, 29.451839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174919, 35.733063, 29.326290>,  <36.845116, 35.819347, 29.117043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174919, 35.733063, 29.326290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290612, -0.631812, -0.718581,
		0.485523, 0.744500, -0.458244,
		0.824507, -0.215716, 0.523120,
		37.422272, 35.668346, 29.483227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433002, 36.060085, 28.737606>,  <36.845116, 35.819347, 29.117043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433002, 36.060085, 28.737606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606857, 35.790531, 28.976591>,  <37.711170, 35.628799, 29.119982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606857, 35.790531, 28.976591>,  <37.433002, 36.060085, 28.737606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606857, 35.790531, 28.976591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527526, -0.347183, -0.775358,
		0.729934, 0.652180, 0.204594,
		0.434642, -0.673889, 0.597462,
		37.737251, 35.588364, 29.155830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125195, 35.994484, 28.490307>,  <37.433002, 36.060085, 28.737606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125195, 35.994484, 28.490307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053135, 35.660912, 28.698963>,  <38.009899, 35.460770, 28.824158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053135, 35.660912, 28.698963>,  <38.125195, 35.994484, 28.490307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053135, 35.660912, 28.698963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326675, -0.550939, -0.767951,
		0.927809, 0.032062, 0.371674,
		-0.180148, -0.833929, 0.521640,
		37.999092, 35.410732, 28.855455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677441, 35.509968, 28.327316>,  <38.125195, 35.994484, 28.490307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677441, 35.509968, 28.327316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398949, 35.271832, 28.487732>,  <38.231853, 35.128948, 28.583981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398949, 35.271832, 28.487732>,  <38.677441, 35.509968, 28.327316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398949, 35.271832, 28.487732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200518, -0.697752, -0.687702,
		0.689245, -0.398382, 0.605172,
		-0.696229, -0.595343, 0.401039,
		38.190079, 35.093227, 28.608044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956566, 34.812496, 28.491257>,  <38.677441, 35.509968, 28.327316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956566, 34.812496, 28.491257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563515, 34.778416, 28.425316>,  <38.327682, 34.757969, 28.385752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563515, 34.778416, 28.425316>,  <38.956566, 34.812496, 28.491257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563515, 34.778416, 28.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168609, -0.780952, -0.601402,
		-0.077503, -0.618752, 0.781754,
		-0.982632, -0.085200, -0.164853,
		38.268726, 34.752857, 28.375860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834686, 34.031963, 28.331793>,  <38.956566, 34.812496, 28.491257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834686, 34.031963, 28.331793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492077, 34.215363, 28.237005>,  <38.286510, 34.325401, 28.180132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492077, 34.215363, 28.237005>,  <38.834686, 34.031963, 28.331793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492077, 34.215363, 28.237005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232102, -0.752281, -0.616605,
		-0.460977, -0.473134, 0.750762,
		-0.856521, 0.458494, -0.236969,
		38.235119, 34.352913, 28.165915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362110, 33.580193, 28.414326>,  <38.834686, 34.031963, 28.331793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362110, 33.580193, 28.414326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158722, 33.821903, 28.168951>,  <38.036690, 33.966930, 28.021727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158722, 33.821903, 28.168951>,  <38.362110, 33.580193, 28.414326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158722, 33.821903, 28.168951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134788, -0.759478, -0.636416,
		-0.850467, -0.240912, 0.467618,
		-0.508466, 0.604280, -0.613439,
		38.006184, 34.003189, 27.984919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870670, 33.102394, 28.179909>,  <38.362110, 33.580193, 28.414326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870670, 33.102394, 28.179909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854565, 33.416687, 27.933004>,  <37.844902, 33.605263, 27.784863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854565, 33.416687, 27.933004>,  <37.870670, 33.102394, 28.179909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854565, 33.416687, 27.933004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262457, -0.604385, -0.752221,
		-0.964104, 0.131720, 0.230552,
		-0.040259, 0.785728, -0.617260,
		37.842487, 33.652405, 27.747826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289539, 33.007915, 27.710835>,  <37.870670, 33.102394, 28.179909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289539, 33.007915, 27.710835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552174, 33.257065, 27.540689>,  <37.709755, 33.406555, 27.438602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552174, 33.257065, 27.540689>,  <37.289539, 33.007915, 27.710835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552174, 33.257065, 27.540689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046693, -0.529302, -0.847148,
		-0.752807, 0.576084, -0.318447,
		0.656583, 0.622870, -0.425362,
		37.749149, 33.443924, 27.413080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995365, 32.969482, 27.078838>,  <37.289539, 33.007915, 27.710835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995365, 32.969482, 27.078838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364033, 33.118561, 27.035709>,  <37.585232, 33.208008, 27.009832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364033, 33.118561, 27.035709>,  <36.995365, 32.969482, 27.078838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364033, 33.118561, 27.035709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164500, -0.627085, -0.761383,
		-0.351376, 0.684006, -0.639273,
		0.921670, 0.372692, -0.107824,
		37.640533, 33.230370, 27.003363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109539, 33.120834, 26.344288>,  <36.995365, 32.969482, 27.078838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109539, 33.120834, 26.344288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473751, 33.066917, 26.500631>,  <37.692280, 33.034569, 26.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473751, 33.066917, 26.500631>,  <37.109539, 33.120834, 26.344288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473751, 33.066917, 26.500631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250148, -0.573095, -0.780377,
		0.329186, 0.808327, -0.488102,
		0.910529, -0.134791, 0.390856,
		37.746910, 33.026482, 26.617887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623669, 33.209961, 25.763950>,  <37.109539, 33.120834, 26.344288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623669, 33.209961, 25.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822159, 33.026783, 26.058989>,  <37.941254, 32.916878, 26.236012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822159, 33.026783, 26.058989>,  <37.623669, 33.209961, 25.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822159, 33.026783, 26.058989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331467, -0.685291, -0.648465,
		0.802429, 0.566273, -0.188264,
		0.496224, -0.457943, 0.737597,
		37.971027, 32.889400, 26.280268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207054, 33.021858, 25.424213>,  <37.623669, 33.209961, 25.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207054, 33.021858, 25.424213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217640, 32.798264, 25.755714>,  <38.223991, 32.664104, 25.954615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217640, 32.798264, 25.755714>,  <38.207054, 33.021858, 25.424213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217640, 32.798264, 25.755714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336115, -0.775799, -0.534006,
		0.941449, 0.292691, 0.167350,
		0.026469, -0.558989, 0.828753,
		38.225582, 32.630566, 26.004341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866817, 32.705318, 25.482616>,  <38.207054, 33.021858, 25.424213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866817, 32.705318, 25.482616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606419, 32.492729, 25.699408>,  <38.450180, 32.365173, 25.829481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606419, 32.492729, 25.699408>,  <38.866817, 32.705318, 25.482616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606419, 32.492729, 25.699408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303687, -0.836712, -0.455726,
		0.695686, -0.132085, 0.706098,
		-0.650995, -0.531475, 0.541977,
		38.411121, 32.333286, 25.862001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331718, 32.190189, 25.701904>,  <38.866817, 32.705318, 25.482616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331718, 32.190189, 25.701904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962467, 32.040451, 25.736977>,  <38.740917, 31.950607, 25.758020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962467, 32.040451, 25.736977>,  <39.331718, 32.190189, 25.701904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962467, 32.040451, 25.736977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261679, -0.778815, -0.570062,
		0.281692, -0.503298, 0.816909,
		-0.923132, -0.374350, 0.087683,
		38.685528, 31.928146, 25.763281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368404, 31.476217, 25.880932>,  <39.331718, 32.190189, 25.701904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368404, 31.476217, 25.880932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998074, 31.517342, 25.735455>,  <38.775875, 31.542015, 25.648169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998074, 31.517342, 25.735455>,  <39.368404, 31.476217, 25.880932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998074, 31.517342, 25.735455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128249, -0.819736, -0.558198,
		-0.355521, -0.563439, 0.745749,
		-0.925828, 0.102809, -0.363694,
		38.720325, 31.548185, 25.626347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017029, 30.868616, 26.125727>,  <39.368404, 31.476217, 25.880932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017029, 30.868616, 26.125727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868458, 31.026358, 25.789507>,  <38.779316, 31.121002, 25.587774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868458, 31.026358, 25.789507>,  <39.017029, 30.868616, 26.125727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868458, 31.026358, 25.789507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093345, -0.884868, -0.456394,
		-0.923757, -0.247979, 0.291855,
		-0.371429, 0.394354, -0.840551,
		38.757030, 31.144665, 25.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677158, 30.263281, 25.995884>,  <39.017029, 30.868616, 26.125727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677158, 30.263281, 25.995884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679977, 30.497940, 25.671959>,  <38.681667, 30.638735, 25.477604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679977, 30.497940, 25.671959>,  <38.677158, 30.263281, 25.995884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679977, 30.497940, 25.671959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116751, -0.804777, -0.581982,
		-0.993136, -0.090444, -0.074165,
		0.007049, 0.586647, -0.809813,
		38.682091, 30.673935, 25.429016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205109, 29.965528, 25.544125>,  <38.677158, 30.263281, 25.995884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205109, 29.965528, 25.544125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475201, 30.181446, 25.343052>,  <38.637257, 30.310997, 25.222408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475201, 30.181446, 25.343052>,  <38.205109, 29.965528, 25.544125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475201, 30.181446, 25.343052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260753, -0.812183, -0.521888,
		-0.689982, 0.221317, -0.689162,
		0.675228, 0.539794, -0.502682,
		38.677769, 30.343384, 25.192247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368519, 29.541601, 24.974190>,  <38.205109, 29.965528, 25.544125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368519, 29.541601, 24.974190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652302, 29.820166, 24.930944>,  <38.822571, 29.987305, 24.904997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652302, 29.820166, 24.930944>,  <38.368519, 29.541601, 24.974190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652302, 29.820166, 24.930944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601163, -0.678070, -0.422876,
		-0.367804, 0.235016, -0.899715,
		0.709453, 0.696411, -0.108114,
		38.865139, 30.029089, 24.898510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554977, 29.594715, 24.324810>,  <38.368519, 29.541601, 24.974190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554977, 29.594715, 24.324810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889290, 29.718567, 24.506182>,  <39.089878, 29.792877, 24.615004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889290, 29.718567, 24.506182>,  <38.554977, 29.594715, 24.324810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889290, 29.718567, 24.506182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537163, -0.632081, -0.558507,
		0.113674, 0.710355, -0.694603,
		0.835784, 0.309628, 0.453427,
		39.140026, 29.811455, 24.642210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068546, 29.541872, 23.840666>,  <38.554977, 29.594715, 24.324810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068546, 29.541872, 23.840666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300663, 29.596823, 24.161760>,  <39.439934, 29.629793, 24.354418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300663, 29.596823, 24.161760>,  <39.068546, 29.541872, 23.840666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300663, 29.596823, 24.161760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674455, -0.633535, -0.379135,
		0.456478, 0.761420, -0.460290,
		0.580291, 0.137379, 0.802739,
		39.474751, 29.638037, 24.402582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728420, 29.491053, 23.518816>,  <39.068546, 29.541872, 23.840666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728420, 29.491053, 23.518816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786892, 29.429811, 23.909752>,  <39.821976, 29.393066, 24.144314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786892, 29.429811, 23.909752>,  <39.728420, 29.491053, 23.518816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786892, 29.429811, 23.909752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716781, -0.664512, -0.211304,
		0.681804, 0.731426, 0.012604,
		0.146178, -0.153102, 0.977339,
		39.830746, 29.383881, 24.202953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357433, 29.340925, 23.511368>,  <39.728420, 29.491053, 23.518816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357433, 29.340925, 23.511368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220798, 29.199329, 23.859623>,  <40.138817, 29.114372, 24.068577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220798, 29.199329, 23.859623>,  <40.357433, 29.340925, 23.511368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220798, 29.199329, 23.859623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541691, -0.831169, -0.125415,
		0.768043, 0.428777, 0.475668,
		-0.341585, -0.353989, 0.870638,
		40.118324, 29.093132, 24.120815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988728, 29.220659, 23.957920>,  <40.357433, 29.340925, 23.511368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988728, 29.220659, 23.957920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675156, 29.009571, 24.088747>,  <40.487015, 28.882919, 24.167244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675156, 29.009571, 24.088747>,  <40.988728, 29.220659, 23.957920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675156, 29.009571, 24.088747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487469, -0.849418, -0.202146,
		0.384494, 0.000968, 0.923127,
		-0.783926, -0.527719, 0.327068,
		40.439980, 28.851255, 24.186867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333443, 28.726721, 24.206682>,  <40.988728, 29.220659, 23.957920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333443, 28.726721, 24.206682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963238, 28.581141, 24.164787>,  <40.741116, 28.493792, 24.139650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963238, 28.581141, 24.164787>,  <41.333443, 28.726721, 24.206682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963238, 28.581141, 24.164787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377756, -0.867406, -0.323893,
		0.027033, -0.339331, 0.940279,
		-0.925511, -0.363952, -0.104736,
		40.685585, 28.471954, 24.133366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378788, 27.983040, 24.421759>,  <41.333443, 28.726721, 24.206682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378788, 27.983040, 24.421759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039856, 27.983610, 24.209333>,  <40.836498, 27.983952, 24.081879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039856, 27.983610, 24.209333>,  <41.378788, 27.983040, 24.421759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039856, 27.983610, 24.209333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250574, -0.880612, -0.402162,
		-0.468234, -0.473835, 0.745813,
		-0.847331, 0.001425, -0.531064,
		40.785656, 27.984037, 24.050014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784901, 27.461069, 24.141817>,  <41.378788, 27.983040, 24.421759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784901, 27.461069, 24.141817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135590, 27.345041, 24.295292>,  <42.346004, 27.275425, 24.387377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135590, 27.345041, 24.295292>,  <41.784901, 27.461069, 24.141817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135590, 27.345041, 24.295292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270109, 0.363127, 0.891729,
		-0.397990, -0.885437, 0.240011,
		0.876724, -0.290070, 0.383685,
		42.398605, 27.258020, 24.410397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612041, 27.028107, 24.631393>,  <41.784901, 27.461069, 24.141817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612041, 27.028107, 24.631393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982445, 27.156660, 24.710619>,  <42.204685, 27.233791, 24.758154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982445, 27.156660, 24.710619>,  <41.612041, 27.028107, 24.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982445, 27.156660, 24.710619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250072, 0.129165, 0.959573,
		0.282809, -0.938098, 0.199976,
		0.926004, 0.321384, 0.198063,
		42.260246, 27.253075, 24.770039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796661, 26.749790, 25.275099>,  <41.612041, 27.028107, 24.631393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796661, 26.749790, 25.275099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040714, 27.062927, 25.226274>,  <42.187145, 27.250809, 25.196980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040714, 27.062927, 25.226274>,  <41.796661, 26.749790, 25.275099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040714, 27.062927, 25.226274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387239, 0.429049, 0.816065,
		0.691219, -0.450641, 0.564923,
		0.610132, 0.782840, -0.122061,
		42.223755, 27.297779, 25.189657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933273, 26.825697, 25.971998>,  <41.796661, 26.749790, 25.275099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933273, 26.825697, 25.971998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065231, 27.165634, 25.807590>,  <42.144405, 27.369596, 25.708946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065231, 27.165634, 25.807590>,  <41.933273, 26.825697, 25.971998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065231, 27.165634, 25.807590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175280, 0.482967, 0.857916,
		0.927601, -0.210982, 0.308290,
		0.329898, 0.849841, -0.411020,
		42.164200, 27.420586, 25.684284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497646, 27.072790, 26.404877>,  <41.933273, 26.825697, 25.971998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497646, 27.072790, 26.404877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323082, 27.369974, 26.201878>,  <42.218342, 27.548285, 26.080078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323082, 27.369974, 26.201878>,  <42.497646, 27.072790, 26.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323082, 27.369974, 26.201878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004346, 0.562300, 0.826922,
		0.899736, 0.363085, -0.242166,
		-0.436413, 0.742959, -0.507500,
		42.192158, 27.592861, 26.049627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855545, 27.678797, 26.597403>,  <42.497646, 27.072790, 26.404877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855545, 27.678797, 26.597403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516140, 27.833138, 26.452549>,  <42.312496, 27.925743, 26.365637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516140, 27.833138, 26.452549>,  <42.855545, 27.678797, 26.597403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516140, 27.833138, 26.452549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045176, 0.734661, 0.676929,
		0.527242, 0.558024, -0.640801,
		-0.848514, 0.385854, -0.362135,
		42.261585, 27.948895, 26.343908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948494, 28.364202, 26.603289>,  <42.855545, 27.678797, 26.597403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948494, 28.364202, 26.603289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555492, 28.290085, 26.595879>,  <42.319691, 28.245613, 26.591433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555492, 28.290085, 26.595879>,  <42.948494, 28.364202, 26.603289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555492, 28.290085, 26.595879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154518, 0.755683, 0.636449,
		-0.103932, 0.628178, -0.771096,
		-0.982508, -0.185296, -0.018525,
		42.260738, 28.234497, 26.590321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588554, 29.031307, 26.549759>,  <42.948494, 28.364202, 26.603289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588554, 29.031307, 26.549759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269783, 28.820795, 26.668373>,  <42.078522, 28.694489, 26.739542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269783, 28.820795, 26.668373>,  <42.588554, 29.031307, 26.549759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269783, 28.820795, 26.668373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378610, 0.817670, 0.433670,
		-0.470702, 0.233332, -0.850879,
		-0.796928, -0.526281, 0.296537,
		42.030704, 28.662910, 26.757334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977226, 29.438824, 26.357391>,  <42.588554, 29.031307, 26.549759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977226, 29.438824, 26.357391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854450, 29.193422, 26.648432>,  <41.780785, 29.046183, 26.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854450, 29.193422, 26.648432>,  <41.977226, 29.438824, 26.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854450, 29.193422, 26.648432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350377, 0.783653, 0.512956,
		-0.884886, -0.097487, -0.455492,
		-0.306941, -0.613501, 0.727601,
		41.762367, 29.009373, 26.866713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266411, 29.596798, 26.438112>,  <41.977226, 29.438824, 26.357391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266411, 29.596798, 26.438112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344040, 29.394411, 26.774286>,  <41.390617, 29.272978, 26.975990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344040, 29.394411, 26.774286>,  <41.266411, 29.596798, 26.438112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344040, 29.394411, 26.774286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574801, 0.635599, 0.515381,
		-0.794947, -0.583104, -0.167480,
		0.194070, -0.505968, 0.840436,
		41.402260, 29.242620, 27.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631638, 29.563927, 26.819714>,  <41.266411, 29.596798, 26.438112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631638, 29.563927, 26.819714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921276, 29.488651, 27.085127>,  <41.095058, 29.443485, 27.244375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921276, 29.488651, 27.085127>,  <40.631638, 29.563927, 26.819714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921276, 29.488651, 27.085127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408837, 0.657695, 0.632684,
		-0.555467, -0.729398, 0.399293,
		0.724092, -0.188189, 0.663533,
		41.138504, 29.432194, 27.284187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335884, 29.411766, 27.487062>,  <40.631638, 29.563927, 26.819714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335884, 29.411766, 27.487062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708652, 29.538622, 27.557421>,  <40.932316, 29.614735, 27.599636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708652, 29.538622, 27.557421>,  <40.335884, 29.411766, 27.487062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708652, 29.538622, 27.557421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362301, 0.792921, 0.489913,
		0.015900, -0.520289, 0.853842,
		0.931925, 0.317138, 0.175894,
		40.988232, 29.633762, 27.610189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423180, 29.508827, 28.234245>,  <40.335884, 29.411766, 27.487062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423180, 29.508827, 28.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704407, 29.732063, 28.057959>,  <40.873142, 29.866005, 27.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704407, 29.732063, 28.057959>,  <40.423180, 29.508827, 28.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704407, 29.732063, 28.057959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321322, 0.802191, 0.503231,
		0.634385, -0.212195, 0.743322,
		0.703070, 0.558088, -0.440716,
		40.915329, 29.899490, 27.925743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750549, 29.793573, 28.780392>,  <40.423180, 29.508827, 28.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750549, 29.793573, 28.780392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811096, 30.033457, 28.466084>,  <40.847424, 30.177387, 28.277498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811096, 30.033457, 28.466084>,  <40.750549, 29.793573, 28.780392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811096, 30.033457, 28.466084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238488, 0.793606, 0.559743,
		0.959276, 0.102668, 0.263152,
		0.151371, 0.599707, -0.785773,
		40.856506, 30.213369, 28.230352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373791, 30.257027, 29.026865>,  <40.750549, 29.793573, 28.780392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373791, 30.257027, 29.026865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163170, 30.413837, 28.725121>,  <41.036797, 30.507923, 28.544073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163170, 30.413837, 28.725121>,  <41.373791, 30.257027, 29.026865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163170, 30.413837, 28.725121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199815, 0.805407, 0.558027,
		0.826329, 0.444561, -0.345753,
		-0.526549, 0.392027, -0.754361,
		41.005203, 30.531446, 28.498812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474079, 31.041430, 29.009850>,  <41.373791, 30.257027, 29.026865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474079, 31.041430, 29.009850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158932, 30.995043, 28.767921>,  <40.969841, 30.967211, 28.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158932, 30.995043, 28.767921>,  <41.474079, 31.041430, 29.009850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158932, 30.995043, 28.767921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351788, 0.890853, 0.287449,
		0.505473, 0.439242, -0.742673,
		-0.787872, -0.115966, -0.604822,
		40.922569, 30.960253, 28.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417507, 31.677023, 28.683567>,  <41.474079, 31.041430, 29.009850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417507, 31.677023, 28.683567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062038, 31.494877, 28.661999>,  <40.848759, 31.385590, 28.649057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062038, 31.494877, 28.661999>,  <41.417507, 31.677023, 28.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062038, 31.494877, 28.661999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455440, 0.862871, 0.219154,
		-0.053267, 0.219314, -0.974199,
		-0.888671, -0.455363, -0.053921,
		40.795437, 31.358269, 28.645823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040062, 32.233818, 28.402721>,  <41.417507, 31.677023, 28.683567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040062, 32.233818, 28.402721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771629, 31.973881, 28.545462>,  <40.610569, 31.817917, 28.631105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771629, 31.973881, 28.545462>,  <41.040062, 32.233818, 28.402721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771629, 31.973881, 28.545462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603987, 0.758351, 0.245160,
		-0.429935, -0.051010, -0.901418,
		-0.671086, -0.649847, 0.356851,
		40.570305, 31.778927, 28.652517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405903, 32.405182, 28.093237>,  <41.040062, 32.233818, 28.402721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405903, 32.405182, 28.093237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318451, 32.212917, 28.432922>,  <40.265980, 32.097557, 28.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318451, 32.212917, 28.432922>,  <40.405903, 32.405182, 28.093237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318451, 32.212917, 28.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549125, 0.779996, 0.300112,
		-0.806637, -0.400713, -0.434472,
		-0.218628, -0.480661, 0.849215,
		40.252861, 32.068718, 28.687687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697788, 32.465714, 28.164873>,  <40.405903, 32.405182, 28.093237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697788, 32.465714, 28.164873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840816, 32.404533, 28.533384>,  <39.926632, 32.367825, 28.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840816, 32.404533, 28.533384>,  <39.697788, 32.465714, 28.164873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840816, 32.404533, 28.533384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457209, 0.831516, 0.315502,
		-0.814313, -0.534029, 0.227394,
		0.357569, -0.152951, 0.921277,
		39.948086, 32.358646, 28.809767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241261, 32.804428, 28.556032>,  <39.697788, 32.465714, 28.164873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241261, 32.804428, 28.556032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521084, 32.719009, 28.828802>,  <39.688976, 32.667759, 28.992464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521084, 32.719009, 28.828802>,  <39.241261, 32.804428, 28.556032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521084, 32.719009, 28.828802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320663, 0.759006, 0.566644,
		-0.638590, -0.615066, 0.462489,
		0.699555, -0.213551, 0.681923,
		39.730949, 32.654945, 29.033379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881088, 32.840076, 29.210108>,  <39.241261, 32.804428, 28.556032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881088, 32.840076, 29.210108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271317, 32.893013, 29.280241>,  <39.505455, 32.924774, 29.322321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271317, 32.893013, 29.280241>,  <38.881088, 32.840076, 29.210108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271317, 32.893013, 29.280241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217110, 0.702481, 0.677779,
		-0.033470, -0.699290, 0.714054,
		0.975574, 0.132343, 0.175335,
		39.563988, 32.932716, 29.332842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080261, 32.796696, 29.975925>,  <38.881088, 32.840076, 29.210108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080261, 32.796696, 29.975925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404747, 32.984730, 29.836811>,  <39.599438, 33.097549, 29.753342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404747, 32.984730, 29.836811>,  <39.080261, 32.796696, 29.975925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404747, 32.984730, 29.836811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110423, 0.707205, 0.698332,
		0.574231, -0.528091, 0.625602,
		0.811212, 0.470085, -0.347786,
		39.648109, 33.125755, 29.732475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577354, 32.906437, 30.561054>,  <39.080261, 32.796696, 29.975925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577354, 32.906437, 30.561054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684776, 33.150253, 30.262701>,  <39.749229, 33.296543, 30.083689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684776, 33.150253, 30.262701>,  <39.577354, 32.906437, 30.561054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684776, 33.150253, 30.262701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045830, 0.781538, 0.622173,
		0.962173, -0.132906, 0.237822,
		0.268557, 0.609537, -0.745883,
		39.765343, 33.333115, 30.038937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156418, 33.243320, 30.796150>,  <39.577354, 32.906437, 30.561054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156418, 33.243320, 30.796150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032959, 33.488419, 30.505146>,  <39.958881, 33.635479, 30.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032959, 33.488419, 30.505146>,  <40.156418, 33.243320, 30.796150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032959, 33.488419, 30.505146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263880, 0.789995, 0.553421,
		0.913839, -0.021162, -0.405525,
		-0.308651, 0.612748, -0.727513,
		39.940365, 33.672241, 30.286892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728912, 33.689922, 30.488731>,  <40.156418, 33.243320, 30.796150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728912, 33.689922, 30.488731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383488, 33.887238, 30.446918>,  <40.176231, 34.005627, 30.421831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383488, 33.887238, 30.446918>,  <40.728912, 33.689922, 30.488731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383488, 33.887238, 30.446918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380542, 0.773566, 0.506739,
		0.330833, 0.397820, -0.855739,
		-0.863561, 0.493290, -0.104534,
		40.124420, 34.035225, 30.415558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941387, 34.371037, 30.412079>,  <40.728912, 33.689922, 30.488731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941387, 34.371037, 30.412079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549976, 34.413151, 30.482964>,  <40.315132, 34.438419, 30.525496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549976, 34.413151, 30.482964>,  <40.941387, 34.371037, 30.412079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549976, 34.413151, 30.482964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191505, 0.782382, 0.592625,
		-0.076256, 0.613835, -0.785742,
		-0.978525, 0.105282, 0.177213,
		40.256420, 34.444736, 30.536127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727695, 35.076729, 30.293165>,  <40.941387, 34.371037, 30.412079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727695, 35.076729, 30.293165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422405, 34.953091, 30.520124>,  <40.239231, 34.878906, 30.656300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422405, 34.953091, 30.520124>,  <40.727695, 35.076729, 30.293165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422405, 34.953091, 30.520124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262020, 0.654640, 0.709079,
		-0.590614, 0.689859, -0.418651,
		-0.763230, -0.309097, 0.567396,
		40.193436, 34.860363, 30.690344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418018, 35.737747, 30.495214>,  <40.727695, 35.076729, 30.293165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418018, 35.737747, 30.495214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272072, 35.474777, 30.758930>,  <40.184505, 35.316994, 30.917160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272072, 35.474777, 30.758930>,  <40.418018, 35.737747, 30.495214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272072, 35.474777, 30.758930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115865, 0.670540, 0.732770,
		-0.923823, 0.343750, -0.168483,
		-0.364865, -0.657428, 0.659289,
		40.162613, 35.277550, 30.956717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002563, 36.116436, 30.921181>,  <40.418018, 35.737747, 30.495214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002563, 36.116436, 30.921181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031372, 35.779472, 31.134783>,  <40.048656, 35.577293, 31.262945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031372, 35.779472, 31.134783>,  <40.002563, 36.116436, 30.921181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031372, 35.779472, 31.134783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008631, 0.535904, 0.844235,
		-0.997366, -0.056194, 0.045867,
		0.072021, -0.842407, 0.534007,
		40.052979, 35.526749, 31.294985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464203, 36.166119, 31.493773>,  <40.002563, 36.116436, 30.921181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464203, 36.166119, 31.493773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749393, 35.909615, 31.607222>,  <39.920509, 35.755711, 31.675291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749393, 35.909615, 31.607222>,  <39.464203, 36.166119, 31.493773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749393, 35.909615, 31.607222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155381, 0.538926, 0.827898,
		-0.683754, -0.546203, 0.483883,
		0.712978, -0.641265, 0.283623,
		39.963287, 35.717236, 31.692308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274570, 35.968834, 32.134151>,  <39.464203, 36.166119, 31.493773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274570, 35.968834, 32.134151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669006, 35.903500, 32.146492>,  <39.905666, 35.864300, 32.153896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669006, 35.903500, 32.146492>,  <39.274570, 35.968834, 32.134151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669006, 35.903500, 32.146492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041809, 0.423361, 0.904996,
		-0.160881, -0.891115, 0.424300,
		0.986088, -0.163336, 0.030854,
		39.964832, 35.854500, 32.155746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445961, 36.130573, 32.794479>,  <39.274570, 35.968834, 32.134151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445961, 36.130573, 32.794479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824932, 36.092628, 32.672249>,  <40.052315, 36.069862, 32.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824932, 36.092628, 32.672249>,  <39.445961, 36.130573, 32.794479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824932, 36.092628, 32.672249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314220, 0.456025, 0.832650,
		0.060361, -0.884896, 0.461860,
		0.947429, -0.094867, -0.305578,
		40.109161, 36.064167, 32.580574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874107, 35.815258, 33.348003>,  <39.445961, 36.130573, 32.794479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874107, 35.815258, 33.348003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122093, 36.003929, 33.097191>,  <40.270885, 36.117130, 32.946705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122093, 36.003929, 33.097191>,  <39.874107, 35.815258, 33.348003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122093, 36.003929, 33.097191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395868, 0.501943, 0.768988,
		0.677449, -0.724964, 0.124463,
		0.619961, 0.471679, -0.627030,
		40.308083, 36.145432, 32.909081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459782, 35.795559, 33.771729>,  <39.874107, 35.815258, 33.348003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459782, 35.795559, 33.771729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522858, 36.073582, 33.491150>,  <40.560703, 36.240395, 33.322803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522858, 36.073582, 33.491150>,  <40.459782, 35.795559, 33.771729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522858, 36.073582, 33.491150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548393, 0.529096, 0.647551,
		0.821218, -0.486782, -0.297732,
		0.157687, 0.695055, -0.701451,
		40.570164, 36.282097, 33.280716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129959, 35.981319, 33.821743>,  <40.459782, 35.795559, 33.771729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129959, 35.981319, 33.821743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962143, 36.301395, 33.650311>,  <40.861454, 36.493443, 33.547451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962143, 36.301395, 33.650311>,  <41.129959, 35.981319, 33.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962143, 36.301395, 33.650311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608144, 0.598294, 0.521733,
		0.673901, -0.041748, -0.737641,
		-0.419544, 0.800188, -0.428580,
		40.836281, 36.541451, 33.521736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603546, 36.410370, 33.768585>,  <41.129959, 35.981319, 33.821743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603546, 36.410370, 33.768585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292446, 36.653400, 33.704151>,  <41.105785, 36.799221, 33.665489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292446, 36.653400, 33.704151>,  <41.603546, 36.410370, 33.768585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292446, 36.653400, 33.704151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462251, 0.726517, 0.508427,
		0.425944, 0.320966, -0.845903,
		-0.777751, 0.607581, -0.161088,
		41.059120, 36.835674, 33.655823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862801, 37.069336, 33.432785>,  <41.603546, 36.410370, 33.768585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862801, 37.069336, 33.432785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520992, 37.174397, 33.612034>,  <41.315907, 37.237434, 33.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520992, 37.174397, 33.612034>,  <41.862801, 37.069336, 33.432785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520992, 37.174397, 33.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497415, 0.662242, 0.560370,
		-0.149582, 0.701748, -0.696545,
		-0.854520, 0.262650, 0.448119,
		41.264637, 37.253193, 33.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830620, 37.841259, 33.333511>,  <41.862801, 37.069336, 33.432785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830620, 37.841259, 33.333511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581928, 37.742584, 33.630859>,  <41.432713, 37.683380, 33.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581928, 37.742584, 33.630859>,  <41.830620, 37.841259, 33.333511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581928, 37.742584, 33.630859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506200, 0.597693, 0.621711,
		-0.597677, 0.762829, -0.246727,
		-0.621726, -0.246689, 0.743371,
		41.395409, 37.668579, 33.853870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598713, 38.439972, 33.651562>,  <41.830620, 37.841259, 33.333511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598713, 38.439972, 33.651562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561573, 38.139900, 33.913433>,  <41.539291, 37.959858, 34.070557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561573, 38.139900, 33.913433>,  <41.598713, 38.439972, 33.651562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561573, 38.139900, 33.913433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284728, 0.610059, 0.739431,
		-0.954102, 0.255060, 0.156955,
		-0.092848, -0.750182, 0.654681,
		41.533718, 37.914845, 34.109837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138332, 38.753376, 34.116383>,  <41.598713, 38.439972, 33.651562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138332, 38.753376, 34.116383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365028, 38.476334, 34.294868>,  <41.501045, 38.310108, 34.401958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365028, 38.476334, 34.294868>,  <41.138332, 38.753376, 34.116383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365028, 38.476334, 34.294868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180384, 0.632758, 0.753047,
		-0.803909, -0.346290, 0.483542,
		0.566738, -0.692604, 0.446215,
		41.535049, 38.268551, 34.428734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960957, 38.815449, 34.769676>,  <41.138332, 38.753376, 34.116383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960957, 38.815449, 34.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277790, 38.576435, 34.819557>,  <41.467892, 38.433025, 34.849483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277790, 38.576435, 34.819557>,  <40.960957, 38.815449, 34.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277790, 38.576435, 34.819557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123666, 0.357139, 0.925829,
		-0.597752, -0.717915, 0.356780,
		0.792086, -0.597537, 0.124698,
		41.515415, 38.397175, 34.856968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853157, 38.283688, 35.237827>,  <40.960957, 38.815449, 34.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853157, 38.283688, 35.237827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246689, 38.355259, 35.234604>,  <41.482807, 38.398201, 35.232670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246689, 38.355259, 35.234604>,  <40.853157, 38.283688, 35.237827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246689, 38.355259, 35.234604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067367, 0.411368, 0.908976,
		0.165956, -0.893735, 0.416770,
		0.983829, 0.178927, -0.008061,
		41.541836, 38.408936, 35.232185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967880, 37.982906, 35.886559>,  <40.853157, 38.283688, 35.237827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967880, 37.982906, 35.886559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272198, 38.223721, 35.789608>,  <41.454788, 38.368210, 35.731438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272198, 38.223721, 35.789608>,  <40.967880, 37.982906, 35.886559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272198, 38.223721, 35.789608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083425, 0.461084, 0.883426,
		0.643608, -0.651886, 0.401015,
		0.760795, 0.602034, -0.242374,
		41.500435, 38.404331, 35.716896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380249, 38.054039, 36.512104>,  <40.967880, 37.982906, 35.886559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380249, 38.054039, 36.512104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511440, 38.355984, 36.284912>,  <41.590157, 38.537151, 36.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511440, 38.355984, 36.284912>,  <41.380249, 38.054039, 36.512104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511440, 38.355984, 36.284912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064409, 0.581974, 0.810653,
		0.942486, -0.302463, 0.142256,
		0.327982, 0.754866, -0.567983,
		41.609837, 38.582443, 36.114517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648781, 38.435211, 36.939167>,  <41.380249, 38.054039, 36.512104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648781, 38.435211, 36.939167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641342, 38.713318, 36.651760>,  <41.636879, 38.880180, 36.479317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641342, 38.713318, 36.651760>,  <41.648781, 38.435211, 36.939167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641342, 38.713318, 36.651760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068390, 0.717840, 0.692842,
		0.997485, -0.036251, -0.060902,
		-0.018601, 0.695264, -0.718514,
		41.635761, 38.921898, 36.436207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208897, 38.891918, 37.093136>,  <41.648781, 38.435211, 36.939167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208897, 38.891918, 37.093136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966305, 39.095558, 36.848843>,  <41.820747, 39.217743, 36.702267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966305, 39.095558, 36.848843>,  <42.208897, 38.891918, 37.093136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966305, 39.095558, 36.848843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113678, 0.815757, 0.567113,
		0.786928, 0.274517, -0.552616,
		-0.606483, 0.509097, -0.610736,
		41.784359, 39.248287, 36.665623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566154, 39.510799, 36.974873>,  <42.208897, 38.891918, 37.093136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566154, 39.510799, 36.974873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181541, 39.589478, 36.898170>,  <41.950775, 39.636684, 36.852150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181541, 39.589478, 36.898170>,  <42.566154, 39.510799, 36.974873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181541, 39.589478, 36.898170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090294, 0.885584, 0.455618,
		0.259435, 0.420776, -0.869276,
		-0.961530, 0.196693, -0.191758,
		41.893082, 39.648487, 36.840645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610947, 40.176258, 36.773895>,  <42.566154, 39.510799, 36.974873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610947, 40.176258, 36.773895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212318, 40.208542, 36.781300>,  <41.973141, 40.227913, 36.785744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212318, 40.208542, 36.781300>,  <42.610947, 40.176258, 36.773895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212318, 40.208542, 36.781300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081998, 0.930795, 0.356227,
		0.011516, 0.356521, -0.934216,
		-0.996566, 0.080707, 0.018515,
		41.913349, 40.232754, 36.786854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400455, 40.782768, 36.435707>,  <42.610947, 40.176258, 36.773895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400455, 40.782768, 36.435707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099773, 40.682301, 36.679626>,  <41.919365, 40.622021, 36.825977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099773, 40.682301, 36.679626>,  <42.400455, 40.782768, 36.435707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099773, 40.682301, 36.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092055, 0.955545, 0.280108,
		-0.653048, 0.154422, -0.741406,
		-0.751701, -0.251174, 0.609801,
		41.874264, 40.606949, 36.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882404, 41.327694, 36.313869>,  <42.400455, 40.782768, 36.435707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882404, 41.327694, 36.313869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788021, 41.165096, 36.666931>,  <41.731392, 41.067535, 36.878769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788021, 41.165096, 36.666931>,  <41.882404, 41.327694, 36.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788021, 41.165096, 36.666931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138495, 0.913100, 0.383495,
		-0.961844, -0.031756, -0.271748,
		-0.235955, -0.406498, 0.882658,
		41.717236, 41.043148, 36.931728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451286, 41.815586, 36.499447>,  <41.882404, 41.327694, 36.313869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451286, 41.815586, 36.499447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552719, 41.620609, 36.833656>,  <41.613579, 41.503624, 37.034184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552719, 41.620609, 36.833656>,  <41.451286, 41.815586, 36.499447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552719, 41.620609, 36.833656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320241, 0.772747, 0.548004,
		-0.912767, -0.406531, 0.039853,
		0.253577, -0.487438, 0.835526,
		41.628792, 41.474377, 37.084312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933231, 41.960876, 36.906399>,  <41.451286, 41.815586, 36.499447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933231, 41.960876, 36.906399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236820, 41.866352, 37.149090>,  <41.418976, 41.809639, 37.294704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236820, 41.866352, 37.149090>,  <40.933231, 41.960876, 36.906399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236820, 41.866352, 37.149090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137051, 0.852961, 0.503662,
		-0.636533, -0.465419, 0.614989,
		0.758975, -0.236313, 0.606723,
		41.464512, 41.795460, 37.331108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750214, 42.015209, 37.623203>,  <40.933231, 41.960876, 36.906399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750214, 42.015209, 37.623203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147575, 42.059669, 37.612000>,  <41.385994, 42.086346, 37.605278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147575, 42.059669, 37.612000>,  <40.750214, 42.015209, 37.623203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147575, 42.059669, 37.612000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081883, 0.859136, 0.505153,
		0.080214, -0.499530, 0.862575,
		0.993409, 0.111151, -0.028012,
		41.445599, 42.093014, 37.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054344, 42.230400, 38.314941>,  <40.750214, 42.015209, 37.623203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054344, 42.230400, 38.314941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265842, 42.359650, 38.000996>,  <41.392742, 42.437199, 37.812626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265842, 42.359650, 38.000996>,  <41.054344, 42.230400, 38.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265842, 42.359650, 38.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048985, 0.911543, 0.408276,
		0.847365, -0.254322, 0.466147,
		0.528747, 0.323125, -0.784868,
		41.424465, 42.456589, 37.765537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503174, 42.742615, 38.551636>,  <41.054344, 42.230400, 38.314941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503174, 42.742615, 38.551636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509605, 42.824848, 38.160233>,  <41.513466, 42.874187, 37.925392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509605, 42.824848, 38.160233>,  <41.503174, 42.742615, 38.551636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509605, 42.824848, 38.160233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019074, 0.978519, 0.205274,
		0.999689, 0.015363, 0.019656,
		0.016080, 0.205585, -0.978507,
		41.514431, 42.886524, 37.866680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927036, 43.285645, 38.497337>,  <41.503174, 42.742615, 38.551636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927036, 43.285645, 38.497337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718792, 43.289566, 38.155842>,  <41.593845, 43.291920, 37.950943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718792, 43.289566, 38.155842>,  <41.927036, 43.285645, 38.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718792, 43.289566, 38.155842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086273, 0.994212, 0.064031,
		0.849424, 0.106989, -0.516751,
		-0.520611, 0.009808, -0.853738,
		41.562611, 43.292507, 37.899719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244659, 43.688896, 38.049755>,  <41.927036, 43.285645, 38.497337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244659, 43.688896, 38.049755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868557, 43.680706, 37.913815>,  <41.642895, 43.675793, 37.832249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868557, 43.680706, 37.913815>,  <42.244659, 43.688896, 38.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868557, 43.680706, 37.913815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064994, 0.990627, 0.120139,
		0.334206, 0.135050, -0.932774,
		-0.940256, -0.020473, -0.339851,
		41.586479, 43.674564, 37.811859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177174, 44.189770, 37.579037>,  <42.244659, 43.688896, 38.049755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177174, 44.189770, 37.579037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802444, 44.132072, 37.706509>,  <41.577606, 44.097454, 37.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802444, 44.132072, 37.706509>,  <42.177174, 44.189770, 37.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802444, 44.132072, 37.706509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075733, 0.973051, 0.217801,
		-0.341506, 0.179907, -0.922501,
		-0.936824, -0.144244, 0.318678,
		41.521397, 44.088799, 37.802113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614525, 44.643200, 37.219772>,  <42.177174, 44.189770, 37.579037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614525, 44.643200, 37.219772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481686, 44.571625, 37.590218>,  <41.401981, 44.528679, 37.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481686, 44.571625, 37.590218>,  <41.614525, 44.643200, 37.219772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481686, 44.571625, 37.590218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246298, 0.964228, 0.097984,
		-0.910520, -0.195560, -0.364293,
		-0.332100, -0.178941, 0.926116,
		41.382057, 44.517944, 37.868053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091984, 45.109531, 37.415798>,  <41.614525, 44.643200, 37.219772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091984, 45.109531, 37.415798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232990, 44.983353, 37.768215>,  <41.317593, 44.907646, 37.979664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232990, 44.983353, 37.768215>,  <41.091984, 45.109531, 37.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232990, 44.983353, 37.768215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301447, 0.853015, 0.426022,
		-0.885925, -0.415765, 0.205610,
		0.352514, -0.315444, 0.881039,
		41.338745, 44.888721, 38.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578556, 45.057014, 38.092842>,  <41.091984, 45.109531, 37.415798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578556, 45.057014, 38.092842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954319, 45.161243, 38.181931>,  <41.179779, 45.223782, 38.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954319, 45.161243, 38.181931>,  <40.578556, 45.057014, 38.092842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954319, 45.161243, 38.181931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342275, 0.748638, 0.567793,
		-0.018790, -0.609625, 0.792467,
		0.939412, 0.260573, 0.222726,
		41.236141, 45.239414, 38.248749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134850, 44.742634, 38.623390>,  <40.578556, 45.057014, 38.092842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134850, 44.742634, 38.623390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255520, 44.701046, 39.002480>,  <40.327923, 44.676094, 39.229935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255520, 44.701046, 39.002480>,  <40.134850, 44.742634, 38.623390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255520, 44.701046, 39.002480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383378, -0.923359, 0.020739,
		0.872934, -0.369593, -0.318414,
		0.301675, -0.103969, 0.947725,
		40.346024, 44.669857, 39.286797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820187, 44.146236, 38.819355>,  <40.134850, 44.742634, 38.623390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820187, 44.146236, 38.819355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040028, 44.203716, 39.148544>,  <40.171932, 44.238205, 39.346058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040028, 44.203716, 39.148544>,  <39.820187, 44.146236, 38.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040028, 44.203716, 39.148544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270783, -0.901271, 0.338211,
		0.790322, -0.408730, -0.456432,
		0.549606, 0.143701, 0.822972,
		40.204910, 44.246826, 39.395435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339825, 43.592464, 38.940468>,  <39.820187, 44.146236, 38.819355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339825, 43.592464, 38.940468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208084, 43.749031, 39.284168>,  <40.129040, 43.842972, 39.490391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208084, 43.749031, 39.284168>,  <40.339825, 43.592464, 38.940468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208084, 43.749031, 39.284168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368205, -0.891225, 0.264845,
		0.869455, -0.229155, 0.437649,
		-0.329354, 0.391415, 0.859256,
		40.109280, 43.866455, 39.541946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765606, 44.090298, 38.730873>,  <40.339825, 43.592464, 38.940468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765606, 44.090298, 38.730873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797169, 44.200439, 38.347633>,  <40.816109, 44.266525, 38.117691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797169, 44.200439, 38.347633>,  <40.765606, 44.090298, 38.730873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797169, 44.200439, 38.347633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337355, -0.911765, -0.234257,
		-0.938065, -0.304733, -0.164839,
		0.078909, 0.275358, -0.958098,
		40.820843, 44.283047, 38.060204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305622, 43.783813, 38.183193>,  <40.765606, 44.090298, 38.730873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305622, 43.783813, 38.183193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671852, 43.880657, 38.054752>,  <40.891590, 43.938763, 37.977688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671852, 43.880657, 38.054752>,  <40.305622, 43.783813, 38.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671852, 43.880657, 38.054752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095159, -0.906220, -0.411958,
		-0.390726, 0.346623, -0.852752,
		0.915575, 0.242110, -0.321100,
		40.946526, 43.953289, 37.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325989, 43.584396, 37.450993>,  <40.305622, 43.783813, 38.183193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325989, 43.584396, 37.450993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710293, 43.614323, 37.557831>,  <40.940876, 43.632278, 37.621933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710293, 43.614323, 37.557831>,  <40.325989, 43.584396, 37.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710293, 43.614323, 37.557831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141910, -0.959947, -0.241585,
		0.238322, 0.270009, -0.932898,
		0.960762, 0.074812, 0.267093,
		40.998520, 43.636765, 37.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729126, 43.366924, 36.926140>,  <40.325989, 43.584396, 37.450993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729126, 43.366924, 36.926140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012833, 43.344368, 37.207211>,  <41.183056, 43.330833, 37.375854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012833, 43.344368, 37.207211>,  <40.729126, 43.366924, 36.926140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012833, 43.344368, 37.207211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257572, -0.907145, -0.332783,
		0.656196, 0.417023, -0.628887,
		0.709269, -0.056387, 0.702679,
		41.225613, 43.327454, 37.418015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391205, 43.132439, 36.603901>,  <40.729126, 43.366924, 36.926140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391205, 43.132439, 36.603901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416786, 43.028492, 36.989311>,  <41.432137, 42.966125, 37.220558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416786, 43.028492, 36.989311>,  <41.391205, 43.132439, 36.603901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416786, 43.028492, 36.989311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442371, -0.858077, -0.260790,
		0.894549, 0.442914, 0.060082,
		0.063953, -0.259868, 0.963524,
		41.435970, 42.950531, 37.278370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036915, 42.898087, 36.723568>,  <41.391205, 43.132439, 36.603901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036915, 42.898087, 36.723568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835808, 42.746265, 37.034222>,  <41.715145, 42.655170, 37.220615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835808, 42.746265, 37.034222>,  <42.036915, 42.898087, 36.723568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835808, 42.746265, 37.034222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288418, -0.920616, -0.263213,
		0.814888, 0.091661, 0.572325,
		-0.502766, -0.379557, 0.776636,
		41.684978, 42.632397, 37.267212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435909, 42.757370, 37.270683>,  <42.036915, 42.898087, 36.723568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435909, 42.757370, 37.270683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130939, 42.628918, 37.495392>,  <41.947960, 42.551846, 37.630219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130939, 42.628918, 37.495392>,  <42.435909, 42.757370, 37.270683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130939, 42.628918, 37.495392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237190, -0.946430, -0.219114,
		0.602041, -0.033811, 0.797749,
		-0.762422, -0.321134, 0.561770,
		41.902214, 42.532578, 37.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724545, 42.134216, 37.558559>,  <42.435909, 42.757370, 37.270683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724545, 42.134216, 37.558559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324558, 42.136845, 37.556286>,  <42.084568, 42.138424, 37.554920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324558, 42.136845, 37.556286>,  <42.724545, 42.134216, 37.558559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324558, 42.136845, 37.556286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005582, -0.987134, -0.159797,
		-0.006664, -0.159759, 0.987134,
		-0.999963, 0.006575, -0.005686,
		42.024570, 42.138817, 37.554581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538319, 41.572147, 37.985741>,  <42.724545, 42.134216, 37.558559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538319, 41.572147, 37.985741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201283, 41.635548, 37.779858>,  <41.999062, 41.673588, 37.656326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201283, 41.635548, 37.779858>,  <42.538319, 41.572147, 37.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201283, 41.635548, 37.779858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043797, -0.972713, -0.227839,
		-0.536774, -0.169432, 0.826539,
		-0.842589, 0.158498, -0.514707,
		41.948505, 41.683098, 37.625446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948578, 41.156197, 38.231857>,  <42.538319, 41.572147, 37.985741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948578, 41.156197, 38.231857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884151, 41.213177, 37.841213>,  <41.845497, 41.247364, 37.606827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884151, 41.213177, 37.841213>,  <41.948578, 41.156197, 38.231857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884151, 41.213177, 37.841213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220418, -0.969727, -0.105095,
		-0.962016, 0.198335, 0.187588,
		-0.161065, 0.142450, -0.976609,
		41.835831, 41.255913, 37.548229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578880, 40.548618, 38.118587>,  <41.948578, 41.156197, 38.231857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578880, 40.548618, 38.118587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608543, 40.700142, 37.749588>,  <41.626343, 40.791058, 37.528187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608543, 40.700142, 37.749588>,  <41.578880, 40.548618, 38.118587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608543, 40.700142, 37.749588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512053, -0.779327, -0.361182,
		-0.855747, 0.499152, 0.136178,
		0.074157, 0.378811, -0.922498,
		41.630791, 40.813786, 37.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991062, 40.352715, 37.725201>,  <41.578880, 40.548618, 38.118587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991062, 40.352715, 37.725201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229771, 40.448483, 37.418858>,  <41.372997, 40.505943, 37.235050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229771, 40.448483, 37.418858>,  <40.991062, 40.352715, 37.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229771, 40.448483, 37.418858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291819, -0.824333, -0.485094,
		-0.747466, 0.512983, -0.422071,
		0.596772, 0.239423, -0.765859,
		41.408802, 40.520309, 37.189098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665924, 40.222488, 37.085545>,  <40.991062, 40.352715, 37.725201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665924, 40.222488, 37.085545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050621, 40.210381, 36.976639>,  <41.281441, 40.203114, 36.911293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050621, 40.210381, 36.976639>,  <40.665924, 40.222488, 37.085545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050621, 40.210381, 36.976639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199079, -0.759967, -0.618723,
		-0.188183, 0.649257, -0.736921,
		0.961746, -0.030272, -0.272266,
		41.339146, 40.201298, 36.894958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698689, 39.862217, 36.379520>,  <40.665924, 40.222488, 37.085545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698689, 39.862217, 36.379520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082573, 39.835381, 36.488670>,  <41.312904, 39.819279, 36.554161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082573, 39.835381, 36.488670>,  <40.698689, 39.862217, 36.379520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082573, 39.835381, 36.488670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099917, -0.826138, -0.554538,
		0.262640, 0.559459, -0.786146,
		0.959706, -0.067095, 0.272876,
		41.370483, 39.815250, 36.570534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108437, 39.887196, 35.797504>,  <40.698689, 39.862217, 36.379520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108437, 39.887196, 35.797504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332932, 39.695377, 36.067333>,  <41.467628, 39.580288, 36.229233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332932, 39.695377, 36.067333>,  <41.108437, 39.887196, 35.797504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332932, 39.695377, 36.067333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278138, -0.658364, -0.699425,
		0.779520, 0.580169, -0.236120,
		0.561238, -0.479542, 0.674575,
		41.501305, 39.551514, 36.269707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520550, 39.525539, 35.383522>,  <41.108437, 39.887196, 35.797504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520550, 39.525539, 35.383522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633083, 39.389305, 35.742374>,  <41.700603, 39.307564, 35.957687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633083, 39.389305, 35.742374>,  <41.520550, 39.525539, 35.383522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633083, 39.389305, 35.742374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388389, -0.814486, -0.431006,
		0.877500, 0.469693, -0.096860,
		0.281331, -0.340589, 0.897135,
		41.717484, 39.287128, 36.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325481, 39.418587, 35.429821>,  <41.520550, 39.525539, 35.383522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325481, 39.418587, 35.429821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075542, 39.185780, 35.637985>,  <41.925579, 39.046097, 35.762886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075542, 39.185780, 35.637985>,  <42.325481, 39.418587, 35.429821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075542, 39.185780, 35.637985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215601, -0.769264, -0.601455,
		0.750390, -0.263615, 0.606153,
		-0.624844, -0.582013, 0.520413,
		41.888088, 39.011177, 35.794109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645828, 38.848595, 35.774208>,  <42.325481, 39.418587, 35.429821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645828, 38.848595, 35.774208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286453, 38.761929, 35.621441>,  <42.070827, 38.709930, 35.529781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286453, 38.761929, 35.621441>,  <42.645828, 38.848595, 35.774208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286453, 38.761929, 35.621441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422375, -0.664161, -0.616838,
		-0.120005, -0.715504, 0.688224,
		-0.898442, -0.216665, -0.381913,
		42.016922, 38.696930, 35.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822205, 38.419270, 35.276928>,  <42.645828, 38.848595, 35.774208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822205, 38.419270, 35.276928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423748, 38.431667, 35.244072>,  <42.184673, 38.439106, 35.224358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423748, 38.431667, 35.244072>,  <42.822205, 38.419270, 35.276928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423748, 38.431667, 35.244072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048047, -0.590562, -0.805561,
		-0.073479, -0.806397, 0.586792,
		-0.996139, 0.030998, -0.082139,
		42.124905, 38.440968, 35.219429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665615, 37.803608, 35.067520>,  <42.822205, 38.419270, 35.276928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665615, 37.803608, 35.067520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320404, 37.985611, 34.979752>,  <42.113277, 38.094814, 34.927090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320404, 37.985611, 34.979752>,  <42.665615, 37.803608, 35.067520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320404, 37.985611, 34.979752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151447, -0.647443, -0.746915,
		-0.481917, -0.611379, 0.627672,
		-0.863029, 0.455010, -0.219423,
		42.061497, 38.122112, 34.913925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144199, 37.251442, 34.958961>,  <42.665615, 37.803608, 35.067520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144199, 37.251442, 34.958961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987255, 37.571411, 34.777336>,  <41.893089, 37.763393, 34.668362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987255, 37.571411, 34.777336>,  <42.144199, 37.251442, 34.958961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987255, 37.571411, 34.777336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283324, -0.574755, -0.767714,
		-0.875089, -0.172572, 0.452148,
		-0.392360, 0.799923, -0.454068,
		41.869549, 37.811386, 34.641117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721848, 36.802925, 35.335285>,  <42.144199, 37.251442, 34.958961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721848, 36.802925, 35.335285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793564, 36.455925, 35.520885>,  <42.836594, 36.247723, 35.632244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793564, 36.455925, 35.520885>,  <42.721848, 36.802925, 35.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793564, 36.455925, 35.520885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322806, -0.497402, -0.805225,
		0.929329, -0.005414, -0.369213,
		0.179288, -0.867503, 0.463998,
		42.847351, 36.195675, 35.660084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393311, 36.447910, 35.081825>,  <42.721848, 36.802925, 35.335285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393311, 36.447910, 35.081825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092365, 36.193520, 35.150517>,  <42.911800, 36.040886, 35.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092365, 36.193520, 35.150517>,  <43.393311, 36.447910, 35.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092365, 36.193520, 35.150517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065355, -0.331454, -0.941205,
		0.655503, -0.696901, 0.290936,
		-0.752359, -0.635977, 0.171724,
		42.866657, 36.002728, 35.202034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724346, 35.749191, 35.004589>,  <43.393311, 36.447910, 35.081825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724346, 35.749191, 35.004589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332752, 35.767471, 34.925098>,  <43.097794, 35.778439, 34.877403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332752, 35.767471, 34.925098>,  <43.724346, 35.749191, 35.004589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332752, 35.767471, 34.925098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150951, -0.492806, -0.856946,
		-0.137093, -0.868939, 0.475553,
		-0.978989, 0.045696, -0.198728,
		43.039055, 35.781181, 34.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424030, 35.386574, 34.823002>,  <43.724346, 35.749191, 35.004589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424030, 35.386574, 34.823002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814571, 35.348122, 34.745552>,  <45.048897, 35.325050, 34.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814571, 35.348122, 34.745552>,  <44.424030, 35.386574, 34.823002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814571, 35.348122, 34.745552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043581, 0.789762, -0.611863,
		0.211731, 0.605834, 0.766899,
		0.976356, -0.096128, -0.193620,
		45.107479, 35.319283, 34.687466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833630, 35.992878, 35.044857>,  <44.424030, 35.386574, 34.823002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833630, 35.992878, 35.044857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981239, 35.801151, 34.726341>,  <45.069805, 35.686115, 34.535233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981239, 35.801151, 34.726341>,  <44.833630, 35.992878, 35.044857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981239, 35.801151, 34.726341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250714, 0.773664, -0.581882,
		0.894965, 0.414370, 0.165331,
		0.369025, -0.479313, -0.796291,
		45.091946, 35.657356, 34.487453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032223, 35.354733, 35.323711>,  <44.833630, 35.992878, 35.044857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032223, 35.354733, 35.323711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923431, 35.112896, 35.623177>,  <44.858158, 34.967793, 35.802856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923431, 35.112896, 35.623177>,  <45.032223, 35.354733, 35.323711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923431, 35.112896, 35.623177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175007, 0.796093, 0.579317,
		-0.946257, 0.026538, -0.322324,
		-0.271974, -0.604592, 0.748664,
		44.841839, 34.931519, 35.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344334, 35.290874, 35.622540>,  <45.032223, 35.354733, 35.323711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344334, 35.290874, 35.622540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603264, 35.229767, 35.921238>,  <44.758621, 35.193104, 36.100456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603264, 35.229767, 35.921238>,  <44.344334, 35.290874, 35.622540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603264, 35.229767, 35.921238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494646, 0.661185, 0.564057,
		-0.579906, -0.734504, 0.352439,
		0.647329, -0.152767, 0.746744,
		44.797462, 35.183937, 36.145260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919071, 35.016392, 36.124107>,  <44.344334, 35.290874, 35.622540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919071, 35.016392, 36.124107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234455, 35.208706, 36.277561>,  <44.423687, 35.324097, 36.369633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234455, 35.208706, 36.277561>,  <43.919071, 35.016392, 36.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234455, 35.208706, 36.277561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595577, 0.752599, 0.280860,
		-0.153688, -0.449930, 0.879740,
		0.788459, 0.480788, 0.383634,
		44.470993, 35.352943, 36.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706604, 35.293121, 36.840717>,  <43.919071, 35.016392, 36.124107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706604, 35.293121, 36.840717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979164, 35.513447, 36.647926>,  <44.142700, 35.645641, 36.532253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979164, 35.513447, 36.647926>,  <43.706604, 35.293121, 36.840717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979164, 35.513447, 36.647926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662393, 0.744207, -0.085971,
		0.311337, 0.377839, 0.871956,
		0.681399, 0.550811, -0.481977,
		44.183582, 35.678692, 36.503334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424980, 35.870834, 36.719910>,  <43.706604, 35.293121, 36.840717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424980, 35.870834, 36.719910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701923, 36.011192, 36.467716>,  <43.868088, 36.095409, 36.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701923, 36.011192, 36.467716>,  <43.424980, 35.870834, 36.719910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701923, 36.011192, 36.467716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536490, 0.834656, -0.124608,
		0.482516, 0.424524, 0.766132,
		0.692356, 0.350897, -0.630488,
		43.909630, 36.116463, 36.278568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697254, 36.522064, 36.951824>,  <43.424980, 35.870834, 36.719910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697254, 36.522064, 36.951824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724770, 36.480118, 36.554981>,  <43.741280, 36.454952, 36.316875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724770, 36.480118, 36.554981>,  <43.697254, 36.522064, 36.951824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724770, 36.480118, 36.554981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533776, 0.836276, -0.125403,
		0.842824, 0.538188, 0.001555,
		0.068791, -0.104863, -0.992105,
		43.745407, 36.448658, 36.257351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455765, 36.453037, 37.170948>,  <43.697254, 36.522064, 36.951824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455765, 36.453037, 37.170948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775063, 36.486374, 36.932331>,  <44.966640, 36.506374, 36.789162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775063, 36.486374, 36.932331>,  <44.455765, 36.453037, 37.170948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775063, 36.486374, 36.932331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472447, 0.527712, 0.705914,
		0.373632, -0.845325, 0.381869,
		0.798243, 0.083339, -0.596541,
		45.014534, 36.511375, 36.753368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971100, 35.989990, 37.281696>,  <44.455765, 36.453037, 37.170948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971100, 35.989990, 37.281696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172100, 36.324665, 37.194569>,  <45.292702, 36.525471, 37.142292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172100, 36.324665, 37.194569>,  <44.971100, 35.989990, 37.281696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172100, 36.324665, 37.194569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181664, 0.144131, 0.972741,
		0.845276, -0.528372, -0.079570,
		0.502500, 0.836689, -0.217817,
		45.322849, 36.575672, 37.129223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440453, 35.968563, 37.746479>,  <44.971100, 35.989990, 37.281696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440453, 35.968563, 37.746479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413330, 36.359333, 37.665459>,  <45.397057, 36.593796, 37.616848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413330, 36.359333, 37.665459>,  <45.440453, 35.968563, 37.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413330, 36.359333, 37.665459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089484, 0.208153, 0.973994,
		0.993678, 0.047916, -0.101533,
		-0.067804, 0.976922, -0.202549,
		45.392990, 36.652409, 37.604694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218792, 36.055145, 37.891899>,  <45.440453, 35.968563, 37.746479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218792, 36.055145, 37.891899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987747, 35.940674, 37.586098>,  <45.849121, 35.871990, 37.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987747, 35.940674, 37.586098>,  <46.218792, 36.055145, 37.891899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987747, 35.940674, 37.586098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757986, 0.159608, -0.632442,
		0.303014, -0.944788, 0.124730,
		-0.577616, -0.286182, -0.764500,
		45.814461, 35.854820, 37.356747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668976, 35.638870, 37.597324>,  <46.218792, 36.055145, 37.891899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668976, 35.638870, 37.597324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392994, 35.672707, 37.309769>,  <46.227406, 35.693008, 37.137234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392994, 35.672707, 37.309769>,  <46.668976, 35.638870, 37.597324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392994, 35.672707, 37.309769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683626, -0.250304, -0.685568,
		-0.237932, -0.964465, 0.114873,
		-0.689959, 0.084589, -0.718888,
		46.186005, 35.698086, 37.094101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738831, 35.030174, 37.243271>,  <46.668976, 35.638870, 37.597324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738831, 35.030174, 37.243271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660656, 35.362865, 37.035412>,  <46.613750, 35.562481, 36.910698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660656, 35.362865, 37.035412>,  <46.738831, 35.030174, 37.243271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660656, 35.362865, 37.035412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843161, -0.128121, -0.522173,
		-0.500885, -0.540195, -0.676243,
		-0.195435, 0.831730, -0.519645,
		46.602024, 35.612385, 36.879517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850845, 34.917076, 36.482208>,  <46.738831, 35.030174, 37.243271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850845, 34.917076, 36.482208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914349, 35.303165, 36.565285>,  <46.952450, 35.534821, 36.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914349, 35.303165, 36.565285>,  <46.850845, 34.917076, 36.482208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914349, 35.303165, 36.565285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704194, 0.036746, -0.709056,
		-0.692032, 0.258817, -0.673873,
		0.158754, 0.965227, 0.207687,
		46.961975, 35.592735, 36.627590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310802, 35.418404, 36.064331>,  <46.850845, 34.917076, 36.482208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310802, 35.418404, 36.064331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658310, 35.222065, 36.090611>,  <47.866814, 35.104263, 36.106377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658310, 35.222065, 36.090611>,  <47.310802, 35.418404, 36.064331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658310, 35.222065, 36.090611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474203, -0.862780, -0.175334,
		0.142744, 0.121170, -0.982315,
		0.868767, -0.490845, 0.065697,
		47.918941, 35.074810, 36.110321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417721, 35.187748, 35.406155>,  <47.310802, 35.418404, 36.064331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417721, 35.187748, 35.406155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615910, 34.981506, 35.685772>,  <47.734825, 34.857761, 35.853542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615910, 34.981506, 35.685772>,  <47.417721, 35.187748, 35.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.615910, 34.981506, 35.685772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525219, -0.818822, -0.231680,
		0.691845, -0.252357, -0.676511,
		0.495476, -0.515603, 0.699041,
		47.764553, 34.826824, 35.895485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.057671, 35.183174, 35.016640>,  <47.417721, 35.187748, 35.406155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.057671, 35.183174, 35.016640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731304, 35.219067, 34.788177>,  <47.535484, 35.240601, 34.651100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731304, 35.219067, 34.788177>,  <48.057671, 35.183174, 35.016640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731304, 35.219067, 34.788177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181991, 0.977525, -0.106409,
		0.548775, -0.190768, -0.813913,
		-0.815920, 0.089731, -0.571159,
		47.486526, 35.245987, 34.616829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.288925, 28.898540, 30.827423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900257, 28.969734, 30.765228>,  <38.667057, 29.012451, 30.727911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900257, 28.969734, 30.765228>,  <39.288925, 28.898540, 30.827423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900257, 28.969734, 30.765228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051315, 0.801097, 0.596331,
		0.230697, 0.571459, -0.787537,
		-0.971672, 0.177984, -0.155486,
		38.608757, 29.023129, 30.718582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157642, 29.614065, 30.755758>,  <39.288925, 28.898540, 30.827423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157642, 29.614065, 30.755758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783669, 29.504429, 30.845896>,  <38.559284, 29.438646, 30.899979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783669, 29.504429, 30.845896>,  <39.157642, 29.614065, 30.755758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783669, 29.504429, 30.845896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109963, 0.827613, 0.550423,
		-0.337362, 0.489828, -0.803900,
		-0.934931, -0.274091, 0.225342,
		38.503189, 29.422201, 30.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679054, 30.228798, 30.653233>,  <39.157642, 29.614065, 30.755758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679054, 30.228798, 30.653233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525875, 29.980032, 30.926455>,  <38.433968, 29.830772, 31.090387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525875, 29.980032, 30.926455>,  <38.679054, 30.228798, 30.653233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525875, 29.980032, 30.926455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059942, 0.754596, 0.653446,
		-0.921821, 0.209295, -0.326254,
		-0.382953, -0.621917, 0.683057,
		38.410988, 29.793457, 31.131372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032234, 30.519859, 30.866863>,  <38.679054, 30.228798, 30.653233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032234, 30.519859, 30.866863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089195, 30.261356, 31.166748>,  <38.123371, 30.106255, 31.346680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089195, 30.261356, 31.166748>,  <38.032234, 30.519859, 30.866863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089195, 30.261356, 31.166748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474463, 0.620172, 0.624717,
		-0.868680, -0.444675, -0.218309,
		0.142407, -0.646259, 0.749713,
		38.131916, 30.067478, 31.391663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450771, 30.452654, 31.252964>,  <38.032234, 30.519859, 30.866863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450771, 30.452654, 31.252964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741436, 30.350990, 31.508263>,  <37.915836, 30.289991, 31.661442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741436, 30.350990, 31.508263>,  <37.450771, 30.452654, 31.252964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741436, 30.350990, 31.508263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363604, 0.645966, 0.671208,
		-0.582881, -0.719813, 0.376987,
		0.726665, -0.254160, 0.638248,
		37.959435, 30.274742, 31.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092117, 30.564690, 31.751715>,  <37.450771, 30.452654, 31.252964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092117, 30.564690, 31.751715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462502, 30.506845, 31.891245>,  <37.684734, 30.472139, 31.974962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462502, 30.506845, 31.891245>,  <37.092117, 30.564690, 31.751715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462502, 30.506845, 31.891245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168159, 0.669199, 0.723806,
		-0.338105, -0.728876, 0.595336,
		0.925963, -0.144611, 0.348826,
		37.740292, 30.463463, 31.995893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054199, 30.328554, 32.477795>,  <37.092117, 30.564690, 31.751715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054199, 30.328554, 32.477795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398247, 30.517767, 32.401443>,  <37.604675, 30.631294, 32.355633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398247, 30.517767, 32.401443>,  <37.054199, 30.328554, 32.477795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398247, 30.517767, 32.401443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205550, 0.663890, 0.719026,
		0.466844, -0.579214, 0.668257,
		0.860120, 0.473034, -0.190876,
		37.656284, 30.659678, 32.344181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354782, 30.494364, 33.107681>,  <37.054199, 30.328554, 32.477795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354782, 30.494364, 33.107681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568699, 30.746050, 32.882084>,  <37.697048, 30.897060, 32.746727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568699, 30.746050, 32.882084>,  <37.354782, 30.494364, 33.107681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568699, 30.746050, 32.882084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068393, 0.697501, 0.713313,
		0.842210, -0.342903, 0.416054,
		0.534795, 0.629214, -0.563990,
		37.729137, 30.934814, 32.712887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768578, 30.939081, 33.546265>,  <37.354782, 30.494364, 33.107681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768578, 30.939081, 33.546265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763851, 31.157951, 33.211491>,  <37.761013, 31.289274, 33.010628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763851, 31.157951, 33.211491>,  <37.768578, 30.939081, 33.546265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763851, 31.157951, 33.211491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034706, 0.836264, 0.547228,
		0.999328, 0.035515, 0.009106,
		-0.011820, 0.547176, -0.836934,
		37.760303, 31.322104, 32.960411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324200, 31.470600, 33.628353>,  <37.768578, 30.939081, 33.546265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324200, 31.470600, 33.628353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047707, 31.569725, 33.356831>,  <37.881809, 31.629200, 33.193916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047707, 31.569725, 33.356831>,  <38.324200, 31.470600, 33.628353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047707, 31.569725, 33.356831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080595, 0.907062, 0.413211,
		0.718122, 0.340334, -0.607020,
		-0.691234, 0.247813, -0.678810,
		37.840336, 31.644070, 33.153187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480103, 32.109627, 33.433689>,  <38.324200, 31.470600, 33.628353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480103, 32.109627, 33.433689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088554, 32.057777, 33.370426>,  <37.853626, 32.026669, 33.332470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088554, 32.057777, 33.370426>,  <38.480103, 32.109627, 33.433689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088554, 32.057777, 33.370426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175112, 0.930754, 0.320989,
		0.105597, 0.341901, -0.933784,
		-0.978869, -0.129621, -0.158155,
		37.794895, 32.018890, 33.322979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384083, 32.664864, 33.031242>,  <38.480103, 32.109627, 33.433689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384083, 32.664864, 33.031242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038837, 32.573757, 33.211536>,  <37.831692, 32.519093, 33.319714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038837, 32.573757, 33.211536>,  <38.384083, 32.664864, 33.031242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038837, 32.573757, 33.211536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031852, 0.915295, 0.401522,
		-0.504005, 0.332202, -0.797258,
		-0.863113, -0.227764, 0.450732,
		37.779903, 32.505428, 33.346756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150101, 33.362995, 33.143085>,  <38.384083, 32.664864, 33.031242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150101, 33.362995, 33.143085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902699, 33.142895, 33.367466>,  <37.754257, 33.010834, 33.502094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902699, 33.142895, 33.367466>,  <38.150101, 33.362995, 33.143085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902699, 33.142895, 33.367466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193059, 0.798417, 0.570315,
		-0.761692, 0.244447, -0.600059,
		-0.618509, -0.550251, 0.560955,
		37.717148, 32.977818, 33.535751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507557, 33.672134, 33.149662>,  <38.150101, 33.362995, 33.143085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507557, 33.672134, 33.149662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539230, 33.452267, 33.482311>,  <37.558235, 33.320347, 33.681900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539230, 33.452267, 33.482311>,  <37.507557, 33.672134, 33.149662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539230, 33.452267, 33.482311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108161, 0.824580, 0.555310,
		-0.990975, -0.133920, 0.005839,
		0.079181, -0.549667, 0.831623,
		37.562984, 33.287365, 33.731796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919762, 33.887730, 33.536697>,  <37.507557, 33.672134, 33.149662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919762, 33.887730, 33.536697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173367, 33.733517, 33.804844>,  <37.325531, 33.640987, 33.965733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173367, 33.733517, 33.804844>,  <36.919762, 33.887730, 33.536697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173367, 33.733517, 33.804844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200254, 0.755450, 0.623854,
		-0.746946, -0.529775, 0.401759,
		0.634011, -0.385531, 0.670369,
		37.363571, 33.617859, 34.005955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676529, 34.025364, 34.229824>,  <36.919762, 33.887730, 33.536697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676529, 34.025364, 34.229824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061630, 33.954525, 34.311554>,  <37.292690, 33.912022, 34.360592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061630, 33.954525, 34.311554>,  <36.676529, 34.025364, 34.229824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061630, 33.954525, 34.311554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040231, 0.653422, 0.755924,
		-0.267382, -0.735986, 0.621958,
		0.962750, -0.177098, 0.204323,
		37.350456, 33.901394, 34.372852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781528, 33.931965, 35.023926>,  <36.676529, 34.025364, 34.229824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781528, 33.931965, 35.023926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132725, 34.027916, 34.858231>,  <37.343441, 34.085487, 34.758812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132725, 34.027916, 34.858231>,  <36.781528, 33.931965, 35.023926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132725, 34.027916, 34.858231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141268, 0.696985, 0.703033,
		0.457358, -0.675774, 0.578059,
		0.877990, 0.239877, -0.414237,
		37.396122, 34.099880, 34.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076096, 34.041882, 35.609562>,  <36.781528, 33.931965, 35.023926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076096, 34.041882, 35.609562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.308357, 34.201382, 35.325638>,  <37.447716, 34.297081, 35.155281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.308357, 34.201382, 35.325638>,  <37.076096, 34.041882, 35.609562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308357, 34.201382, 35.325638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144990, 0.807265, 0.572102,
		0.801138, -0.435109, 0.410924,
		0.580651, 0.398753, -0.709817,
		37.482555, 34.321007, 35.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751621, 34.202980, 35.853676>,  <37.076096, 34.041882, 35.609562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751621, 34.202980, 35.853676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680492, 34.454922, 35.551243>,  <37.637814, 34.606087, 35.369781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680492, 34.454922, 35.551243>,  <37.751621, 34.202980, 35.853676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680492, 34.454922, 35.551243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266015, 0.770492, 0.579291,
		0.947425, -0.098118, -0.304562,
		-0.177824, 0.629853, -0.756085,
		37.627144, 34.643879, 35.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314602, 34.575104, 35.919373>,  <37.751621, 34.202980, 35.853676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314602, 34.575104, 35.919373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061253, 34.784672, 35.691566>,  <37.909245, 34.910412, 35.554882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061253, 34.784672, 35.691566>,  <38.314602, 34.575104, 35.919373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061253, 34.784672, 35.691566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331752, 0.848727, 0.411828,
		0.699130, 0.071901, -0.711370,
		-0.633370, 0.523920, -0.569518,
		37.871243, 34.941849, 35.520710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753563, 35.085228, 35.632473>,  <38.314602, 34.575104, 35.919373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753563, 35.085228, 35.632473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385532, 35.236164, 35.590393>,  <38.164715, 35.326725, 35.565147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385532, 35.236164, 35.590393>,  <38.753563, 35.085228, 35.632473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385532, 35.236164, 35.590393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292616, 0.840573, 0.455865,
		0.260443, 0.388650, -0.883810,
		-0.920079, 0.377344, -0.105196,
		38.109509, 35.349369, 35.558834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822819, 35.719570, 35.281651>,  <38.753563, 35.085228, 35.632473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822819, 35.719570, 35.281651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464878, 35.748657, 35.457813>,  <38.250114, 35.766109, 35.563511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464878, 35.748657, 35.457813>,  <38.822819, 35.719570, 35.281651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464878, 35.748657, 35.457813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278956, 0.861343, 0.424585,
		-0.348462, 0.502793, -0.791058,
		-0.894851, 0.072719, 0.440402,
		38.196423, 35.770473, 35.589935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469780, 35.702358, 35.758430>,  <38.822819, 35.719570, 35.281651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469780, 35.702358, 35.758430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865360, 35.656460, 35.795959>,  <40.102711, 35.628922, 35.818478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865360, 35.656460, 35.795959>,  <39.469780, 35.702358, 35.758430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865360, 35.656460, 35.795959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039700, -0.814933, -0.578194,
		0.142800, 0.568083, -0.810488,
		0.988955, -0.114742, 0.093819,
		40.162048, 35.622036, 35.824104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796284, 35.656471, 35.054756>,  <39.469780, 35.702358, 35.758430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796284, 35.656471, 35.054756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045319, 35.481903, 35.314579>,  <40.194740, 35.377163, 35.470470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045319, 35.481903, 35.314579>,  <39.796284, 35.656471, 35.054756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045319, 35.481903, 35.314579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223150, -0.696574, -0.681901,
		0.750060, 0.569490, -0.336289,
		0.622586, -0.436424, 0.649554,
		40.232094, 35.350975, 35.509445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402672, 35.583603, 34.707165>,  <39.796284, 35.656471, 35.054756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402672, 35.583603, 34.707165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393768, 35.311455, 35.000175>,  <40.388428, 35.148167, 35.175983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393768, 35.311455, 35.000175>,  <40.402672, 35.583603, 34.707165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393768, 35.311455, 35.000175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360637, -0.688841, -0.628840,
		0.932441, 0.250178, 0.260701,
		-0.022260, -0.680375, 0.732527,
		40.387089, 35.107342, 35.219933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004368, 35.214321, 34.568310>,  <40.402672, 35.583603, 34.707165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004368, 35.214321, 34.568310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800457, 34.997623, 34.835632>,  <40.678108, 34.867603, 34.996025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800457, 34.997623, 34.835632>,  <41.004368, 35.214321, 34.568310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800457, 34.997623, 34.835632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230684, -0.834455, -0.500469,
		0.828800, -0.100961, 0.550361,
		-0.509780, -0.541748, 0.668307,
		40.647522, 34.835098, 35.036125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460506, 34.719929, 34.812340>,  <41.004368, 35.214321, 34.568310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460506, 34.719929, 34.812340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.082531, 34.594650, 34.850277>,  <40.855747, 34.519482, 34.873039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.082531, 34.594650, 34.850277>,  <41.460506, 34.719929, 34.812340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082531, 34.594650, 34.850277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229467, -0.840791, -0.490322,
		0.233313, -0.441561, 0.866365,
		-0.944939, -0.313201, 0.094843,
		40.799049, 34.500690, 34.878731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658813, 34.020092, 34.659481>,  <41.460506, 34.719929, 34.812340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658813, 34.020092, 34.659481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261883, 34.042622, 34.703506>,  <41.023724, 34.056141, 34.729923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261883, 34.042622, 34.703506>,  <41.658813, 34.020092, 34.659481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261883, 34.042622, 34.703506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094320, -0.920441, -0.379330,
		0.079944, -0.386801, 0.918691,
		-0.992327, 0.056326, 0.110067,
		40.964184, 34.059521, 34.736526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453915, 33.316170, 34.897877>,  <41.658813, 34.020092, 34.659481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453915, 33.316170, 34.897877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137344, 33.489979, 34.725903>,  <40.947403, 33.594265, 34.622719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137344, 33.489979, 34.725903>,  <41.453915, 33.316170, 34.897877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137344, 33.489979, 34.725903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192217, -0.844575, -0.499745,
		-0.580262, -0.312868, 0.751937,
		-0.791422, 0.434519, -0.429936,
		40.899918, 33.620335, 34.596920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820675, 32.825375, 34.946350>,  <41.453915, 33.316170, 34.897877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820675, 32.825375, 34.946350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767933, 33.083008, 34.644947>,  <40.736286, 33.237587, 34.464108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767933, 33.083008, 34.644947>,  <40.820675, 32.825375, 34.946350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767933, 33.083008, 34.644947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131372, -0.764790, -0.630744,
		-0.982525, 0.015820, 0.185458,
		-0.131857, 0.644086, -0.753503,
		40.728374, 33.276234, 34.418896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356884, 32.543823, 34.620689>,  <40.820675, 32.825375, 34.946350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356884, 32.543823, 34.620689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.488483, 32.772892, 34.320343>,  <40.567444, 32.910336, 34.140137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.488483, 32.772892, 34.320343>,  <40.356884, 32.543823, 34.620689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488483, 32.772892, 34.320343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257781, -0.710470, -0.654814,
		-0.908464, 0.408994, -0.086120,
		0.329001, 0.572675, -0.750867,
		40.587185, 32.944695, 34.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890583, 32.455544, 33.991749>,  <40.356884, 32.543823, 34.620689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890583, 32.455544, 33.991749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231720, 32.578812, 33.823132>,  <40.436401, 32.652771, 33.721962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231720, 32.578812, 33.823132>,  <39.890583, 32.455544, 33.991749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231720, 32.578812, 33.823132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002671, -0.809849, -0.586632,
		-0.522165, 0.499178, -0.691495,
		0.852841, 0.308166, -0.421541,
		40.487572, 32.671261, 33.696671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731758, 32.381405, 33.258823>,  <39.890583, 32.455544, 33.991749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731758, 32.381405, 33.258823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130470, 32.387985, 33.290230>,  <40.369698, 32.391933, 33.309074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130470, 32.387985, 33.290230>,  <39.731758, 32.381405, 33.258823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130470, 32.387985, 33.290230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069952, -0.657358, -0.750325,
		0.039265, 0.753399, -0.656390,
		0.996777, 0.016454, 0.078513,
		40.429504, 32.392921, 33.313782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043827, 32.585052, 32.554680>,  <39.731758, 32.381405, 33.258823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043827, 32.585052, 32.554680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335697, 32.392952, 32.749382>,  <40.510818, 32.277691, 32.866203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335697, 32.392952, 32.749382>,  <40.043827, 32.585052, 32.554680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335697, 32.392952, 32.749382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176972, -0.554956, -0.812837,
		0.660493, 0.679251, -0.319948,
		0.729678, -0.480252, 0.486753,
		40.554600, 32.248875, 32.895409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548145, 32.615330, 32.051758>,  <40.043827, 32.585052, 32.554680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548145, 32.615330, 32.051758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681759, 32.363346, 32.332207>,  <40.761929, 32.212154, 32.500477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681759, 32.363346, 32.332207>,  <40.548145, 32.615330, 32.051758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681759, 32.363346, 32.332207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372234, -0.595218, -0.712149,
		0.865945, 0.498867, 0.035666,
		0.334038, -0.629958, 0.701121,
		40.781971, 32.174358, 32.542542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224823, 32.358852, 31.829727>,  <40.548145, 32.615330, 32.051758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224823, 32.358852, 31.829727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.082207, 32.104187, 32.103233>,  <40.996635, 31.951387, 32.267338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.082207, 32.104187, 32.103233>,  <41.224823, 32.358852, 31.829727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082207, 32.104187, 32.103233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331995, -0.770437, -0.544248,
		0.873302, 0.032959, 0.486063,
		-0.356543, -0.636663, 0.683767,
		40.975243, 31.913189, 32.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790161, 31.875607, 31.884888>,  <41.224823, 32.358852, 31.829727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790161, 31.875607, 31.884888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.457283, 31.672916, 31.974937>,  <41.257557, 31.551302, 32.028969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.457283, 31.672916, 31.974937>,  <41.790161, 31.875607, 31.884888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457283, 31.672916, 31.974937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285901, -0.740015, -0.608801,
		0.475090, -0.442278, 0.760710,
		-0.832196, -0.506723, 0.225126,
		41.207623, 31.520899, 32.042477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013363, 31.201763, 32.010948>,  <41.790161, 31.875607, 31.884888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013363, 31.201763, 32.010948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620083, 31.188089, 31.939222>,  <41.384117, 31.179884, 31.896187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620083, 31.188089, 31.939222>,  <42.013363, 31.201763, 32.010948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620083, 31.188089, 31.939222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127781, -0.830401, -0.542316,
		-0.130362, -0.556117, 0.820817,
		-0.983198, -0.034187, -0.179314,
		41.325123, 31.177834, 31.885427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737701, 30.504612, 32.267735>,  <42.013363, 31.201763, 32.010948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737701, 30.504612, 32.267735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.484367, 30.651630, 31.995325>,  <41.332367, 30.739841, 31.831879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.484367, 30.651630, 31.995325>,  <41.737701, 30.504612, 32.267735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484367, 30.651630, 31.995325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141558, -0.920191, -0.364980,
		-0.760820, -0.134750, 0.634819,
		-0.633336, 0.367547, -0.681025,
		41.294365, 30.761894, 31.791018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103237, 30.078882, 32.350838>,  <41.737701, 30.504612, 32.267735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103237, 30.078882, 32.350838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.147667, 30.250608, 31.992319>,  <41.174324, 30.353643, 31.777208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.147667, 30.250608, 31.992319>,  <41.103237, 30.078882, 32.350838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147667, 30.250608, 31.992319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049058, -0.898411, -0.436407,
		-0.992600, 0.092445, -0.078732,
		0.111078, 0.429316, -0.896298,
		41.180992, 30.379404, 31.723431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.541012, 29.825150, 32.010586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734814, 29.973173, 31.693523>,  <40.851097, 30.061987, 31.503284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734814, 29.973173, 31.693523>,  <40.541012, 29.825150, 32.010586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734814, 29.973173, 31.693523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240918, -0.814630, -0.527575,
		-0.840959, 0.446579, -0.305540,
		0.484507, 0.370059, -0.792660,
		40.880165, 30.084190, 31.455725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164120, 29.729879, 31.462141>,  <40.541012, 29.825150, 32.010586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164120, 29.729879, 31.462141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521721, 29.784533, 31.291454>,  <40.736282, 29.817324, 31.189043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521721, 29.784533, 31.291454>,  <40.164120, 29.729879, 31.462141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521721, 29.784533, 31.291454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232835, -0.672013, -0.702984,
		-0.382810, 0.727825, -0.568970,
		0.894005, 0.136633, -0.426717,
		40.789921, 29.825523, 31.163439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028973, 29.792877, 30.814583>,  <40.164120, 29.729879, 31.462141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028973, 29.792877, 30.814583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416931, 29.695871, 30.823463>,  <40.649704, 29.637667, 30.828793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416931, 29.695871, 30.823463>,  <40.028973, 29.792877, 30.814583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416931, 29.695871, 30.823463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170042, -0.739658, -0.651147,
		0.174335, 0.627768, -0.758627,
		0.969893, -0.242517, 0.022202,
		40.707901, 29.623116, 30.830124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238186, 29.784893, 30.160540>,  <40.028973, 29.792877, 30.814583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238186, 29.784893, 30.160540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518917, 29.568750, 30.346209>,  <40.687355, 29.439066, 30.457609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518917, 29.568750, 30.346209>,  <40.238186, 29.784893, 30.160540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518917, 29.568750, 30.346209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076829, -0.705225, -0.704808,
		0.708191, 0.458993, -0.536461,
		0.701828, -0.540355, 0.464171,
		40.729465, 29.406645, 30.485460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709541, 29.575661, 29.695827>,  <40.238186, 29.784893, 30.160540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709541, 29.575661, 29.695827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754574, 29.306322, 29.988111>,  <40.781593, 29.144720, 30.163481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754574, 29.306322, 29.988111>,  <40.709541, 29.575661, 29.695827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754574, 29.306322, 29.988111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076995, -0.739083, -0.669200,
		0.990655, 0.019076, -0.135048,
		0.112577, -0.673344, 0.730708,
		40.788345, 29.104319, 30.207323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131737, 28.985201, 29.383411>,  <40.709541, 29.575661, 29.695827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131737, 28.985201, 29.383411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986580, 28.802279, 29.708170>,  <40.899487, 28.692526, 29.903025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986580, 28.802279, 29.708170>,  <41.131737, 28.985201, 29.383411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986580, 28.802279, 29.708170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043468, -0.878654, -0.475477,
		0.930816, -0.137257, 0.338737,
		-0.362895, -0.457306, 0.811898,
		40.877712, 28.665087, 29.951740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612568, 28.367802, 29.587729>,  <41.131737, 28.985201, 29.383411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612568, 28.367802, 29.587729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.241611, 28.296671, 29.719379>,  <41.019039, 28.253992, 29.798370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.241611, 28.296671, 29.719379>,  <41.612568, 28.367802, 29.587729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241611, 28.296671, 29.719379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050401, -0.812382, -0.580943,
		0.370682, -0.555350, 0.744434,
		-0.927391, -0.177825, 0.329126,
		40.963394, 28.243324, 29.818117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655483, 27.696098, 29.822199>,  <41.612568, 28.367802, 29.587729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655483, 27.696098, 29.822199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266357, 27.770916, 29.767586>,  <41.032883, 27.815805, 29.734818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266357, 27.770916, 29.767586>,  <41.655483, 27.696098, 29.822199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266357, 27.770916, 29.767586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098405, -0.867603, -0.487423,
		-0.209624, -0.460738, 0.862426,
		-0.972818, 0.187043, -0.136532,
		40.974514, 27.827028, 29.726625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299435, 27.004482, 29.965206>,  <41.655483, 27.696098, 29.822199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299435, 27.004482, 29.965206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041054, 27.223953, 29.752903>,  <40.886024, 27.355637, 29.625521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041054, 27.223953, 29.752903>,  <41.299435, 27.004482, 29.965206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041054, 27.223953, 29.752903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197809, -0.791829, -0.577823,
		-0.737303, -0.268258, 0.620017,
		-0.645953, 0.548676, -0.530754,
		40.847267, 27.388556, 29.593676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685295, 26.515579, 29.831968>,  <41.299435, 27.004482, 29.965206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685295, 26.515579, 29.831968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696491, 26.812349, 29.564009>,  <40.703209, 26.990412, 29.403233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696491, 26.812349, 29.564009>,  <40.685295, 26.515579, 29.831968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696491, 26.812349, 29.564009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007620, -0.670299, -0.742052,
		-0.999579, 0.015668, -0.024417,
		0.027993, 0.741926, -0.669897,
		40.704887, 27.034927, 29.363039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366264, 26.238588, 29.308723>,  <40.685295, 26.515579, 29.831968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366264, 26.238588, 29.308723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543262, 26.541611, 29.116760>,  <40.649460, 26.723423, 29.001583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543262, 26.541611, 29.116760>,  <40.366264, 26.238588, 29.308723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543262, 26.541611, 29.116760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142010, -0.587590, -0.796600,
		-0.885456, 0.284340, -0.367585,
		0.442495, 0.757555, -0.479906,
		40.676010, 26.768877, 28.972788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043179, 26.293283, 28.645929>,  <40.366264, 26.238588, 29.308723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043179, 26.293283, 28.645929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394588, 26.482763, 28.621248>,  <40.605434, 26.596451, 28.606440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394588, 26.482763, 28.621248>,  <40.043179, 26.293283, 28.645929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394588, 26.482763, 28.621248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179810, -0.447575, -0.875982,
		-0.442567, 0.758476, -0.478381,
		0.878523, 0.473699, -0.061700,
		40.658146, 26.624872, 28.602737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078663, 26.784475, 27.999121>,  <40.043179, 26.293283, 28.645929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078663, 26.784475, 27.999121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447628, 26.670656, 28.103573>,  <40.669006, 26.602365, 28.166245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447628, 26.670656, 28.103573>,  <40.078663, 26.784475, 27.999121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447628, 26.670656, 28.103573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172845, -0.300487, -0.937994,
		0.345367, 0.910353, -0.227991,
		0.922413, -0.284545, 0.261128,
		40.724354, 26.585293, 28.181911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391998, 26.831484, 27.395885>,  <40.078663, 26.784475, 27.999121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391998, 26.831484, 27.395885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669956, 26.630861, 27.602016>,  <40.836731, 26.510489, 27.725695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669956, 26.630861, 27.602016>,  <40.391998, 26.831484, 27.395885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669956, 26.630861, 27.602016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391121, -0.337742, -0.856128,
		0.603443, 0.796475, -0.038527,
		0.694896, -0.501555, 0.515327,
		40.878426, 26.480394, 27.756615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067020, 27.028913, 27.171356>,  <40.391998, 26.831484, 27.395885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067020, 27.028913, 27.171356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067970, 26.651306, 27.303310>,  <41.068539, 26.424742, 27.382483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067970, 26.651306, 27.303310>,  <41.067020, 27.028913, 27.171356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067970, 26.651306, 27.303310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478930, -0.288520, -0.829085,
		0.877850, 0.159960, 0.451434,
		0.002373, -0.944017, 0.329887,
		41.068684, 26.368101, 27.402277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719307, 26.830044, 27.069246>,  <41.067020, 27.028913, 27.171356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719307, 26.830044, 27.069246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.523045, 26.482794, 27.099222>,  <41.405289, 26.274445, 27.117208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.523045, 26.482794, 27.099222>,  <41.719307, 26.830044, 27.069246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523045, 26.482794, 27.099222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606790, -0.402139, -0.685631,
		0.625350, -0.290937, 0.724081,
		-0.490657, -0.868124, 0.074940,
		41.375847, 26.222357, 27.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194572, 26.229288, 26.765381>,  <41.719307, 26.830044, 27.069246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194572, 26.229288, 26.765381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834244, 26.055670, 26.769979>,  <41.618046, 25.951498, 26.772738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834244, 26.055670, 26.769979>,  <42.194572, 26.229288, 26.765381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834244, 26.055670, 26.769979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231685, -0.502891, -0.832720,
		0.367220, -0.747465, 0.553575,
		-0.900817, -0.434047, 0.011496,
		41.563999, 25.925455, 26.773428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334442, 25.473280, 26.633844>,  <42.194572, 26.229288, 26.765381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334442, 25.473280, 26.633844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945568, 25.514622, 26.549778>,  <41.712242, 25.539427, 26.499338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945568, 25.514622, 26.549778>,  <42.334442, 25.473280, 26.633844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945568, 25.514622, 26.549778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117565, -0.560749, -0.819597,
		-0.202558, -0.821510, 0.533002,
		-0.972188, 0.103354, -0.210165,
		41.653912, 25.545628, 26.486729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885674, 24.766336, 26.659767>,  <42.334442, 25.473280, 26.633844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885674, 24.766336, 26.659767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.692024, 25.019535, 26.418125>,  <41.575836, 25.171453, 26.273140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.692024, 25.019535, 26.418125>,  <41.885674, 24.766336, 26.659767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692024, 25.019535, 26.418125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032500, -0.676920, -0.735339,
		-0.874397, -0.375627, 0.307139,
		-0.484121, 0.632996, -0.604105,
		41.546787, 25.209435, 26.236895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611736, 24.385443, 26.116047>,  <41.885674, 24.766336, 26.659767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611736, 24.385443, 26.116047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.570698, 24.749870, 25.956331>,  <41.546074, 24.968527, 25.860502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.570698, 24.749870, 25.956331>,  <41.611736, 24.385443, 26.116047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570698, 24.749870, 25.956331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164528, -0.411420, -0.896473,
		-0.981023, -0.026277, 0.192104,
		-0.102593, 0.911067, -0.399289,
		41.539921, 25.023190, 25.836544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015064, 24.268461, 25.620813>,  <41.611736, 24.385443, 26.116047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015064, 24.268461, 25.620813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242771, 24.577700, 25.508915>,  <41.379395, 24.763243, 25.441776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242771, 24.577700, 25.508915>,  <41.015064, 24.268461, 25.620813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242771, 24.577700, 25.508915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049397, -0.307483, -0.950271,
		-0.820667, 0.554777, -0.136852,
		0.569267, 0.773096, -0.279745,
		41.413551, 24.809628, 25.424992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723682, 24.493372, 24.861563>,  <41.015064, 24.268461, 25.620813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723682, 24.493372, 24.861563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076309, 24.673433, 24.918419>,  <41.287884, 24.781469, 24.952532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076309, 24.673433, 24.918419>,  <40.723682, 24.493372, 24.861563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076309, 24.673433, 24.918419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233679, -0.154517, -0.959957,
		-0.410166, 0.879480, -0.241409,
		0.881566, 0.450154, 0.142139,
		41.340778, 24.808479, 24.961060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803982, 24.914660, 24.363136>,  <40.723682, 24.493372, 24.861563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803982, 24.914660, 24.363136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.189228, 24.899582, 24.469709>,  <41.420376, 24.890535, 24.533653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.189228, 24.899582, 24.469709>,  <40.803982, 24.914660, 24.363136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189228, 24.899582, 24.469709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253499, -0.204985, -0.945367,
		0.090249, 0.978039, -0.187869,
		0.963117, -0.037694, 0.266432,
		41.478165, 24.888273, 24.549639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188286, 24.880795, 23.748133>,  <40.803982, 24.914660, 24.363136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188286, 24.880795, 23.748133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840317, 25.031668, 23.621035>,  <39.631535, 25.122192, 23.544775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840317, 25.031668, 23.621035>,  <40.188286, 24.880795, 23.748133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840317, 25.031668, 23.621035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243553, 0.231676, 0.941811,
		0.428850, 0.896693, -0.109677,
		-0.869925, 0.377183, -0.317746,
		39.579338, 25.144823, 23.525711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989632, 25.597122, 23.974932>,  <40.188286, 24.880795, 23.748133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989632, 25.597122, 23.974932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651970, 25.389986, 23.919441>,  <39.449371, 25.265705, 23.886147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651970, 25.389986, 23.919441>,  <39.989632, 25.597122, 23.974932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651970, 25.389986, 23.919441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261909, 0.172569, 0.949539,
		-0.467769, 0.837891, -0.281302,
		-0.844154, -0.517840, -0.138729,
		39.398724, 25.234634, 23.877823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460705, 26.041002, 23.978567>,  <39.989632, 25.597122, 23.974932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460705, 26.041002, 23.978567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.284546, 25.688091, 24.045073>,  <39.178852, 25.476345, 24.084976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.284546, 25.688091, 24.045073>,  <39.460705, 26.041002, 23.978567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284546, 25.688091, 24.045073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380993, 0.351342, 0.855221,
		-0.812956, 0.313287, -0.490870,
		-0.440393, -0.882275, 0.166265,
		39.152428, 25.423409, 24.094952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790779, 26.240049, 24.077246>,  <39.460705, 26.041002, 23.978567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790779, 26.240049, 24.077246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834167, 25.877748, 24.241123>,  <38.860199, 25.660368, 24.339449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834167, 25.877748, 24.241123>,  <38.790779, 26.240049, 24.077246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834167, 25.877748, 24.241123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468840, 0.316801, 0.824516,
		-0.876598, -0.281512, -0.390290,
		0.108467, -0.905752, 0.409692,
		38.866707, 25.606022, 24.364031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389385, 26.271250, 24.547300>,  <38.790779, 26.240049, 24.077246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389385, 26.271250, 24.547300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589336, 25.941273, 24.652819>,  <38.709309, 25.743286, 24.716129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589336, 25.941273, 24.652819>,  <38.389385, 26.271250, 24.547300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589336, 25.941273, 24.652819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312939, 0.111969, 0.943150,
		-0.807582, -0.554015, -0.202186,
		0.499881, -0.824943, 0.263798,
		38.739300, 25.693790, 24.731958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817234, 25.914005, 24.895630>,  <38.389385, 26.271250, 24.547300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817234, 25.914005, 24.895630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174557, 25.805122, 25.038687>,  <38.388950, 25.739794, 25.124521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174557, 25.805122, 25.038687>,  <37.817234, 25.914005, 24.895630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174557, 25.805122, 25.038687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328955, 0.146228, 0.932956,
		-0.306253, -0.951063, 0.041082,
		0.893307, -0.272207, 0.357640,
		38.442551, 25.723461, 25.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695484, 25.510019, 25.561102>,  <37.817234, 25.914005, 24.895630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695484, 25.510019, 25.561102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080307, 25.618887, 25.568724>,  <38.311203, 25.684208, 25.573298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080307, 25.618887, 25.568724>,  <37.695484, 25.510019, 25.561102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080307, 25.618887, 25.568724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052551, 0.116315, 0.991821,
		0.267724, -0.955194, 0.126205,
		0.962061, 0.272167, 0.019056,
		38.368927, 25.700537, 25.574440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943981, 25.239510, 26.148716>,  <37.695484, 25.510019, 25.561102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943981, 25.239510, 26.148716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223358, 25.520048, 26.091742>,  <38.390984, 25.688372, 26.057556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223358, 25.520048, 26.091742>,  <37.943981, 25.239510, 26.148716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223358, 25.520048, 26.091742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016016, 0.214295, 0.976638,
		0.715483, -0.679848, 0.160907,
		0.698446, 0.701345, -0.142436,
		38.432892, 25.730452, 26.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398285, 25.210247, 26.645317>,  <37.943981, 25.239510, 26.148716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398285, 25.210247, 26.645317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434448, 25.589991, 26.524956>,  <38.456146, 25.817837, 26.452740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434448, 25.589991, 26.524956>,  <38.398285, 25.210247, 26.645317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434448, 25.589991, 26.524956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020948, 0.303886, 0.952478,
		0.995684, -0.079811, 0.047362,
		0.090411, 0.949360, -0.300902,
		38.461571, 25.874798, 26.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636879, 25.563097, 27.225161>,  <38.398285, 25.210247, 26.645317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636879, 25.563097, 27.225161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576134, 25.886753, 26.998100>,  <38.539688, 26.080946, 26.861864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576134, 25.886753, 26.998100>,  <38.636879, 25.563097, 27.225161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576134, 25.886753, 26.998100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135663, 0.551815, 0.822859,
		0.979047, 0.201970, 0.025972,
		-0.151861, 0.809141, -0.567653,
		38.530575, 26.129496, 26.827805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171925, 26.077333, 27.309532>,  <38.636879, 25.563097, 27.225161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171925, 26.077333, 27.309532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819199, 26.239182, 27.212626>,  <38.607563, 26.336290, 27.154482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819199, 26.239182, 27.212626>,  <39.171925, 26.077333, 27.309532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819199, 26.239182, 27.212626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025962, 0.554575, 0.831729,
		0.470888, 0.727138, -0.499535,
		-0.881811, 0.404620, -0.242265,
		38.554657, 26.360567, 27.139946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337807, 26.709213, 27.457182>,  <39.171925, 26.077333, 27.309532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337807, 26.709213, 27.457182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940365, 26.740126, 27.424265>,  <38.701900, 26.758673, 27.404514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940365, 26.740126, 27.424265>,  <39.337807, 26.709213, 27.457182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940365, 26.740126, 27.424265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008273, 0.677135, 0.735812,
		0.112587, 0.731789, -0.672167,
		-0.993607, 0.077282, -0.082291,
		38.642284, 26.763309, 27.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242947, 27.421112, 27.522362>,  <39.337807, 26.709213, 27.457182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242947, 27.421112, 27.522362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903030, 27.225777, 27.601738>,  <38.699081, 27.108576, 27.649363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903030, 27.225777, 27.601738>,  <39.242947, 27.421112, 27.522362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903030, 27.225777, 27.601738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113608, 0.537291, 0.835710,
		-0.514729, 0.687636, -0.512065,
		-0.849792, -0.488339, 0.198438,
		38.648094, 27.079275, 27.661270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683605, 27.998283, 27.662296>,  <39.242947, 27.421112, 27.522362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683605, 27.998283, 27.662296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524002, 27.678179, 27.841349>,  <38.428242, 27.486116, 27.948780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524002, 27.678179, 27.841349>,  <38.683605, 27.998283, 27.662296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524002, 27.678179, 27.841349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233722, 0.560812, 0.794270,
		-0.886660, 0.212299, -0.410807,
		-0.399008, -0.800262, 0.447631,
		38.404301, 27.438101, 27.975637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124020, 28.235909, 28.057428>,  <38.683605, 27.998283, 27.662296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124020, 28.235909, 28.057428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163433, 27.864128, 28.199644>,  <38.187080, 27.641060, 28.284973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163433, 27.864128, 28.199644>,  <38.124020, 28.235909, 28.057428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163433, 27.864128, 28.199644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202355, 0.331101, 0.921642,
		-0.974343, -0.162758, -0.155455,
		0.098533, -0.929453, 0.355541,
		38.192993, 27.585293, 28.306307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514923, 28.043291, 28.473705>,  <38.124020, 28.235909, 28.057428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514923, 28.043291, 28.473705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819950, 27.816259, 28.597862>,  <38.002968, 27.680040, 28.672356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819950, 27.816259, 28.597862>,  <37.514923, 28.043291, 28.473705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819950, 27.816259, 28.597862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071678, 0.402723, 0.912511,
		-0.642923, -0.718101, 0.266421,
		0.762570, -0.567578, 0.310391,
		38.048721, 27.645987, 28.690979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349800, 27.626038, 29.046585>,  <37.514923, 28.043291, 28.473705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349800, 27.626038, 29.046585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748730, 27.631968, 29.075241>,  <37.988087, 27.635525, 29.092436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748730, 27.631968, 29.075241>,  <37.349800, 27.626038, 29.046585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748730, 27.631968, 29.075241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070352, 0.462993, 0.883566,
		-0.020074, -0.886238, 0.462795,
		0.997320, 0.014822, 0.071642,
		38.047924, 27.636414, 29.096733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406395, 27.486031, 29.700962>,  <37.349800, 27.626038, 29.046585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406395, 27.486031, 29.700962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746639, 27.675793, 29.610268>,  <37.950787, 27.789650, 29.555851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746639, 27.675793, 29.610268>,  <37.406395, 27.486031, 29.700962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746639, 27.675793, 29.610268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023213, 0.396915, 0.917562,
		0.525289, -0.785748, 0.326606,
		0.850607, 0.474403, -0.226735,
		38.001823, 27.818113, 29.542248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698410, 27.564531, 30.365107>,  <37.406395, 27.486031, 29.700962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698410, 27.564531, 30.365107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937454, 27.799099, 30.146393>,  <38.080883, 27.939838, 30.015165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937454, 27.799099, 30.146393>,  <37.698410, 27.564531, 30.365107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937454, 27.799099, 30.146393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314193, 0.456136, 0.832600,
		0.737660, -0.669368, 0.088344,
		0.597613, 0.586419, -0.546784,
		38.116737, 27.975025, 29.982357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217484, 27.702793, 30.776768>,  <37.698410, 27.564531, 30.365107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217484, 27.702793, 30.776768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250690, 27.989014, 30.499325>,  <38.270615, 28.160746, 30.332859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250690, 27.989014, 30.499325>,  <38.217484, 27.702793, 30.776768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250690, 27.989014, 30.499325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259911, 0.656376, 0.708249,
		0.962057, -0.239076, -0.131487,
		0.083020, 0.715551, -0.693610,
		38.275597, 28.203678, 30.291243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846783, 28.030657, 30.948622>,  <38.217484, 27.702793, 30.776768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846783, 28.030657, 30.948622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646282, 28.291861, 30.721527>,  <38.525982, 28.448584, 30.585270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646282, 28.291861, 30.721527>,  <38.846783, 28.030657, 30.948622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646282, 28.291861, 30.721527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159653, 0.714645, 0.681023,
		0.850446, 0.250723, -0.462472,
		-0.501251, 0.653009, -0.567738,
		38.495907, 28.487762, 30.551205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.541164, 31.807882, 33.538391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228821, 31.956568, 33.337559>,  <41.041412, 32.045780, 33.217060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228821, 31.956568, 33.337559>,  <41.541164, 31.807882, 33.538391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228821, 31.956568, 33.337559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057120, 0.757860, 0.649912,
		0.622087, 0.536170, -0.570552,
		-0.780862, 0.371712, -0.502081,
		40.994564, 32.068081, 33.186935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694977, 32.543770, 33.450813>,  <41.541164, 31.807882, 33.538391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694977, 32.543770, 33.450813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303596, 32.475182, 33.404793>,  <41.068768, 32.434029, 33.377178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303596, 32.475182, 33.404793>,  <41.694977, 32.543770, 33.450813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303596, 32.475182, 33.404793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205117, 0.871387, 0.445659,
		0.023837, 0.459654, -0.887778,
		-0.978447, -0.171475, -0.115054,
		41.010063, 32.423740, 33.370277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577698, 33.155025, 33.194988>,  <41.694977, 32.543770, 33.450813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577698, 33.155025, 33.194988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235695, 33.007599, 33.340931>,  <41.030495, 32.919144, 33.428497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235695, 33.007599, 33.340931>,  <41.577698, 33.155025, 33.194988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235695, 33.007599, 33.340931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206357, 0.887210, 0.412645,
		-0.475793, 0.277523, -0.834627,
		-0.855007, -0.368565, 0.364859,
		40.979191, 32.897030, 33.450390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955357, 33.579990, 33.096390>,  <41.577698, 33.155025, 33.194988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955357, 33.579990, 33.096390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921452, 33.368713, 33.434341>,  <40.901108, 33.241947, 33.637112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921452, 33.368713, 33.434341>,  <40.955357, 33.579990, 33.096390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921452, 33.368713, 33.434341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400334, 0.794536, 0.456558,
		-0.912441, -0.299535, -0.278802,
		-0.084763, -0.528196, 0.844881,
		40.896023, 33.210255, 33.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602512, 34.107182, 33.503590>,  <40.955357, 33.579990, 33.096390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602512, 34.107182, 33.503590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627316, 33.827015, 33.788006>,  <40.642197, 33.658916, 33.958656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627316, 33.827015, 33.788006>,  <40.602512, 34.107182, 33.503590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627316, 33.827015, 33.788006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389619, 0.638896, 0.663331,
		-0.918887, -0.318163, -0.233280,
		0.062006, -0.700417, 0.711036,
		40.645916, 33.616890, 34.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952690, 34.198109, 33.953751>,  <40.602512, 34.107182, 33.503590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952690, 34.198109, 33.953751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251530, 34.032215, 34.161537>,  <40.430832, 33.932678, 34.286209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251530, 34.032215, 34.161537>,  <39.952690, 34.198109, 33.953751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251530, 34.032215, 34.161537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177264, 0.628877, 0.757028,
		-0.640645, -0.657655, 0.396314,
		0.747096, -0.414734, 0.519465,
		40.475658, 33.907795, 34.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616188, 34.095383, 34.590870>,  <39.952690, 34.198109, 33.953751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616188, 34.095383, 34.590870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012108, 34.072792, 34.643181>,  <40.249660, 34.059238, 34.674568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012108, 34.072792, 34.643181>,  <39.616188, 34.095383, 34.590870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012108, 34.072792, 34.643181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081022, 0.531908, 0.842917,
		-0.117168, -0.844917, 0.521908,
		0.989802, -0.056477, 0.130780,
		40.309048, 34.055847, 34.682415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653278, 34.013683, 35.328918>,  <39.616188, 34.095383, 34.590870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653278, 34.013683, 35.328918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980309, 34.171146, 35.160820>,  <40.176525, 34.265625, 35.059959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980309, 34.171146, 35.160820>,  <39.653278, 34.013683, 35.328918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980309, 34.171146, 35.160820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099162, 0.622666, 0.776179,
		0.567222, -0.676256, 0.470039,
		0.817574, 0.393656, -0.420249,
		40.225582, 34.289242, 35.034744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934029, 34.105343, 35.943459>,  <39.653278, 34.013683, 35.328918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934029, 34.105343, 35.943459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136318, 34.305267, 35.662197>,  <40.257694, 34.425220, 35.493439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136318, 34.305267, 35.662197>,  <39.934029, 34.105343, 35.943459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136318, 34.305267, 35.662197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123008, 0.764966, 0.632215,
		0.853879, -0.406222, 0.325383,
		0.505726, 0.499811, -0.703157,
		40.288036, 34.455212, 35.451252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417400, 34.433987, 36.295734>,  <39.934029, 34.105343, 35.943459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417400, 34.433987, 36.295734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414986, 34.622066, 35.942719>,  <40.413536, 34.734913, 35.730907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414986, 34.622066, 35.942719>,  <40.417400, 34.433987, 36.295734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414986, 34.622066, 35.942719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222412, 0.861082, 0.457242,
		0.974934, -0.193529, -0.109773,
		-0.006034, 0.470195, -0.882542,
		40.413174, 34.763126, 35.677956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010796, 34.742329, 36.348938>,  <40.417400, 34.433987, 36.295734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010796, 34.742329, 36.348938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.782921, 34.937702, 36.084549>,  <40.646194, 35.054928, 35.925915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.782921, 34.937702, 36.084549>,  <41.010796, 34.742329, 36.348938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782921, 34.937702, 36.084549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140597, 0.850304, 0.507164,
		0.809744, 0.195996, -0.553083,
		-0.569691, 0.488435, -0.660972,
		40.612015, 35.084232, 35.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367920, 35.366360, 36.191921>,  <41.010796, 34.742329, 36.348938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367920, 35.366360, 36.191921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994865, 35.448586, 36.073303>,  <40.771034, 35.497921, 36.002132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994865, 35.448586, 36.073303>,  <41.367920, 35.366360, 36.191921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994865, 35.448586, 36.073303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108333, 0.943453, 0.313305,
		0.344180, 0.260073, -0.902165,
		-0.932633, 0.205567, -0.296543,
		40.715076, 35.510254, 35.984341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340725, 35.970940, 35.865097>,  <41.367920, 35.366360, 36.191921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340725, 35.970940, 35.865097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.988869, 35.889763, 36.037163>,  <40.777756, 35.841057, 36.140400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.988869, 35.889763, 36.037163>,  <41.340725, 35.970940, 35.865097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988869, 35.889763, 36.037163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043034, 0.866733, 0.496913,
		-0.473682, 0.455618, -0.753683,
		-0.879644, -0.202944, 0.430163,
		40.724976, 35.828880, 36.166210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215397, 36.468433, 35.336445>,  <41.340725, 35.970940, 35.865097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215397, 36.468433, 35.336445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165630, 36.555420, 35.723686>,  <41.135769, 36.607613, 35.956032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165630, 36.555420, 35.723686>,  <41.215397, 36.468433, 35.336445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165630, 36.555420, 35.723686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357257, -0.900431, 0.248179,
		0.925683, 0.376739, 0.034335,
		-0.124415, 0.217468, 0.968106,
		41.128307, 36.620659, 36.014118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277302, 37.066273, 34.924072>,  <41.215397, 36.468433, 35.336445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277302, 37.066273, 34.924072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314129, 37.396240, 34.700993>,  <41.336224, 37.594223, 34.567146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314129, 37.396240, 34.700993>,  <41.277302, 37.066273, 34.924072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314129, 37.396240, 34.700993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681509, -0.356145, -0.639301,
		-0.725995, 0.438933, 0.529403,
		0.092066, 0.824923, -0.557697,
		41.341747, 37.643719, 34.533684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508869, 37.324177, 34.767082>,  <41.277302, 37.066273, 34.924072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508869, 37.324177, 34.767082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.788246, 37.413437, 34.495087>,  <40.955872, 37.466991, 34.331890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.788246, 37.413437, 34.495087>,  <40.508869, 37.324177, 34.767082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788246, 37.413437, 34.495087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539865, -0.459459, -0.705297,
		-0.469810, 0.859711, -0.200437,
		0.698444, 0.223147, -0.679987,
		40.997780, 37.480381, 34.291092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088814, 37.505550, 34.189980>,  <40.508869, 37.324177, 34.767082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088814, 37.505550, 34.189980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457897, 37.447315, 34.047199>,  <40.679348, 37.412376, 33.961533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457897, 37.447315, 34.047199>,  <40.088814, 37.505550, 34.189980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457897, 37.447315, 34.047199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380512, -0.492373, -0.782802,
		-0.061789, 0.858123, -0.509714,
		0.922710, -0.145584, -0.356949,
		40.734711, 37.403641, 33.940113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933556, 37.547642, 33.521919>,  <40.088814, 37.505550, 34.189980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933556, 37.547642, 33.521919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286156, 37.362583, 33.559696>,  <40.497715, 37.251549, 33.582363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286156, 37.362583, 33.559696>,  <39.933556, 37.547642, 33.521919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286156, 37.362583, 33.559696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268478, -0.655606, -0.705763,
		0.388437, 0.596772, -0.702126,
		0.881497, -0.462649, 0.094441,
		40.550606, 37.223789, 33.588028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346878, 37.596260, 32.953506>,  <39.933556, 37.547642, 33.521919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346878, 37.596260, 32.953506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509296, 37.268944, 33.116245>,  <40.606747, 37.072556, 33.213890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509296, 37.268944, 33.116245>,  <40.346878, 37.596260, 32.953506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509296, 37.268944, 33.116245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286789, -0.536816, -0.793461,
		0.867684, 0.205503, -0.452650,
		0.406049, -0.818288, 0.406851,
		40.631111, 37.023457, 33.238300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745247, 37.277706, 32.382336>,  <40.346878, 37.596260, 32.953506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745247, 37.277706, 32.382336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669930, 36.985786, 32.645222>,  <40.624741, 36.810635, 32.802952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669930, 36.985786, 32.645222>,  <40.745247, 37.277706, 32.382336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669930, 36.985786, 32.645222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301485, -0.593924, -0.745896,
		0.934694, -0.338587, -0.108194,
		-0.188292, -0.729803, 0.657216,
		40.613441, 36.766846, 32.842388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110580, 36.756275, 32.064537>,  <40.745247, 37.277706, 32.382336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110580, 36.756275, 32.064537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845852, 36.589504, 32.313751>,  <40.687016, 36.489441, 32.463280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845852, 36.589504, 32.313751>,  <41.110580, 36.756275, 32.064537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845852, 36.589504, 32.313751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131031, -0.753955, -0.643726,
		0.738125, -0.507666, 0.444351,
		-0.661818, -0.416926, 0.623033,
		40.647308, 36.464428, 32.500660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267883, 36.041851, 32.061195>,  <41.110580, 36.756275, 32.064537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267883, 36.041851, 32.061195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894016, 36.051689, 32.203064>,  <40.669697, 36.057590, 32.288185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894016, 36.051689, 32.203064>,  <41.267883, 36.041851, 32.061195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894016, 36.051689, 32.203064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216669, -0.830340, -0.513410,
		0.281876, -0.556714, 0.781419,
		-0.934666, 0.024592, 0.354676,
		40.613617, 36.059067, 32.309467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127987, 35.389603, 32.299984>,  <41.267883, 36.041851, 32.061195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127987, 35.389603, 32.299984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773373, 35.558693, 32.224766>,  <40.560604, 35.660149, 32.179634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773373, 35.558693, 32.224766>,  <41.127987, 35.389603, 32.299984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773373, 35.558693, 32.224766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233787, -0.760031, -0.606380,
		-0.399254, -0.493614, 0.772620,
		-0.886533, 0.422728, -0.188045,
		40.507412, 35.685513, 32.168354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759853, 34.801662, 32.149467>,  <41.127987, 35.389603, 32.299984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759853, 34.801662, 32.149467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525223, 35.085922, 31.994081>,  <40.384445, 35.256477, 31.900850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525223, 35.085922, 31.994081>,  <40.759853, 34.801662, 32.149467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525223, 35.085922, 31.994081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369674, -0.661705, -0.652294,
		-0.720600, -0.239018, 0.650850,
		-0.586581, 0.710645, -0.388466,
		40.349247, 35.299114, 31.877542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230000, 34.422443, 31.955282>,  <40.759853, 34.801662, 32.149467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230000, 34.422443, 31.955282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165314, 34.766216, 31.761286>,  <40.126503, 34.972481, 31.644888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165314, 34.766216, 31.761286>,  <40.230000, 34.422443, 31.955282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165314, 34.766216, 31.761286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277081, -0.511235, -0.813551,
		-0.947140, 0.002818, 0.320808,
		-0.161715, 0.859437, -0.484992,
		40.116798, 35.024048, 31.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559200, 34.439163, 31.788958>,  <40.230000, 34.422443, 31.955282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559200, 34.439163, 31.788958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.735611, 34.695206, 31.537321>,  <39.841457, 34.848831, 31.386339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.735611, 34.695206, 31.537321>,  <39.559200, 34.439163, 31.788958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735611, 34.695206, 31.537321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255667, -0.582296, -0.771730,
		-0.860307, 0.501193, -0.093156,
		0.441030, 0.640107, -0.629091,
		39.867920, 34.887238, 31.348595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049179, 34.662197, 31.295101>,  <39.559200, 34.439163, 31.788958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049179, 34.662197, 31.295101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410633, 34.704750, 31.129152>,  <39.627506, 34.730282, 31.029583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410633, 34.704750, 31.129152>,  <39.049179, 34.662197, 31.295101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410633, 34.704750, 31.129152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306119, -0.517039, -0.799351,
		-0.299544, 0.849325, -0.434650,
		0.903640, 0.106386, -0.414871,
		39.681725, 34.736668, 31.004690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916965, 34.807423, 30.521347>,  <39.049179, 34.662197, 31.295101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916965, 34.807423, 30.521347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285961, 34.665848, 30.582985>,  <39.507359, 34.580902, 30.619968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285961, 34.665848, 30.582985>,  <38.916965, 34.807423, 30.521347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285961, 34.665848, 30.582985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080874, -0.567523, -0.819376,
		0.377462, 0.743401, -0.552157,
		0.922487, -0.353938, 0.154097,
		39.562706, 34.559666, 30.629213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509789, 35.398876, 30.215509>,  <38.916965, 34.807423, 30.521347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509789, 35.398876, 30.215509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185547, 35.479866, 29.995718>,  <37.991001, 35.528461, 29.863844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185547, 35.479866, 29.995718>,  <38.509789, 35.398876, 30.215509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185547, 35.479866, 29.995718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228653, 0.754401, 0.615303,
		0.539109, 0.624406, -0.565224,
		-0.810604, 0.202475, -0.549477,
		37.942364, 35.540607, 29.830875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455887, 36.147797, 30.110432>,  <38.509789, 35.398876, 30.215509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455887, 36.147797, 30.110432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081234, 36.017391, 30.059156>,  <37.856441, 35.939148, 30.028391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081234, 36.017391, 30.059156>,  <38.455887, 36.147797, 30.110432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081234, 36.017391, 30.059156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321731, 0.655797, 0.682949,
		-0.138587, 0.680915, -0.719130,
		-0.936634, -0.326014, -0.128186,
		37.800243, 35.919586, 30.020700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032032, 36.689991, 30.434696>,  <38.455887, 36.147797, 30.110432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032032, 36.689991, 30.434696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762917, 36.394062, 30.432779>,  <37.601448, 36.216503, 30.431629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762917, 36.394062, 30.432779>,  <38.032032, 36.689991, 30.434696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762917, 36.394062, 30.432779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371263, 0.332003, 0.867144,
		-0.639940, 0.585182, -0.498035,
		-0.672786, -0.739822, -0.004794,
		37.561081, 36.172115, 30.431341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448994, 37.044449, 30.595919>,  <38.032032, 36.689991, 30.434696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448994, 37.044449, 30.595919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362679, 36.660347, 30.666750>,  <37.310890, 36.429886, 30.709248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362679, 36.660347, 30.666750>,  <37.448994, 37.044449, 30.595919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362679, 36.660347, 30.666750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441250, 0.257672, 0.859595,
		-0.871054, 0.107354, -0.479312,
		-0.215786, -0.960250, 0.177076,
		37.297943, 36.372272, 30.719873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742493, 37.014347, 30.671055>,  <37.448994, 37.044449, 30.595919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742493, 37.014347, 30.671055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869446, 36.685589, 30.860266>,  <36.945618, 36.488335, 30.973793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869446, 36.685589, 30.860266>,  <36.742493, 37.014347, 30.671055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869446, 36.685589, 30.860266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606824, 0.207296, 0.767328,
		-0.728722, -0.530579, -0.432955,
		0.317378, -0.821897, 0.473029,
		36.964661, 36.439018, 31.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231491, 36.778076, 31.054300>,  <36.742493, 37.014347, 30.671055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231491, 36.778076, 31.054300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531635, 36.602924, 31.252377>,  <36.711723, 36.497833, 31.371222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531635, 36.602924, 31.252377>,  <36.231491, 36.778076, 31.054300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531635, 36.602924, 31.252377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478031, 0.157945, 0.864026,
		-0.456556, -0.885049, -0.090806,
		0.750362, -0.437884, 0.495191,
		36.756744, 36.471558, 31.400934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863945, 36.295422, 31.526299>,  <36.231491, 36.778076, 31.054300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863945, 36.295422, 31.526299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229591, 36.334137, 31.683794>,  <36.448978, 36.357368, 31.778292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229591, 36.334137, 31.683794>,  <35.863945, 36.295422, 31.526299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229591, 36.334137, 31.683794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393995, -0.017263, 0.918950,
		0.095743, -0.995155, 0.022355,
		0.914112, 0.096790, 0.393740,
		36.503826, 36.363174, 31.801916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779453, 35.794056, 32.094200>,  <35.863945, 36.295422, 31.526299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779453, 35.794056, 32.094200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099045, 36.024628, 32.162731>,  <36.290802, 36.162971, 32.203850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099045, 36.024628, 32.162731>,  <35.779453, 35.794056, 32.094200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099045, 36.024628, 32.162731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226549, 0.024615, 0.973688,
		0.557048, -0.816774, 0.150257,
		0.798982, 0.576432, 0.171328,
		36.338741, 36.197556, 32.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122219, 35.559818, 32.810345>,  <35.779453, 35.794056, 32.094200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122219, 35.559818, 32.810345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306599, 35.909981, 32.752113>,  <36.417229, 36.120079, 32.717175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306599, 35.909981, 32.752113>,  <36.122219, 35.559818, 32.810345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306599, 35.909981, 32.752113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083815, 0.120371, 0.989184,
		0.883459, -0.468168, -0.017886,
		0.460951, 0.875403, -0.145582,
		36.444885, 36.172600, 32.708439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643272, 35.551594, 33.287041>,  <36.122219, 35.559818, 32.810345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643272, 35.551594, 33.287041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588310, 35.932571, 33.178257>,  <36.555332, 36.161160, 33.112988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588310, 35.932571, 33.178257>,  <36.643272, 35.551594, 33.287041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588310, 35.932571, 33.178257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210804, 0.296397, 0.931510,
		0.967823, 0.070663, -0.241506,
		-0.137405, 0.952447, -0.271964,
		36.547089, 36.218304, 33.096668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214619, 35.964962, 33.624504>,  <36.643272, 35.551594, 33.287041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214619, 35.964962, 33.624504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891338, 36.177616, 33.523170>,  <36.697369, 36.305206, 33.462372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891338, 36.177616, 33.523170>,  <37.214619, 35.964962, 33.624504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891338, 36.177616, 33.523170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015957, 0.410244, 0.911836,
		0.588690, 0.740990, -0.323077,
		-0.808201, 0.531634, -0.253330,
		36.648876, 36.337105, 33.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295925, 36.629551, 33.965824>,  <37.214619, 35.964962, 33.624504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295925, 36.629551, 33.965824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906731, 36.600113, 33.878296>,  <36.673214, 36.582451, 33.825779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906731, 36.600113, 33.878296>,  <37.295925, 36.629551, 33.965824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906731, 36.600113, 33.878296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230232, 0.379289, 0.896177,
		0.017040, 0.922347, -0.385987,
		-0.972987, -0.073596, -0.218817,
		36.614834, 36.578033, 33.812653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.885040, 33.654423, 26.690329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513367, 33.537636, 26.780993>,  <38.290363, 33.467564, 26.835392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513367, 33.537636, 26.780993>,  <38.885040, 33.654423, 26.690329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513367, 33.537636, 26.780993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166487, 0.878091, 0.448596,
		-0.330005, 0.379091, -0.864515,
		-0.929182, -0.291970, 0.226661,
		38.234612, 33.450047, 26.848991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566719, 34.280968, 26.805607>,  <38.885040, 33.654423, 26.690329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566719, 34.280968, 26.805607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314411, 34.017937, 26.970398>,  <38.163029, 33.860119, 27.069273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314411, 34.017937, 26.970398>,  <38.566719, 34.280968, 26.805607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314411, 34.017937, 26.970398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270672, 0.684024, 0.677384,
		-0.727236, 0.315759, -0.609446,
		-0.630765, -0.657578, 0.411980,
		38.125183, 33.820663, 27.093992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968571, 34.605049, 26.852381>,  <38.566719, 34.280968, 26.805607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968571, 34.605049, 26.852381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936836, 34.317638, 27.128765>,  <37.917797, 34.145191, 27.294596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936836, 34.317638, 27.128765>,  <37.968571, 34.605049, 26.852381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936836, 34.317638, 27.128765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249097, 0.685444, 0.684192,
		-0.965224, -0.117835, -0.233363,
		-0.079335, -0.718528, 0.690959,
		37.913036, 34.102081, 27.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269859, 34.678947, 27.147293>,  <37.968571, 34.605049, 26.852381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269859, 34.678947, 27.147293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507931, 34.490444, 27.407658>,  <37.650772, 34.377342, 27.563877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507931, 34.490444, 27.407658>,  <37.269859, 34.678947, 27.147293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507931, 34.490444, 27.407658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235684, 0.672014, 0.702033,
		-0.768259, -0.571241, 0.288899,
		0.595174, -0.471254, 0.650913,
		37.686481, 34.349068, 27.602932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989780, 34.783752, 27.848127>,  <37.269859, 34.678947, 27.147293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989780, 34.783752, 27.848127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367634, 34.675713, 27.922663>,  <37.594345, 34.610889, 27.967384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367634, 34.675713, 27.922663>,  <36.989780, 34.783752, 27.848127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367634, 34.675713, 27.922663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017151, 0.526450, 0.850033,
		-0.327690, -0.806162, 0.492668,
		0.944630, -0.270097, 0.186338,
		37.651024, 34.594685, 27.978563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995186, 34.492558, 28.467607>,  <36.989780, 34.783752, 27.848127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995186, 34.492558, 28.467607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388042, 34.562847, 28.440697>,  <37.623756, 34.605019, 28.424551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388042, 34.562847, 28.440697>,  <36.995186, 34.492558, 28.467607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388042, 34.562847, 28.440697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011107, 0.411065, 0.911538,
		0.187831, -0.894510, 0.405674,
		0.982139, 0.175721, -0.067276,
		37.682686, 34.615562, 28.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246429, 34.334705, 29.095615>,  <36.995186, 34.492558, 28.467607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246429, 34.334705, 29.095615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515457, 34.585014, 28.937601>,  <37.676876, 34.735199, 28.842793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515457, 34.585014, 28.937601>,  <37.246429, 34.334705, 29.095615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515457, 34.585014, 28.937601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079551, 0.469580, 0.879298,
		0.735743, -0.622818, 0.266046,
		0.672573, 0.625773, -0.395036,
		37.717228, 34.772747, 28.819090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817738, 34.372540, 29.636738>,  <37.246429, 34.334705, 29.095615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817738, 34.372540, 29.636738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870068, 34.687923, 29.396332>,  <37.901466, 34.877151, 29.252089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870068, 34.687923, 29.396332>,  <37.817738, 34.372540, 29.636738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870068, 34.687923, 29.396332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232780, 0.564850, 0.791680,
		0.963691, -0.243473, -0.109643,
		0.130821, 0.788458, -0.601016,
		37.909313, 34.924461, 29.216026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340176, 34.729012, 29.943438>,  <37.817738, 34.372540, 29.636738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340176, 34.729012, 29.943438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137257, 34.979362, 29.706482>,  <38.015503, 35.129574, 29.564308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137257, 34.979362, 29.706482>,  <38.340176, 34.729012, 29.943438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137257, 34.979362, 29.706482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, 0.635742, 0.764288,
		0.854956, 0.451790, -0.254826,
		-0.507301, 0.625874, -0.592391,
		37.985065, 35.167126, 29.528765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097012, 34.470737, 29.840523>,  <38.340176, 34.729012, 29.943438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097012, 34.470737, 29.840523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429165, 34.367027, 30.037800>,  <39.628456, 34.304802, 30.156166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429165, 34.367027, 30.037800>,  <39.097012, 34.470737, 29.840523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429165, 34.367027, 30.037800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224436, -0.654518, -0.721966,
		0.509992, 0.710199, -0.485310,
		0.830383, -0.259276, 0.493193,
		39.678280, 34.289246, 30.185759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666801, 34.557804, 29.466692>,  <39.097012, 34.470737, 29.840523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666801, 34.557804, 29.466692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724461, 34.249157, 29.714508>,  <39.759056, 34.063969, 29.863197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724461, 34.249157, 29.714508>,  <39.666801, 34.557804, 29.466692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724461, 34.249157, 29.714508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114565, -0.608858, -0.784963,
		0.982902, 0.184129, 0.000634,
		0.144149, -0.771615, 0.619542,
		39.767704, 34.017673, 29.900372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117359, 34.151993, 29.064550>,  <39.666801, 34.557804, 29.466692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117359, 34.151993, 29.064550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002010, 33.917896, 29.367691>,  <39.932800, 33.777439, 29.549576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002010, 33.917896, 29.367691>,  <40.117359, 34.151993, 29.064550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002010, 33.917896, 29.367691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294606, -0.807308, -0.511332,
		0.911071, 0.075816, 0.405217,
		-0.288368, -0.585240, 0.757851,
		39.915501, 33.742325, 29.595047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606945, 33.741161, 29.191158>,  <40.117359, 34.151993, 29.064550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606945, 33.741161, 29.191158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303207, 33.542370, 29.359165>,  <40.120964, 33.423096, 29.459969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303207, 33.542370, 29.359165>,  <40.606945, 33.741161, 29.191158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303207, 33.542370, 29.359165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361036, -0.858808, -0.363459,
		0.541345, -0.124348, 0.831555,
		-0.759341, -0.496978, 0.420017,
		40.075405, 33.393276, 29.485170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860977, 33.125179, 29.455147>,  <40.606945, 33.741161, 29.191158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860977, 33.125179, 29.455147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468105, 33.052940, 29.434340>,  <40.232384, 33.009598, 29.421856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468105, 33.052940, 29.434340>,  <40.860977, 33.125179, 29.455147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468105, 33.052940, 29.434340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182989, -0.855795, -0.483869,
		0.042871, -0.484765, 0.873593,
		-0.982180, -0.180602, -0.052017,
		40.173450, 32.998760, 29.418734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775734, 32.481339, 29.823425>,  <40.860977, 33.125179, 29.455147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775734, 32.481339, 29.823425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446915, 32.525841, 29.600046>,  <40.249622, 32.552544, 29.466019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446915, 32.525841, 29.600046>,  <40.775734, 32.481339, 29.823425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446915, 32.525841, 29.600046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064643, -0.956154, -0.285642,
		-0.565743, -0.270910, 0.778808,
		-0.822044, 0.111256, -0.558450,
		40.200302, 32.559219, 29.432510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330811, 31.889814, 29.935049>,  <40.775734, 32.481339, 29.823425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330811, 31.889814, 29.935049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184052, 32.038620, 29.593994>,  <40.095997, 32.127903, 29.389360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184052, 32.038620, 29.593994>,  <40.330811, 31.889814, 29.935049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184052, 32.038620, 29.593994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161953, -0.877016, -0.452342,
		-0.916054, -0.304051, 0.261527,
		-0.366899, 0.372015, -0.852637,
		40.073982, 32.150223, 29.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838272, 31.455982, 29.743263>,  <40.330811, 31.889814, 29.935049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838272, 31.455982, 29.743263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996784, 31.633810, 29.421936>,  <40.091892, 31.740507, 29.229139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996784, 31.633810, 29.421936>,  <39.838272, 31.455982, 29.743263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996784, 31.633810, 29.421936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301831, -0.889402, -0.343312,
		-0.867097, -0.106417, -0.486641,
		0.396285, 0.444567, -0.803317,
		40.115669, 31.767179, 29.180941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631512, 30.985451, 29.081236>,  <39.838272, 31.455982, 29.743263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631512, 30.985451, 29.081236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924316, 31.230347, 28.961691>,  <40.099998, 31.377285, 28.889963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924316, 31.230347, 28.961691>,  <39.631512, 30.985451, 29.081236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924316, 31.230347, 28.961691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375345, -0.728509, -0.573054,
		-0.568570, 0.307307, -0.763079,
		0.732013, 0.612240, -0.298862,
		40.143921, 31.414019, 28.872032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703358, 30.712263, 28.420065>,  <39.631512, 30.985451, 29.081236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703358, 30.712263, 28.420065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023445, 30.942049, 28.488939>,  <40.215496, 31.079920, 28.530264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023445, 30.942049, 28.488939>,  <39.703358, 30.712263, 28.420065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023445, 30.942049, 28.488939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499748, -0.480033, -0.720986,
		-0.331525, 0.662993, -0.671216,
		0.800214, 0.574464, 0.172187,
		40.263508, 31.114388, 28.540596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933414, 31.001606, 27.756634>,  <39.703358, 30.712263, 28.420065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933414, 31.001606, 27.756634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239094, 30.998028, 28.014599>,  <40.422501, 30.995882, 28.169378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239094, 30.998028, 28.014599>,  <39.933414, 31.001606, 27.756634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239094, 30.998028, 28.014599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534658, -0.550474, -0.641185,
		0.360743, 0.834804, -0.415892,
		0.764202, -0.008943, 0.644915,
		40.468353, 30.995344, 28.208073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501434, 31.199947, 27.354015>,  <39.933414, 31.001606, 27.756634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501434, 31.199947, 27.354015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623798, 31.002975, 27.679945>,  <40.697216, 30.884792, 27.875502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623798, 31.002975, 27.679945>,  <40.501434, 31.199947, 27.354015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623798, 31.002975, 27.679945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539609, -0.615432, -0.574513,
		0.784374, 0.615433, 0.077455,
		0.305906, -0.492429, 0.814822,
		40.715569, 30.855247, 27.924391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150856, 30.876942, 27.211184>,  <40.501434, 31.199947, 27.354015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150856, 30.876942, 27.211184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051170, 30.668440, 27.537664>,  <40.991360, 30.543339, 27.733553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051170, 30.668440, 27.537664>,  <41.150856, 30.876942, 27.211184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051170, 30.668440, 27.537664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506724, -0.788404, -0.348783,
		0.825303, 0.326669, 0.460611,
		-0.249211, -0.521255, 0.816203,
		40.976406, 30.512064, 27.782526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850868, 30.615166, 27.416124>,  <41.150856, 30.876942, 27.211184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850868, 30.615166, 27.416124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574802, 30.383385, 27.589516>,  <41.409161, 30.244316, 27.693550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574802, 30.383385, 27.589516>,  <41.850868, 30.615166, 27.416124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574802, 30.383385, 27.589516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526668, -0.813014, -0.248251,
		0.496275, 0.056965, 0.866295,
		-0.690168, -0.579450, 0.433480,
		41.367752, 30.209549, 27.719561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.399921, 28.690212, 28.327888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718613, 28.866194, 28.162157>,  <35.909828, 28.971783, 28.062719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718613, 28.866194, 28.162157>,  <35.399921, 28.690212, 28.327888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718613, 28.866194, 28.162157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129790, 0.545024, 0.828313,
		0.590240, -0.713714, 0.377133,
		0.796725, 0.439956, -0.414328,
		35.957630, 28.998180, 28.037859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996666, 28.734192, 28.835606>,  <35.399921, 28.690212, 28.327888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996666, 28.734192, 28.835606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003151, 29.038931, 28.576586>,  <36.007042, 29.221775, 28.421173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003151, 29.038931, 28.576586>,  <35.996666, 28.734192, 28.835606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003151, 29.038931, 28.576586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095557, 0.643491, 0.759466,
		0.995292, -0.074193, -0.062366,
		0.016215, 0.761849, -0.647551,
		36.008015, 29.267487, 28.382320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417065, 29.172041, 29.196287>,  <35.996666, 28.734192, 28.835606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417065, 29.172041, 29.196287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297897, 29.407749, 28.895887>,  <36.226395, 29.549175, 28.715647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297897, 29.407749, 28.895887>,  <36.417065, 29.172041, 29.196287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297897, 29.407749, 28.895887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098925, 0.801548, 0.589691,
		0.949451, 0.101390, -0.297092,
		-0.297922, 0.589272, -0.751000,
		36.208519, 29.584530, 28.670588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883705, 29.743773, 29.202415>,  <36.417065, 29.172041, 29.196287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883705, 29.743773, 29.202415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559006, 29.848753, 28.993732>,  <36.364185, 29.911741, 28.868523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559006, 29.848753, 28.993732>,  <36.883705, 29.743773, 29.202415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559006, 29.848753, 28.993732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019522, 0.880637, 0.473390,
		0.583674, 0.394460, -0.709736,
		-0.811753, 0.262450, -0.521705,
		36.315479, 29.927488, 28.837221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992714, 30.454880, 28.724419>,  <36.883705, 29.743773, 29.202415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992714, 30.454880, 28.724419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594879, 30.437267, 28.762060>,  <36.356178, 30.426701, 28.784645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594879, 30.437267, 28.762060>,  <36.992714, 30.454880, 28.724419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594879, 30.437267, 28.762060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002067, 0.913965, 0.405788,
		-0.103872, 0.403398, -0.909110,
		-0.994589, -0.044030, 0.094102,
		36.296501, 30.424059, 28.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822380, 31.103848, 28.577398>,  <36.992714, 30.454880, 28.724419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822380, 31.103848, 28.577398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497360, 30.974791, 28.771578>,  <36.302349, 30.897356, 28.888084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497360, 30.974791, 28.771578>,  <36.822380, 31.103848, 28.577398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497360, 30.974791, 28.771578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125932, 0.715991, 0.686657,
		-0.569121, 0.619079, -0.541150,
		-0.812553, -0.322643, 0.485447,
		36.253593, 30.877998, 28.917212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478386, 31.754732, 28.739412>,  <36.822380, 31.103848, 28.577398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478386, 31.754732, 28.739412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343174, 31.488365, 29.005432>,  <36.262047, 31.328545, 29.165043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343174, 31.488365, 29.005432>,  <36.478386, 31.754732, 28.739412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343174, 31.488365, 29.005432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073055, 0.723079, 0.686892,
		-0.938294, 0.183608, -0.293073,
		-0.338034, -0.665917, 0.665047,
		36.241764, 31.288589, 29.204947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959702, 32.092033, 29.071281>,  <36.478386, 31.754732, 28.739412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959702, 32.092033, 29.071281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060684, 31.783052, 29.304379>,  <36.121273, 31.597664, 29.444237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060684, 31.783052, 29.304379>,  <35.959702, 32.092033, 29.071281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060684, 31.783052, 29.304379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103553, 0.577222, 0.809995,
		-0.962051, -0.264834, 0.065735,
		0.252458, -0.772449, 0.582741,
		36.136421, 31.551317, 29.479200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573959, 32.224117, 29.608114>,  <35.959702, 32.092033, 29.071281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573959, 32.224117, 29.608114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826935, 31.951159, 29.754732>,  <35.978722, 31.787384, 29.842703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826935, 31.951159, 29.754732>,  <35.573959, 32.224117, 29.608114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826935, 31.951159, 29.754732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056798, 0.431075, 0.900527,
		-0.772526, -0.590346, 0.233870,
		0.632438, -0.682397, 0.366547,
		36.016666, 31.746439, 29.864697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266926, 32.049191, 30.139555>,  <35.573959, 32.224117, 29.608114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266926, 32.049191, 30.139555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642227, 31.942373, 30.227524>,  <35.867409, 31.878283, 30.280306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642227, 31.942373, 30.227524>,  <35.266926, 32.049191, 30.139555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642227, 31.942373, 30.227524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073558, 0.467181, 0.881097,
		-0.338033, -0.842871, 0.418692,
		0.938255, -0.267042, 0.219922,
		35.923702, 31.862261, 30.293501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309708, 31.703621, 30.758274>,  <35.266926, 32.049191, 30.139555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309708, 31.703621, 30.758274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677830, 31.853434, 30.713089>,  <35.898705, 31.943321, 30.685978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677830, 31.853434, 30.713089>,  <35.309708, 31.703621, 30.758274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677830, 31.853434, 30.713089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144826, 0.594444, 0.790988,
		0.363401, -0.711592, 0.601313,
		0.920307, 0.374532, -0.112964,
		35.953922, 31.965794, 30.679199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591892, 31.490664, 31.465858>,  <35.309708, 31.703621, 30.758274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591892, 31.490664, 31.465858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851387, 31.763424, 31.330711>,  <36.007084, 31.927080, 31.249624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851387, 31.763424, 31.330711>,  <35.591892, 31.490664, 31.465858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851387, 31.763424, 31.330711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103399, 0.518831, 0.848601,
		0.753958, -0.515581, 0.407091,
		0.648734, 0.681903, -0.337866,
		36.046009, 31.967995, 31.229351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994888, 31.505266, 31.962374>,  <35.591892, 31.490664, 31.465858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994888, 31.505266, 31.962374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068069, 31.846565, 31.767031>,  <36.111980, 32.051346, 31.649824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068069, 31.846565, 31.767031>,  <35.994888, 31.505266, 31.962374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068069, 31.846565, 31.767031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149635, 0.515124, 0.843953,
		0.971667, -0.081331, 0.221921,
		0.182956, 0.853248, -0.488359,
		36.122955, 32.102539, 31.620523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522198, 31.955360, 32.410267>,  <35.994888, 31.505266, 31.962374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522198, 31.955360, 32.410267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300564, 32.192577, 32.176586>,  <36.167583, 32.334908, 32.036377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300564, 32.192577, 32.176586>,  <36.522198, 31.955360, 32.410267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300564, 32.192577, 32.176586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016719, 0.693706, 0.720065,
		0.832290, 0.408747, -0.374459,
		-0.554088, 0.593042, -0.584198,
		36.134338, 32.370491, 32.001328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246044, 32.268032, 32.176151>,  <36.522198, 31.955360, 32.410267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246044, 32.268032, 32.176151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439484, 32.071804, 32.466110>,  <37.555546, 31.954067, 32.640087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439484, 32.071804, 32.466110>,  <37.246044, 32.268032, 32.176151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439484, 32.071804, 32.466110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255851, -0.712781, -0.653057,
		0.837065, 0.501280, -0.219184,
		0.483594, -0.490572, 0.724897,
		37.584560, 31.924633, 32.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782425, 31.967730, 31.816694>,  <37.246044, 32.268032, 32.176151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782425, 31.967730, 31.816694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763088, 31.761726, 32.159023>,  <37.751488, 31.638124, 32.364422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763088, 31.761726, 32.159023>,  <37.782425, 31.967730, 31.816694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763088, 31.761726, 32.159023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216733, -0.841817, -0.494338,
		0.975033, 0.161589, 0.152312,
		-0.048339, -0.515007, 0.855822,
		37.748585, 31.607224, 32.415771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399521, 31.600626, 31.873425>,  <37.782425, 31.967730, 31.816694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399521, 31.600626, 31.873425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154961, 31.413275, 32.128551>,  <38.008224, 31.300863, 32.281628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154961, 31.413275, 32.128551>,  <38.399521, 31.600626, 31.873425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154961, 31.413275, 32.128551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305416, -0.883234, -0.355835,
		0.730007, -0.022759, 0.683060,
		-0.611401, -0.468379, 0.637816,
		37.971539, 31.272760, 32.319897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834454, 31.165636, 32.027767>,  <38.399521, 31.600626, 31.873425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834454, 31.165636, 32.027767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472874, 31.016468, 32.111481>,  <38.255924, 30.926968, 32.161709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472874, 31.016468, 32.111481>,  <38.834454, 31.165636, 32.027767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472874, 31.016468, 32.111481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284801, -0.890078, -0.355877,
		0.318993, -0.262092, 0.910797,
		-0.903954, -0.372918, 0.209285,
		38.201687, 30.904593, 32.174267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986229, 30.458452, 32.326485>,  <38.834454, 31.165636, 32.027767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986229, 30.458452, 32.326485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601894, 30.471371, 32.216400>,  <38.371292, 30.479122, 32.150349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601894, 30.471371, 32.216400>,  <38.986229, 30.458452, 32.326485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601894, 30.471371, 32.216400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101734, -0.882716, -0.458762,
		-0.257753, -0.468796, 0.844864,
		-0.960840, 0.032296, -0.275215,
		38.313641, 30.481060, 32.133835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838596, 29.771767, 32.455975>,  <38.986229, 30.458452, 32.326485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838596, 29.771767, 32.455975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546101, 29.933477, 32.236210>,  <38.370605, 30.030504, 32.104351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546101, 29.933477, 32.236210>,  <38.838596, 29.771767, 32.455975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546101, 29.933477, 32.236210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032280, -0.784031, -0.619881,
		-0.681359, -0.471015, 0.560263,
		-0.731238, 0.404276, -0.549411,
		38.326729, 30.054760, 32.071388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397129, 29.244547, 32.329132>,  <38.838596, 29.771767, 32.455975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397129, 29.244547, 32.329132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310795, 29.498207, 32.032143>,  <38.258995, 29.650404, 31.853949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310795, 29.498207, 32.032143>,  <38.397129, 29.244547, 32.329132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310795, 29.498207, 32.032143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046994, -0.766260, -0.640809,
		-0.975297, -0.103420, 0.195190,
		-0.215839, 0.634153, -0.742472,
		38.246044, 29.688454, 31.809401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807110, 28.965548, 31.966246>,  <38.397129, 29.244547, 32.329132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807110, 28.965548, 31.966246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979271, 29.221693, 31.711786>,  <38.082569, 29.375381, 31.559111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979271, 29.221693, 31.711786>,  <37.807110, 28.965548, 31.966246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979271, 29.221693, 31.711786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076899, -0.676191, -0.732702,
		-0.899354, 0.364278, -0.241792,
		0.430405, 0.640365, -0.636148,
		38.108391, 29.413803, 31.520943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402714, 28.995958, 31.319813>,  <37.807110, 28.965548, 31.966246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402714, 28.995958, 31.319813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775066, 29.088276, 31.206533>,  <37.998478, 29.143665, 31.138565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775066, 29.088276, 31.206533>,  <37.402714, 28.995958, 31.319813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775066, 29.088276, 31.206533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096327, -0.592701, -0.799642,
		-0.352404, 0.771648, -0.529501,
		0.930877, 0.230792, -0.283200,
		38.054329, 29.157513, 31.121572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345455, 29.155848, 30.625509>,  <37.402714, 28.995958, 31.319813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345455, 29.155848, 30.625509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739861, 29.102697, 30.665747>,  <37.976505, 29.070807, 30.689888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739861, 29.102697, 30.665747>,  <37.345455, 29.155848, 30.625509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739861, 29.102697, 30.665747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004415, -0.582544, -0.812787,
		0.166599, 0.801864, -0.573811,
		0.986015, -0.132877, 0.100591,
		38.035664, 29.062834, 30.695925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634701, 29.267508, 29.979664>,  <37.345455, 29.155848, 30.625509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634701, 29.267508, 29.979664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899006, 29.019489, 30.148869>,  <38.057587, 28.870678, 30.250391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899006, 29.019489, 30.148869>,  <37.634701, 29.267508, 29.979664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899006, 29.019489, 30.148869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086832, -0.622928, -0.777445,
		0.745559, 0.476973, -0.465445,
		0.660759, -0.620046, 0.423013,
		38.097233, 28.833475, 30.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269756, 29.243675, 29.491154>,  <37.634701, 29.267508, 29.979664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269756, 29.243675, 29.491154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260868, 28.923676, 29.730991>,  <38.255535, 28.731676, 29.874893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260868, 28.923676, 29.730991>,  <38.269756, 29.243675, 29.491154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260868, 28.923676, 29.730991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049094, -0.599890, -0.798575,
		0.998547, 0.011694, 0.052603,
		-0.022217, -0.799997, 0.599592,
		38.254204, 28.683676, 29.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811821, 28.864548, 29.233768>,  <38.269756, 29.243675, 29.491154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811821, 28.864548, 29.233768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596478, 28.601782, 29.444910>,  <38.467270, 28.444122, 29.571596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596478, 28.601782, 29.444910>,  <38.811821, 28.864548, 29.233768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596478, 28.601782, 29.444910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310638, -0.736960, -0.600328,
		0.783374, -0.159220, 0.600812,
		-0.538358, -0.656917, 0.527855,
		38.434971, 28.404707, 29.603266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173195, 28.320976, 29.236431>,  <38.811821, 28.864548, 29.233768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173195, 28.320976, 29.236431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.818497, 28.162374, 29.331484>,  <38.605679, 28.067213, 29.388515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.818497, 28.162374, 29.331484>,  <39.173195, 28.320976, 29.236431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818497, 28.162374, 29.331484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191607, -0.783092, -0.591654,
		0.420681, -0.479113, 0.770375,
		-0.886743, -0.396506, 0.237631,
		38.552475, 28.043423, 29.402773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724045, 28.004412, 29.604073>,  <39.173195, 28.320976, 29.236431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724045, 28.004412, 29.604073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116756, 27.947540, 29.654509>,  <40.352383, 27.913418, 29.684771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116756, 27.947540, 29.654509>,  <39.724045, 28.004412, 29.604073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116756, 27.947540, 29.654509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009175, 0.698208, 0.715836,
		-0.189814, -0.701635, 0.686789,
		0.981777, -0.142177, 0.126092,
		40.411289, 27.904888, 29.692337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799866, 28.040277, 30.337393>,  <39.724045, 28.004412, 29.604073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799866, 28.040277, 30.337393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155907, 28.121414, 30.174137>,  <40.369530, 28.170095, 30.076183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155907, 28.121414, 30.174137>,  <39.799866, 28.040277, 30.337393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155907, 28.121414, 30.174137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144851, 0.723174, 0.675305,
		0.432136, -0.660209, 0.614315,
		0.890100, 0.202839, -0.408141,
		40.422935, 28.182266, 30.051695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231987, 28.116306, 30.903086>,  <39.799866, 28.040277, 30.337393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231987, 28.116306, 30.903086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445950, 28.285156, 30.610323>,  <40.574326, 28.386467, 30.434666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445950, 28.285156, 30.610323>,  <40.231987, 28.116306, 30.903086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445950, 28.285156, 30.610323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316442, 0.703112, 0.636788,
		0.783417, -0.572227, 0.242519,
		0.534905, 0.422127, -0.731906,
		40.606422, 28.411795, 30.390751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908234, 28.266056, 31.218653>,  <40.231987, 28.116306, 30.903086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908234, 28.266056, 31.218653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893230, 28.514837, 30.905790>,  <40.884228, 28.664106, 30.718073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893230, 28.514837, 30.905790>,  <40.908234, 28.266056, 31.218653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893230, 28.514837, 30.905790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269830, 0.759936, 0.591346,
		0.962177, -0.188871, -0.196322,
		-0.037504, 0.621953, -0.782156,
		40.881981, 28.701424, 30.671144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535053, 28.636911, 31.167789>,  <40.908234, 28.266056, 31.218653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535053, 28.636911, 31.167789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302513, 28.875448, 30.946373>,  <41.162991, 29.018570, 30.813522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302513, 28.875448, 30.946373>,  <41.535053, 28.636911, 31.167789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302513, 28.875448, 30.946373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306787, 0.790758, 0.529701,
		0.753601, 0.138121, -0.642657,
		-0.581349, 0.596342, -0.553543,
		41.128109, 29.054350, 30.780310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933456, 29.256470, 31.036297>,  <41.535053, 28.636911, 31.167789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933456, 29.256470, 31.036297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.554649, 29.359489, 30.959541>,  <41.327366, 29.421301, 30.913488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.554649, 29.359489, 30.959541>,  <41.933456, 29.256470, 31.036297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554649, 29.359489, 30.959541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157121, 0.892598, 0.422590,
		0.280116, 0.370051, -0.885775,
		-0.947021, 0.257548, -0.191888,
		41.270542, 29.436754, 30.901976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015324, 29.952456, 30.732233>,  <41.933456, 29.256470, 31.036297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015324, 29.952456, 30.732233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639835, 29.921879, 30.866667>,  <41.414543, 29.903534, 30.947327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639835, 29.921879, 30.866667>,  <42.015324, 29.952456, 30.732233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639835, 29.921879, 30.866667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031108, 0.952327, 0.303489,
		-0.343261, 0.295347, -0.891595,
		-0.938725, -0.076440, 0.336084,
		41.358219, 29.898947, 30.967491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601841, 30.614546, 30.548834>,  <42.015324, 29.952456, 30.732233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601841, 30.614546, 30.548834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388519, 30.433187, 30.834497>,  <41.260529, 30.324373, 31.005896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388519, 30.433187, 30.834497>,  <41.601841, 30.614546, 30.548834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388519, 30.433187, 30.834497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161402, 0.883261, 0.440227,
		-0.830384, 0.119508, -0.544224,
		-0.533302, -0.453396, 0.714157,
		41.228527, 30.297169, 31.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989273, 30.954605, 30.576830>,  <41.601841, 30.614546, 30.548834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989273, 30.954605, 30.576830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033718, 30.757975, 30.922318>,  <41.060387, 30.639996, 31.129610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033718, 30.757975, 30.922318>,  <40.989273, 30.954605, 30.576830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033718, 30.757975, 30.922318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196202, 0.841143, 0.503968,
		-0.974248, -0.225461, -0.002985,
		0.111114, -0.491576, 0.863717,
		41.067051, 30.610502, 31.181433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450855, 31.289314, 30.954184>,  <40.989273, 30.954605, 30.576830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450855, 31.289314, 30.954184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698742, 31.112839, 31.213814>,  <40.847473, 31.006954, 31.369593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698742, 31.112839, 31.213814>,  <40.450855, 31.289314, 30.954184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698742, 31.112839, 31.213814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212664, 0.701695, 0.679998,
		-0.755462, -0.559443, 0.341029,
		0.619719, -0.441188, 0.649077,
		40.884659, 30.980482, 31.408537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038513, 31.117384, 31.574705>,  <40.450855, 31.289314, 30.954184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038513, 31.117384, 31.574705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426022, 31.131958, 31.672812>,  <40.658527, 31.140701, 31.731674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426022, 31.131958, 31.672812>,  <40.038513, 31.117384, 31.574705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426022, 31.131958, 31.672812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206163, 0.667925, 0.715103,
		-0.137765, -0.743336, 0.654578,
		0.968771, 0.036434, 0.245265,
		40.716652, 31.142889, 31.746391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089737, 31.020218, 32.348015>,  <40.038513, 31.117384, 31.574705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089737, 31.020218, 32.348015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428123, 31.200434, 32.233925>,  <40.631157, 31.308563, 32.165470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428123, 31.200434, 32.233925>,  <40.089737, 31.020218, 32.348015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428123, 31.200434, 32.233925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032262, 0.490675, 0.870745,
		0.532256, -0.745825, 0.400560,
		0.845968, 0.450537, -0.285227,
		40.681915, 31.335596, 32.148357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397964, 31.019043, 33.085110>,  <40.089737, 31.020218, 32.348015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397964, 31.019043, 33.085110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596897, 31.278500, 32.854656>,  <40.716255, 31.434174, 32.716385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596897, 31.278500, 32.854656>,  <40.397964, 31.019043, 33.085110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596897, 31.278500, 32.854656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149626, 0.589999, 0.793418,
		0.854560, -0.480796, 0.196372,
		0.497332, 0.648641, -0.576130,
		40.746098, 31.473091, 32.681816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969589, 31.232813, 33.477840>,  <40.397964, 31.019043, 33.085110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969589, 31.232813, 33.477840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904675, 31.521959, 33.209175>,  <40.865726, 31.695446, 33.047977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904675, 31.521959, 33.209175>,  <40.969589, 31.232813, 33.477840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904675, 31.521959, 33.209175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008286, 0.681660, 0.731622,
		0.986710, 0.113164, -0.116611,
		-0.162282, 0.722865, -0.671663,
		40.855991, 31.738819, 33.007675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.248837, 29.968918, 27.764599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862652, 29.874117, 27.721323>,  <41.630939, 29.817236, 27.695356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862652, 29.874117, 27.721323>,  <42.248837, 29.968918, 27.764599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862652, 29.874117, 27.721323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252555, -0.953358, -0.165301,
		-0.063968, -0.186917, 0.980291,
		-0.965466, -0.237003, -0.108191,
		41.573013, 29.803017, 27.688866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134560, 29.293613, 28.186985>,  <42.248837, 29.968918, 27.764599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134560, 29.293613, 28.186985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846443, 29.327932, 27.911648>,  <41.673573, 29.348524, 27.746445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846443, 29.327932, 27.911648>,  <42.134560, 29.293613, 28.186985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846443, 29.327932, 27.911648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190907, -0.929482, -0.315624,
		-0.666882, -0.358751, 0.653120,
		-0.720293, 0.085799, -0.688343,
		41.630356, 29.353672, 27.705145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779991, 28.717154, 28.126892>,  <42.134560, 29.293613, 28.186985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779991, 28.717154, 28.126892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676823, 28.877930, 27.775455>,  <41.614922, 28.974396, 27.564594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676823, 28.877930, 27.775455>,  <41.779991, 28.717154, 28.126892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676823, 28.877930, 27.775455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213986, -0.863009, -0.457630,
		-0.942172, -0.306037, 0.136577,
		-0.257919, 0.401940, -0.878591,
		41.599445, 28.998512, 27.511879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458054, 28.128433, 27.790064>,  <41.779991, 28.717154, 28.126892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458054, 28.128433, 27.790064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533821, 28.392916, 27.499704>,  <41.579281, 28.551605, 27.325489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533821, 28.392916, 27.499704>,  <41.458054, 28.128433, 27.790064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533821, 28.392916, 27.499704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178382, -0.750151, -0.636752,
		-0.965557, -0.008875, -0.260040,
		0.189418, 0.661207, -0.725897,
		41.590645, 28.591278, 27.281935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133545, 27.850412, 27.186754>,  <41.458054, 28.128433, 27.790064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133545, 27.850412, 27.186754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401318, 28.111666, 27.045174>,  <41.561981, 28.268417, 26.960224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401318, 28.111666, 27.045174>,  <41.133545, 27.850412, 27.186754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401318, 28.111666, 27.045174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212564, -0.624949, -0.751170,
		-0.711815, 0.427617, -0.557191,
		0.669429, 0.653133, -0.353952,
		41.602146, 28.307606, 26.938988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930843, 27.960844, 26.500614>,  <41.133545, 27.850412, 27.186754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930843, 27.960844, 26.500614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318775, 28.048643, 26.543043>,  <41.551533, 28.101322, 26.568501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318775, 28.048643, 26.543043>,  <40.930843, 27.960844, 26.500614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318775, 28.048643, 26.543043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197698, -0.453549, -0.869027,
		-0.142639, 0.863779, -0.483260,
		0.969830, 0.219497, 0.106074,
		41.609726, 28.114492, 26.574865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187462, 28.460892, 25.816628>,  <40.930843, 27.960844, 26.500614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187462, 28.460892, 25.816628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520565, 28.302601, 25.971506>,  <41.720425, 28.207626, 26.064432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520565, 28.302601, 25.971506>,  <41.187462, 28.460892, 25.816628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520565, 28.302601, 25.971506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319914, -0.226842, -0.919890,
		0.451860, 0.889911, -0.062304,
		0.832753, -0.395729, 0.387195,
		41.770390, 28.183882, 26.087666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621983, 28.546211, 25.351717>,  <41.187462, 28.460892, 25.816628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621983, 28.546211, 25.351717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.810276, 28.261560, 25.560331>,  <41.923252, 28.090771, 25.685499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.810276, 28.261560, 25.560331>,  <41.621983, 28.546211, 25.351717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810276, 28.261560, 25.560331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427221, -0.333349, -0.840452,
		0.771943, 0.618437, 0.147105,
		0.470730, -0.711627, 0.521536,
		41.951496, 28.048073, 25.716793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332943, 28.596449, 25.148939>,  <41.621983, 28.546211, 25.351717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332943, 28.596449, 25.148939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283554, 28.227531, 25.295433>,  <42.253922, 28.006182, 25.383329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283554, 28.227531, 25.295433>,  <42.332943, 28.596449, 25.148939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283554, 28.227531, 25.295433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538922, -0.372215, -0.755658,
		0.833257, 0.104068, 0.543003,
		-0.123474, -0.922294, 0.366235,
		42.246513, 27.950844, 25.405304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999718, 28.294748, 25.169680>,  <42.332943, 28.596449, 25.148939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999718, 28.294748, 25.169680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740913, 27.990103, 25.155132>,  <42.585632, 27.807316, 25.146404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740913, 27.990103, 25.155132>,  <42.999718, 28.294748, 25.169680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740913, 27.990103, 25.155132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566077, -0.447843, -0.692093,
		0.510821, -0.468378, 0.720891,
		-0.647007, -0.761616, -0.036370,
		42.546810, 27.761618, 25.144220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486000, 27.730331, 24.954681>,  <42.999718, 28.294748, 25.169680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486000, 27.730331, 24.954681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.118919, 27.577108, 24.912548>,  <42.898670, 27.485174, 24.887268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.118919, 27.577108, 24.912548>,  <43.486000, 27.730331, 24.954681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118919, 27.577108, 24.912548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303013, -0.503441, -0.809154,
		0.256923, -0.774478, 0.578079,
		-0.917700, -0.383056, -0.105331,
		42.843609, 27.462193, 24.880949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551598, 26.929432, 24.955694>,  <43.486000, 27.730331, 24.954681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551598, 26.929432, 24.955694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.220608, 27.058002, 24.771536>,  <43.022015, 27.135145, 24.661041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.220608, 27.058002, 24.771536>,  <43.551598, 26.929432, 24.955694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220608, 27.058002, 24.771536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111292, -0.709790, -0.695566,
		-0.550357, -0.626804, 0.551565,
		-0.827479, 0.321425, -0.460396,
		42.972363, 27.154430, 24.633417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271000, 26.363800, 24.688427>,  <43.551598, 26.929432, 24.955694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271000, 26.363800, 24.688427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.059666, 26.628504, 24.475660>,  <42.932865, 26.787327, 24.348000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.059666, 26.628504, 24.475660>,  <43.271000, 26.363800, 24.688427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059666, 26.628504, 24.475660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049488, -0.601428, -0.797392,
		-0.847593, -0.447613, 0.285006,
		-0.528334, 0.661760, -0.531918,
		42.901165, 26.827032, 24.316086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782658, 25.856714, 24.572258>,  <43.271000, 26.363800, 24.688427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782658, 25.856714, 24.572258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.099701, 25.624968, 24.648256>,  <43.289928, 25.485920, 24.693855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.099701, 25.624968, 24.648256>,  <42.782658, 25.856714, 24.572258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099701, 25.624968, 24.648256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242829, 0.585776, 0.773240,
		-0.559285, -0.566744, 0.604981,
		0.792613, -0.579368, 0.189994,
		43.337486, 25.451157, 24.705254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518009, 25.457697, 25.059769>,  <42.782658, 25.856714, 24.572258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518009, 25.457697, 25.059769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.178688, 25.247082, 25.037325>,  <41.975098, 25.120712, 25.023859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.178688, 25.247082, 25.037325>,  <42.518009, 25.457697, 25.059769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178688, 25.247082, 25.037325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249529, 0.304038, 0.919400,
		-0.467038, 0.793927, -0.389302,
		-0.848299, -0.526537, -0.056111,
		41.924198, 25.089121, 25.020493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065994, 25.980114, 25.115273>,  <42.518009, 25.457697, 25.059769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065994, 25.980114, 25.115273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880684, 25.635891, 25.199951>,  <41.769497, 25.429358, 25.250759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880684, 25.635891, 25.199951>,  <42.065994, 25.980114, 25.115273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880684, 25.635891, 25.199951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482729, 0.445376, 0.754065,
		-0.743201, 0.247147, -0.621748,
		-0.463276, -0.860557, 0.211699,
		41.741699, 25.377724, 25.263460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373772, 26.086718, 25.204926>,  <42.065994, 25.980114, 25.115273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373772, 26.086718, 25.204926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427082, 25.749329, 25.413076>,  <41.459068, 25.546896, 25.537968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427082, 25.749329, 25.413076>,  <41.373772, 26.086718, 25.204926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427082, 25.749329, 25.413076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418106, 0.428199, 0.801145,
		-0.898568, -0.324349, -0.295590,
		0.133279, -0.843471, 0.520378,
		41.467064, 25.496288, 25.569189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722965, 25.980835, 25.631243>,  <41.373772, 26.086718, 25.204926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722965, 25.980835, 25.631243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006493, 25.758432, 25.804882>,  <41.176609, 25.624990, 25.909065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006493, 25.758432, 25.804882>,  <40.722965, 25.980835, 25.631243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006493, 25.758432, 25.804882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365117, 0.237358, 0.900195,
		-0.603549, -0.796568, -0.034764,
		0.708814, -0.556005, 0.434098,
		41.219135, 25.591631, 25.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376942, 25.781837, 26.230738>,  <40.722965, 25.980835, 25.631243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376942, 25.781837, 26.230738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762287, 25.706205, 26.306820>,  <40.993496, 25.660826, 26.352470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762287, 25.706205, 26.306820>,  <40.376942, 25.781837, 26.230738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762287, 25.706205, 26.306820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151526, 0.201450, 0.967707,
		-0.221294, -0.961075, 0.165419,
		0.963363, -0.189083, 0.190208,
		41.051296, 25.649481, 26.363882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433861, 25.323971, 26.742062>,  <40.376942, 25.781837, 26.230738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433861, 25.323971, 26.742062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.789562, 25.506834, 26.748251>,  <41.002983, 25.616552, 26.751965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.789562, 25.506834, 26.748251>,  <40.433861, 25.323971, 26.742062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789562, 25.506834, 26.748251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107673, 0.176322, 0.978426,
		0.444566, -0.871733, 0.206018,
		0.889251, 0.457157, 0.015475,
		41.056339, 25.643980, 26.752893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821087, 25.041540, 27.304214>,  <40.433861, 25.323971, 26.742062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821087, 25.041540, 27.304214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.999966, 25.392887, 27.236702>,  <41.107292, 25.603695, 27.196194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.999966, 25.392887, 27.236702>,  <40.821087, 25.041540, 27.304214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999966, 25.392887, 27.236702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175106, 0.271025, 0.946511,
		0.877129, -0.393720, 0.275008,
		0.447194, 0.878368, -0.168781,
		41.134125, 25.656397, 27.186068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213432, 25.150812, 27.956556>,  <40.821087, 25.041540, 27.304214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213432, 25.150812, 27.956556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.185074, 25.514658, 27.792814>,  <41.168056, 25.732965, 27.694569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.185074, 25.514658, 27.792814>,  <41.213432, 25.150812, 27.956556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185074, 25.514658, 27.792814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148233, 0.396225, 0.906109,
		0.986408, 0.124922, 0.106744,
		-0.070898, 0.909616, -0.409357,
		41.163803, 25.787542, 27.670008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623428, 25.695557, 28.394703>,  <41.213432, 25.150812, 27.956556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623428, 25.695557, 28.394703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403019, 25.958107, 28.188578>,  <41.270775, 26.115637, 28.064903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403019, 25.958107, 28.188578>,  <41.623428, 25.695557, 28.394703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403019, 25.958107, 28.188578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171429, 0.515312, 0.839682,
		0.816693, 0.551023, -0.171427,
		-0.551022, 0.656374, -0.515313,
		41.237713, 26.155020, 28.033983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951679, 26.393875, 28.509872>,  <41.623428, 25.695557, 28.394703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951679, 26.393875, 28.509872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.571106, 26.448017, 28.399269>,  <41.342762, 26.480503, 28.332907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.571106, 26.448017, 28.399269>,  <41.951679, 26.393875, 28.509872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571106, 26.448017, 28.399269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131675, 0.632946, 0.762916,
		0.278281, 0.762271, -0.584382,
		-0.951431, 0.135356, -0.276509,
		41.285675, 26.488625, 28.316317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862072, 27.115414, 28.620186>,  <41.951679, 26.393875, 28.509872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862072, 27.115414, 28.620186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.490749, 26.966953, 28.611324>,  <41.267956, 26.877876, 28.606007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.490749, 26.966953, 28.611324>,  <41.862072, 27.115414, 28.620186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490749, 26.966953, 28.611324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265386, 0.619680, 0.738625,
		-0.260411, 0.691551, -0.673752,
		-0.928308, -0.371151, -0.022156,
		41.212257, 26.855608, 28.604677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344440, 27.718222, 28.453241>,  <41.862072, 27.115414, 28.620186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344440, 27.718222, 28.453241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117588, 27.429667, 28.612217>,  <40.981476, 27.256533, 28.707602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117588, 27.429667, 28.612217>,  <41.344440, 27.718222, 28.453241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117588, 27.429667, 28.612217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352396, 0.648682, 0.674558,
		-0.744429, 0.242510, -0.622105,
		-0.567135, -0.721388, 0.397438,
		40.947449, 27.213251, 28.731449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642780, 28.075628, 28.555759>,  <41.344440, 27.718222, 28.453241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642780, 28.075628, 28.555759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663044, 27.756613, 28.796215>,  <40.675201, 27.565205, 28.940489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663044, 27.756613, 28.796215>,  <40.642780, 28.075628, 28.555759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663044, 27.756613, 28.796215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302458, 0.561393, 0.770296,
		-0.951815, -0.220844, -0.212781,
		0.050662, -0.797537, 0.601139,
		40.678242, 27.517351, 28.976557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971943, 28.047176, 28.841589>,  <40.642780, 28.075628, 28.555759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971943, 28.047176, 28.841589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221405, 27.850513, 29.084679>,  <40.371082, 27.732515, 29.230532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221405, 27.850513, 29.084679>,  <39.971943, 28.047176, 28.841589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221405, 27.850513, 29.084679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211095, 0.642626, 0.736526,
		-0.752658, -0.587625, 0.296989,
		0.623654, -0.491660, 0.607723,
		40.408501, 27.703016, 29.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335297, 27.619093, 29.077225>,  <39.971943, 28.047176, 28.841589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335297, 27.619093, 29.077225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937775, 27.642752, 29.114880>,  <38.699261, 27.656946, 29.137472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937775, 27.642752, 29.114880>,  <39.335297, 27.619093, 29.077225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937775, 27.642752, 29.114880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105723, -0.764706, -0.635647,
		0.034392, -0.641659, 0.766218,
		-0.993801, 0.059146, 0.094137,
		38.639633, 27.660496, 29.143122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101608, 26.960974, 28.952269>,  <39.335297, 27.619093, 29.077225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101608, 26.960974, 28.952269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759876, 27.156616, 28.881954>,  <38.554836, 27.274002, 28.839766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759876, 27.156616, 28.881954>,  <39.101608, 26.960974, 28.952269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759876, 27.156616, 28.881954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234732, -0.664870, -0.709119,
		-0.463708, -0.564557, 0.682825,
		-0.854328, 0.489105, -0.175786,
		38.503578, 27.303349, 28.829218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576988, 26.479031, 28.946020>,  <39.101608, 26.960974, 28.952269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576988, 26.479031, 28.946020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.426136, 26.796726, 28.755461>,  <38.335625, 26.987345, 28.641125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.426136, 26.796726, 28.755461>,  <38.576988, 26.479031, 28.946020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426136, 26.796726, 28.755461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172181, -0.565539, -0.806548,
		-0.910016, -0.222144, 0.350034,
		-0.377127, 0.794240, -0.476400,
		38.312996, 27.034998, 28.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928532, 26.351908, 28.523392>,  <38.576988, 26.479031, 28.946020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928532, 26.351908, 28.523392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.071823, 26.679977, 28.344959>,  <38.157799, 26.876820, 28.237900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.071823, 26.679977, 28.344959>,  <37.928532, 26.351908, 28.523392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071823, 26.679977, 28.344959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078904, -0.449485, -0.889796,
		-0.930295, 0.353946, -0.096302,
		0.358226, 0.820174, -0.446081,
		38.179291, 26.926029, 28.211134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520145, 26.499699, 27.985273>,  <37.928532, 26.351908, 28.523392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520145, 26.499699, 27.985273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861225, 26.683832, 27.886488>,  <38.065872, 26.794312, 27.827217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861225, 26.683832, 27.886488>,  <37.520145, 26.499699, 27.985273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861225, 26.683832, 27.886488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050775, -0.397482, -0.916204,
		-0.519923, 0.793789, -0.315561,
		0.852703, 0.460333, -0.246965,
		38.117035, 26.821932, 27.812399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385593, 26.696095, 27.291481>,  <37.520145, 26.499699, 27.985273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385593, 26.696095, 27.291481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783390, 26.726028, 27.320826>,  <38.022068, 26.743988, 27.338432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783390, 26.726028, 27.320826>,  <37.385593, 26.696095, 27.291481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783390, 26.726028, 27.320826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092723, -0.302148, -0.948741,
		-0.048831, 0.950319, -0.307423,
		0.994494, 0.074834, 0.073362,
		38.081738, 26.748478, 27.342834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607285, 27.174347, 26.770220>,  <37.385593, 26.696095, 27.291481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607285, 27.174347, 26.770220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878925, 26.901560, 26.878841>,  <38.041908, 26.737888, 26.944014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878925, 26.901560, 26.878841>,  <37.607285, 27.174347, 26.770220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878925, 26.901560, 26.878841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138433, -0.244318, -0.959763,
		0.720873, 0.689368, -0.071510,
		0.679101, -0.681968, 0.271554,
		38.082657, 26.696970, 26.960308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376263, 27.463228, 26.052820>,  <37.607285, 27.174347, 26.770220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376263, 27.463228, 26.052820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043446, 27.544481, 25.846348>,  <36.843754, 27.593233, 25.722466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043446, 27.544481, 25.846348>,  <37.376263, 27.463228, 26.052820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043446, 27.544481, 25.846348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328160, 0.569986, 0.753278,
		0.447231, 0.796149, -0.407593,
		-0.832043, 0.203133, -0.516179,
		36.793831, 27.605421, 25.691494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358448, 28.187481, 26.018871>,  <37.376263, 27.463228, 26.052820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358448, 28.187481, 26.018871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977898, 28.082949, 25.953642>,  <36.749569, 28.020229, 25.914505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977898, 28.082949, 25.953642>,  <37.358448, 28.187481, 26.018871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977898, 28.082949, 25.953642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297628, 0.643391, 0.705312,
		-0.079400, 0.719551, -0.689886,
		-0.951374, -0.261331, -0.163074,
		36.692486, 28.004549, 25.904720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901600, 28.713350, 25.912289>,  <37.358448, 28.187481, 26.018871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901600, 28.713350, 25.912289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637661, 28.439240, 26.035576>,  <36.479298, 28.274773, 26.109549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637661, 28.439240, 26.035576>,  <36.901600, 28.713350, 25.912289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637661, 28.439240, 26.035576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215779, 0.565729, 0.795858,
		-0.719750, 0.458638, -0.521163,
		-0.659848, -0.685275, 0.308219,
		36.439705, 28.233658, 26.128042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309006, 29.122192, 26.032852>,  <36.901600, 28.713350, 25.912289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309006, 29.122192, 26.032852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265942, 28.779156, 26.234028>,  <36.240101, 28.573334, 26.354733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265942, 28.779156, 26.234028>,  <36.309006, 29.122192, 26.032852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265942, 28.779156, 26.234028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324841, 0.508458, 0.797464,
		-0.939621, -0.077519, -0.333322,
		-0.107662, -0.857590, 0.502939,
		36.233643, 28.521879, 26.384911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680664, 29.225164, 26.368805>,  <36.309006, 29.122192, 26.032852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680664, 29.225164, 26.368805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851719, 28.920719, 26.563875>,  <35.954353, 28.738052, 26.680918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851719, 28.920719, 26.563875>,  <35.680664, 29.225164, 26.368805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851719, 28.920719, 26.563875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288863, 0.396146, 0.871566,
		-0.856552, -0.513588, -0.050450,
		0.427640, -0.761115, 0.487676,
		35.980011, 28.692385, 26.710178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259830, 29.117809, 26.901180>,  <35.680664, 29.225164, 26.368805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259830, 29.117809, 26.901180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597637, 28.950756, 27.035271>,  <35.800320, 28.850525, 27.115725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597637, 28.950756, 27.035271>,  <35.259830, 29.117809, 26.901180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597637, 28.950756, 27.035271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193845, 0.345137, 0.918316,
		-0.499220, -0.840513, 0.210517,
		0.844514, -0.417634, 0.335228,
		35.850990, 28.825466, 27.135839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134731, 29.127945, 27.672020>,  <35.259830, 29.117809, 26.901180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134731, 29.127945, 27.672020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520691, 29.032715, 27.627678>,  <35.752266, 28.975576, 27.601072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520691, 29.032715, 27.627678>,  <35.134731, 29.127945, 27.672020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520691, 29.032715, 27.627678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187721, 0.330058, 0.925107,
		-0.183658, -0.913444, 0.363165,
		0.964899, -0.238077, -0.110855,
		35.810162, 28.961292, 27.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.642002, 28.077492, 23.402941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980492, 28.031929, 23.611143>,  <40.183586, 28.004591, 23.736065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980492, 28.031929, 23.611143>,  <39.642002, 28.077492, 23.402941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980492, 28.031929, 23.611143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351104, 0.615592, 0.705530,
		-0.400785, -0.779790, 0.480936,
		0.846225, -0.113908, 0.520507,
		40.234360, 27.997757, 23.767296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430080, 28.029255, 24.062599>,  <39.642002, 28.077492, 23.402941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430080, 28.029255, 24.062599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809292, 28.155891, 24.075340>,  <40.036819, 28.231873, 24.082985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809292, 28.155891, 24.075340>,  <39.430080, 28.029255, 24.062599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809292, 28.155891, 24.075340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247341, 0.670267, 0.699689,
		0.200163, -0.671204, 0.713737,
		0.948028, 0.316589, 0.031854,
		40.093700, 28.250868, 24.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620228, 28.061043, 24.786121>,  <39.430080, 28.029255, 24.062599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620228, 28.061043, 24.786121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.855942, 28.315962, 24.587488>,  <39.997372, 28.468914, 24.468307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.855942, 28.315962, 24.587488>,  <39.620228, 28.061043, 24.786121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855942, 28.315962, 24.587488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490908, 0.770607, 0.406417,
		0.641678, 0.004281, 0.766962,
		0.589286, 0.637297, -0.496583,
		40.032726, 28.507151, 24.438513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646885, 28.552530, 25.245470>,  <39.620228, 28.061043, 24.786121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646885, 28.552530, 25.245470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802387, 28.721884, 24.918150>,  <39.895687, 28.823496, 24.721758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802387, 28.721884, 24.918150>,  <39.646885, 28.552530, 25.245470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802387, 28.721884, 24.918150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252014, 0.903156, 0.347560,
		0.886204, 0.071108, 0.457806,
		0.388756, 0.423383, -0.818300,
		39.919014, 28.848898, 24.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933910, 29.118513, 25.546545>,  <39.646885, 28.552530, 25.245470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933910, 29.118513, 25.546545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896576, 29.202435, 25.157234>,  <39.874176, 29.252787, 24.923647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896576, 29.202435, 25.157234>,  <39.933910, 29.118513, 25.546545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896576, 29.202435, 25.157234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374103, 0.898524, 0.229567,
		0.922678, 0.385534, -0.005380,
		-0.093340, 0.209803, -0.973278,
		39.868572, 29.265375, 24.865252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195637, 29.757656, 25.412178>,  <39.933910, 29.118513, 25.546545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195637, 29.757656, 25.412178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940807, 29.710358, 25.107506>,  <39.787910, 29.681978, 24.924702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940807, 29.710358, 25.107506>,  <40.195637, 29.757656, 25.412178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940807, 29.710358, 25.107506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479483, 0.834498, 0.271493,
		0.603519, 0.538173, -0.588331,
		-0.637072, -0.118244, -0.761681,
		39.749687, 29.674885, 24.879002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189529, 30.413671, 25.089746>,  <40.195637, 29.757656, 25.412178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189529, 30.413671, 25.089746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850822, 30.243797, 24.961609>,  <39.647598, 30.141872, 24.884726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850822, 30.243797, 24.961609>,  <40.189529, 30.413671, 25.089746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850822, 30.243797, 24.961609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484011, 0.864936, 0.132736,
		0.220708, 0.267448, -0.937955,
		-0.846771, -0.424685, -0.320346,
		39.596790, 30.116392, 24.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827808, 30.915062, 24.834974>,  <40.189529, 30.413671, 25.089746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827808, 30.915062, 24.834974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534599, 30.643032, 24.829569>,  <39.358673, 30.479815, 24.826324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534599, 30.643032, 24.829569>,  <39.827808, 30.915062, 24.834974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534599, 30.643032, 24.829569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658809, 0.704872, 0.262919,
		-0.169278, 0.201628, -0.964723,
		-0.733019, -0.680074, -0.013515,
		39.314693, 30.439011, 24.825514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349472, 31.127968, 24.474911>,  <39.827808, 30.915062, 24.834974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349472, 31.127968, 24.474911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.129883, 30.890446, 24.710207>,  <38.998131, 30.747932, 24.851385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.129883, 30.890446, 24.710207>,  <39.349472, 31.127968, 24.474911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129883, 30.890446, 24.710207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662917, 0.737965, 0.126288,
		-0.509091, -0.320626, -0.798765,
		-0.548969, -0.593807, 0.588240,
		38.965191, 30.712303, 24.886679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747345, 31.374634, 24.345709>,  <39.349472, 31.127968, 24.474911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747345, 31.374634, 24.345709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.718662, 31.153488, 24.677780>,  <38.701450, 31.020800, 24.877024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.718662, 31.153488, 24.677780>,  <38.747345, 31.374634, 24.345709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718662, 31.153488, 24.677780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697903, 0.622450, 0.354243,
		-0.712594, -0.553981, -0.430483,
		-0.071710, -0.552866, 0.830178,
		38.697147, 30.987629, 24.926834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028130, 31.624676, 24.548977>,  <38.747345, 31.374634, 24.345709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028130, 31.624676, 24.548977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.228935, 31.454094, 24.849941>,  <38.349419, 31.351746, 25.030519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.228935, 31.454094, 24.849941>,  <38.028130, 31.624676, 24.548977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228935, 31.454094, 24.849941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439241, 0.623709, 0.646571,
		-0.745018, -0.655076, 0.125793,
		0.502011, -0.426454, 0.752411,
		38.379539, 31.326159, 25.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531185, 31.460178, 25.181973>,  <38.028130, 31.624676, 24.548977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531185, 31.460178, 25.181973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.906818, 31.533241, 25.298428>,  <38.132198, 31.577080, 25.368301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.906818, 31.533241, 25.298428>,  <37.531185, 31.460178, 25.181973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906818, 31.533241, 25.298428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337461, 0.650635, 0.680290,
		-0.065164, -0.737096, 0.672639,
		0.939082, 0.182659, 0.291139,
		38.188541, 31.588039, 25.385769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851959, 31.220190, 25.428871>,  <37.531185, 31.460178, 25.181973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851959, 31.220190, 25.428871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630466, 31.417713, 25.160681>,  <36.497570, 31.536226, 24.999765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630466, 31.417713, 25.160681>,  <36.851959, 31.220190, 25.428871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630466, 31.417713, 25.160681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192860, -0.707239, -0.680161,
		-0.810057, -0.505931, 0.296381,
		-0.553726, 0.493809, -0.670478,
		36.464348, 31.565855, 24.959538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442345, 30.785475, 25.103308>,  <36.851959, 31.220190, 25.428871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442345, 30.785475, 25.103308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506115, 31.088242, 24.849802>,  <36.544376, 31.269901, 24.697699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506115, 31.088242, 24.849802>,  <36.442345, 30.785475, 25.103308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506115, 31.088242, 24.849802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225252, -0.652931, -0.723148,
		-0.961169, -0.027470, -0.274590,
		0.159423, 0.756919, -0.633765,
		36.553944, 31.315317, 24.659672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116802, 30.534409, 24.533304>,  <36.442345, 30.785475, 25.103308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116802, 30.534409, 24.533304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.319416, 30.839743, 24.372931>,  <36.440983, 31.022943, 24.276707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.319416, 30.839743, 24.372931>,  <36.116802, 30.534409, 24.533304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319416, 30.839743, 24.372931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018311, -0.455374, -0.890112,
		-0.862028, 0.458210, -0.216684,
		0.506531, 0.763333, -0.400935,
		36.471375, 31.068743, 24.252649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836166, 30.733387, 23.958693>,  <36.116802, 30.534409, 24.533304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836166, 30.733387, 23.958693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207619, 30.859423, 23.880348>,  <36.430489, 30.935043, 23.833342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207619, 30.859423, 23.880348>,  <35.836166, 30.733387, 23.958693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207619, 30.859423, 23.880348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014344, -0.558022, -0.829702,
		-0.370726, 0.767678, -0.522716,
		0.928631, 0.315090, -0.195862,
		36.486210, 30.953949, 23.821590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897564, 30.848269, 23.302126>,  <35.836166, 30.733387, 23.958693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897564, 30.848269, 23.302126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287079, 30.812551, 23.385813>,  <36.520786, 30.791121, 23.436026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287079, 30.812551, 23.385813>,  <35.897564, 30.848269, 23.302126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287079, 30.812551, 23.385813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154361, -0.416177, -0.896086,
		0.167087, 0.904889, -0.391483,
		0.973784, -0.089295, 0.209218,
		36.579212, 30.785763, 23.448578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133770, 31.009872, 22.667439>,  <35.897564, 30.848269, 23.302126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133770, 31.009872, 22.667439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391479, 30.779987, 22.869276>,  <36.546104, 30.642057, 22.990377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391479, 30.779987, 22.869276>,  <36.133770, 31.009872, 22.667439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391479, 30.779987, 22.869276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127971, -0.569463, -0.811995,
		0.754009, 0.587724, -0.293346,
		0.644278, -0.574711, 0.504592,
		36.584763, 30.607574, 23.020653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773098, 30.836504, 22.233870>,  <36.133770, 31.009872, 22.667439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773098, 30.836504, 22.233870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778603, 30.561115, 22.523922>,  <36.781906, 30.395882, 22.697954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778603, 30.561115, 22.523922>,  <36.773098, 30.836504, 22.233870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778603, 30.561115, 22.523922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339534, -0.678891, -0.651017,
		0.940493, 0.255168, 0.224415,
		0.013765, -0.688474, 0.725130,
		36.782734, 30.354572, 22.741461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297089, 30.367884, 21.948620>,  <36.773098, 30.836504, 22.233870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297089, 30.367884, 21.948620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.130005, 30.160385, 22.246996>,  <37.029755, 30.035887, 22.426022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.130005, 30.160385, 22.246996>,  <37.297089, 30.367884, 21.948620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130005, 30.160385, 22.246996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256792, -0.854923, -0.450738,
		0.871539, 0.003276, 0.490315,
		-0.417705, -0.518744, 0.745940,
		37.004692, 30.004763, 22.470778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775372, 29.949617, 22.125401>,  <37.297089, 30.367884, 21.948620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775372, 29.949617, 22.125401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.430069, 29.783146, 22.239655>,  <37.222889, 29.683264, 22.308207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.430069, 29.783146, 22.239655>,  <37.775372, 29.949617, 22.125401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430069, 29.783146, 22.239655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294891, -0.875072, -0.383782,
		0.409671, -0.247071, 0.878137,
		-0.863255, -0.416179, 0.285633,
		37.171093, 29.658293, 22.325344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001564, 29.216717, 22.303259>,  <37.775372, 29.949617, 22.125401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001564, 29.216717, 22.303259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.603294, 29.181805, 22.316025>,  <37.364334, 29.160858, 22.323685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.603294, 29.181805, 22.316025>,  <38.001564, 29.216717, 22.303259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603294, 29.181805, 22.316025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066052, -0.906211, -0.417635,
		0.065372, -0.413719, 0.908054,
		-0.995672, -0.087280, 0.031914,
		37.304592, 29.155621, 22.325600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842228, 28.606007, 22.681126>,  <38.001564, 29.216717, 22.303259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842228, 28.606007, 22.681126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534168, 28.691206, 22.440628>,  <37.349331, 28.742327, 22.296329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534168, 28.691206, 22.440628>,  <37.842228, 28.606007, 22.681126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534168, 28.691206, 22.440628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091761, -0.895797, -0.434888,
		-0.631225, -0.390101, 0.670356,
		-0.770153, 0.213000, -0.601245,
		37.303123, 28.755106, 22.260254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417339, 27.997007, 22.689220>,  <37.842228, 28.606007, 22.681126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417339, 27.997007, 22.689220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313732, 28.192844, 22.356184>,  <37.251568, 28.310347, 22.156363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313732, 28.192844, 22.356184>,  <37.417339, 27.997007, 22.689220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313732, 28.192844, 22.356184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000341, -0.861964, -0.506969,
		-0.965873, -0.131597, 0.223096,
		-0.259017, 0.489592, -0.832592,
		37.236027, 28.339722, 22.106407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774609, 27.610462, 22.416164>,  <37.417339, 27.997007, 22.689220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774609, 27.610462, 22.416164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941135, 27.807135, 22.110241>,  <37.041050, 27.925138, 21.926687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941135, 27.807135, 22.110241>,  <36.774609, 27.610462, 22.416164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941135, 27.807135, 22.110241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002820, -0.840467, -0.541855,
		-0.909214, 0.227741, -0.348516,
		0.416319, 0.491680, -0.764807,
		37.066032, 27.954639, 21.880798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339428, 27.570475, 21.895906>,  <36.774609, 27.610462, 22.416164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339428, 27.570475, 21.895906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665096, 27.662401, 21.682625>,  <36.860497, 27.717558, 21.554655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665096, 27.662401, 21.682625>,  <36.339428, 27.570475, 21.895906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665096, 27.662401, 21.682625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130340, -0.822552, -0.553551,
		-0.565805, 0.520184, -0.639745,
		0.814172, 0.229818, -0.533205,
		36.909348, 27.731346, 21.522663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015728, 27.407145, 22.580009>,  <36.339428, 27.570475, 21.895906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015728, 27.407145, 22.580009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079941, 27.044960, 22.737167>,  <36.118469, 26.827648, 22.831463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079941, 27.044960, 22.737167>,  <36.015728, 27.407145, 22.580009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079941, 27.044960, 22.737167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318864, 0.424288, 0.847529,
		-0.934107, -0.010771, 0.356829,
		0.160527, -0.905463, 0.392896,
		36.128098, 26.773321, 22.855036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623821, 27.365459, 23.194906>,  <36.015728, 27.407145, 22.580009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623821, 27.365459, 23.194906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.906498, 27.086525, 23.242750>,  <36.076103, 26.919165, 23.271456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.906498, 27.086525, 23.242750>,  <35.623821, 27.365459, 23.194906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906498, 27.086525, 23.242750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174269, 0.335404, 0.925816,
		-0.685723, -0.633423, 0.358552,
		0.706692, -0.697338, 0.119608,
		36.118507, 26.877323, 23.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487495, 27.182512, 23.824390>,  <35.623821, 27.365459, 23.194906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487495, 27.182512, 23.824390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.863411, 27.060268, 23.763203>,  <36.088959, 26.986921, 23.726490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.863411, 27.060268, 23.763203>,  <35.487495, 27.182512, 23.824390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863411, 27.060268, 23.763203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251407, 0.315021, 0.915181,
		-0.231499, -0.898534, 0.372886,
		0.939789, -0.305610, -0.152971,
		36.145348, 26.968586, 23.717312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661110, 26.698767, 24.392221>,  <35.487495, 27.182512, 23.824390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661110, 26.698767, 24.392221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012787, 26.840519, 24.264826>,  <36.223793, 26.925570, 24.188389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012787, 26.840519, 24.264826>,  <35.661110, 26.698767, 24.392221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012787, 26.840519, 24.264826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198986, 0.334258, 0.921236,
		0.432925, -0.873319, 0.223361,
		0.879193, 0.354380, -0.318487,
		36.276546, 26.946833, 24.169279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278904, 26.329548, 24.763901>,  <35.661110, 26.698767, 24.392221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278904, 26.329548, 24.763901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437912, 26.671280, 24.629978>,  <36.533318, 26.876320, 24.549625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437912, 26.671280, 24.629978>,  <36.278904, 26.329548, 24.763901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437912, 26.671280, 24.629978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304656, 0.221294, 0.926398,
		0.865542, -0.470263, -0.172308,
		0.397520, 0.854331, -0.334807,
		36.557167, 26.927580, 24.529535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565681, 26.608637, 25.349712>,  <36.278904, 26.329548, 24.763901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565681, 26.608637, 25.349712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654625, 26.937542, 25.140163>,  <36.707993, 27.134886, 25.014435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654625, 26.937542, 25.140163>,  <36.565681, 26.608637, 25.349712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654625, 26.937542, 25.140163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145326, 0.503367, 0.851765,
		0.964073, -0.265532, -0.007567,
		0.222361, 0.822263, -0.523871,
		36.721333, 27.184221, 24.983002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303074, 26.853079, 25.615980>,  <36.565681, 26.608637, 25.349712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303074, 26.853079, 25.615980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075920, 27.148376, 25.470377>,  <36.939629, 27.325556, 25.383015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075920, 27.148376, 25.470377>,  <37.303074, 26.853079, 25.615980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075920, 27.148376, 25.470377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022757, 0.456149, 0.889612,
		0.822793, 0.496914, -0.275840,
		-0.567885, 0.738244, -0.364008,
		36.905556, 27.369850, 25.361174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085236, 27.033699, 26.032673>,  <37.303074, 26.853079, 25.615980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085236, 27.033699, 26.032673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238350, 26.773304, 26.294876>,  <38.330219, 26.617067, 26.452198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238350, 26.773304, 26.294876>,  <38.085236, 27.033699, 26.032673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238350, 26.773304, 26.294876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460957, -0.480327, -0.746193,
		0.800622, 0.587791, 0.116216,
		0.382784, -0.650990, 0.655507,
		38.353184, 26.578007, 26.491528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780819, 27.090767, 26.025324>,  <38.085236, 27.033699, 26.032673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780819, 27.090767, 26.025324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684593, 26.719955, 26.140388>,  <38.626858, 26.497469, 26.209427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684593, 26.719955, 26.140388>,  <38.780819, 27.090767, 26.025324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684593, 26.719955, 26.140388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515947, -0.373157, -0.771072,
		0.822147, -0.037077, 0.568066,
		-0.240567, -0.927027, 0.287661,
		38.612423, 26.441847, 26.226686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307121, 26.613083, 25.864849>,  <38.780819, 27.090767, 26.025324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307121, 26.613083, 25.864849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027462, 26.331640, 25.915655>,  <38.859669, 26.162775, 25.946138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027462, 26.331640, 25.915655>,  <39.307121, 26.613083, 25.864849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027462, 26.331640, 25.915655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274937, -0.428559, -0.860666,
		0.660006, -0.566809, 0.493073,
		-0.699144, -0.703609, 0.127015,
		38.817719, 26.120558, 25.953760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666355, 25.960276, 25.692635>,  <39.307121, 26.613083, 25.864849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666355, 25.960276, 25.692635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278351, 25.872002, 25.651873>,  <39.045547, 25.819036, 25.627415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278351, 25.872002, 25.651873>,  <39.666355, 25.960276, 25.692635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278351, 25.872002, 25.651873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202283, -0.500391, -0.841838,
		0.134788, -0.837202, 0.530023,
		-0.970007, -0.220685, -0.101905,
		38.987350, 25.805796, 25.621302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652203, 25.322485, 25.536375>,  <39.666355, 25.960276, 25.692635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652203, 25.322485, 25.536375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.285328, 25.421017, 25.411095>,  <39.065205, 25.480135, 25.335926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.285328, 25.421017, 25.411095>,  <39.652203, 25.322485, 25.536375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285328, 25.421017, 25.411095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200687, -0.393477, -0.897163,
		-0.344232, -0.885720, 0.311456,
		-0.917185, 0.246327, -0.313200,
		39.010174, 25.494915, 25.317135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447777, 24.765900, 25.189119>,  <39.652203, 25.322485, 25.536375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447777, 24.765900, 25.189119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204117, 25.056915, 25.062864>,  <39.057922, 25.231524, 24.987112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204117, 25.056915, 25.062864>,  <39.447777, 24.765900, 25.189119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204117, 25.056915, 25.062864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036204, -0.372075, -0.927496,
		-0.792229, -0.576411, 0.200309,
		-0.609149, 0.727537, -0.315637,
		39.021374, 25.275177, 24.968174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922020, 24.355566, 24.906265>,  <39.447777, 24.765900, 25.189119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922020, 24.355566, 24.906265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930435, 24.719650, 24.740822>,  <38.935482, 24.938101, 24.641556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930435, 24.719650, 24.740822>,  <38.922020, 24.355566, 24.906265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930435, 24.719650, 24.740822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025553, -0.413077, -0.910337,
		-0.999452, 0.029718, 0.014570,
		0.021035, 0.910211, -0.413610,
		38.936745, 24.992714, 24.616739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615318, 24.242382, 24.349266>,  <38.922020, 24.355566, 24.906265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615318, 24.242382, 24.349266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759674, 24.607492, 24.272745>,  <38.846287, 24.826559, 24.226833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759674, 24.607492, 24.272745>,  <38.615318, 24.242382, 24.349266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759674, 24.607492, 24.272745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119246, -0.248606, -0.961236,
		-0.924953, 0.324090, -0.198565,
		0.360891, 0.912776, -0.191302,
		38.867943, 24.881325, 24.215355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331200, 24.495037, 23.696413>,  <38.615318, 24.242382, 24.349266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331200, 24.495037, 23.696413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658463, 24.716593, 23.758160>,  <38.854820, 24.849527, 23.795208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658463, 24.716593, 23.758160>,  <38.331200, 24.495037, 23.696413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658463, 24.716593, 23.758160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192157, -0.010352, -0.981309,
		-0.541940, 0.832525, -0.114904,
		0.818154, 0.553891, 0.154366,
		38.903908, 24.882761, 23.804470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.012966, 35.636738, 36.133606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364071, 35.708733, 35.956005>,  <37.574734, 35.751930, 35.849445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364071, 35.708733, 35.956005>,  <37.012966, 35.636738, 36.133606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364071, 35.708733, 35.956005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191904, -0.717068, -0.670065,
		-0.438980, 0.673364, -0.594876,
		0.877764, 0.179986, -0.444000,
		37.627399, 35.762730, 35.822803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854317, 35.658497, 35.433372>,  <37.012966, 35.636738, 36.133606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854317, 35.658497, 35.433372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243610, 35.571289, 35.462448>,  <37.477188, 35.518967, 35.479893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243610, 35.571289, 35.462448>,  <36.854317, 35.658497, 35.433372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243610, 35.571289, 35.462448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114794, -0.735190, -0.668070,
		0.199089, 0.641845, -0.740539,
		0.973235, -0.218015, 0.072688,
		37.535580, 35.505886, 35.484253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139610, 35.628540, 34.710266>,  <36.854317, 35.658497, 35.433372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139610, 35.628540, 34.710266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352409, 35.414227, 34.972538>,  <37.480091, 35.285641, 35.129902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352409, 35.414227, 34.972538>,  <37.139610, 35.628540, 34.710266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352409, 35.414227, 34.972538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014285, -0.779921, -0.625715,
		0.846623, 0.323515, -0.422573,
		0.532001, -0.535782, 0.655677,
		37.512009, 35.253490, 35.169243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538826, 35.393990, 34.294182>,  <37.139610, 35.628540, 34.710266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538826, 35.393990, 34.294182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563599, 35.156845, 34.615349>,  <37.578461, 35.014557, 34.808048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563599, 35.156845, 34.615349>,  <37.538826, 35.393990, 34.294182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563599, 35.156845, 34.615349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054828, -0.801229, -0.595840,
		0.996573, 0.080925, -0.017117,
		0.061933, -0.592860, 0.802921,
		37.582180, 34.978989, 34.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108715, 34.951874, 34.170994>,  <37.538826, 35.393990, 34.294182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108715, 34.951874, 34.170994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906120, 34.759583, 34.457314>,  <37.784565, 34.644207, 34.629105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906120, 34.759583, 34.457314>,  <38.108715, 34.951874, 34.170994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906120, 34.759583, 34.457314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145742, -0.865941, -0.478441,
		0.849842, -0.138002, 0.508649,
		-0.506486, -0.480731, 0.715800,
		37.754173, 34.615364, 34.672054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482903, 34.302845, 34.115894>,  <38.108715, 34.951874, 34.170994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482903, 34.302845, 34.115894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140026, 34.239662, 34.311966>,  <37.934299, 34.201752, 34.429607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140026, 34.239662, 34.311966>,  <38.482903, 34.302845, 34.115894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140026, 34.239662, 34.311966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010484, -0.946253, -0.323257,
		0.514896, -0.282231, 0.809461,
		-0.857189, -0.157958, 0.490180,
		37.882870, 34.192276, 34.459019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587208, 33.596478, 34.455193>,  <38.482903, 34.302845, 34.115894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587208, 33.596478, 34.455193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195835, 33.677647, 34.439701>,  <37.961014, 33.726349, 34.430405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195835, 33.677647, 34.439701>,  <38.587208, 33.596478, 34.455193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195835, 33.677647, 34.439701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183567, -0.940005, -0.287567,
		-0.094760, -0.274254, 0.956977,
		-0.978429, 0.202919, -0.038731,
		37.902306, 33.738522, 34.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171497, 33.036213, 34.813145>,  <38.587208, 33.596478, 34.455193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171497, 33.036213, 34.813145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932568, 33.217926, 34.548775>,  <37.789207, 33.326954, 34.390152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932568, 33.217926, 34.548775>,  <38.171497, 33.036213, 34.813145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932568, 33.217926, 34.548775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217813, -0.885018, -0.411461,
		-0.771851, -0.101820, 0.627597,
		-0.597330, 0.454286, -0.660925,
		37.753368, 33.354210, 34.350498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588947, 32.670719, 34.839195>,  <38.171497, 33.036213, 34.813145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588947, 32.670719, 34.839195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575916, 32.851204, 34.482464>,  <37.568100, 32.959496, 34.268425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575916, 32.851204, 34.482464>,  <37.588947, 32.670719, 34.839195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575916, 32.851204, 34.482464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223755, -0.872941, -0.433482,
		-0.974101, 0.185430, 0.129394,
		-0.032573, 0.451208, -0.891824,
		37.566143, 32.986565, 34.214916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994263, 32.411713, 34.488605>,  <37.588947, 32.670719, 34.839195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994263, 32.411713, 34.488605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243843, 32.549377, 34.207966>,  <37.393589, 32.631977, 34.039581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243843, 32.549377, 34.207966>,  <36.994263, 32.411713, 34.488605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243843, 32.549377, 34.207966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159028, -0.823094, -0.545184,
		-0.765113, 0.451741, -0.458837,
		0.623948, 0.344160, -0.701600,
		37.431026, 32.652626, 33.997486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624023, 32.264523, 33.880840>,  <36.994263, 32.411713, 34.488605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624023, 32.264523, 33.880840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985146, 32.325974, 33.720173>,  <37.201820, 32.362843, 33.623772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985146, 32.325974, 33.720173>,  <36.624023, 32.264523, 33.880840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985146, 32.325974, 33.720173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146870, -0.767714, -0.623735,
		-0.404186, 0.622106, -0.670536,
		0.902808, 0.153623, -0.401668,
		37.255989, 32.372059, 33.599674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461720, 32.234661, 33.217670>,  <36.624023, 32.264523, 33.880840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461720, 32.234661, 33.217670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830635, 32.107861, 33.306110>,  <37.051987, 32.031780, 33.359173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830635, 32.107861, 33.306110>,  <36.461720, 32.234661, 33.217670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830635, 32.107861, 33.306110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200267, -0.881253, -0.428120,
		0.330561, 0.350573, -0.876258,
		0.922292, -0.317005, 0.221100,
		37.107323, 32.012760, 33.372440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767773, 32.657120, 32.600277>,  <36.461720, 32.234661, 33.217670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767773, 32.657120, 32.600277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418545, 32.696877, 32.409336>,  <36.209007, 32.720730, 32.294773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418545, 32.696877, 32.409336>,  <36.767773, 32.657120, 32.600277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418545, 32.696877, 32.409336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297247, 0.667546, 0.682661,
		0.386507, 0.737904, -0.553272,
		-0.873073, 0.099395, -0.477351,
		36.156624, 32.726696, 32.266132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664280, 33.264805, 32.719604>,  <36.767773, 32.657120, 32.600277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664280, 33.264805, 32.719604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299618, 33.137684, 32.615391>,  <36.080818, 33.061409, 32.552860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299618, 33.137684, 32.615391>,  <36.664280, 33.264805, 32.719604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299618, 33.137684, 32.615391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410848, 0.690750, 0.595036,
		-0.009140, 0.649511, -0.760298,
		-0.911658, -0.317806, -0.260537,
		36.026119, 33.042343, 32.537231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333973, 33.877155, 32.653675>,  <36.664280, 33.264805, 32.719604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333973, 33.877155, 32.653675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054462, 33.594646, 32.699085>,  <35.886757, 33.425140, 32.726330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054462, 33.594646, 32.699085>,  <36.333973, 33.877155, 32.653675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054462, 33.594646, 32.699085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566808, 0.643485, 0.514448,
		-0.436389, 0.295141, -0.849974,
		-0.698780, -0.706271, 0.113521,
		35.844830, 33.382767, 32.733143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590927, 34.245396, 32.629917>,  <36.333973, 33.877155, 32.653675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590927, 34.245396, 32.629917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539097, 33.890961, 32.807934>,  <35.507999, 33.678299, 32.914745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539097, 33.890961, 32.807934>,  <35.590927, 34.245396, 32.629917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539097, 33.890961, 32.807934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619703, 0.422740, 0.661256,
		-0.774066, -0.190110, -0.603887,
		-0.129575, -0.886087, 0.445040,
		35.500225, 33.625134, 32.941444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892967, 34.138073, 32.513268>,  <35.590927, 34.245396, 32.629917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892967, 34.138073, 32.513268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994164, 33.899796, 32.818199>,  <35.054882, 33.756828, 33.001160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994164, 33.899796, 32.818199>,  <34.892967, 34.138073, 32.513268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994164, 33.899796, 32.818199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708040, 0.422968, 0.565488,
		-0.659297, -0.682825, -0.314764,
		0.252994, -0.595691, 0.762329,
		35.070061, 33.721088, 33.046898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280144, 33.925076, 32.744556>,  <34.892967, 34.138073, 32.513268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280144, 33.925076, 32.744556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537430, 33.882153, 33.047806>,  <34.691803, 33.856400, 33.229755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537430, 33.882153, 33.047806>,  <34.280144, 33.925076, 32.744556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537430, 33.882153, 33.047806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586010, 0.568282, 0.577623,
		-0.492813, -0.815807, 0.302646,
		0.643217, -0.107306, 0.758128,
		34.730396, 33.849960, 33.275246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855045, 33.592144, 33.320023>,  <34.280144, 33.925076, 32.744556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855045, 33.592144, 33.320023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173710, 33.753010, 33.500504>,  <34.364910, 33.849529, 33.608791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173710, 33.753010, 33.500504>,  <33.855045, 33.592144, 33.320023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173710, 33.753010, 33.500504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604418, 0.532632, 0.592438,
		-0.002066, -0.744690, 0.667408,
		0.796665, 0.402169, 0.451204,
		34.412708, 33.873661, 33.635864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592136, 33.638176, 33.983818>,  <33.855045, 33.592144, 33.320023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592136, 33.638176, 33.983818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903400, 33.887505, 33.952988>,  <34.090157, 34.037102, 33.934490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903400, 33.887505, 33.952988>,  <33.592136, 33.638176, 33.983818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903400, 33.887505, 33.952988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525559, 0.713421, 0.463484,
		0.343887, -0.320156, 0.882747,
		0.778157, 0.623322, -0.077076,
		34.136848, 34.074501, 33.929863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671787, 34.063461, 34.739262>,  <33.592136, 33.638176, 33.983818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671787, 34.063461, 34.739262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848209, 34.279404, 34.452477>,  <33.954063, 34.408970, 34.280407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848209, 34.279404, 34.452477>,  <33.671787, 34.063461, 34.739262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848209, 34.279404, 34.452477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496198, 0.812337, 0.306425,
		0.747837, 0.220605, 0.626157,
		0.441051, 0.539854, -0.716960,
		33.980526, 34.441360, 34.237389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792839, 34.686146, 35.039890>,  <33.671787, 34.063461, 34.739262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792839, 34.686146, 35.039890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809925, 34.789223, 34.653778>,  <33.820175, 34.851070, 34.422112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809925, 34.789223, 34.653778>,  <33.792839, 34.686146, 35.039890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809925, 34.789223, 34.653778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559638, 0.806534, 0.190548,
		0.827636, 0.532069, 0.178664,
		0.042714, 0.257692, -0.965283,
		33.822739, 34.866531, 34.364193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158176, 35.344063, 34.968399>,  <33.792839, 34.686146, 35.039890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158176, 35.344063, 34.968399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901791, 35.304790, 34.663891>,  <33.747959, 35.281227, 34.481186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901791, 35.304790, 34.663891>,  <34.158176, 35.344063, 34.968399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901791, 35.304790, 34.663891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389723, 0.896063, 0.212571,
		0.661276, 0.432934, -0.612603,
		-0.640960, -0.098178, -0.761269,
		33.709503, 35.275337, 34.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077148, 36.087116, 34.737003>,  <34.158176, 35.344063, 34.968399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077148, 36.087116, 34.737003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793129, 35.867062, 34.561195>,  <33.622715, 35.735027, 34.455711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793129, 35.867062, 34.561195>,  <34.077148, 36.087116, 34.737003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793129, 35.867062, 34.561195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673097, 0.713599, 0.194207,
		0.206798, 0.433734, -0.876989,
		-0.710053, -0.550137, -0.439516,
		33.580112, 35.702019, 34.429340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735817, 36.558968, 34.256592>,  <34.077148, 36.087116, 34.737003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735817, 36.558968, 34.256592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474266, 36.273174, 34.356155>,  <33.317337, 36.101696, 34.415894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474266, 36.273174, 34.356155>,  <33.735817, 36.558968, 34.256592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474266, 36.273174, 34.356155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721477, 0.687888, 0.079258,
		-0.227848, -0.127754, -0.965279,
		-0.653878, -0.714486, 0.248906,
		33.278103, 36.058830, 34.430828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162563, 36.757641, 33.904976>,  <33.735817, 36.558968, 34.256592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162563, 36.757641, 33.904976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046558, 36.502434, 34.190304>,  <32.976955, 36.349308, 34.361500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046558, 36.502434, 34.190304>,  <33.162563, 36.757641, 33.904976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046558, 36.502434, 34.190304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689482, 0.656205, 0.306610,
		-0.663707, -0.402901, -0.630209,
		-0.290013, -0.638017, 0.713321,
		32.959553, 36.311028, 34.404301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359200, 37.447975, 33.774906>,  <33.162563, 36.757641, 33.904976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359200, 37.447975, 33.774906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582539, 37.767761, 33.686268>,  <33.716541, 37.959633, 33.633083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582539, 37.767761, 33.686268>,  <33.359200, 37.447975, 33.774906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582539, 37.767761, 33.686268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199501, -0.129879, -0.971252,
		-0.805261, 0.586507, 0.086976,
		0.558350, 0.799463, -0.221595,
		33.750042, 38.007599, 33.619789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919235, 37.799961, 33.182228>,  <33.359200, 37.447975, 33.774906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919235, 37.799961, 33.182228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319214, 37.795807, 33.182625>,  <33.559200, 37.793316, 33.182861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319214, 37.795807, 33.182625>,  <32.919235, 37.799961, 33.182228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319214, 37.795807, 33.182625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003949, -0.464689, -0.885465,
		0.009654, 0.885413, -0.464704,
		0.999946, -0.010384, 0.000989,
		33.619198, 37.792690, 33.182922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114868, 37.906075, 32.542156>,  <32.919235, 37.799961, 33.182228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114868, 37.906075, 32.542156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391258, 37.690693, 32.735077>,  <33.557091, 37.561462, 32.850830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391258, 37.690693, 32.735077>,  <33.114868, 37.906075, 32.542156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391258, 37.690693, 32.735077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043773, -0.634807, -0.771430,
		0.721552, 0.554151, -0.415065,
		0.690975, -0.538458, 0.482303,
		33.598549, 37.529156, 32.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728001, 37.823479, 32.140228>,  <33.114868, 37.906075, 32.542156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728001, 37.823479, 32.140228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722725, 37.506668, 32.384365>,  <33.719559, 37.316582, 32.530846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722725, 37.506668, 32.384365>,  <33.728001, 37.823479, 32.140228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722725, 37.506668, 32.384365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267709, -0.590907, -0.761026,
		0.963409, 0.153354, 0.219829,
		-0.013192, -0.792030, 0.610339,
		33.718769, 37.269058, 32.567467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248829, 37.333935, 31.881378>,  <33.728001, 37.823479, 32.140228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248829, 37.333935, 31.881378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104134, 37.091869, 32.165047>,  <34.017315, 36.946632, 32.335247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104134, 37.091869, 32.165047>,  <34.248829, 37.333935, 31.881378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104134, 37.091869, 32.165047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292467, -0.795949, -0.530027,
		0.885217, 0.015679, 0.464914,
		-0.361738, -0.605161, 0.709173,
		33.995613, 36.910320, 32.377800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796253, 36.885693, 32.010578>,  <34.248829, 37.333935, 31.881378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796253, 36.885693, 32.010578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470398, 36.689182, 32.133869>,  <34.274883, 36.571274, 32.207844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470398, 36.689182, 32.133869>,  <34.796253, 36.885693, 32.010578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470398, 36.689182, 32.133869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228508, -0.760361, -0.607977,
		0.533054, -0.424849, 0.731681,
		-0.814640, -0.491279, 0.308232,
		34.226006, 36.541798, 32.226337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913818, 36.212204, 32.403042>,  <34.796253, 36.885693, 32.010578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913818, 36.212204, 32.403042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566620, 36.201862, 32.204681>,  <34.358299, 36.195660, 32.085667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566620, 36.201862, 32.204681>,  <34.913818, 36.212204, 32.403042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566620, 36.201862, 32.204681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285666, -0.842844, -0.456080,
		-0.406176, -0.537536, 0.738970,
		-0.867995, -0.025850, -0.495899,
		34.306221, 36.194107, 32.055912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958500, 35.559074, 32.084377>,  <34.913818, 36.212204, 32.403042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958500, 35.559074, 32.084377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606464, 35.676971, 31.935476>,  <34.395245, 35.747711, 31.846136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606464, 35.676971, 31.935476>,  <34.958500, 35.559074, 32.084377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606464, 35.676971, 31.935476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018730, -0.804937, -0.593065,
		-0.474440, -0.514977, 0.713936,
		-0.880088, 0.294746, -0.372249,
		34.342438, 35.765396, 31.823801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538113, 34.873238, 32.006599>,  <34.958500, 35.559074, 32.084377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538113, 34.873238, 32.006599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416805, 35.157616, 31.752802>,  <34.344021, 35.328243, 31.600523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416805, 35.157616, 31.752802>,  <34.538113, 34.873238, 32.006599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416805, 35.157616, 31.752802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021735, -0.660521, -0.750493,
		-0.952656, -0.241395, 0.184866,
		-0.303272, 0.710944, -0.634495,
		34.325825, 35.370899, 31.562452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973362, 34.579304, 31.599524>,  <34.538113, 34.873238, 32.006599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973362, 34.579304, 31.599524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136532, 34.864716, 31.371675>,  <34.234432, 35.035965, 31.234966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136532, 34.864716, 31.371675>,  <33.973362, 34.579304, 31.599524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136532, 34.864716, 31.371675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103050, -0.583921, -0.805244,
		-0.907181, 0.387179, -0.164667,
		0.407926, 0.713533, -0.569621,
		34.258911, 35.078773, 31.200788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573586, 34.581844, 30.939196>,  <33.973362, 34.579304, 31.599524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573586, 34.581844, 30.939196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912437, 34.779583, 30.861227>,  <34.115749, 34.898228, 30.814445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912437, 34.779583, 30.861227>,  <33.573586, 34.581844, 30.939196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912437, 34.779583, 30.861227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055549, -0.447185, -0.892715,
		-0.528477, 0.745416, -0.406284,
		0.847128, 0.494348, -0.194920,
		34.166576, 34.927887, 30.802752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487461, 34.847324, 30.363873>,  <33.573586, 34.581844, 30.939196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487461, 34.847324, 30.363873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887146, 34.861511, 30.356657>,  <34.126957, 34.870022, 30.352327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887146, 34.861511, 30.356657>,  <33.487461, 34.847324, 30.363873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887146, 34.861511, 30.356657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013458, -0.125384, -0.992017,
		-0.037442, 0.991474, -0.124807,
		0.999208, 0.035464, -0.018038,
		34.186909, 34.872150, 30.351246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656742, 35.235458, 29.775988>,  <33.487461, 34.847324, 30.363873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656742, 35.235458, 29.775988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994514, 35.048752, 29.881105>,  <34.197178, 34.936729, 29.944176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994514, 35.048752, 29.881105>,  <33.656742, 35.235458, 29.775988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994514, 35.048752, 29.881105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079890, -0.375366, -0.923427,
		0.529669, 0.800768, -0.279682,
		0.844434, -0.466766, 0.262793,
		34.247845, 34.908722, 29.959944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199123, 35.434189, 29.264887>,  <33.656742, 35.235458, 29.775988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199123, 35.434189, 29.264887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320961, 35.083706, 29.414278>,  <34.394062, 34.873417, 29.503912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320961, 35.083706, 29.414278>,  <34.199123, 35.434189, 29.264887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320961, 35.083706, 29.414278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196822, -0.325744, -0.924744,
		0.931924, 0.355181, 0.073237,
		0.304595, -0.876206, 0.373476,
		34.412338, 34.820843, 29.526321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874416, 35.359634, 29.005016>,  <34.199123, 35.434189, 29.264887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874416, 35.359634, 29.005016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779545, 34.994320, 29.137474>,  <34.722622, 34.775131, 29.216948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779545, 34.994320, 29.137474>,  <34.874416, 35.359634, 29.005016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779545, 34.994320, 29.137474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356320, -0.398898, -0.844936,
		0.903759, -0.082411, 0.420033,
		-0.237182, -0.913285, 0.331143,
		34.708389, 34.720333, 29.236816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409855, 34.912975, 28.737272>,  <34.874416, 35.359634, 29.005016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409855, 34.912975, 28.737272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114796, 34.665596, 28.845634>,  <34.937759, 34.517170, 28.910652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114796, 34.665596, 28.845634>,  <35.409855, 34.912975, 28.737272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114796, 34.665596, 28.845634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199151, -0.582679, -0.787924,
		0.645142, -0.527263, 0.552979,
		-0.737653, -0.618449, 0.270906,
		34.893501, 34.480061, 28.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765118, 34.250835, 28.756006>,  <35.409855, 34.912975, 28.737272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765118, 34.250835, 28.756006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369465, 34.215591, 28.708920>,  <35.132072, 34.194443, 28.680668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369465, 34.215591, 28.708920>,  <35.765118, 34.250835, 28.756006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369465, 34.215591, 28.708920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146546, -0.525144, -0.838301,
		0.012047, -0.846439, 0.532348,
		-0.989130, -0.088112, -0.117715,
		35.072727, 34.189159, 28.673605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668278, 33.554146, 28.557306>,  <35.765118, 34.250835, 28.756006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668278, 33.554146, 28.557306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320972, 33.714134, 28.439913>,  <35.112587, 33.810127, 28.369476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320972, 33.714134, 28.439913>,  <35.668278, 33.554146, 28.557306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320972, 33.714134, 28.439913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034213, -0.541903, -0.839744,
		-0.494916, -0.739163, 0.456832,
		-0.868267, 0.399973, -0.293485,
		35.060493, 33.834126, 28.351868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361893, 32.989796, 28.233095>,  <35.668278, 33.554146, 28.557306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361893, 32.989796, 28.233095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.178677, 33.323292, 28.109756>,  <35.068745, 33.523388, 28.035753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.178677, 33.323292, 28.109756>,  <35.361893, 32.989796, 28.233095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178677, 33.323292, 28.109756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047242, -0.369217, -0.928142,
		-0.887674, -0.410562, 0.208505,
		-0.458043, 0.833737, -0.308349,
		35.041264, 33.573414, 28.017252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689320, 32.861252, 27.970568>,  <35.361893, 32.989796, 28.233095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689320, 32.861252, 27.970568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835861, 33.193878, 27.803576>,  <34.923786, 33.393452, 27.703381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835861, 33.193878, 27.803576>,  <34.689320, 32.861252, 27.970568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835861, 33.193878, 27.803576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079115, -0.419211, -0.904435,
		-0.927108, 0.364368, -0.087789,
		0.366350, 0.831563, -0.417481,
		34.945766, 33.443348, 27.678331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570164, 32.662579, 27.295786>,  <34.689320, 32.861252, 27.970568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570164, 32.662579, 27.295786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764530, 33.005203, 27.226295>,  <34.881149, 33.210777, 27.184601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764530, 33.005203, 27.226295>,  <34.570164, 32.662579, 27.295786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764530, 33.005203, 27.226295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097400, -0.250600, -0.963179,
		-0.868561, 0.451104, -0.205200,
		0.485917, 0.856566, -0.173724,
		34.910305, 33.262173, 27.174179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314671, 32.808319, 26.657270>,  <34.570164, 32.662579, 27.295786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314671, 32.808319, 26.657270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666039, 32.987999, 26.722507>,  <34.876858, 33.095806, 26.761650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666039, 32.987999, 26.722507>,  <34.314671, 32.808319, 26.657270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666039, 32.987999, 26.722507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330552, -0.324649, -0.886193,
		-0.345125, 0.832362, -0.433661,
		0.878421, 0.449195, 0.163094,
		34.929565, 33.122757, 26.771435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482330, 33.223488, 25.992830>,  <34.314671, 32.808319, 26.657270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482330, 33.223488, 25.992830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830570, 33.173130, 26.183073>,  <35.039516, 33.142918, 26.297218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830570, 33.173130, 26.183073>,  <34.482330, 33.223488, 25.992830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830570, 33.173130, 26.183073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444086, -0.214993, -0.869808,
		0.211754, 0.968468, -0.131267,
		0.870602, -0.125892, 0.475609,
		35.091751, 33.135361, 26.325756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976246, 33.503925, 25.501036>,  <34.482330, 33.223488, 25.992830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976246, 33.503925, 25.501036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154461, 33.270443, 25.772558>,  <35.261391, 33.130352, 25.935472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154461, 33.270443, 25.772558>,  <34.976246, 33.503925, 25.501036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154461, 33.270443, 25.772558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432262, -0.523725, -0.734071,
		0.783993, 0.620480, 0.018976,
		0.445538, -0.583709, 0.678807,
		35.288124, 33.095329, 25.976200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645748, 33.537285, 25.234299>,  <34.976246, 33.503925, 25.501036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645748, 33.537285, 25.234299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638340, 33.221981, 25.480326>,  <35.633896, 33.032799, 25.627943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638340, 33.221981, 25.480326>,  <35.645748, 33.537285, 25.234299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638340, 33.221981, 25.480326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659202, -0.472158, -0.585252,
		0.751738, 0.394614, 0.528366,
		-0.018524, -0.788256, 0.615069,
		35.632782, 32.985504, 25.664846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359859, 33.218224, 25.249495>,  <35.645748, 33.537285, 25.234299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359859, 33.218224, 25.249495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167660, 32.907860, 25.413000>,  <36.052338, 32.721642, 25.511103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167660, 32.907860, 25.413000>,  <36.359859, 33.218224, 25.249495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167660, 32.907860, 25.413000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521038, -0.627487, -0.578601,
		0.705433, -0.065039, 0.705787,
		-0.480504, -0.775906, 0.408762,
		36.023510, 32.675087, 25.535629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855919, 32.620510, 25.318966>,  <36.359859, 33.218224, 25.249495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855919, 32.620510, 25.318966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512722, 32.416458, 25.342999>,  <36.306805, 32.294025, 25.357418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512722, 32.416458, 25.342999>,  <36.855919, 32.620510, 25.318966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512722, 32.416458, 25.342999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391112, -0.724644, -0.567382,
		0.332977, -0.463313, 0.821260,
		-0.857996, -0.510130, 0.060082,
		36.255322, 32.263420, 25.361023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043468, 31.978148, 25.470394>,  <36.855919, 32.620510, 25.318966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043468, 31.978148, 25.470394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687485, 31.955975, 25.289333>,  <36.473892, 31.942671, 25.180696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687485, 31.955975, 25.289333>,  <37.043468, 31.978148, 25.470394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687485, 31.955975, 25.289333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317833, -0.787201, -0.528486,
		-0.327033, -0.614200, 0.718197,
		-0.889961, -0.055434, -0.452654,
		36.420498, 31.939344, 25.153538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474670, 31.448769, 25.905195>,  <37.043468, 31.978148, 25.470394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474670, 31.448769, 25.905195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837517, 31.609505, 25.855129>,  <38.055225, 31.705946, 25.825090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837517, 31.609505, 25.855129>,  <37.474670, 31.448769, 25.905195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837517, 31.609505, 25.855129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246851, 0.748829, 0.615077,
		0.340888, -0.527049, 0.778469,
		0.907116, 0.401838, -0.125165,
		38.109653, 31.730057, 25.817579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726723, 31.532742, 26.565140>,  <37.474670, 31.448769, 25.905195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726723, 31.532742, 26.565140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939220, 31.780375, 26.333792>,  <38.066719, 31.928955, 26.194983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939220, 31.780375, 26.333792>,  <37.726723, 31.532742, 26.565140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939220, 31.780375, 26.333792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194538, 0.753568, 0.627925,
		0.824582, -0.221066, 0.520764,
		0.531244, 0.619084, -0.578373,
		38.098595, 31.966099, 26.160280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184391, 31.854115, 27.030441>,  <37.726723, 31.532742, 26.565140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184391, 31.854115, 27.030441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220230, 32.100372, 26.717276>,  <38.241734, 32.248127, 26.529375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220230, 32.100372, 26.717276>,  <38.184391, 31.854115, 27.030441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220230, 32.100372, 26.717276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092879, 0.787816, 0.608867,
		0.991638, 0.018165, 0.127765,
		0.089596, 0.615643, -0.782915,
		38.247108, 32.285065, 26.482401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732807, 32.332722, 27.183449>,  <38.184391, 31.854115, 27.030441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732807, 32.332722, 27.183449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493786, 32.489635, 26.903723>,  <38.350372, 32.583786, 26.735888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493786, 32.489635, 26.903723>,  <38.732807, 32.332722, 27.183449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493786, 32.489635, 26.903723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113750, 0.821854, 0.558226,
		0.793719, 0.413117, -0.446479,
		-0.597554, 0.392288, -0.699314,
		38.314518, 32.607323, 26.693928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999096, 32.990822, 27.127472>,  <38.732807, 32.332722, 27.183449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999096, 32.990822, 27.127472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626152, 32.987450, 26.982895>,  <38.402386, 32.985424, 26.896149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626152, 32.987450, 26.982895>,  <38.999096, 32.990822, 27.127472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626152, 32.987450, 26.982895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171571, 0.890307, 0.421802,
		0.318236, 0.455283, -0.831531,
		-0.932357, -0.008434, -0.361441,
		38.346443, 32.984921, 26.874462>
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
