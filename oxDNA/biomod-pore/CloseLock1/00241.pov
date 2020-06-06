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
	<24.044254, 34.770264, 34.644245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257040, 34.710667, 34.977665>,  <24.384712, 34.674908, 35.177719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257040, 34.710667, 34.977665>,  <24.044254, 34.770264, 34.644245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257040, 34.710667, 34.977665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787452, -0.274894, -0.551681,
		0.311338, 0.949860, -0.028906,
		0.531966, -0.148997, 0.833554,
		24.416630, 34.665966, 35.227730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633083, 35.146038, 34.607059>,  <24.044254, 34.770264, 34.644245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633083, 35.146038, 34.607059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700739, 34.809486, 34.812382>,  <24.741333, 34.607555, 34.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700739, 34.809486, 34.812382>,  <24.633083, 35.146038, 34.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700739, 34.809486, 34.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816215, -0.172342, -0.551445,
		0.552435, 0.512237, 0.657593,
		0.169139, -0.841375, 0.513303,
		24.751480, 34.557076, 34.966373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340553, 35.017578, 34.803959>,  <24.633083, 35.146038, 34.607059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340553, 35.017578, 34.803959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190643, 34.650181, 34.753510>,  <25.100697, 34.429741, 34.723240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190643, 34.650181, 34.753510>,  <25.340553, 35.017578, 34.803959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190643, 34.650181, 34.753510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901107, -0.328879, -0.282569,
		0.218057, -0.219554, 0.950919,
		-0.374777, -0.918496, -0.126127,
		25.078211, 34.374634, 34.715672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142601, 34.720379, 35.403194>,  <25.340553, 35.017578, 34.803959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142601, 34.720379, 35.403194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363840, 34.696873, 35.735611>,  <25.496584, 34.682770, 35.935062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363840, 34.696873, 35.735611>,  <25.142601, 34.720379, 35.403194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363840, 34.696873, 35.735611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241653, 0.965942, -0.092526,
		-0.797301, 0.251999, 0.548459,
		0.553096, -0.058766, 0.831042,
		25.529768, 34.679241, 35.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934328, 35.276894, 35.746124>,  <25.142601, 34.720379, 35.403194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934328, 35.276894, 35.746124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291380, 35.147747, 35.871960>,  <25.505611, 35.070259, 35.947460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291380, 35.147747, 35.871960>,  <24.934328, 35.276894, 35.746124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291380, 35.147747, 35.871960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369252, 0.923997, -0.099409,
		-0.258585, 0.204899, 0.944007,
		0.892629, -0.322871, 0.314591,
		25.559168, 35.050884, 35.966335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201876, 35.754822, 36.162182>,  <24.934328, 35.276894, 35.746124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201876, 35.754822, 36.162182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534769, 35.554153, 36.067760>,  <25.734505, 35.433754, 36.011108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534769, 35.554153, 36.067760>,  <25.201876, 35.754822, 36.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534769, 35.554153, 36.067760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445801, 0.858619, -0.253052,
		0.329625, 0.105367, 0.938214,
		0.832231, -0.501669, -0.236050,
		25.784439, 35.403652, 35.996944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765863, 36.170734, 36.514446>,  <25.201876, 35.754822, 36.162182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765863, 36.170734, 36.514446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926514, 35.939873, 36.230026>,  <26.022903, 35.801357, 36.059376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926514, 35.939873, 36.230026>,  <25.765863, 36.170734, 36.514446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926514, 35.939873, 36.230026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458660, 0.798793, -0.389308,
		0.792671, -0.169773, 0.585533,
		0.401626, -0.577154, -0.711049,
		26.047001, 35.766727, 36.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379719, 36.514805, 36.558388>,  <25.765863, 36.170734, 36.514446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379719, 36.514805, 36.558388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367313, 36.305321, 36.217854>,  <26.359869, 36.179630, 36.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367313, 36.305321, 36.217854>,  <26.379719, 36.514805, 36.558388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367313, 36.305321, 36.217854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551281, 0.701513, -0.451628,
		0.833743, -0.483332, 0.266953,
		-0.031015, -0.523708, -0.851333,
		26.358009, 36.148209, 35.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061625, 36.408794, 36.441429>,  <26.379719, 36.514805, 36.558388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061625, 36.408794, 36.441429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852739, 36.369091, 36.102623>,  <26.727407, 36.345268, 35.899338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852739, 36.369091, 36.102623>,  <27.061625, 36.408794, 36.441429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852739, 36.369091, 36.102623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617902, 0.640505, -0.456015,
		0.587783, -0.761512, -0.273149,
		-0.522214, -0.099258, -0.847018,
		26.696075, 36.339314, 35.848518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556206, 36.656330, 35.952293>,  <27.061625, 36.408794, 36.441429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556206, 36.656330, 35.952293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201481, 36.636372, 35.768520>,  <26.988646, 36.624397, 35.658257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201481, 36.636372, 35.768520>,  <27.556206, 36.656330, 35.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201481, 36.636372, 35.768520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146014, 0.912969, -0.381007,
		0.438456, -0.404965, -0.802346,
		-0.886813, -0.049901, -0.459428,
		26.935436, 36.621403, 35.630692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773199, 36.948849, 35.343197>,  <27.556206, 36.656330, 35.952293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773199, 36.948849, 35.343197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375229, 36.979004, 35.369862>,  <27.136448, 36.997097, 35.385860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375229, 36.979004, 35.369862>,  <27.773199, 36.948849, 35.343197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375229, 36.979004, 35.369862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049442, 0.943149, -0.328673,
		-0.087648, -0.323708, -0.942089,
		-0.994924, 0.075387, 0.066661,
		27.076752, 37.001621, 35.389858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490316, 37.098656, 34.656982>,  <27.773199, 36.948849, 35.343197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490316, 37.098656, 34.656982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222511, 37.232235, 34.922382>,  <27.061829, 37.312382, 35.081623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222511, 37.232235, 34.922382>,  <27.490316, 37.098656, 34.656982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222511, 37.232235, 34.922382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055645, 0.913277, -0.403521,
		-0.740712, -0.233243, -0.630035,
		-0.669515, 0.333951, 0.663496,
		27.021656, 37.332420, 35.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077040, 37.604630, 34.273140>,  <27.490316, 37.098656, 34.656982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077040, 37.604630, 34.273140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001648, 37.699959, 34.654228>,  <26.956413, 37.757156, 34.882881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001648, 37.699959, 34.654228>,  <27.077040, 37.604630, 34.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001648, 37.699959, 34.654228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201193, 0.940161, -0.274989,
		-0.961247, -0.243511, -0.129252,
		-0.188481, 0.238328, 0.952720,
		26.945105, 37.771458, 34.940044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503904, 38.116493, 34.278576>,  <27.077040, 37.604630, 34.273140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503904, 38.116493, 34.278576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698795, 38.155560, 34.625694>,  <26.815729, 38.179001, 34.833965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698795, 38.155560, 34.625694>,  <26.503904, 38.116493, 34.278576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698795, 38.155560, 34.625694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209355, 0.977811, 0.007494,
		-0.847809, -0.185329, 0.496863,
		0.487227, 0.097667, 0.867797,
		26.844963, 38.184860, 34.886032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187981, 38.548237, 34.579155>,  <26.503904, 38.116493, 34.278576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187981, 38.548237, 34.579155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537153, 38.575771, 34.772339>,  <26.746658, 38.592293, 34.888248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537153, 38.575771, 34.772339>,  <26.187981, 38.548237, 34.579155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537153, 38.575771, 34.772339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089962, 0.995730, 0.020678,
		-0.479472, -0.061499, 0.875400,
		0.872934, 0.068838, 0.482958,
		26.799034, 38.596424, 34.917225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011845, 39.059547, 34.898190>,  <26.187981, 38.548237, 34.579155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011845, 39.059547, 34.898190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411449, 39.061279, 34.915897>,  <26.651213, 39.062317, 34.926521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411449, 39.061279, 34.915897>,  <26.011845, 39.059547, 34.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411449, 39.061279, 34.915897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001931, 0.990088, -0.140432,
		-0.044441, 0.140378, 0.989100,
		0.999010, 0.004331, 0.044272,
		26.711153, 39.062580, 34.929180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129137, 39.575657, 35.383835>,  <26.011845, 39.059547, 34.898190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129137, 39.575657, 35.383835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490273, 39.524025, 35.219776>,  <26.706955, 39.493046, 35.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490273, 39.524025, 35.219776>,  <26.129137, 39.575657, 35.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490273, 39.524025, 35.219776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138698, 0.990314, -0.006365,
		0.406993, -0.051140, 0.911998,
		0.902840, -0.129083, -0.410144,
		26.761124, 39.485302, 35.096733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628073, 40.053967, 35.736565>,  <26.129137, 39.575657, 35.383835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628073, 40.053967, 35.736565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794153, 39.957085, 35.385807>,  <26.893803, 39.898956, 35.175354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794153, 39.957085, 35.385807>,  <26.628073, 40.053967, 35.736565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794153, 39.957085, 35.385807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152434, 0.968801, -0.195418,
		0.896867, -0.052531, 0.439170,
		0.415203, -0.242208, -0.876893,
		26.918715, 39.884422, 35.122738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287228, 40.369381, 35.713093>,  <26.628073, 40.053967, 35.736565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287228, 40.369381, 35.713093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208521, 40.275017, 35.332436>,  <27.161297, 40.218399, 35.104042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208521, 40.275017, 35.332436>,  <27.287228, 40.369381, 35.713093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208521, 40.275017, 35.332436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335259, 0.895924, -0.291413,
		0.921349, -0.376388, -0.097199,
		-0.196768, -0.235907, -0.951646,
		27.149490, 40.204247, 35.046944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795927, 40.723568, 35.383369>,  <27.287228, 40.369381, 35.713093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795927, 40.723568, 35.383369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510429, 40.641708, 35.115433>,  <27.339130, 40.592594, 34.954670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510429, 40.641708, 35.115433>,  <27.795927, 40.723568, 35.383369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510429, 40.641708, 35.115433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022693, 0.962618, -0.269910,
		0.700040, -0.177445, -0.691706,
		-0.713743, -0.204645, -0.669845,
		27.296307, 40.580315, 34.914478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046366, 41.093945, 34.817097>,  <27.795927, 40.723568, 35.383369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046366, 41.093945, 34.817097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669899, 41.021915, 34.702705>,  <27.444019, 40.978699, 34.634071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669899, 41.021915, 34.702705>,  <28.046366, 41.093945, 34.817097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669899, 41.021915, 34.702705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118677, 0.968433, -0.219210,
		0.316422, -0.172374, -0.932826,
		-0.941166, -0.180068, -0.285976,
		27.387548, 40.967896, 34.616913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920067, 41.258541, 34.028580>,  <28.046366, 41.093945, 34.817097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920067, 41.258541, 34.028580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597488, 41.298737, 34.261662>,  <27.403942, 41.322853, 34.401512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597488, 41.298737, 34.261662>,  <27.920067, 41.258541, 34.028580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597488, 41.298737, 34.261662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036884, 0.974985, -0.219187,
		-0.590158, -0.198255, -0.782565,
		-0.806445, 0.100491, 0.582708,
		27.355555, 41.328884, 34.436474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529549, 41.701759, 33.718700>,  <27.920067, 41.258541, 34.028580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529549, 41.701759, 33.718700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340477, 41.726559, 34.070320>,  <27.227034, 41.741440, 34.281292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340477, 41.726559, 34.070320>,  <27.529549, 41.701759, 33.718700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340477, 41.726559, 34.070320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107612, 0.994117, -0.012250,
		-0.874640, 0.088807, -0.476569,
		-0.472678, 0.061999, 0.879051,
		27.198673, 41.745159, 34.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221867, 42.376114, 33.677223>,  <27.529549, 41.701759, 33.718700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221867, 42.376114, 33.677223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204981, 42.289047, 34.067268>,  <27.194849, 42.236809, 34.301296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204981, 42.289047, 34.067268>,  <27.221867, 42.376114, 33.677223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204981, 42.289047, 34.067268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153432, 0.962992, 0.221599,
		-0.987257, 0.158967, -0.007254,
		-0.042213, -0.217662, 0.975111,
		27.192318, 42.223747, 34.359802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809486, 42.890282, 33.954262>,  <27.221867, 42.376114, 33.677223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809486, 42.890282, 33.954262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010273, 42.738155, 34.264973>,  <27.130745, 42.646881, 34.451401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010273, 42.738155, 34.264973>,  <26.809486, 42.890282, 33.954262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010273, 42.738155, 34.264973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222677, 0.924682, 0.308833,
		-0.835729, 0.017946, 0.548849,
		0.501969, -0.380316, 0.776780,
		27.160864, 42.624062, 34.498005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552141, 43.153568, 34.587170>,  <26.809486, 42.890282, 33.954262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552141, 43.153568, 34.587170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941881, 43.089600, 34.650501>,  <27.175724, 43.051216, 34.688499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941881, 43.089600, 34.650501>,  <26.552141, 43.153568, 34.587170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941881, 43.089600, 34.650501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095740, 0.931284, 0.351488,
		-0.203665, -0.327313, 0.922706,
		0.974348, -0.159925, 0.158333,
		27.234186, 43.041622, 34.698002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860365, 43.257858, 35.388119>,  <26.552141, 43.153568, 34.587170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860365, 43.257858, 35.388119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068066, 43.365910, 35.063793>,  <27.192686, 43.430740, 34.869198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068066, 43.365910, 35.063793>,  <26.860365, 43.257858, 35.388119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068066, 43.365910, 35.063793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197434, 0.960986, 0.193716,
		0.831504, 0.059495, 0.552324,
		0.519250, 0.270124, -0.810810,
		27.223841, 43.446945, 34.820549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639547, 43.380486, 35.276089>,  <26.860365, 43.257858, 35.388119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639547, 43.380486, 35.276089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743496, 43.766602, 35.286549>,  <27.805864, 43.998272, 35.292824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743496, 43.766602, 35.286549>,  <27.639547, 43.380486, 35.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743496, 43.766602, 35.286549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892515, -0.250437, 0.375097,
		0.368625, -0.074140, -0.926617,
		0.259869, 0.965290, 0.026146,
		27.821457, 44.056187, 35.294392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313072, 43.432381, 34.922302>,  <27.639547, 43.380486, 35.276089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313072, 43.432381, 34.922302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236834, 43.656513, 35.244717>,  <28.191090, 43.790993, 35.438168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236834, 43.656513, 35.244717>,  <28.313072, 43.432381, 34.922302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236834, 43.656513, 35.244717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674065, -0.522217, 0.522422,
		0.713658, 0.642895, -0.278168,
		-0.190599, 0.560335, 0.806038,
		28.179653, 43.824615, 35.486526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837139, 43.788124, 35.169937>,  <28.313072, 43.432381, 34.922302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837139, 43.788124, 35.169937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594954, 43.703751, 35.476902>,  <28.449642, 43.653126, 35.661079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594954, 43.703751, 35.476902>,  <28.837139, 43.788124, 35.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594954, 43.703751, 35.476902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652951, -0.682962, 0.327442,
		0.455045, 0.699337, 0.551237,
		-0.605466, -0.210930, 0.767411,
		28.413313, 43.640472, 35.707127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175615, 43.667839, 35.897293>,  <28.837139, 43.788124, 35.169937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175615, 43.667839, 35.897293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827156, 43.476242, 35.854080>,  <28.618080, 43.361282, 35.828152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827156, 43.476242, 35.854080>,  <29.175615, 43.667839, 35.897293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827156, 43.476242, 35.854080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422570, -0.843384, 0.331872,
		-0.250078, 0.243456, 0.937118,
		-0.871146, -0.478992, -0.108034,
		28.565813, 43.332546, 35.821671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936241, 43.537727, 36.565460>,  <29.175615, 43.667839, 35.897293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936241, 43.537727, 36.565460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917112, 43.310936, 36.236523>,  <28.905634, 43.174862, 36.039158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917112, 43.310936, 36.236523>,  <28.936241, 43.537727, 36.565460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917112, 43.310936, 36.236523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758963, -0.555861, 0.339106,
		-0.649374, -0.607913, 0.456897,
		-0.047824, -0.566975, -0.822345,
		28.902765, 43.140842, 35.989819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830370, 42.791859, 36.740112>,  <28.936241, 43.537727, 36.565460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830370, 42.791859, 36.740112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012049, 42.835236, 36.386402>,  <29.121056, 42.861259, 36.174175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012049, 42.835236, 36.386402>,  <28.830370, 42.791859, 36.740112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012049, 42.835236, 36.386402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769545, -0.547871, 0.328083,
		-0.448893, -0.829505, -0.332291,
		0.454199, 0.108439, -0.884276,
		29.148308, 42.867767, 36.121120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200718, 42.597977, 37.371162>,  <28.830370, 42.791859, 36.740112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200718, 42.597977, 37.371162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194933, 42.981606, 37.258041>,  <29.191462, 43.211781, 37.190166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194933, 42.981606, 37.258041>,  <29.200718, 42.597977, 37.371162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194933, 42.981606, 37.258041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775468, -0.189311, -0.602338,
		-0.631222, 0.210595, 0.746464,
		-0.014465, 0.959068, -0.282807,
		29.190594, 43.269325, 37.173199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960619, 42.736546, 38.031990>,  <29.200718, 42.597977, 37.371162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960619, 42.736546, 38.031990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105309, 42.527855, 38.341042>,  <29.192123, 42.402641, 38.526474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105309, 42.527855, 38.341042>,  <28.960619, 42.736546, 38.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105309, 42.527855, 38.341042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446913, -0.824359, -0.347421,
		0.818183, -0.219628, -0.531358,
		0.361726, -0.521724, 0.772631,
		29.213827, 42.371338, 38.572830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408339, 42.075287, 37.897038>,  <28.960619, 42.736546, 38.031990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408339, 42.075287, 37.897038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232449, 42.008488, 38.250027>,  <29.126915, 41.968407, 38.461819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232449, 42.008488, 38.250027>,  <29.408339, 42.075287, 37.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232449, 42.008488, 38.250027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033725, -0.978797, -0.202037,
		0.897499, -0.118602, 0.424770,
		-0.439726, -0.167002, 0.882469,
		29.100531, 41.958385, 38.514767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780220, 41.561565, 38.413132>,  <29.408339, 42.075287, 37.897038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780220, 41.561565, 38.413132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381804, 41.539742, 38.441196>,  <29.142754, 41.526646, 38.458035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381804, 41.539742, 38.441196>,  <29.780220, 41.561565, 38.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381804, 41.539742, 38.441196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035853, -0.968970, -0.244564,
		0.081325, -0.241081, 0.967092,
		-0.996043, -0.054562, 0.070158,
		29.082991, 41.523373, 38.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592321, 40.948246, 38.847843>,  <29.780220, 41.561565, 38.413132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592321, 40.948246, 38.847843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260401, 41.008793, 38.632988>,  <29.061249, 41.045120, 38.504074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260401, 41.008793, 38.632988>,  <29.592321, 40.948246, 38.847843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260401, 41.008793, 38.632988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074511, -0.983944, -0.162177,
		-0.553061, -0.094552, 0.827758,
		-0.829802, 0.151371, -0.537136,
		29.011459, 41.054203, 38.471848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067701, 40.573952, 39.140377>,  <29.592321, 40.948246, 38.847843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067701, 40.573952, 39.140377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948965, 40.638622, 38.763920>,  <28.877724, 40.677425, 38.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948965, 40.638622, 38.763920>,  <29.067701, 40.573952, 39.140377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948965, 40.638622, 38.763920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062836, -0.986735, -0.149686,
		-0.952856, 0.014705, 0.303064,
		-0.296843, 0.161672, -0.941141,
		28.859913, 40.687122, 38.481579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506124, 40.019836, 38.943195>,  <29.067701, 40.573952, 39.140377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506124, 40.019836, 38.943195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639807, 40.186092, 38.604836>,  <28.720016, 40.285847, 38.401817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639807, 40.186092, 38.604836>,  <28.506124, 40.019836, 38.943195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639807, 40.186092, 38.604836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066834, -0.905700, -0.418617,
		-0.940127, 0.083371, -0.330471,
		0.334208, 0.415640, -0.845901,
		28.740068, 40.310783, 38.351067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952684, 39.752213, 38.376431>,  <28.506124, 40.019836, 38.943195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952684, 39.752213, 38.376431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296751, 39.851181, 38.198040>,  <28.503191, 39.910564, 38.091007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296751, 39.851181, 38.198040>,  <27.952684, 39.752213, 38.376431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296751, 39.851181, 38.198040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050209, -0.911272, -0.408733,
		-0.507533, 0.329187, -0.796270,
		0.860168, 0.247426, -0.445972,
		28.554802, 39.925407, 38.064247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887121, 39.597145, 37.594780>,  <27.952684, 39.752213, 38.376431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887121, 39.597145, 37.594780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277494, 39.609070, 37.681190>,  <28.511719, 39.616222, 37.733036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277494, 39.609070, 37.681190>,  <27.887121, 39.597145, 37.594780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277494, 39.609070, 37.681190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134736, -0.861335, -0.489846,
		0.171467, 0.507163, -0.844621,
		0.975933, 0.029809, 0.216024,
		28.570274, 39.618011, 37.745998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157501, 39.256863, 37.091938>,  <27.887121, 39.597145, 37.594780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157501, 39.256863, 37.091938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491024, 39.286098, 37.310814>,  <28.691137, 39.303638, 37.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491024, 39.286098, 37.310814>,  <28.157501, 39.256863, 37.091938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491024, 39.286098, 37.310814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267186, -0.920799, -0.284150,
		0.483089, 0.383130, -0.787297,
		0.833809, 0.073085, 0.547194,
		28.741167, 39.308025, 37.474972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704943, 39.141323, 36.727173>,  <28.157501, 39.256863, 37.091938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704943, 39.141323, 36.727173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817467, 39.041729, 37.097874>,  <28.884981, 38.981972, 37.320293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817467, 39.041729, 37.097874>,  <28.704943, 39.141323, 36.727173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817467, 39.041729, 37.097874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459818, -0.812690, -0.357915,
		0.842278, 0.526823, -0.114131,
		0.281311, -0.248984, 0.926753,
		28.901859, 38.967033, 37.375900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455996, 38.944088, 36.699173>,  <28.704943, 39.141323, 36.727173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455996, 38.944088, 36.699173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294498, 38.769428, 37.020752>,  <29.197599, 38.664635, 37.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294498, 38.769428, 37.020752>,  <29.455996, 38.944088, 36.699173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294498, 38.769428, 37.020752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507306, -0.838131, -0.200442,
		0.761336, 0.326921, 0.559902,
		-0.403743, -0.436645, 0.803948,
		29.173376, 38.638435, 37.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061474, 38.541988, 36.965214>,  <29.455996, 38.944088, 36.699173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061474, 38.541988, 36.965214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719017, 38.397243, 37.112770>,  <29.513544, 38.310398, 37.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719017, 38.397243, 37.112770>,  <30.061474, 38.541988, 36.965214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719017, 38.397243, 37.112770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211240, -0.896588, -0.389239,
		0.471596, -0.255318, 0.844044,
		-0.856140, -0.361859, 0.368894,
		29.462175, 38.288685, 37.223438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201111, 37.944508, 37.244881>,  <30.061474, 38.541988, 36.965214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201111, 37.944508, 37.244881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809538, 37.909508, 37.171085>,  <29.574594, 37.888508, 37.126808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809538, 37.909508, 37.171085>,  <30.201111, 37.944508, 37.244881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809538, 37.909508, 37.171085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147703, -0.927297, -0.343953,
		-0.140980, -0.363956, 0.920685,
		-0.978932, -0.087497, -0.184487,
		29.515858, 37.883259, 37.115738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033243, 37.270969, 37.490837>,  <30.201111, 37.944508, 37.244881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033243, 37.270969, 37.490837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707289, 37.358517, 37.276154>,  <29.511715, 37.411045, 37.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707289, 37.358517, 37.276154>,  <30.033243, 37.270969, 37.490837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707289, 37.358517, 37.276154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142002, -0.973133, -0.181241,
		-0.561955, -0.071478, 0.824074,
		-0.814888, 0.218869, -0.536707,
		29.462822, 37.424179, 37.115143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440674, 36.799870, 37.738159>,  <30.033243, 37.270969, 37.490837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440674, 36.799870, 37.738159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339718, 36.933884, 37.375050>,  <29.279144, 37.014294, 37.157185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339718, 36.933884, 37.375050>,  <29.440674, 36.799870, 37.738159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339718, 36.933884, 37.375050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206598, -0.935170, -0.287706,
		-0.945314, 0.114931, 0.305243,
		-0.252387, 0.335035, -0.907773,
		29.264000, 37.034393, 37.102718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718084, 36.575577, 37.614285>,  <29.440674, 36.799870, 37.738159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718084, 36.575577, 37.614285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902733, 36.630867, 37.263786>,  <29.013523, 36.664040, 37.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902733, 36.630867, 37.263786>,  <28.718084, 36.575577, 37.614285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902733, 36.630867, 37.263786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330822, -0.889699, -0.314630,
		-0.823080, 0.435121, -0.364979,
		0.461623, 0.138223, -0.876241,
		29.041220, 36.672333, 37.000916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280308, 36.268925, 37.326946>,  <28.718084, 36.575577, 37.614285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280308, 36.268925, 37.326946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568609, 36.300140, 37.051434>,  <28.741590, 36.318871, 36.886127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568609, 36.300140, 37.051434>,  <28.280308, 36.268925, 37.326946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568609, 36.300140, 37.051434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274779, -0.880076, -0.387250,
		-0.636402, 0.468376, -0.612875,
		0.720755, 0.078041, -0.688782,
		28.784836, 36.323551, 36.844799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974030, 36.250683, 36.613605>,  <28.280308, 36.268925, 37.326946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974030, 36.250683, 36.613605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359024, 36.144566, 36.590839>,  <28.590021, 36.080894, 36.577179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359024, 36.144566, 36.590839>,  <27.974030, 36.250683, 36.613605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359024, 36.144566, 36.590839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264695, -0.871957, -0.411859,
		0.059633, 0.411475, -0.909468,
		0.962487, -0.265292, -0.056917,
		28.647770, 36.064980, 36.573765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982990, 35.800697, 35.978012>,  <27.974030, 36.250683, 36.613605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982990, 35.800697, 35.978012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330385, 35.716530, 36.157547>,  <28.538822, 35.666027, 36.265266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330385, 35.716530, 36.157547>,  <27.982990, 35.800697, 35.978012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330385, 35.716530, 36.157547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142534, -0.973202, -0.180450,
		0.474779, 0.092744, -0.875204,
		0.868486, -0.210420, 0.448837,
		28.590931, 35.653404, 36.292198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337490, 35.397129, 35.482658>,  <27.982990, 35.800697, 35.978012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337490, 35.397129, 35.482658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507711, 35.298103, 35.830822>,  <28.609844, 35.238686, 36.039722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507711, 35.298103, 35.830822>,  <28.337490, 35.397129, 35.482658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507711, 35.298103, 35.830822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112989, -0.968860, -0.220326,
		0.897852, -0.004587, -0.440273,
		0.425552, -0.247566, 0.870412,
		28.635378, 35.223835, 36.091946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957069, 34.886913, 35.336540>,  <28.337490, 35.397129, 35.482658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957069, 34.886913, 35.336540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859804, 34.828381, 35.720093>,  <28.801445, 34.793262, 35.950226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859804, 34.828381, 35.720093>,  <28.957069, 34.886913, 35.336540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859804, 34.828381, 35.720093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020280, -0.987572, -0.155851,
		0.969774, -0.057343, 0.237171,
		-0.243161, -0.146330, 0.958885,
		28.786856, 34.784481, 36.007759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322716, 34.429333, 35.542171>,  <28.957069, 34.886913, 35.336540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322716, 34.429333, 35.542171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000992, 34.415928, 35.779476>,  <28.807957, 34.407883, 35.921860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000992, 34.415928, 35.779476>,  <29.322716, 34.429333, 35.542171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000992, 34.415928, 35.779476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068429, -0.996990, 0.036450,
		0.590256, 0.069914, 0.804182,
		-0.804310, -0.033514, 0.593264,
		28.759699, 34.405872, 35.957455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382526, 33.816010, 35.880333>,  <29.322716, 34.429333, 35.542171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382526, 33.816010, 35.880333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996227, 33.909229, 35.925968>,  <28.764448, 33.965160, 35.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996227, 33.909229, 35.925968>,  <29.382526, 33.816010, 35.880333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996227, 33.909229, 35.925968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246306, -0.961672, -0.120501,
		0.081636, -0.144475, 0.986135,
		-0.965748, 0.233054, 0.114092,
		28.706503, 33.979145, 35.960197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700319, 33.286079, 35.560497>,  <29.382526, 33.816010, 35.880333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700319, 33.286079, 35.560497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995987, 33.383827, 35.309444>,  <30.173388, 33.442474, 35.158813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995987, 33.383827, 35.309444>,  <29.700319, 33.286079, 35.560497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995987, 33.383827, 35.309444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666496, -0.399632, 0.629347,
		-0.097030, -0.883504, -0.458263,
		0.739167, 0.244365, -0.627629,
		30.217737, 33.457138, 35.121155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076748, 32.746685, 35.223148>,  <29.700319, 33.286079, 35.560497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076748, 32.746685, 35.223148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344931, 33.035809, 35.290127>,  <30.505840, 33.209282, 35.330315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344931, 33.035809, 35.290127>,  <30.076748, 32.746685, 35.223148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344931, 33.035809, 35.290127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406953, -0.546960, 0.731590,
		0.620385, -0.422356, -0.660861,
		0.670456, 0.722807, 0.167446,
		30.546068, 33.252651, 35.340363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382980, 32.456139, 35.745411>,  <30.076748, 32.746685, 35.223148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382980, 32.456139, 35.745411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577492, 32.804878, 35.722065>,  <30.694199, 33.014122, 35.708057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577492, 32.804878, 35.722065>,  <30.382980, 32.456139, 35.745411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577492, 32.804878, 35.722065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510374, -0.229180, 0.828851,
		0.709261, -0.432840, -0.556416,
		0.486279, 0.871852, -0.058362,
		30.723375, 33.066433, 35.704556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098015, 32.310059, 35.965023>,  <30.382980, 32.456139, 35.745411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098015, 32.310059, 35.965023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038902, 32.703060, 36.010345>,  <31.003435, 32.938862, 36.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038902, 32.703060, 36.010345>,  <31.098015, 32.310059, 35.965023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038902, 32.703060, 36.010345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641321, 0.007981, 0.767231,
		0.752907, 0.186049, -0.631283,
		-0.147781, 0.982508, 0.113308,
		30.994568, 32.997814, 36.044338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801222, 32.547462, 36.194599>,  <31.098015, 32.310059, 35.965023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801222, 32.547462, 36.194599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503067, 32.803112, 36.270409>,  <31.324173, 32.956501, 36.315895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503067, 32.803112, 36.270409>,  <31.801222, 32.547462, 36.194599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503067, 32.803112, 36.270409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443264, 0.262837, 0.856991,
		0.497910, 0.722799, -0.479216,
		-0.745388, 0.639123, 0.189521,
		31.279451, 32.994850, 36.327267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958290, 33.348099, 36.284157>,  <31.801222, 32.547462, 36.194599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958290, 33.348099, 36.284157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671715, 33.193501, 36.516479>,  <31.499769, 33.100742, 36.655872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671715, 33.193501, 36.516479>,  <31.958290, 33.348099, 36.284157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671715, 33.193501, 36.516479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543211, 0.213351, 0.812037,
		-0.437765, 0.897275, 0.057096,
		-0.716439, -0.386496, 0.580807,
		31.456783, 33.077553, 36.690723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688618, 33.800457, 36.733677>,  <31.958290, 33.348099, 36.284157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688618, 33.800457, 36.733677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685362, 33.427864, 36.879150>,  <31.683409, 33.204308, 36.966434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685362, 33.427864, 36.879150>,  <31.688618, 33.800457, 36.733677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685362, 33.427864, 36.879150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642885, 0.273698, 0.715394,
		-0.765920, 0.239630, 0.596611,
		-0.008138, -0.931486, 0.363685,
		31.682920, 33.148418, 36.988255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531864, 33.783218, 37.447895>,  <31.688618, 33.800457, 36.733677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531864, 33.783218, 37.447895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772690, 33.469357, 37.388779>,  <31.917185, 33.281040, 37.353310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772690, 33.469357, 37.388779>,  <31.531864, 33.783218, 37.447895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772690, 33.469357, 37.388779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582339, 0.304879, 0.753612,
		-0.546263, -0.539788, 0.640489,
		0.602062, -0.784652, -0.147795,
		31.953308, 33.233959, 37.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568766, 33.370502, 38.182034>,  <31.531864, 33.783218, 37.447895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568766, 33.370502, 38.182034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886948, 33.278545, 37.957748>,  <32.077858, 33.223370, 37.823177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886948, 33.278545, 37.957748>,  <31.568766, 33.370502, 38.182034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886948, 33.278545, 37.957748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598707, 0.154862, 0.785855,
		-0.093830, -0.960815, 0.260825,
		0.795453, -0.229894, -0.560716,
		32.125584, 33.209576, 37.789532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883871, 32.931877, 38.577526>,  <31.568766, 33.370502, 38.182034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883871, 32.931877, 38.577526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171474, 33.067661, 38.334942>,  <32.344036, 33.149132, 38.189392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171474, 33.067661, 38.334942>,  <31.883871, 32.931877, 38.577526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171474, 33.067661, 38.334942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596258, 0.147028, 0.789214,
		0.357076, -0.929057, -0.096695,
		0.719008, 0.339464, -0.606458,
		32.387177, 33.169502, 38.153004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455540, 32.718258, 38.862759>,  <31.883871, 32.931877, 38.577526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455540, 32.718258, 38.862759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621857, 32.987823, 38.618477>,  <32.721645, 33.149563, 38.471909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621857, 32.987823, 38.618477>,  <32.455540, 32.718258, 38.862759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621857, 32.987823, 38.618477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700276, 0.191215, 0.687786,
		0.580285, -0.713635, -0.392422,
		0.415791, 0.673916, -0.610701,
		32.746593, 33.189999, 38.435268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180729, 32.606945, 38.934692>,  <32.455540, 32.718258, 38.862759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180729, 32.606945, 38.934692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094982, 32.981525, 38.823620>,  <33.043533, 33.206272, 38.756977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094982, 32.981525, 38.823620>,  <33.180729, 32.606945, 38.934692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094982, 32.981525, 38.823620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634260, 0.349655, 0.689533,
		0.742807, -0.028314, -0.668907,
		-0.214364, 0.936451, -0.277685,
		33.030674, 33.262459, 38.740314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790539, 32.918373, 38.897793>,  <33.180729, 32.606945, 38.934692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790539, 32.918373, 38.897793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509792, 33.192558, 38.975269>,  <33.341343, 33.357071, 39.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509792, 33.192558, 38.975269>,  <33.790539, 32.918373, 38.897793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509792, 33.192558, 38.975269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519503, 0.306565, 0.797580,
		0.487335, 0.660420, -0.571270,
		-0.701869, 0.685466, 0.193691,
		33.299232, 33.398197, 39.033375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102921, 33.173225, 39.394814>,  <33.790539, 32.918373, 38.897793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102921, 33.173225, 39.394814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770031, 33.394047, 39.415348>,  <33.570297, 33.526539, 39.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770031, 33.394047, 39.415348>,  <34.102921, 33.173225, 39.394814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770031, 33.394047, 39.415348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359582, 0.466942, 0.807878,
		0.422020, 0.690798, -0.587110,
		-0.832226, 0.552055, 0.051340,
		33.520363, 33.559662, 39.430752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320045, 33.975071, 39.545593>,  <34.102921, 33.173225, 39.394814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320045, 33.975071, 39.545593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947002, 33.896816, 39.666901>,  <33.723175, 33.849861, 39.739685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947002, 33.896816, 39.666901>,  <34.320045, 33.975071, 39.545593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947002, 33.896816, 39.666901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244217, 0.276576, 0.929443,
		-0.265712, 0.940867, -0.210158,
		-0.932607, -0.195640, 0.303266,
		33.667221, 33.838123, 39.757881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152420, 34.522591, 39.976536>,  <34.320045, 33.975071, 39.545593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152420, 34.522591, 39.976536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902191, 34.234432, 40.096325>,  <33.752052, 34.061539, 40.168198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902191, 34.234432, 40.096325>,  <34.152420, 34.522591, 39.976536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902191, 34.234432, 40.096325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210288, 0.213955, 0.953940,
		-0.751289, 0.659737, 0.017647,
		-0.625574, -0.720396, 0.299477,
		33.714520, 34.018314, 40.186169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689377, 34.856583, 40.522930>,  <34.152420, 34.522591, 39.976536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689377, 34.856583, 40.522930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731590, 34.460182, 40.555866>,  <33.756920, 34.222343, 40.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731590, 34.460182, 40.555866>,  <33.689377, 34.856583, 40.522930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731590, 34.460182, 40.555866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007511, 0.083591, 0.996472,
		-0.994387, -0.104545, 0.016265,
		0.105536, -0.991001, 0.082337,
		33.763252, 34.162884, 40.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172249, 34.636585, 41.005604>,  <33.689377, 34.856583, 40.522930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172249, 34.636585, 41.005604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418755, 34.323128, 41.036873>,  <33.566658, 34.135052, 41.055634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418755, 34.323128, 41.036873>,  <33.172249, 34.636585, 41.005604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418755, 34.323128, 41.036873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131802, -0.004768, 0.991265,
		-0.776430, -0.621187, -0.106224,
		0.616267, -0.783648, 0.078172,
		33.603634, 34.088032, 41.060326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918484, 34.282265, 41.577381>,  <33.172249, 34.636585, 41.005604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918484, 34.282265, 41.577381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281483, 34.120850, 41.530735>,  <33.499283, 34.024002, 41.502747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281483, 34.120850, 41.530735>,  <32.918484, 34.282265, 41.577381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281483, 34.120850, 41.530735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064445, -0.140576, 0.987970,
		-0.415075, -0.904100, -0.101567,
		0.907502, -0.403537, -0.116615,
		33.553734, 33.999790, 41.495750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911526, 33.661682, 41.839653>,  <32.918484, 34.282265, 41.577381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911526, 33.661682, 41.839653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296307, 33.769047, 41.860039>,  <33.527176, 33.833466, 41.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296307, 33.769047, 41.860039>,  <32.911526, 33.661682, 41.839653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296307, 33.769047, 41.860039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068950, -0.419010, 0.905360,
		0.264366, -0.867401, -0.421575,
		0.961955, 0.268414, 0.050965,
		33.584892, 33.849571, 41.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300713, 33.011387, 42.184395>,  <32.911526, 33.661682, 41.839653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300713, 33.011387, 42.184395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530838, 33.337440, 42.211433>,  <33.668915, 33.533073, 42.227657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530838, 33.337440, 42.211433>,  <33.300713, 33.011387, 42.184395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530838, 33.337440, 42.211433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361394, -0.327468, 0.873017,
		0.733764, -0.477828, -0.482982,
		0.575313, 0.815135, 0.067600,
		33.703430, 33.581982, 42.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883633, 32.685276, 42.420322>,  <33.300713, 33.011387, 42.184395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883633, 32.685276, 42.420322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934998, 33.075092, 42.493835>,  <33.965816, 33.308983, 42.537945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934998, 33.075092, 42.493835>,  <33.883633, 32.685276, 42.420322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934998, 33.075092, 42.493835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183993, -0.205516, 0.961202,
		0.974503, -0.089619, -0.205700,
		0.128417, 0.974542, 0.183786,
		33.973522, 33.367455, 42.548973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591103, 32.738373, 42.646893>,  <33.883633, 32.685276, 42.420322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591103, 32.738373, 42.646893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383930, 33.045868, 42.796982>,  <34.259624, 33.230366, 42.887035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383930, 33.045868, 42.796982>,  <34.591103, 32.738373, 42.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383930, 33.045868, 42.796982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303996, -0.244601, 0.920737,
		0.799582, 0.590947, -0.107005,
		-0.517934, 0.768734, 0.375224,
		34.228550, 33.276489, 42.909550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031670, 32.917786, 43.096928>,  <34.591103, 32.738373, 42.646893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031670, 32.917786, 43.096928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711533, 33.129986, 43.208660>,  <34.519451, 33.257305, 43.275700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711533, 33.129986, 43.208660>,  <35.031670, 32.917786, 43.096928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711533, 33.129986, 43.208660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297655, -0.052854, 0.953209,
		0.520442, 0.846035, -0.115605,
		-0.800338, 0.530501, 0.279334,
		34.471432, 33.289135, 43.292461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281784, 33.503601, 43.559853>,  <35.031670, 32.917786, 43.096928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281784, 33.503601, 43.559853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896408, 33.478569, 43.664059>,  <34.665184, 33.463551, 43.726582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896408, 33.478569, 43.664059>,  <35.281784, 33.503601, 43.559853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896408, 33.478569, 43.664059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266148, -0.111656, 0.957444,
		-0.030832, 0.991774, 0.124230,
		-0.963439, -0.062583, 0.260516,
		34.607376, 33.459793, 43.742214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080021, 34.049953, 44.005486>,  <35.281784, 33.503601, 43.559853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080021, 34.049953, 44.005486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815865, 33.759323, 44.081352>,  <34.657372, 33.584946, 44.126873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815865, 33.759323, 44.081352>,  <35.080021, 34.049953, 44.005486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815865, 33.759323, 44.081352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358600, -0.083228, 0.929774,
		-0.659764, 0.682029, 0.315512,
		-0.660392, -0.726574, 0.189664,
		34.617748, 33.541351, 44.138252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795456, 34.231987, 44.661705>,  <35.080021, 34.049953, 44.005486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795456, 34.231987, 44.661705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692829, 33.847885, 44.617744>,  <34.631252, 33.617424, 44.591370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692829, 33.847885, 44.617744>,  <34.795456, 34.231987, 44.661705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692829, 33.847885, 44.617744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248692, -0.175464, 0.952557,
		-0.933984, 0.217064, 0.283826,
		-0.256567, -0.960258, -0.109899,
		34.615860, 33.559807, 44.584774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387173, 34.075005, 45.229252>,  <34.795456, 34.231987, 44.661705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387173, 34.075005, 45.229252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519897, 33.722153, 45.095531>,  <34.599533, 33.510441, 45.015301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519897, 33.722153, 45.095531>,  <34.387173, 34.075005, 45.229252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519897, 33.722153, 45.095531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167693, -0.293574, 0.941113,
		-0.928322, -0.368330, 0.050516,
		0.331810, -0.882127, -0.334297,
		34.619442, 33.457516, 44.995243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199623, 33.564785, 45.734341>,  <34.387173, 34.075005, 45.229252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199623, 33.564785, 45.734341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477390, 33.374306, 45.518555>,  <34.644051, 33.260017, 45.389084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477390, 33.374306, 45.518555>,  <34.199623, 33.564785, 45.734341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477390, 33.374306, 45.518555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305536, -0.483632, 0.820212,
		-0.651487, -0.734393, -0.190346,
		0.694416, -0.476200, -0.539463,
		34.685715, 33.231445, 45.356716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193527, 32.935581, 46.079552>,  <34.199623, 33.564785, 45.734341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193527, 32.935581, 46.079552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537582, 32.943314, 45.875671>,  <34.744015, 32.947952, 45.753342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537582, 32.943314, 45.875671>,  <34.193527, 32.935581, 46.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537582, 32.943314, 45.875671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461676, -0.454333, 0.761864,
		-0.216846, -0.890622, -0.399712,
		0.860136, 0.019330, -0.509700,
		34.795624, 32.949112, 45.722763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513718, 32.270042, 46.137573>,  <34.193527, 32.935581, 46.079552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513718, 32.270042, 46.137573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792530, 32.548252, 46.067852>,  <34.959820, 32.715179, 46.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792530, 32.548252, 46.067852>,  <34.513718, 32.270042, 46.137573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792530, 32.548252, 46.067852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527879, -0.333242, 0.781213,
		0.485270, -0.636546, -0.599435,
		0.697035, 0.695528, -0.174307,
		35.001640, 32.756912, 46.015560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002014, 32.005035, 46.555763>,  <34.513718, 32.270042, 46.137573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002014, 32.005035, 46.555763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154137, 32.359940, 46.451355>,  <35.245411, 32.572884, 46.388710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154137, 32.359940, 46.451355>,  <35.002014, 32.005035, 46.555763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154137, 32.359940, 46.451355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462687, 0.061847, 0.884362,
		0.800804, -0.457100, -0.387004,
		0.380307, 0.887263, -0.261021,
		35.268230, 32.626118, 46.373047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731831, 31.972969, 46.682922>,  <35.002014, 32.005035, 46.555763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731831, 31.972969, 46.682922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597820, 32.348843, 46.710487>,  <35.517414, 32.574368, 46.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597820, 32.348843, 46.710487>,  <35.731831, 31.972969, 46.682922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597820, 32.348843, 46.710487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485377, 0.109441, 0.867428,
		0.807567, 0.324061, -0.492767,
		-0.335028, 0.939685, 0.068911,
		35.497311, 32.630749, 46.731159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340725, 32.306614, 46.811550>,  <35.731831, 31.972969, 46.682922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340725, 32.306614, 46.811550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042072, 32.541527, 46.936539>,  <35.862881, 32.682476, 47.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042072, 32.541527, 46.936539>,  <36.340725, 32.306614, 46.811550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042072, 32.541527, 46.936539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460342, 0.117041, 0.879992,
		0.480235, 0.800873, -0.357739,
		-0.746632, 0.587285, 0.312468,
		35.818081, 32.717712, 47.030277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687511, 32.957466, 47.079922>,  <36.340725, 32.306614, 46.811550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687511, 32.957466, 47.079922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330338, 32.920315, 47.256123>,  <36.116032, 32.898026, 47.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330338, 32.920315, 47.256123>,  <36.687511, 32.957466, 47.079922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330338, 32.920315, 47.256123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438426, 0.042747, 0.897750,
		-0.102209, 0.994760, 0.002549,
		-0.892936, -0.092876, 0.440498,
		36.062458, 32.892452, 47.388271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583202, 33.452244, 47.562103>,  <36.687511, 32.957466, 47.079922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583202, 33.452244, 47.562103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335133, 33.166958, 47.692768>,  <36.186291, 32.995789, 47.771168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335133, 33.166958, 47.692768>,  <36.583202, 33.452244, 47.562103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335133, 33.166958, 47.692768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414186, 0.055937, 0.908472,
		-0.666205, 0.698714, 0.260711,
		-0.620179, -0.713211, 0.326663,
		36.149078, 32.952995, 47.790768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324188, 33.757420, 48.141426>,  <36.583202, 33.452244, 47.562103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324188, 33.757420, 48.141426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261173, 33.367424, 48.204124>,  <36.223362, 33.133427, 48.241745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261173, 33.367424, 48.204124>,  <36.324188, 33.757420, 48.141426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261173, 33.367424, 48.204124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317935, 0.100199, 0.942803,
		-0.934932, 0.198366, 0.294199,
		-0.157541, -0.974993, 0.156747,
		36.213909, 33.074924, 48.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961514, 33.698265, 48.778118>,  <36.324188, 33.757420, 48.141426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961514, 33.698265, 48.778118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108608, 33.327816, 48.744518>,  <36.196865, 33.105545, 48.724358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108608, 33.327816, 48.744518>,  <35.961514, 33.698265, 48.778118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108608, 33.327816, 48.744518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295298, 0.030640, 0.954914,
		-0.881798, -0.375965, 0.284751,
		0.367739, -0.926127, -0.084003,
		36.218929, 33.049976, 48.719318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596523, 33.266258, 49.397984>,  <35.961514, 33.698265, 48.778118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596523, 33.266258, 49.397984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927784, 33.091896, 49.257042>,  <36.126541, 32.987278, 49.172478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927784, 33.091896, 49.257042>,  <35.596523, 33.266258, 49.397984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927784, 33.091896, 49.257042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310433, -0.166707, 0.935863,
		-0.466691, -0.884416, -0.002737,
		0.828149, -0.435910, -0.352353,
		36.176228, 32.961124, 49.151337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677647, 32.696884, 49.775532>,  <35.596523, 33.266258, 49.397984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677647, 32.696884, 49.775532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037601, 32.797085, 49.632732>,  <36.253574, 32.857204, 49.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037601, 32.797085, 49.632732>,  <35.677647, 32.696884, 49.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037601, 32.797085, 49.632732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364044, 0.019279, 0.931182,
		0.240148, -0.967923, -0.073846,
		0.899889, 0.250505, -0.356996,
		36.307568, 32.872234, 49.525635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224670, 32.211639, 49.815872>,  <35.677647, 32.696884, 49.775532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224670, 32.211639, 49.815872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345749, 32.591003, 49.853615>,  <36.418396, 32.818623, 49.876259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345749, 32.591003, 49.853615>,  <36.224670, 32.211639, 49.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345749, 32.591003, 49.853615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139903, -0.142142, 0.979910,
		0.942764, -0.283411, -0.175710,
		0.302693, 0.948406, 0.094356,
		36.436558, 32.875526, 49.881920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819614, 32.256046, 50.083015>,  <36.224670, 32.211639, 49.815872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819614, 32.256046, 50.083015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694649, 32.625469, 50.171951>,  <36.619671, 32.847122, 50.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694649, 32.625469, 50.171951>,  <36.819614, 32.256046, 50.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694649, 32.625469, 50.171951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193991, -0.167099, 0.966667,
		0.929928, 0.345132, -0.126958,
		-0.312414, 0.923559, 0.222342,
		36.600925, 32.902538, 50.238655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940132, 32.312046, 50.799946>,  <36.819614, 32.256046, 50.083015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940132, 32.312046, 50.799946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741333, 32.657169, 50.762951>,  <36.622055, 32.864243, 50.740753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741333, 32.657169, 50.762951>,  <36.940132, 32.312046, 50.799946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741333, 32.657169, 50.762951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021429, 0.094351, 0.995308,
		0.867486, 0.496650, -0.028404,
		-0.496999, 0.862808, -0.092491,
		36.592232, 32.916012, 50.735203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256958, 32.808899, 51.251209>,  <36.940132, 32.312046, 50.799946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256958, 32.808899, 51.251209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894135, 32.954781, 51.167080>,  <36.676441, 33.042309, 51.116604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894135, 32.954781, 51.167080>,  <37.256958, 32.808899, 51.251209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894135, 32.954781, 51.167080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173925, 0.130329, 0.976097,
		0.383399, 0.921956, -0.054784,
		-0.907059, 0.364706, -0.210319,
		36.622017, 33.064194, 51.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137264, 33.323380, 51.836830>,  <37.256958, 32.808899, 51.251209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137264, 33.323380, 51.836830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783371, 33.240231, 51.669960>,  <36.571033, 33.190342, 51.569839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783371, 33.240231, 51.669960>,  <37.137264, 33.323380, 51.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783371, 33.240231, 51.669960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447447, 0.128154, 0.885081,
		-0.130522, 0.969724, -0.206395,
		-0.884735, -0.207873, -0.417173,
		36.517952, 33.177868, 51.544807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677780, 33.806469, 52.114876>,  <37.137264, 33.323380, 51.836830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677780, 33.806469, 52.114876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498505, 33.465969, 52.005703>,  <36.390938, 33.261669, 51.940197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498505, 33.465969, 52.005703>,  <36.677780, 33.806469, 52.114876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498505, 33.465969, 52.005703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321016, -0.131689, 0.937873,
		-0.834309, 0.507964, -0.214243,
		-0.448193, -0.851252, -0.272934,
		36.364048, 33.210594, 51.923824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158134, 33.847664, 52.544453>,  <36.677780, 33.806469, 52.114876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158134, 33.847664, 52.544453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157185, 33.471100, 52.409550>,  <36.156616, 33.245163, 52.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157185, 33.471100, 52.409550>,  <36.158134, 33.847664, 52.544453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157185, 33.471100, 52.409550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429337, -0.303631, 0.850575,
		-0.903141, 0.146813, -0.403462,
		-0.002372, -0.941411, -0.337254,
		36.156471, 33.188675, 52.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588306, 33.463268, 52.840923>,  <36.158134, 33.847664, 52.544453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588306, 33.463268, 52.840923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841301, 33.165775, 52.754368>,  <35.993099, 32.987282, 52.702435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841301, 33.165775, 52.754368>,  <35.588306, 33.463268, 52.840923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841301, 33.165775, 52.754368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277393, -0.478330, 0.833219,
		-0.723197, -0.466974, -0.508843,
		0.632486, -0.743731, -0.216392,
		36.031048, 32.942657, 52.689449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258629, 32.795185, 52.816807>,  <35.588306, 33.463268, 52.840923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258629, 32.795185, 52.816807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635597, 32.682926, 52.889568>,  <35.861778, 32.615570, 52.933224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635597, 32.682926, 52.889568>,  <35.258629, 32.795185, 52.816807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635597, 32.682926, 52.889568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308922, -0.522123, 0.794956,
		-0.128126, -0.805373, -0.578755,
		0.942417, -0.280645, 0.181900,
		35.918324, 32.598732, 52.944138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240948, 32.040016, 52.929745>,  <35.258629, 32.795185, 52.816807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240948, 32.040016, 52.929745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534107, 32.247105, 53.106300>,  <35.710003, 32.371357, 53.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534107, 32.247105, 53.106300>,  <35.240948, 32.040016, 52.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534107, 32.247105, 53.106300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206047, -0.449398, 0.869244,
		0.648389, -0.728013, -0.222687,
		0.732896, 0.517724, 0.441390,
		35.753975, 32.402420, 53.238716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725742, 31.617317, 53.170925>,  <35.240948, 32.040016, 52.929745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725742, 31.617317, 53.170925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685287, 31.950943, 53.387852>,  <35.661015, 32.151119, 53.518009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685287, 31.950943, 53.387852>,  <35.725742, 31.617317, 53.170925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685287, 31.950943, 53.387852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338234, -0.541471, 0.769680,
		0.935612, -0.105586, 0.336872,
		-0.101138, 0.834063, 0.542319,
		35.654945, 32.201160, 53.550549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125229, 31.478973, 53.812500>,  <35.725742, 31.617317, 53.170925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125229, 31.478973, 53.812500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815750, 31.731112, 53.837982>,  <35.630062, 31.882395, 53.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815750, 31.731112, 53.837982>,  <36.125229, 31.478973, 53.812500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815750, 31.731112, 53.837982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282504, -0.433247, 0.855855,
		0.567084, 0.644176, 0.513277,
		-0.773697, 0.630345, 0.063705,
		35.583641, 31.920216, 53.857094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586182, 31.816980, 53.388176>,  <36.125229, 31.478973, 53.812500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586182, 31.816980, 53.388176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475574, 31.544220, 53.117310>,  <36.409210, 31.380564, 52.954792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475574, 31.544220, 53.117310>,  <36.586182, 31.816980, 53.388176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475574, 31.544220, 53.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179375, -0.655633, 0.733465,
		-0.944121, 0.324281, 0.058976,
		-0.276515, -0.681900, -0.677164,
		36.392620, 31.339649, 52.914162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984379, 32.404842, 53.633976>,  <36.586182, 31.816980, 53.388176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984379, 32.404842, 53.633976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334934, 32.338345, 53.814774>,  <37.545269, 32.298447, 53.923252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334934, 32.338345, 53.814774>,  <36.984379, 32.404842, 53.633976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334934, 32.338345, 53.814774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210318, -0.712196, -0.669734,
		0.433246, 0.682013, -0.589200,
		0.876393, -0.166240, 0.451996,
		37.597851, 32.288471, 53.950371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550995, 32.493160, 53.184040>,  <36.984379, 32.404842, 53.633976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550995, 32.493160, 53.184040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683140, 32.250191, 53.473007>,  <37.762428, 32.104408, 53.646389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683140, 32.250191, 53.473007>,  <37.550995, 32.493160, 53.184040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683140, 32.250191, 53.473007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159010, -0.718639, -0.676960,
		0.930363, 0.338515, -0.140826,
		0.330364, -0.607426, 0.722422,
		37.782249, 32.067963, 53.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223991, 32.279839, 53.078556>,  <37.550995, 32.493160, 53.184040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223991, 32.279839, 53.078556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988575, 32.019718, 53.270691>,  <37.847324, 31.863646, 53.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988575, 32.019718, 53.270691>,  <38.223991, 32.279839, 53.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988575, 32.019718, 53.270691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021966, -0.606773, -0.794572,
		0.808167, -0.457089, 0.371397,
		-0.588543, -0.650305, 0.480333,
		37.812012, 31.824627, 53.414791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568386, 31.733011, 53.323784>,  <38.223991, 32.279839, 53.078556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568386, 31.733011, 53.323784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189026, 31.648321, 53.229374>,  <37.961411, 31.597507, 53.172729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189026, 31.648321, 53.229374>,  <38.568386, 31.733011, 53.323784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189026, 31.648321, 53.229374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314556, -0.721844, -0.616437,
		-0.039860, -0.658873, 0.751197,
		-0.948401, -0.211723, -0.236025,
		37.904507, 31.584805, 53.158566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445522, 31.058764, 53.117722>,  <38.568386, 31.733011, 53.323784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445522, 31.058764, 53.117722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097263, 31.186953, 52.968445>,  <37.888309, 31.263866, 52.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097263, 31.186953, 52.968445>,  <38.445522, 31.058764, 53.117722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097263, 31.186953, 52.968445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030032, -0.722613, -0.690600,
		-0.490991, -0.612476, 0.619516,
		-0.870647, 0.320473, -0.373191,
		37.836071, 31.283094, 52.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090996, 30.552799, 52.799053>,  <38.445522, 31.058764, 53.117722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090996, 30.552799, 52.799053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895691, 30.849873, 52.615738>,  <37.778507, 31.028116, 52.505749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895691, 30.849873, 52.615738>,  <38.090996, 30.552799, 52.799053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895691, 30.849873, 52.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190906, -0.603313, -0.774318,
		-0.851561, -0.290580, 0.436357,
		-0.488261, 0.742682, -0.458284,
		37.749214, 31.072678, 52.478252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441574, 30.336004, 52.554508>,  <38.090996, 30.552799, 52.799053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441574, 30.336004, 52.554508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570850, 30.635048, 52.322430>,  <37.648415, 30.814474, 52.183182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570850, 30.635048, 52.322430>,  <37.441574, 30.336004, 52.554508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570850, 30.635048, 52.322430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080883, -0.589037, -0.804048,
		-0.942872, 0.306786, -0.129900,
		0.323187, 0.747607, -0.580201,
		37.667805, 30.859329, 52.148369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003849, 30.323320, 51.981411>,  <37.441574, 30.336004, 52.554508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003849, 30.323320, 51.981411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278698, 30.576042, 51.837921>,  <37.443607, 30.727676, 51.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278698, 30.576042, 51.837921>,  <37.003849, 30.323320, 51.981411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278698, 30.576042, 51.837921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033140, -0.465974, -0.884177,
		-0.725786, 0.619426, -0.299243,
		0.687122, 0.631806, -0.358726,
		37.484833, 30.765585, 51.730305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799255, 30.617601, 51.341751>,  <37.003849, 30.323320, 51.981411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799255, 30.617601, 51.341751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197201, 30.657373, 51.334103>,  <37.435966, 30.681236, 51.329514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197201, 30.657373, 51.334103>,  <36.799255, 30.617601, 51.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197201, 30.657373, 51.334103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009655, -0.281126, -0.959622,
		-0.100792, 0.954506, -0.280641,
		0.994861, 0.099432, -0.019120,
		37.495659, 30.687202, 51.328365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956978, 31.039162, 50.774601>,  <36.799255, 30.617601, 51.341751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956978, 31.039162, 50.774601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296532, 30.843031, 50.853573>,  <37.500263, 30.725351, 50.900955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296532, 30.843031, 50.853573>,  <36.956978, 31.039162, 50.774601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296532, 30.843031, 50.853573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002627, -0.369591, -0.929191,
		0.528577, 0.789291, -0.312451,
		0.848881, -0.490328, 0.197431,
		37.551197, 30.695932, 50.912804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429905, 31.159134, 50.238560>,  <36.956978, 31.039162, 50.774601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429905, 31.159134, 50.238560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596161, 30.823044, 50.377853>,  <37.695915, 30.621389, 50.461430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596161, 30.823044, 50.377853>,  <37.429905, 31.159134, 50.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596161, 30.823044, 50.377853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260822, -0.256683, -0.930637,
		0.871331, 0.477635, 0.112461,
		0.415638, -0.840225, 0.348234,
		37.720852, 30.570976, 50.482323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176888, 31.103832, 49.902126>,  <37.429905, 31.159134, 50.238560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176888, 31.103832, 49.902126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058880, 30.735964, 50.005795>,  <37.988075, 30.515244, 50.067993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058880, 30.735964, 50.005795>,  <38.176888, 31.103832, 49.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058880, 30.735964, 50.005795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169985, -0.317431, -0.932922,
		0.940248, -0.231179, 0.249980,
		-0.295023, -0.919671, 0.259167,
		37.970371, 30.460062, 50.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702545, 30.682491, 49.658539>,  <38.176888, 31.103832, 49.902126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702545, 30.682491, 49.658539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393131, 30.431011, 49.690487>,  <38.207481, 30.280123, 49.709656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393131, 30.431011, 49.690487>,  <38.702545, 30.682491, 49.658539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393131, 30.431011, 49.690487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163576, -0.319815, -0.933253,
		0.612280, -0.708839, 0.350228,
		-0.773535, -0.628701, 0.079867,
		38.161072, 30.242401, 49.714447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901176, 30.041546, 49.357052>,  <38.702545, 30.682491, 49.658539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901176, 30.041546, 49.357052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503944, 29.994631, 49.359169>,  <38.265606, 29.966482, 49.360439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503944, 29.994631, 49.359169>,  <38.901176, 30.041546, 49.357052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503944, 29.994631, 49.359169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041351, -0.391588, -0.919211,
		0.109885, -0.912635, 0.393730,
		-0.993084, -0.117288, 0.005292,
		38.206020, 29.959444, 49.360756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848572, 29.548111, 48.908939>,  <38.901176, 30.041546, 49.357052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848572, 29.548111, 48.908939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468231, 29.658958, 48.964203>,  <38.240028, 29.725468, 48.997360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468231, 29.658958, 48.964203>,  <38.848572, 29.548111, 48.908939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468231, 29.658958, 48.964203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211852, -0.256794, -0.942961,
		-0.225823, -0.925888, 0.302879,
		-0.950854, 0.277108, 0.138162,
		38.182976, 29.742094, 49.005650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542072, 29.063564, 48.579140>,  <38.848572, 29.548111, 48.908939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542072, 29.063564, 48.579140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300388, 29.382250, 48.584492>,  <38.155376, 29.573462, 48.587704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300388, 29.382250, 48.584492>,  <38.542072, 29.063564, 48.579140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300388, 29.382250, 48.584492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302530, -0.213829, -0.928845,
		-0.737160, -0.565268, 0.370227,
		-0.604211, 0.796712, 0.013385,
		38.119125, 29.621264, 48.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939201, 28.860886, 48.208870>,  <38.542072, 29.063564, 48.579140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939201, 28.860886, 48.208870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920132, 29.259470, 48.181175>,  <37.908688, 29.498621, 48.164558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920132, 29.259470, 48.181175>,  <37.939201, 28.860886, 48.208870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920132, 29.259470, 48.181175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333079, -0.081210, -0.939395,
		-0.941693, -0.021725, 0.335772,
		-0.047676, 0.996460, -0.069239,
		37.905830, 29.558409, 48.160404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248791, 28.968342, 47.998192>,  <37.939201, 28.860886, 48.208870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248791, 28.968342, 47.998192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456009, 29.299496, 47.912178>,  <37.580338, 29.498188, 47.860569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456009, 29.299496, 47.912178>,  <37.248791, 28.968342, 47.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456009, 29.299496, 47.912178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506969, 0.094701, -0.856746,
		-0.688923, 0.552847, 0.468771,
		0.518043, 0.827884, -0.215034,
		37.611423, 29.547861, 47.847668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782810, 29.416803, 47.812340>,  <37.248791, 28.968342, 47.998192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782810, 29.416803, 47.812340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112358, 29.556229, 47.633568>,  <37.310085, 29.639885, 47.526306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112358, 29.556229, 47.633568>,  <36.782810, 29.416803, 47.812340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112358, 29.556229, 47.633568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493688, 0.053987, -0.867961,
		-0.278412, 0.935729, 0.216560,
		0.823868, 0.348564, -0.446928,
		37.359520, 29.660797, 47.499489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520687, 30.087311, 47.449043>,  <36.782810, 29.416803, 47.812340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520687, 30.087311, 47.449043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860199, 29.963594, 47.277500>,  <37.063904, 29.889364, 47.174576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860199, 29.963594, 47.277500>,  <36.520687, 30.087311, 47.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860199, 29.963594, 47.277500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426385, 0.079278, -0.901061,
		0.312687, 0.947658, -0.064586,
		0.848777, -0.309289, -0.428856,
		37.114834, 29.870808, 47.148842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419918, 30.353893, 46.856892>,  <36.520687, 30.087311, 47.449043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419918, 30.353893, 46.856892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745392, 30.135439, 46.777237>,  <36.940678, 30.004366, 46.729446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745392, 30.135439, 46.777237>,  <36.419918, 30.353893, 46.856892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745392, 30.135439, 46.777237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181384, 0.086927, -0.979563,
		0.552285, 0.833174, -0.028329,
		0.813684, -0.546136, -0.199133,
		36.989498, 29.971598, 46.717499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888905, 30.783865, 46.362938>,  <36.419918, 30.353893, 46.856892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888905, 30.783865, 46.362938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976772, 30.395140, 46.328709>,  <37.029491, 30.161903, 46.308170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976772, 30.395140, 46.328709>,  <36.888905, 30.783865, 46.362938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976772, 30.395140, 46.328709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185401, 0.044528, -0.981654,
		0.957796, 0.231503, -0.170394,
		0.219668, -0.971815, -0.085569,
		37.042671, 30.103596, 46.303040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400471, 30.697960, 45.765415>,  <36.888905, 30.783865, 46.362938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400471, 30.697960, 45.765415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212036, 30.347946, 45.809948>,  <37.098976, 30.137938, 45.836666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212036, 30.347946, 45.809948>,  <37.400471, 30.697960, 45.765415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212036, 30.347946, 45.809948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243340, 0.007602, -0.969911,
		0.847860, -0.484001, -0.216512,
		-0.471084, -0.875035, 0.111331,
		37.070709, 30.085436, 45.843346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490993, 30.346872, 45.148014>,  <37.400471, 30.697960, 45.765415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490993, 30.346872, 45.148014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199112, 30.111605, 45.287491>,  <37.023983, 29.970444, 45.371178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199112, 30.111605, 45.287491>,  <37.490993, 30.346872, 45.148014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199112, 30.111605, 45.287491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404928, -0.039192, -0.913508,
		0.550963, -0.807788, -0.209567,
		-0.729707, -0.588169, 0.348689,
		36.980198, 29.935154, 45.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452957, 29.707905, 44.699745>,  <37.490993, 30.346872, 45.148014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452957, 29.707905, 44.699745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099091, 29.774458, 44.873955>,  <36.886772, 29.814390, 44.978481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099091, 29.774458, 44.873955>,  <37.452957, 29.707905, 44.699745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099091, 29.774458, 44.873955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437197, 0.028422, -0.898916,
		-0.161948, -0.985651, 0.047600,
		-0.884664, 0.166388, 0.435527,
		36.833691, 29.824373, 45.004612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007099, 29.158249, 44.585587>,  <37.452957, 29.707905, 44.699745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007099, 29.158249, 44.585587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794384, 29.492039, 44.643353>,  <36.666756, 29.692312, 44.678013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794384, 29.492039, 44.643353>,  <37.007099, 29.158249, 44.585587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794384, 29.492039, 44.643353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273164, -0.007611, -0.961937,
		-0.801612, -0.550995, 0.231995,
		-0.531789, 0.834474, 0.144411,
		36.634846, 29.742380, 44.686676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384739, 29.069063, 44.230972>,  <37.007099, 29.158249, 44.585587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384739, 29.069063, 44.230972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349983, 29.462145, 44.296391>,  <36.329128, 29.697994, 44.335640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349983, 29.462145, 44.296391>,  <36.384739, 29.069063, 44.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349983, 29.462145, 44.296391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347128, 0.124008, -0.929583,
		-0.933784, -0.137541, 0.330349,
		-0.086890, 0.982703, 0.163541,
		36.323917, 29.756956, 44.345451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726536, 29.280548, 44.066795>,  <36.384739, 29.069063, 44.230972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726536, 29.280548, 44.066795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903217, 29.639374, 44.072052>,  <36.009224, 29.854670, 44.075207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903217, 29.639374, 44.072052>,  <35.726536, 29.280548, 44.066795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903217, 29.639374, 44.072052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562594, 0.288364, -0.774813,
		-0.698849, 0.334840, 0.632054,
		0.441700, 0.897067, 0.013144,
		36.035728, 29.908493, 44.075996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211628, 29.794197, 44.140118>,  <35.726536, 29.280548, 44.066795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211628, 29.794197, 44.140118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521652, 29.983664, 43.972824>,  <35.707668, 30.097343, 43.872448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521652, 29.983664, 43.972824>,  <35.211628, 29.794197, 44.140118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521652, 29.983664, 43.972824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602840, 0.355923, -0.714075,
		-0.189375, 0.805579, 0.561408,
		0.775062, 0.473667, -0.418232,
		35.754169, 30.125763, 43.847355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985043, 30.504034, 43.971573>,  <35.211628, 29.794197, 44.140118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985043, 30.504034, 43.971573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310215, 30.435106, 43.749062>,  <35.505318, 30.393749, 43.615555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310215, 30.435106, 43.749062>,  <34.985043, 30.504034, 43.971573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310215, 30.435106, 43.749062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508965, 0.253976, -0.822466,
		0.283010, 0.951736, 0.118760,
		0.812933, -0.172322, -0.556278,
		35.554096, 30.383410, 43.582180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227848, 31.201513, 43.512875>,  <34.985043, 30.504034, 43.971573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227848, 31.201513, 43.512875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347500, 30.866730, 43.329563>,  <35.419292, 30.665859, 43.219578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347500, 30.866730, 43.329563>,  <35.227848, 31.201513, 43.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347500, 30.866730, 43.329563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269109, 0.386775, -0.882035,
		0.915478, 0.387172, -0.109536,
		0.299133, -0.836961, -0.458275,
		35.437241, 30.615641, 43.192081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509979, 31.414394, 42.892975>,  <35.227848, 31.201513, 43.512875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509979, 31.414394, 42.892975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463326, 31.022133, 42.830086>,  <35.435333, 30.786776, 42.792355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463326, 31.022133, 42.830086>,  <35.509979, 31.414394, 42.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463326, 31.022133, 42.830086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437563, 0.192848, -0.878264,
		0.891591, -0.033646, -0.451590,
		-0.116639, -0.980651, -0.157219,
		35.428333, 30.727938, 42.782921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760857, 31.199753, 42.190559>,  <35.509979, 31.414394, 42.892975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760857, 31.199753, 42.190559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520500, 30.890114, 42.270267>,  <35.376286, 30.704330, 42.318092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520500, 30.890114, 42.270267>,  <35.760857, 31.199753, 42.190559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520500, 30.890114, 42.270267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439857, 0.112057, -0.891049,
		0.667428, -0.623071, -0.407825,
		-0.600887, -0.774096, 0.199272,
		35.340233, 30.657885, 42.330048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840473, 30.847696, 41.595718>,  <35.760857, 31.199753, 42.190559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840473, 30.847696, 41.595718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520374, 30.690386, 41.776794>,  <35.328316, 30.595999, 41.885441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520374, 30.690386, 41.776794>,  <35.840473, 30.847696, 41.595718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520374, 30.690386, 41.776794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469606, -0.058462, -0.880938,
		0.372920, -0.917559, -0.137901,
		-0.800251, -0.393279, 0.452693,
		35.280300, 30.572403, 41.912601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686325, 30.276514, 41.312660>,  <35.840473, 30.847696, 41.595718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686325, 30.276514, 41.312660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331245, 30.364178, 41.474632>,  <35.118198, 30.416777, 41.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331245, 30.364178, 41.474632>,  <35.686325, 30.276514, 41.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331245, 30.364178, 41.474632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441432, -0.155073, -0.883793,
		-0.130889, -0.963289, 0.234397,
		-0.887697, 0.219149, 0.404929,
		35.064938, 30.429926, 41.596111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213814, 29.782507, 41.011009>,  <35.686325, 30.276514, 41.312660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213814, 29.782507, 41.011009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963795, 30.040689, 41.186604>,  <34.813782, 30.195599, 41.291958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963795, 30.040689, 41.186604>,  <35.213814, 29.782507, 41.011009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963795, 30.040689, 41.186604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553888, 0.029523, -0.832067,
		-0.550022, -0.763228, 0.339056,
		-0.625047, 0.645455, 0.438981,
		34.776279, 30.234325, 41.318298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469448, 29.501991, 41.043510>,  <35.213814, 29.782507, 41.011009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469448, 29.501991, 41.043510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422890, 29.899115, 41.054703>,  <34.394955, 30.137388, 41.061420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422890, 29.899115, 41.054703>,  <34.469448, 29.501991, 41.043510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422890, 29.899115, 41.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719906, -0.064922, -0.691029,
		-0.684242, -0.100579, 0.722286,
		-0.116395, 0.992809, 0.027985,
		34.387970, 30.196957, 41.063099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929123, 29.539932, 40.597309>,  <34.469448, 29.501991, 41.043510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929123, 29.539932, 40.597309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052116, 29.917562, 40.644943>,  <34.125912, 30.144140, 40.673523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052116, 29.917562, 40.644943>,  <33.929123, 29.539932, 40.597309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052116, 29.917562, 40.644943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445457, 0.253397, -0.858696,
		-0.840847, 0.210986, 0.498459,
		0.307481, 0.944074, 0.119082,
		34.144360, 30.200785, 40.680668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297234, 29.990505, 40.408955>,  <33.929123, 29.539932, 40.597309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297234, 29.990505, 40.408955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641850, 30.192028, 40.383869>,  <33.848618, 30.312941, 40.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641850, 30.192028, 40.383869>,  <33.297234, 29.990505, 40.408955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641850, 30.192028, 40.383869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319643, 0.442303, -0.837972,
		-0.394437, 0.741990, 0.542099,
		0.861538, 0.503805, -0.062711,
		33.900311, 30.343170, 40.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102150, 30.704224, 40.224609>,  <33.297234, 29.990505, 40.408955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102150, 30.704224, 40.224609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480572, 30.653917, 40.105164>,  <33.707623, 30.623734, 40.033497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480572, 30.653917, 40.105164>,  <33.102150, 30.704224, 40.224609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480572, 30.653917, 40.105164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248152, 0.311371, -0.917316,
		0.208349, 0.941929, 0.263363,
		0.946051, -0.125768, -0.298615,
		33.764385, 30.616186, 40.015579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315094, 31.269777, 39.964455>,  <33.102150, 30.704224, 40.224609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315094, 31.269777, 39.964455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555470, 31.003330, 39.787746>,  <33.699696, 30.843462, 39.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555470, 31.003330, 39.787746>,  <33.315094, 31.269777, 39.964455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555470, 31.003330, 39.787746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265375, 0.355078, -0.896379,
		0.753956, 0.655903, 0.036609,
		0.600938, -0.666116, -0.441773,
		33.735752, 30.803495, 39.655216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574150, 31.585354, 39.419060>,  <33.315094, 31.269777, 39.964455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574150, 31.585354, 39.419060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659302, 31.210434, 39.308678>,  <33.710392, 30.985481, 39.242451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659302, 31.210434, 39.308678>,  <33.574150, 31.585354, 39.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659302, 31.210434, 39.308678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265196, 0.216397, -0.939598,
		0.940401, 0.273202, -0.202502,
		0.212879, -0.937301, -0.275952,
		33.723164, 30.929243, 39.225891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107365, 31.521603, 38.872112>,  <33.574150, 31.585354, 39.419060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107365, 31.521603, 38.872112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810360, 31.254309, 38.853638>,  <33.632156, 31.093933, 38.842552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810360, 31.254309, 38.853638>,  <34.107365, 31.521603, 38.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810360, 31.254309, 38.853638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297263, 0.390528, -0.871276,
		0.600256, -0.633206, -0.488614,
		-0.742515, -0.668236, -0.046188,
		33.587605, 31.053839, 38.839783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020557, 31.147236, 38.141689>,  <34.107365, 31.521603, 38.872112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020557, 31.147236, 38.141689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682556, 31.154814, 38.355461>,  <33.479755, 31.159361, 38.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682556, 31.154814, 38.355461>,  <34.020557, 31.147236, 38.141689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682556, 31.154814, 38.355461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478344, 0.420018, -0.771214,
		-0.239078, -0.907318, -0.345854,
		-0.845002, 0.018943, 0.534428,
		33.429054, 31.160496, 38.515789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676506, 30.959776, 37.949806>,  <34.020557, 31.147236, 38.141689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676506, 30.959776, 37.949806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979073, 30.845686, 37.714355>,  <35.160614, 30.777231, 37.573086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979073, 30.845686, 37.714355>,  <34.676506, 30.959776, 37.949806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979073, 30.845686, 37.714355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568734, -0.157677, 0.807267,
		-0.323065, -0.945402, 0.042947,
		0.756420, -0.285225, -0.588622,
		35.205997, 30.760118, 37.537769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878788, 30.264416, 38.157047>,  <34.676506, 30.959776, 37.949806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878788, 30.264416, 38.157047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182053, 30.463236, 37.988224>,  <35.364010, 30.582529, 37.886929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182053, 30.463236, 37.988224>,  <34.878788, 30.264416, 38.157047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182053, 30.463236, 37.988224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597736, -0.271089, 0.754468,
		0.260593, -0.824288, -0.502634,
		0.758157, 0.497052, -0.422063,
		35.409500, 30.612350, 37.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370522, 29.826529, 38.163368>,  <34.878788, 30.264416, 38.157047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370522, 29.826529, 38.163368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559361, 30.177473, 38.129055>,  <35.672665, 30.388039, 38.108467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559361, 30.177473, 38.129055>,  <35.370522, 29.826529, 38.163368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559361, 30.177473, 38.129055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678272, -0.299360, 0.671067,
		0.563087, -0.374996, -0.736417,
		0.472102, 0.877360, -0.085784,
		35.700993, 30.440681, 38.103321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118828, 29.592096, 38.159645>,  <35.370522, 29.826529, 38.163368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118828, 29.592096, 38.159645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133644, 29.985332, 38.231377>,  <36.142532, 30.221275, 38.274414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133644, 29.985332, 38.231377>,  <36.118828, 29.592096, 38.159645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133644, 29.985332, 38.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766740, -0.143045, 0.625818,
		0.640888, 0.114314, -0.759075,
		0.037042, 0.983092, 0.179325,
		36.144756, 30.280260, 38.285175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836643, 29.722673, 38.119324>,  <36.118828, 29.592096, 38.159645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836643, 29.722673, 38.119324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661858, 30.027388, 38.310635>,  <36.556988, 30.210217, 38.425419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661858, 30.027388, 38.310635>,  <36.836643, 29.722673, 38.119324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661858, 30.027388, 38.310635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710692, -0.033524, 0.702704,
		0.551343, 0.646960, -0.526747,
		-0.436963, 0.761786, 0.478273,
		36.530769, 30.255924, 38.454117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321110, 30.254742, 38.206173>,  <36.836643, 29.722673, 38.119324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321110, 30.254742, 38.206173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035213, 30.326456, 38.476582>,  <36.863674, 30.369484, 38.638824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035213, 30.326456, 38.476582>,  <37.321110, 30.254742, 38.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035213, 30.326456, 38.476582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689934, 0.022344, 0.723527,
		0.114614, 0.983543, -0.139666,
		-0.714741, 0.179287, 0.676019,
		36.820789, 30.380241, 38.679386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666740, 30.758423, 38.655655>,  <37.321110, 30.254742, 38.206173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666740, 30.758423, 38.655655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344887, 30.641756, 38.862534>,  <37.151775, 30.571756, 38.986660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344887, 30.641756, 38.862534>,  <37.666740, 30.758423, 38.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344887, 30.641756, 38.862534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552310, -0.047860, 0.832264,
		-0.217991, 0.955322, 0.199601,
		-0.804632, -0.291667, 0.517201,
		37.103497, 30.554256, 39.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529938, 31.216734, 39.171017>,  <37.666740, 30.758423, 38.655655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529938, 31.216734, 39.171017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348026, 30.891855, 39.317177>,  <37.238880, 30.696928, 39.404873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348026, 30.891855, 39.317177>,  <37.529938, 31.216734, 39.171017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348026, 30.891855, 39.317177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577510, 0.043394, 0.815229,
		-0.677981, 0.581770, 0.449316,
		-0.454778, -0.812195, 0.365398,
		37.211594, 30.648197, 39.426796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300522, 31.396734, 39.964844>,  <37.529938, 31.216734, 39.171017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300522, 31.396734, 39.964844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325653, 31.003418, 39.896500>,  <37.340733, 30.767427, 39.855492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325653, 31.003418, 39.896500>,  <37.300522, 31.396734, 39.964844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325653, 31.003418, 39.896500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483503, -0.119780, 0.867109,
		-0.873085, -0.137089, 0.467898,
		0.062826, -0.983290, -0.170861,
		37.344501, 30.708431, 39.845242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226265, 31.052534, 40.663486>,  <37.300522, 31.396734, 39.964844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226265, 31.052534, 40.663486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368084, 30.755791, 40.435822>,  <37.453175, 30.577744, 40.299225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368084, 30.755791, 40.435822>,  <37.226265, 31.052534, 40.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368084, 30.755791, 40.435822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509928, -0.356812, 0.782725,
		-0.783756, -0.567740, 0.251790,
		0.354543, -0.741860, -0.569160,
		37.474445, 30.533234, 40.265072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213264, 30.380169, 41.105175>,  <37.226265, 31.052534, 40.663486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213264, 30.380169, 41.105175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487755, 30.355696, 40.815250>,  <37.652451, 30.341013, 40.641296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487755, 30.355696, 40.815250>,  <37.213264, 30.380169, 41.105175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487755, 30.355696, 40.815250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694013, -0.243310, 0.677603,
		-0.217809, -0.968017, -0.124507,
		0.686225, -0.061179, -0.724812,
		37.693623, 30.337341, 40.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484116, 29.626247, 41.111771>,  <37.213264, 30.380169, 41.105175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484116, 29.626247, 41.111771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758373, 29.839415, 40.913422>,  <37.922928, 29.967316, 40.794411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758373, 29.839415, 40.913422>,  <37.484116, 29.626247, 41.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758373, 29.839415, 40.913422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719721, -0.394217, 0.571486,
		0.109073, -0.748727, -0.653844,
		0.685642, 0.532918, -0.495876,
		37.964066, 29.999290, 40.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062660, 29.187298, 41.038158>,  <37.484116, 29.626247, 41.111771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062660, 29.187298, 41.038158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227852, 29.546619, 40.978153>,  <38.326965, 29.762213, 40.942150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227852, 29.546619, 40.978153>,  <38.062660, 29.187298, 41.038158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227852, 29.546619, 40.978153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786937, -0.269049, 0.555286,
		0.458456, -0.347366, -0.818019,
		0.412974, 0.898304, -0.150008,
		38.351746, 29.816111, 40.933151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747826, 29.003901, 41.019131>,  <38.062660, 29.187298, 41.038158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747826, 29.003901, 41.019131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755951, 29.395117, 41.102100>,  <38.760826, 29.629847, 41.151882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755951, 29.395117, 41.102100>,  <38.747826, 29.003901, 41.019131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755951, 29.395117, 41.102100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737805, -0.154669, 0.657055,
		0.674709, 0.139691, -0.724744,
		0.020310, 0.978041, 0.207421,
		38.762043, 29.688530, 41.164326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408115, 29.048742, 41.078411>,  <38.747826, 29.003901, 41.019131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408115, 29.048742, 41.078411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271122, 29.390118, 41.235558>,  <39.188927, 29.594944, 41.329845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271122, 29.390118, 41.235558>,  <39.408115, 29.048742, 41.078411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271122, 29.390118, 41.235558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657396, -0.081055, 0.749174,
		0.671219, 0.514849, -0.533288,
		-0.342486, 0.853441, 0.392865,
		39.168377, 29.646151, 41.353416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009567, 29.376904, 41.332668>,  <39.408115, 29.048742, 41.078411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009567, 29.376904, 41.332668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695690, 29.516466, 41.537617>,  <39.507366, 29.600203, 41.660587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695690, 29.516466, 41.537617>,  <40.009567, 29.376904, 41.332668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695690, 29.516466, 41.537617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532422, -0.043972, 0.845336,
		0.317472, 0.936126, -0.151260,
		-0.784690, 0.348905, 0.512374,
		39.460281, 29.621138, 41.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305714, 29.908741, 41.835983>,  <40.009567, 29.376904, 41.332668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305714, 29.908741, 41.835983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948341, 29.813295, 41.988216>,  <39.733917, 29.756027, 42.079556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948341, 29.813295, 41.988216>,  <40.305714, 29.908741, 41.835983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948341, 29.813295, 41.988216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389583, 0.010149, 0.920935,
		-0.223612, 0.971061, 0.083893,
		-0.893433, -0.238616, 0.380578,
		39.680313, 29.741711, 42.102390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304665, 30.351566, 42.421722>,  <40.305714, 29.908741, 41.835983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304665, 30.351566, 42.421722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005379, 30.094812, 42.488842>,  <39.825806, 29.940760, 42.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005379, 30.094812, 42.488842>,  <40.304665, 30.351566, 42.421722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005379, 30.094812, 42.488842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199789, 0.023189, 0.979565,
		-0.632658, 0.766451, 0.110892,
		-0.748217, -0.641884, 0.167799,
		39.780914, 29.902246, 42.539181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879856, 30.684944, 42.883816>,  <40.304665, 30.351566, 42.421722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879856, 30.684944, 42.883816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803993, 30.293575, 42.916611>,  <39.758476, 30.058754, 42.936287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803993, 30.293575, 42.916611>,  <39.879856, 30.684944, 42.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803993, 30.293575, 42.916611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029280, 0.089098, 0.995592,
		-0.981414, 0.186418, -0.045546,
		-0.189655, -0.978422, 0.081984,
		39.747097, 30.000050, 42.941204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242352, 30.683531, 43.141056>,  <39.879856, 30.684944, 42.883816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242352, 30.683531, 43.141056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362576, 30.312111, 43.228195>,  <39.434708, 30.089258, 43.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362576, 30.312111, 43.228195>,  <39.242352, 30.683531, 43.141056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362576, 30.312111, 43.228195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290299, 0.128512, 0.948268,
		-0.908512, -0.348249, -0.230932,
		0.300555, -0.928551, 0.217851,
		39.452744, 30.033546, 43.293552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619320, 30.292950, 43.554115>,  <39.242352, 30.683531, 43.141056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619320, 30.292950, 43.554115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973587, 30.123774, 43.630753>,  <39.186150, 30.022268, 43.676735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973587, 30.123774, 43.630753>,  <38.619320, 30.292950, 43.554115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973587, 30.123774, 43.630753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216521, -0.011188, 0.976214,
		-0.410736, -0.906089, -0.101484,
		0.885672, -0.422940, 0.191592,
		39.239288, 29.996891, 43.688229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468784, 29.751711, 44.081024>,  <38.619320, 30.292950, 43.554115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468784, 29.751711, 44.081024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864876, 29.792313, 44.119286>,  <39.102531, 29.816673, 44.142242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864876, 29.792313, 44.119286>,  <38.468784, 29.751711, 44.081024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864876, 29.792313, 44.119286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091019, -0.049395, 0.994623,
		0.105685, -0.993608, -0.039673,
		0.990225, 0.101506, 0.095658,
		39.161942, 29.822763, 44.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704094, 29.233156, 44.717190>,  <38.468784, 29.751711, 44.081024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704094, 29.233156, 44.717190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965065, 29.526960, 44.642525>,  <39.121647, 29.703243, 44.597725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965065, 29.526960, 44.642525>,  <38.704094, 29.233156, 44.717190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965065, 29.526960, 44.642525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100930, 0.159894, 0.981961,
		0.751104, -0.659493, 0.030185,
		0.652423, 0.734508, -0.186660,
		39.160793, 29.747313, 44.586525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211113, 29.116581, 45.194126>,  <38.704094, 29.233156, 44.717190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211113, 29.116581, 45.194126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255745, 29.499638, 45.087936>,  <39.282524, 29.729471, 45.024223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255745, 29.499638, 45.087936>,  <39.211113, 29.116581, 45.194126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255745, 29.499638, 45.087936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173621, 0.244245, 0.954044,
		0.978471, -0.152540, -0.139015,
		0.111576, 0.957641, -0.265471,
		39.289219, 29.786930, 45.008293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868237, 29.226183, 45.406975>,  <39.211113, 29.116581, 45.194126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868237, 29.226183, 45.406975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625252, 29.542238, 45.374290>,  <39.479462, 29.731871, 45.354679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625252, 29.542238, 45.374290>,  <39.868237, 29.226183, 45.406975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625252, 29.542238, 45.374290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234661, 0.276773, 0.931843,
		0.758898, 0.546884, -0.353543,
		-0.607460, 0.790136, -0.081710,
		39.443012, 29.779280, 45.349777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349049, 29.754387, 45.493027>,  <39.868237, 29.226183, 45.406975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349049, 29.754387, 45.493027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972473, 29.835789, 45.600567>,  <39.746529, 29.884630, 45.665089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972473, 29.835789, 45.600567>,  <40.349049, 29.754387, 45.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972473, 29.835789, 45.600567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335485, 0.485450, 0.807334,
		0.033784, 0.850249, -0.525295,
		-0.941439, 0.203504, 0.268846,
		39.690041, 29.896839, 45.681221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391621, 30.375345, 45.631504>,  <40.349049, 29.754387, 45.493027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391621, 30.375345, 45.631504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034019, 30.301760, 45.794922>,  <39.819458, 30.257608, 45.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034019, 30.301760, 45.794922>,  <40.391621, 30.375345, 45.631504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034019, 30.301760, 45.794922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220889, 0.612356, 0.759097,
		-0.389825, 0.768880, -0.506814,
		-0.894005, -0.183965, 0.408549,
		39.765820, 30.246571, 45.917488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175087, 30.980717, 45.904545>,  <40.391621, 30.375345, 45.631504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175087, 30.980717, 45.904545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929192, 30.718515, 46.080002>,  <39.781654, 30.561195, 46.185276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929192, 30.718515, 46.080002>,  <40.175087, 30.980717, 45.904545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929192, 30.718515, 46.080002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093550, 0.491621, 0.865769,
		-0.783161, 0.573259, -0.240898,
		-0.614741, -0.655501, 0.438647,
		39.744770, 30.521866, 46.211597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800625, 31.361259, 46.392128>,  <40.175087, 30.980717, 45.904545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800625, 31.361259, 46.392128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711784, 30.988857, 46.507992>,  <39.658478, 30.765417, 46.577511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711784, 30.988857, 46.507992>,  <39.800625, 31.361259, 46.392128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711784, 30.988857, 46.507992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029549, 0.303367, 0.952415,
		-0.974575, 0.202978, -0.094890,
		-0.222106, -0.931004, 0.289656,
		39.645153, 30.709557, 46.594891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297794, 31.409685, 46.914101>,  <39.800625, 31.361259, 46.392128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297794, 31.409685, 46.914101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464317, 31.050215, 46.969334>,  <39.564232, 30.834532, 47.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464317, 31.050215, 46.969334>,  <39.297794, 31.409685, 46.914101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464317, 31.050215, 46.969334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002742, 0.150627, 0.988587,
		-0.909218, -0.411938, 0.060244,
		0.416311, -0.898676, 0.138082,
		39.589211, 30.780611, 47.010757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864094, 31.039211, 47.427555>,  <39.297794, 31.409685, 46.914101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864094, 31.039211, 47.427555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235657, 30.891487, 47.438396>,  <39.458595, 30.802853, 47.444901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235657, 30.891487, 47.438396>,  <38.864094, 31.039211, 47.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235657, 30.891487, 47.438396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015165, 0.111064, 0.993698,
		-0.369994, -0.922645, 0.108769,
		0.928911, -0.369311, 0.027101,
		39.514332, 30.780693, 47.446526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902988, 30.538198, 47.929054>,  <38.864094, 31.039211, 47.427555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902988, 30.538198, 47.929054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274376, 30.680391, 47.886028>,  <39.497208, 30.765707, 47.860214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274376, 30.680391, 47.886028>,  <38.902988, 30.538198, 47.929054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274376, 30.680391, 47.886028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085943, 0.076116, 0.993388,
		0.361320, -0.931579, 0.040120,
		0.928473, 0.355483, -0.107565,
		39.552917, 30.787037, 47.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111961, 30.379829, 48.532017>,  <38.902988, 30.538198, 47.929054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111961, 30.379829, 48.532017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451065, 30.551987, 48.408035>,  <39.654526, 30.655281, 48.333645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451065, 30.551987, 48.408035>,  <39.111961, 30.379829, 48.532017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451065, 30.551987, 48.408035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405928, -0.150379, 0.901448,
		0.341367, -0.890027, -0.302193,
		0.847756, 0.430393, -0.309953,
		39.705391, 30.681105, 48.315048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750507, 30.042799, 48.904579>,  <39.111961, 30.379829, 48.532017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750507, 30.042799, 48.904579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913483, 30.393627, 48.802807>,  <40.011269, 30.604124, 48.741741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913483, 30.393627, 48.802807>,  <39.750507, 30.042799, 48.904579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913483, 30.393627, 48.802807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322545, 0.122447, 0.938600,
		0.854375, -0.464490, -0.233006,
		0.407440, 0.877072, -0.254435,
		40.035713, 30.656750, 48.726475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492767, 30.079308, 49.018044>,  <39.750507, 30.042799, 48.904579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492767, 30.079308, 49.018044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352997, 30.453823, 49.032265>,  <40.269135, 30.678532, 49.040798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352997, 30.453823, 49.032265>,  <40.492767, 30.079308, 49.018044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352997, 30.453823, 49.032265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524784, 0.164136, 0.835261,
		0.776209, 0.310523, -0.548703,
		-0.349429, 0.936288, 0.035553,
		40.248169, 30.734709, 49.042931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141701, 30.595364, 49.154938>,  <40.492767, 30.079308, 49.018044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141701, 30.595364, 49.154938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798008, 30.769106, 49.263050>,  <40.591793, 30.873352, 49.327919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798008, 30.769106, 49.263050>,  <41.141701, 30.595364, 49.154938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798008, 30.769106, 49.263050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428918, 0.323677, 0.843364,
		0.278836, 0.840576, -0.464417,
		-0.859232, 0.434357, 0.270285,
		40.540237, 30.899414, 49.344135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444691, 31.114235, 49.552261>,  <41.141701, 30.595364, 49.154938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444691, 31.114235, 49.552261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053661, 31.110538, 49.636410>,  <40.819042, 31.108320, 49.686901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053661, 31.110538, 49.636410>,  <41.444691, 31.114235, 49.552261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053661, 31.110538, 49.636410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203432, 0.216612, 0.954827,
		-0.054393, 0.976214, -0.209875,
		-0.977577, -0.009241, 0.210375,
		40.760387, 31.107765, 49.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307690, 31.773418, 49.857536>,  <41.444691, 31.114235, 49.552261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307690, 31.773418, 49.857536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038128, 31.505333, 49.981899>,  <40.876389, 31.344482, 50.056519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038128, 31.505333, 49.981899>,  <41.307690, 31.773418, 49.857536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038128, 31.505333, 49.981899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269948, 0.168357, 0.948042,
		-0.687734, 0.722821, 0.067466,
		-0.673907, -0.670213, 0.310909,
		40.835957, 31.304270, 50.075172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861034, 31.995104, 50.405182>,  <41.307690, 31.773418, 49.857536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861034, 31.995104, 50.405182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885582, 31.599771, 50.460941>,  <40.900311, 31.362572, 50.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885582, 31.599771, 50.460941>,  <40.861034, 31.995104, 50.405182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885582, 31.599771, 50.460941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209961, 0.149318, 0.966240,
		-0.975782, -0.030031, 0.216675,
		0.061371, -0.988333, 0.139397,
		40.903992, 31.303272, 50.502762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322643, 32.493458, 50.827873>,  <40.861034, 31.995104, 50.405182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322643, 32.493458, 50.827873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401138, 32.885632, 50.821701>,  <41.448235, 33.120937, 50.817997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401138, 32.885632, 50.821701>,  <41.322643, 32.493458, 50.827873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401138, 32.885632, 50.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149441, 0.014356, -0.988667,
		-0.969101, 0.196322, 0.149334,
		0.196241, 0.980434, -0.015426,
		41.460011, 33.179760, 50.817074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708057, 32.891144, 50.523548>,  <41.322643, 32.493458, 50.827873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708057, 32.891144, 50.523548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051109, 33.093555, 50.486855>,  <41.256939, 33.215000, 50.464840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051109, 33.093555, 50.486855>,  <40.708057, 32.891144, 50.523548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051109, 33.093555, 50.486855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149598, 0.074820, -0.985912,
		-0.492035, 0.859266, 0.139868,
		0.857626, 0.506027, -0.091731,
		41.308395, 33.245365, 50.459335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612514, 33.513248, 50.253349>,  <40.708057, 32.891144, 50.523548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612514, 33.513248, 50.253349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993504, 33.455112, 50.146263>,  <41.222095, 33.420231, 50.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993504, 33.455112, 50.146263>,  <40.612514, 33.513248, 50.253349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993504, 33.455112, 50.146263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249817, 0.130209, -0.959498,
		0.174316, 0.980776, 0.087711,
		0.952473, -0.145345, -0.267712,
		41.279247, 33.411510, 50.065948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875206, 34.135548, 49.820370>,  <40.612514, 33.513248, 50.253349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875206, 34.135548, 49.820370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115868, 33.826435, 49.739544>,  <41.260265, 33.640968, 49.691048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115868, 33.826435, 49.739544>,  <40.875206, 34.135548, 49.820370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115868, 33.826435, 49.739544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010743, 0.260776, -0.965339,
		0.798686, 0.578628, 0.165199,
		0.601652, -0.772778, -0.202062,
		41.296364, 33.594601, 49.678925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238541, 34.287712, 49.162167>,  <40.875206, 34.135548, 49.820370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238541, 34.287712, 49.162167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367920, 33.910713, 49.195847>,  <41.445549, 33.684513, 49.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367920, 33.910713, 49.195847>,  <41.238541, 34.287712, 49.162167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367920, 33.910713, 49.195847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264838, 0.004744, -0.964281,
		0.908428, 0.334193, 0.251143,
		0.323448, -0.942493, 0.084197,
		41.464954, 33.627964, 49.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862240, 34.184883, 48.740250>,  <41.238541, 34.287712, 49.162167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862240, 34.184883, 48.740250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679642, 33.832638, 48.791054>,  <41.570084, 33.621292, 48.821537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679642, 33.832638, 48.791054>,  <41.862240, 34.184883, 48.740250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679642, 33.832638, 48.791054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022121, -0.131470, -0.991073,
		0.889451, -0.455229, 0.040535,
		-0.456495, -0.880615, 0.127006,
		41.542694, 33.568455, 48.829155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255482, 33.794701, 48.364582>,  <41.862240, 34.184883, 48.740250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255482, 33.794701, 48.364582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895370, 33.624992, 48.403576>,  <41.679306, 33.523167, 48.426971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895370, 33.624992, 48.403576>,  <42.255482, 33.794701, 48.364582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895370, 33.624992, 48.403576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009733, -0.204273, -0.978866,
		0.435216, -0.882196, 0.179772,
		-0.900273, -0.424268, 0.097489,
		41.625290, 33.497711, 48.432823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402027, 33.167454, 48.038857>,  <42.255482, 33.794701, 48.364582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402027, 33.167454, 48.038857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009602, 33.244751, 48.043980>,  <41.774147, 33.291130, 48.047054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009602, 33.244751, 48.043980>,  <42.402027, 33.167454, 48.038857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009602, 33.244751, 48.043980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052254, -0.200446, -0.978310,
		-0.186473, -0.960460, 0.206748,
		-0.981070, 0.193231, 0.012810,
		41.715282, 33.302723, 48.047821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200817, 32.726982, 47.544899>,  <42.402027, 33.167454, 48.038857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200817, 32.726982, 47.544899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839874, 32.890919, 47.598240>,  <41.623310, 32.989281, 47.630245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839874, 32.890919, 47.598240>,  <42.200817, 32.726982, 47.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839874, 32.890919, 47.598240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236256, -0.211594, -0.948373,
		-0.360467, -0.887275, 0.287761,
		-0.902356, 0.409843, 0.133352,
		41.569168, 33.013870, 47.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675419, 32.277420, 47.204029>,  <42.200817, 32.726982, 47.544899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675419, 32.277420, 47.204029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494110, 32.632816, 47.232666>,  <41.385326, 32.846054, 47.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494110, 32.632816, 47.232666>,  <41.675419, 32.277420, 47.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494110, 32.632816, 47.232666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287608, -0.069755, -0.955205,
		-0.843700, -0.453554, 0.287156,
		-0.453268, 0.888495, 0.071594,
		41.358131, 32.899364, 47.254143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972080, 32.248230, 46.976597>,  <41.675419, 32.277420, 47.204029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972080, 32.248230, 46.976597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078640, 32.628166, 46.911072>,  <41.142578, 32.856129, 46.871758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078640, 32.628166, 46.911072>,  <40.972080, 32.248230, 46.976597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078640, 32.628166, 46.911072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359549, -0.059754, -0.931211,
		-0.894290, 0.306975, 0.325595,
		0.266403, 0.949840, -0.163810,
		41.158562, 32.913116, 46.861927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390827, 32.605854, 46.748974>,  <40.972080, 32.248230, 46.976597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390827, 32.605854, 46.748974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690933, 32.838646, 46.623497>,  <40.870995, 32.978321, 46.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690933, 32.838646, 46.623497>,  <40.390827, 32.605854, 46.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690933, 32.838646, 46.623497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357715, -0.041686, -0.932900,
		-0.556009, 0.812131, 0.176909,
		0.750263, 0.581984, -0.313689,
		40.916012, 33.013241, 46.529388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104435, 33.140778, 46.256874>,  <40.390827, 32.605854, 46.748974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104435, 33.140778, 46.256874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497009, 33.104309, 46.189384>,  <40.732555, 33.082428, 46.148891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497009, 33.104309, 46.189384>,  <40.104435, 33.140778, 46.256874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497009, 33.104309, 46.189384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170011, -0.006478, -0.985421,
		0.088753, 0.995814, -0.021858,
		0.981437, -0.091175, -0.168725,
		40.791439, 33.076958, 46.138767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391594, 33.663883, 45.745083>,  <40.104435, 33.140778, 46.256874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391594, 33.663883, 45.745083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643295, 33.354694, 45.712692>,  <40.794315, 33.169182, 45.693260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643295, 33.354694, 45.712692>,  <40.391594, 33.663883, 45.745083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643295, 33.354694, 45.712692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166722, -0.032491, -0.985468,
		0.759107, 0.633609, -0.149316,
		0.629254, -0.772970, -0.080972,
		40.832073, 33.122803, 45.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658966, 33.790028, 45.136398>,  <40.391594, 33.663883, 45.745083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658966, 33.790028, 45.136398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761341, 33.409138, 45.203041>,  <40.822765, 33.180603, 45.243027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761341, 33.409138, 45.203041>,  <40.658966, 33.790028, 45.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761341, 33.409138, 45.203041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056677, -0.186834, -0.980755,
		0.965031, 0.241566, -0.101786,
		0.255934, -0.952228, 0.166610,
		40.838120, 33.123470, 45.253025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255997, 33.699650, 44.730869>,  <40.658966, 33.790028, 45.136398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255997, 33.699650, 44.730869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104191, 33.334911, 44.793484>,  <41.013107, 33.116070, 44.831051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104191, 33.334911, 44.793484>,  <41.255997, 33.699650, 44.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104191, 33.334911, 44.793484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103733, -0.126188, -0.986568,
		0.919351, -0.390657, -0.046698,
		-0.379517, -0.911847, 0.156535,
		40.990337, 33.061356, 44.840443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550598, 33.221699, 44.174450>,  <41.255997, 33.699650, 44.730869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550598, 33.221699, 44.174450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256905, 33.012081, 44.347088>,  <41.080688, 32.886311, 44.450672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256905, 33.012081, 44.347088>,  <41.550598, 33.221699, 44.174450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256905, 33.012081, 44.347088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241617, -0.392402, -0.887492,
		0.634442, -0.755911, 0.161499,
		-0.734237, -0.524041, 0.431598,
		41.036633, 32.854870, 44.476566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637218, 32.465126, 43.994999>,  <41.550598, 33.221699, 44.174450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637218, 32.465126, 43.994999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257359, 32.514259, 44.110298>,  <41.029442, 32.543739, 44.179478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257359, 32.514259, 44.110298>,  <41.637218, 32.465126, 43.994999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257359, 32.514259, 44.110298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309920, -0.503564, -0.806457,
		0.046087, -0.855181, 0.516277,
		-0.949645, 0.122837, 0.288245,
		40.972466, 32.551109, 44.196770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309395, 31.823566, 43.869129>,  <41.637218, 32.465126, 43.994999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309395, 31.823566, 43.869129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013878, 32.092918, 43.880020>,  <40.836567, 32.254532, 43.886555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013878, 32.092918, 43.880020>,  <41.309395, 31.823566, 43.869129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013878, 32.092918, 43.880020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520320, -0.544254, -0.658069,
		-0.428312, -0.500344, 0.752465,
		-0.738793, 0.673382, 0.027228,
		40.792240, 32.294933, 43.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597301, 31.464396, 43.925270>,  <41.309395, 31.823566, 43.869129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597301, 31.464396, 43.925270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540531, 31.832333, 43.778984>,  <40.506470, 32.053093, 43.691212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540531, 31.832333, 43.778984>,  <40.597301, 31.464396, 43.925270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540531, 31.832333, 43.778984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355513, -0.392173, -0.848416,
		-0.923833, 0.009603, 0.382676,
		-0.141928, 0.919841, -0.365717,
		40.497952, 32.108284, 43.669270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085026, 31.371449, 43.403862>,  <40.597301, 31.464396, 43.925270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085026, 31.371449, 43.403862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175117, 31.746546, 43.298103>,  <40.229172, 31.971605, 43.234650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175117, 31.746546, 43.298103>,  <40.085026, 31.371449, 43.403862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175117, 31.746546, 43.298103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218357, -0.215880, -0.951691,
		-0.949521, 0.272084, 0.156140,
		0.225233, 0.937745, -0.264394,
		40.242687, 32.027870, 43.218784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446430, 31.740536, 43.050816>,  <40.085026, 31.371449, 43.403862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446430, 31.740536, 43.050816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769192, 31.936548, 42.918896>,  <39.962849, 32.054157, 42.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769192, 31.936548, 42.918896>,  <39.446430, 31.740536, 43.050816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769192, 31.936548, 42.918896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251453, -0.220251, -0.942476,
		-0.534483, 0.843420, -0.054502,
		0.806907, 0.490032, -0.329801,
		40.011265, 32.083557, 42.819954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216789, 32.020107, 42.437550>,  <39.446430, 31.740536, 43.050816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216789, 32.020107, 42.437550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615746, 32.042294, 42.419044>,  <39.855118, 32.055607, 42.407940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615746, 32.042294, 42.419044>,  <39.216789, 32.020107, 42.437550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615746, 32.042294, 42.419044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046057, -0.005056, -0.998926,
		-0.055642, 0.998448, -0.002488,
		0.997388, 0.055468, -0.046266,
		39.914963, 32.058933, 42.405163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362247, 32.473782, 41.852402>,  <39.216789, 32.020107, 42.437550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362247, 32.473782, 41.852402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703484, 32.277710, 41.923908>,  <39.908226, 32.160069, 41.966812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703484, 32.277710, 41.923908>,  <39.362247, 32.473782, 41.852402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703484, 32.277710, 41.923908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092134, -0.195715, -0.976323,
		0.513558, 0.849366, -0.121802,
		0.853094, -0.490176, 0.178767,
		39.959412, 32.130657, 41.977539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881390, 32.733387, 41.367607>,  <39.362247, 32.473782, 41.852402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881390, 32.733387, 41.367607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000511, 32.374161, 41.497089>,  <40.071983, 32.158623, 41.574780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000511, 32.374161, 41.497089>,  <39.881390, 32.733387, 41.367607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000511, 32.374161, 41.497089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269464, -0.246225, -0.931001,
		0.915808, 0.364481, 0.168672,
		0.297801, -0.898069, 0.323709,
		40.089851, 32.104740, 41.594204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617088, 32.651115, 41.112160>,  <39.881390, 32.733387, 41.367607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617088, 32.651115, 41.112160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471489, 32.283821, 41.174568>,  <40.384129, 32.063442, 41.212013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471489, 32.283821, 41.174568>,  <40.617088, 32.651115, 41.112160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471489, 32.283821, 41.174568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303333, -0.275253, -0.912264,
		0.880622, -0.284733, 0.378723,
		-0.363997, -0.918239, 0.156025,
		40.362289, 32.008350, 41.221375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140316, 32.074482, 41.003292>,  <40.617088, 32.651115, 41.112160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140316, 32.074482, 41.003292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772713, 31.933643, 40.932350>,  <40.552151, 31.849140, 40.889786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772713, 31.933643, 40.932350>,  <41.140316, 32.074482, 41.003292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772713, 31.933643, 40.932350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280097, -0.266560, -0.922221,
		0.277438, -0.897203, 0.343592,
		-0.919007, -0.352098, -0.177350,
		40.497009, 31.828014, 40.879147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248463, 31.561840, 40.596123>,  <41.140316, 32.074482, 41.003292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248463, 31.561840, 40.596123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854687, 31.596033, 40.534718>,  <40.618420, 31.616549, 40.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854687, 31.596033, 40.534718>,  <41.248463, 31.561840, 40.596123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854687, 31.596033, 40.534718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130785, -0.226959, -0.965083,
		-0.117338, -0.970145, 0.212249,
		-0.984443, 0.085482, -0.153511,
		40.559353, 31.621677, 40.488663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007820, 30.944750, 40.233841>,  <41.248463, 31.561840, 40.596123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007820, 30.944750, 40.233841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763966, 31.255413, 40.170414>,  <40.617653, 31.441811, 40.132359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763966, 31.255413, 40.170414>,  <41.007820, 30.944750, 40.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763966, 31.255413, 40.170414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139906, -0.091478, -0.985930,
		-0.780235, -0.623246, -0.052890,
		-0.609638, 0.776657, -0.158570,
		40.581074, 31.488411, 40.122845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684322, 30.782881, 39.575043>,  <41.007820, 30.944750, 40.233841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684322, 30.782881, 39.575043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603672, 31.171087, 39.627865>,  <40.555283, 31.404011, 39.659557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603672, 31.171087, 39.627865>,  <40.684322, 30.782881, 39.575043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603672, 31.171087, 39.627865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095630, 0.153689, -0.983481,
		-0.974782, -0.185670, -0.123799,
		-0.201630, 0.970518, 0.132058,
		40.543182, 31.462242, 39.667480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402424, 30.972982, 38.950764>,  <40.684322, 30.782881, 39.575043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402424, 30.972982, 38.950764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507301, 31.322424, 39.114746>,  <40.570229, 31.532089, 39.213135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507301, 31.322424, 39.114746>,  <40.402424, 30.972982, 38.950764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507301, 31.322424, 39.114746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242530, 0.351533, -0.904215,
		-0.934042, 0.336507, -0.119705,
		0.262194, 0.873606, 0.409959,
		40.585960, 31.584505, 39.237736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074760, 31.493864, 38.583359>,  <40.402424, 30.972982, 38.950764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074760, 31.493864, 38.583359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379375, 31.704430, 38.734596>,  <40.562145, 31.830769, 38.825340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379375, 31.704430, 38.734596>,  <40.074760, 31.493864, 38.583359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379375, 31.704430, 38.734596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167785, 0.403359, -0.899527,
		-0.626031, 0.748459, 0.218847,
		0.761534, 0.526413, 0.378095,
		40.607834, 31.862354, 38.848026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093376, 32.166718, 38.230705>,  <40.074760, 31.493864, 38.583359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093376, 32.166718, 38.230705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448299, 32.124180, 38.410206>,  <40.661251, 32.098656, 38.517906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448299, 32.124180, 38.410206>,  <40.093376, 32.166718, 38.230705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448299, 32.124180, 38.410206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450843, 0.404885, -0.795493,
		-0.097097, 0.908163, 0.407201,
		0.887306, -0.106344, 0.448752,
		40.714493, 32.092278, 38.544830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361568, 32.808861, 38.161167>,  <40.093376, 32.166718, 38.230705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361568, 32.808861, 38.161167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 32.581924, 38.237175>,  <40.874374, 32.445763, 38.282780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 32.581924, 38.237175>,  <40.361568, 32.808861, 38.161167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682072, 32.581924, 38.237175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504441, 0.469785, -0.724459,
		0.321750, 0.676332, 0.662610,
		0.801259, -0.567342, 0.190016,
		40.922451, 32.411720, 38.294178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913746, 33.261024, 37.952602>,  <40.361568, 32.808861, 38.161167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913746, 33.261024, 37.952602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139778, 32.933170, 37.990292>,  <41.275398, 32.736458, 38.012905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139778, 32.933170, 37.990292>,  <40.913746, 33.261024, 37.952602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139778, 32.933170, 37.990292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450478, 0.210845, -0.867533,
		0.691196, 0.532673, 0.488373,
		0.565082, -0.819637, 0.094222,
		41.309303, 32.687279, 38.018559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594193, 33.491901, 37.856003>,  <40.913746, 33.261024, 37.952602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594193, 33.491901, 37.856003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594727, 33.104183, 37.757645>,  <41.595047, 32.871552, 37.698631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594727, 33.104183, 37.757645>,  <41.594193, 33.491901, 37.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594727, 33.104183, 37.757645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374563, 0.228477, -0.898611,
		0.927201, -0.090900, 0.363368,
		0.001338, -0.969296, -0.245891,
		41.595127, 32.813393, 37.683876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335644, 33.335430, 37.731564>,  <41.594193, 33.491901, 37.856003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335644, 33.335430, 37.731564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101521, 33.065533, 37.551723>,  <41.961048, 32.903595, 37.443821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101521, 33.065533, 37.551723>,  <42.335644, 33.335430, 37.731564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101521, 33.065533, 37.551723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439973, 0.201456, -0.875123,
		0.681056, -0.710027, 0.178955,
		-0.585309, -0.674743, -0.449595,
		41.925926, 32.863110, 37.416843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741390, 33.056515, 37.268147>,  <42.335644, 33.335430, 37.731564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741390, 33.056515, 37.268147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383884, 32.923927, 37.147270>,  <42.169380, 32.844376, 37.074745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383884, 32.923927, 37.147270>,  <42.741390, 33.056515, 37.268147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383884, 32.923927, 37.147270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298075, 0.064514, -0.952360,
		0.335174, -0.941257, 0.041143,
		-0.893762, -0.331470, -0.302189,
		42.115757, 32.824486, 37.056614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860851, 32.466206, 36.824944>,  <42.741390, 33.056515, 37.268147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860851, 32.466206, 36.824944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526947, 32.638294, 36.687485>,  <42.326607, 32.741547, 36.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526947, 32.638294, 36.687485>,  <42.860851, 32.466206, 36.824944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526947, 32.638294, 36.687485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378566, -0.004769, -0.925562,
		-0.399834, -0.902712, -0.158886,
		-0.834758, 0.430219, -0.343643,
		42.276520, 32.767361, 36.584393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466190, 32.151344, 36.114952>,  <42.860851, 32.466206, 36.824944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466190, 32.151344, 36.114952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377743, 32.535469, 36.182972>,  <42.324677, 32.765942, 36.223785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377743, 32.535469, 36.182972>,  <42.466190, 32.151344, 36.114952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377743, 32.535469, 36.182972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125081, 0.200849, -0.971604,
		-0.967193, -0.193566, -0.164527,
		-0.221115, 0.960308, 0.170049,
		42.311409, 32.823563, 36.233986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987366, 32.387222, 35.617718>,  <42.466190, 32.151344, 36.114952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987366, 32.387222, 35.617718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194389, 32.710556, 35.729950>,  <42.318604, 32.904556, 35.797287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194389, 32.710556, 35.729950>,  <41.987366, 32.387222, 35.617718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194389, 32.710556, 35.729950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099651, 0.268737, -0.958045,
		-0.849826, 0.523802, 0.058535,
		0.517557, 0.808339, 0.280577,
		42.349655, 32.953056, 35.814121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669361, 32.966259, 35.491707>,  <41.987366, 32.387222, 35.617718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669361, 32.966259, 35.491707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062592, 33.017090, 35.438934>,  <42.298531, 33.047588, 35.407269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062592, 33.017090, 35.438934>,  <41.669361, 32.966259, 35.491707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062592, 33.017090, 35.438934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146706, 0.114896, -0.982485,
		-0.109695, 0.985216, 0.131596,
		0.983079, 0.127080, -0.131933,
		42.357513, 33.055214, 35.399353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783543, 33.627018, 35.086830>,  <41.669361, 32.966259, 35.491707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783543, 33.627018, 35.086830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060307, 33.354050, 34.992542>,  <42.226364, 33.190269, 34.935970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060307, 33.354050, 34.992542>,  <41.783543, 33.627018, 35.086830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060307, 33.354050, 34.992542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114042, 0.219088, -0.969018,
		0.712918, 0.697357, 0.073766,
		0.691912, -0.682418, -0.235720,
		42.267879, 33.149323, 34.921825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931324, 33.994003, 34.476467>,  <41.783543, 33.627018, 35.086830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931324, 33.994003, 34.476467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127594, 33.645485, 34.480171>,  <42.245358, 33.436375, 34.482395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127594, 33.645485, 34.480171>,  <41.931324, 33.994003, 34.476467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127594, 33.645485, 34.480171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268834, 0.141271, -0.952770,
		0.828833, 0.469992, 0.303552,
		0.490678, -0.871292, 0.009260,
		42.274796, 33.384098, 34.482948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635159, 34.133266, 34.075539>,  <41.931324, 33.994003, 34.476467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635159, 34.133266, 34.075539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441193, 33.783974, 34.094830>,  <42.324814, 33.574398, 34.106403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441193, 33.783974, 34.094830>,  <42.635159, 34.133266, 34.075539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441193, 33.783974, 34.094830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056571, -0.023708, -0.998117,
		0.872728, -0.486733, -0.037903,
		-0.484918, -0.873229, 0.048226,
		42.295715, 33.522003, 34.109299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019569, 33.785236, 34.631840>,  <42.635159, 34.133266, 34.075539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019569, 33.785236, 34.631840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156773, 33.512497, 34.890274>,  <43.239094, 33.348854, 35.045334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156773, 33.512497, 34.890274>,  <43.019569, 33.785236, 34.631840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156773, 33.512497, 34.890274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632640, 0.340733, 0.695463,
		-0.694345, -0.647286, -0.314494,
		0.343004, -0.681852, 0.646085,
		43.259674, 33.307941, 35.084099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392265, 34.316860, 34.487221>,  <43.019569, 33.785236, 34.631840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392265, 34.316860, 34.487221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044197, 34.355412, 34.680515>,  <42.835358, 34.378544, 34.796494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044197, 34.355412, 34.680515>,  <43.392265, 34.316860, 34.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044197, 34.355412, 34.680515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157477, 0.874861, -0.458060,
		-0.466915, -0.474688, -0.746098,
		-0.870168, 0.096381, 0.483238,
		42.783146, 34.384327, 34.825485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786144, 34.588287, 35.102623>,  <43.392265, 34.316860, 34.487221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786144, 34.588287, 35.102623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159931, 34.681156, 35.210594>,  <44.384205, 34.736877, 35.275379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159931, 34.681156, 35.210594>,  <43.786144, 34.588287, 35.102623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159931, 34.681156, 35.210594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348854, 0.445445, 0.824548,
		0.071199, -0.864681, 0.497249,
		0.934468, 0.232175, 0.269932,
		44.440273, 34.750809, 35.291573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692703, 34.554585, 35.733654>,  <43.786144, 34.588287, 35.102623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692703, 34.554585, 35.733654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027359, 34.765472, 35.674225>,  <44.228153, 34.892006, 35.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027359, 34.765472, 35.674225>,  <43.692703, 34.554585, 35.733654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027359, 34.765472, 35.674225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201513, 0.548475, 0.811522,
		0.509332, -0.649016, 0.565119,
		0.836644, 0.527213, -0.148571,
		44.278351, 34.923637, 35.629654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973679, 34.659451, 36.465275>,  <43.692703, 34.554585, 35.733654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973679, 34.659451, 36.465275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153122, 34.936939, 36.239883>,  <44.260788, 35.103432, 36.104649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153122, 34.936939, 36.239883>,  <43.973679, 34.659451, 36.465275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153122, 34.936939, 36.239883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011524, 0.625938, 0.779788,
		0.893657, -0.356309, 0.272804,
		0.448604, 0.693719, -0.563479,
		44.287704, 35.145054, 36.070839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586441, 34.851021, 36.788357>,  <43.973679, 34.659451, 36.465275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586441, 34.851021, 36.788357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460266, 35.145237, 36.548527>,  <44.384563, 35.321766, 36.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460266, 35.145237, 36.548527>,  <44.586441, 34.851021, 36.788357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460266, 35.145237, 36.548527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032601, 0.623057, 0.781497,
		0.948387, 0.266058, -0.172554,
		-0.315435, 0.735536, -0.599573,
		44.365635, 35.365898, 36.368656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849575, 35.511749, 37.032425>,  <44.586441, 34.851021, 36.788357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849575, 35.511749, 37.032425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575592, 35.626888, 36.764702>,  <44.411201, 35.695972, 36.604069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575592, 35.626888, 36.764702>,  <44.849575, 35.511749, 37.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575592, 35.626888, 36.764702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339387, 0.686836, 0.642707,
		0.644706, 0.667384, -0.372764,
		-0.684961, 0.287846, -0.669308,
		44.370102, 35.713242, 36.563908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966339, 36.234818, 36.788242>,  <44.849575, 35.511749, 37.032425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966339, 36.234818, 36.788242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581665, 36.175442, 36.696037>,  <44.350861, 36.139816, 36.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581665, 36.175442, 36.696037>,  <44.966339, 36.234818, 36.788242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581665, 36.175442, 36.696037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222003, 0.914957, 0.337000,
		0.160884, 0.375261, -0.912850,
		-0.961681, -0.148437, -0.230511,
		44.293159, 36.130909, 36.626884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783020, 36.870407, 36.440193>,  <44.966339, 36.234818, 36.788242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783020, 36.870407, 36.440193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436459, 36.711014, 36.560562>,  <44.228523, 36.615376, 36.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436459, 36.711014, 36.560562>,  <44.783020, 36.870407, 36.440193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436459, 36.711014, 36.560562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321462, 0.906251, 0.274537,
		-0.382108, 0.141126, -0.913278,
		-0.866404, -0.398487, 0.300919,
		44.176537, 36.591469, 36.650837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288364, 37.262062, 36.166134>,  <44.783020, 36.870407, 36.440193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288364, 37.262062, 36.166134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068012, 37.082710, 36.447701>,  <43.935802, 36.975101, 36.616638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068012, 37.082710, 36.447701>,  <44.288364, 37.262062, 36.166134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068012, 37.082710, 36.447701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455681, 0.868203, 0.196412,
		-0.699206, -0.212561, -0.682589,
		-0.550876, -0.448376, 0.703913,
		43.902748, 36.948196, 36.658875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672874, 37.574127, 36.198936>,  <44.288364, 37.262062, 36.166134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672874, 37.574127, 36.198936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686035, 37.379448, 36.548119>,  <43.693932, 37.262642, 36.757626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686035, 37.379448, 36.548119>,  <43.672874, 37.574127, 36.198936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686035, 37.379448, 36.548119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432491, 0.780480, 0.451444,
		-0.901038, -0.392398, -0.184810,
		0.032905, -0.486697, 0.872951,
		43.695908, 37.233440, 36.810005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005020, 37.722530, 36.480442>,  <43.672874, 37.574127, 36.198936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005020, 37.722530, 36.480442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242382, 37.609859, 36.782047>,  <43.384800, 37.542259, 36.963009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242382, 37.609859, 36.782047>,  <43.005020, 37.722530, 36.480442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242382, 37.609859, 36.782047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286417, 0.801564, 0.524844,
		-0.752223, -0.527405, 0.394973,
		0.593402, -0.281673, 0.754013,
		43.420403, 37.525356, 37.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685516, 37.754971, 37.113503>,  <43.005020, 37.722530, 36.480442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685516, 37.754971, 37.113503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067646, 37.811317, 37.217442>,  <43.296925, 37.845127, 37.279804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067646, 37.811317, 37.217442>,  <42.685516, 37.754971, 37.113503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067646, 37.811317, 37.217442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256460, 0.832105, 0.491762,
		-0.146944, -0.536430, 0.831054,
		0.955320, 0.140871, 0.259845,
		43.354240, 37.853580, 37.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713276, 37.974659, 37.818790>,  <42.685516, 37.754971, 37.113503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713276, 37.974659, 37.818790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064556, 38.117062, 37.691029>,  <43.275326, 38.202503, 37.614372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064556, 38.117062, 37.691029>,  <42.713276, 37.974659, 37.818790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064556, 38.117062, 37.691029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163795, 0.851285, 0.498483,
		0.449363, -0.385454, 0.805914,
		0.878205, 0.356005, -0.319401,
		43.328018, 38.223862, 37.595207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923340, 38.273609, 38.413246>,  <42.713276, 37.974659, 37.818790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923340, 38.273609, 38.413246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166916, 38.417339, 38.130379>,  <43.313061, 38.503578, 37.960659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166916, 38.417339, 38.130379>,  <42.923340, 38.273609, 38.413246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166916, 38.417339, 38.130379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133105, 0.832584, 0.537667,
		0.781971, -0.421533, 0.459164,
		0.608937, 0.359323, -0.707165,
		43.349598, 38.525135, 37.918228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504581, 38.470665, 38.809700>,  <42.923340, 38.273609, 38.413246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504581, 38.470665, 38.809700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513924, 38.674702, 38.465778>,  <43.519527, 38.797123, 38.259426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513924, 38.674702, 38.465778>,  <43.504581, 38.470665, 38.809700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513924, 38.674702, 38.465778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124563, 0.851848, 0.508762,
		0.991937, -0.118982, -0.043644,
		0.023355, 0.510096, -0.859800,
		43.520931, 38.827732, 38.207840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126331, 38.881344, 38.768467>,  <43.504581, 38.470665, 38.809700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126331, 38.881344, 38.768467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846241, 39.067348, 38.551781>,  <43.678188, 39.178951, 38.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846241, 39.067348, 38.551781>,  <44.126331, 38.881344, 38.768467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846241, 39.067348, 38.551781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013490, 0.750033, 0.661263,
		0.713798, 0.470338, -0.518917,
		-0.700222, 0.465008, -0.541717,
		43.636173, 39.206852, 38.389267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321083, 39.530300, 38.717236>,  <44.126331, 38.881344, 38.768467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321083, 39.530300, 38.717236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943806, 39.576504, 38.592625>,  <43.717442, 39.604225, 38.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943806, 39.576504, 38.592625>,  <44.321083, 39.530300, 38.717236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943806, 39.576504, 38.592625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036665, 0.895714, 0.443116,
		0.330226, 0.429365, -0.840593,
		-0.943190, 0.115508, -0.311530,
		43.660851, 39.611156, 38.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273994, 40.163803, 38.521011>,  <44.321083, 39.530300, 38.717236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273994, 40.163803, 38.521011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891834, 40.058777, 38.575081>,  <43.662540, 39.995762, 38.607525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891834, 40.058777, 38.575081>,  <44.273994, 40.163803, 38.521011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891834, 40.058777, 38.575081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173304, 0.869103, 0.463277,
		-0.239123, 0.419187, -0.875844,
		-0.955398, -0.262568, 0.135176,
		43.605213, 39.980007, 38.615635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925991, 40.744492, 38.440693>,  <44.273994, 40.163803, 38.521011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925991, 40.744492, 38.440693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676682, 40.510868, 38.648693>,  <43.527096, 40.370693, 38.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676682, 40.510868, 38.648693>,  <43.925991, 40.744492, 38.440693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676682, 40.510868, 38.648693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094844, 0.716512, 0.691097,
		-0.776232, 0.381422, -0.501977,
		-0.623272, -0.584062, 0.520004,
		43.489700, 40.335651, 38.804695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558777, 41.201317, 38.788357>,  <43.925991, 40.744492, 38.440693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558777, 41.201317, 38.788357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453762, 40.890491, 39.017178>,  <43.390755, 40.703995, 39.154469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453762, 40.890491, 39.017178>,  <43.558777, 41.201317, 38.788357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453762, 40.890491, 39.017178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142684, 0.617591, 0.773448,
		-0.954314, 0.121437, -0.273016,
		-0.262538, -0.777067, 0.572049,
		43.375000, 40.657372, 39.188793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941101, 41.362270, 39.118225>,  <43.558777, 41.201317, 38.788357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941101, 41.362270, 39.118225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123726, 41.090034, 39.347431>,  <43.233299, 40.926693, 39.484955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123726, 41.090034, 39.347431>,  <42.941101, 41.362270, 39.118225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123726, 41.090034, 39.347431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180465, 0.559829, 0.808717,
		-0.871199, -0.472636, 0.132771,
		0.456558, -0.680593, 0.573017,
		43.260693, 40.885857, 39.519337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601643, 41.315376, 39.850498>,  <42.941101, 41.362270, 39.118225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601643, 41.315376, 39.850498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957882, 41.153790, 39.934063>,  <43.171627, 41.056839, 39.984200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957882, 41.153790, 39.934063>,  <42.601643, 41.315376, 39.850498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957882, 41.153790, 39.934063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022459, 0.497857, 0.866968,
		-0.454233, -0.767430, 0.452464,
		0.890599, -0.403967, 0.208908,
		43.225063, 41.032600, 39.996735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647518, 41.486786, 40.509693>,  <42.601643, 41.315376, 39.850498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647518, 41.486786, 40.509693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999481, 41.317295, 40.423698>,  <43.210659, 41.215599, 40.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999481, 41.317295, 40.423698>,  <42.647518, 41.486786, 40.509693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999481, 41.317295, 40.423698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359119, 0.296796, 0.884842,
		-0.311127, -0.855783, 0.413322,
		0.879905, -0.423730, -0.214987,
		43.263454, 41.190178, 40.359203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003399, 41.017574, 41.039734>,  <42.647518, 41.486786, 40.509693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003399, 41.017574, 41.039734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301689, 41.176556, 40.825844>,  <43.480663, 41.271942, 40.697510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301689, 41.176556, 40.825844>,  <43.003399, 41.017574, 41.039734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301689, 41.176556, 40.825844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371925, 0.417563, 0.829044,
		0.552787, -0.817113, 0.163563,
		0.745721, 0.397451, -0.534728,
		43.525406, 41.295792, 40.665424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774158, 40.710579, 41.006901>,  <43.003399, 41.017574, 41.039734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774158, 40.710579, 41.006901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720108, 41.106911, 41.007557>,  <43.687679, 41.344707, 41.007950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720108, 41.106911, 41.007557>,  <43.774158, 40.710579, 41.006901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720108, 41.106911, 41.007557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465215, 0.061984, 0.883025,
		0.874824, 0.120079, -0.469323,
		-0.135124, 0.990827, 0.001637,
		43.679569, 41.404160, 41.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073017, 40.210941, 41.529709>,  <43.774158, 40.710579, 41.006901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073017, 40.210941, 41.529709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723324, 40.370609, 41.419155>,  <43.513508, 40.466412, 41.352825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723324, 40.370609, 41.419155>,  <44.073017, 40.210941, 41.529709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723324, 40.370609, 41.419155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202264, -0.218073, -0.954743,
		-0.441376, -0.890566, 0.109908,
		-0.874230, 0.399170, -0.276381,
		43.461056, 40.490360, 41.336243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292110, 39.622871, 41.893921>,  <44.073017, 40.210941, 41.529709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292110, 39.622871, 41.893921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969044, 39.794323, 42.055885>,  <43.775204, 39.897194, 42.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969044, 39.794323, 42.055885>,  <44.292110, 39.622871, 41.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969044, 39.794323, 42.055885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026111, -0.660035, 0.750781,
		0.589065, 0.616951, 0.521895,
		-0.807664, 0.428632, 0.404913,
		43.726746, 39.922913, 42.177361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362728, 39.696758, 42.673645>,  <44.292110, 39.622871, 41.893921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362728, 39.696758, 42.673645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976601, 39.622612, 42.600113>,  <43.744923, 39.578125, 42.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976601, 39.622612, 42.600113>,  <44.362728, 39.696758, 42.673645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976601, 39.622612, 42.600113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033655, -0.786652, 0.616479,
		-0.258883, 0.588914, 0.765611,
		-0.965322, -0.185363, -0.183830,
		43.687004, 39.567001, 42.544964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926079, 39.691547, 43.234776>,  <44.362728, 39.696758, 42.673645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926079, 39.691547, 43.234776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841175, 39.435291, 42.939606>,  <43.790234, 39.281536, 42.762505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841175, 39.435291, 42.939606>,  <43.926079, 39.691547, 43.234776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841175, 39.435291, 42.939606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168817, -0.767814, 0.618032,
		-0.962521, 0.006611, 0.271127,
		-0.212261, -0.640639, -0.737921,
		43.777496, 39.243099, 42.718231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494728, 39.293694, 43.546162>,  <43.926079, 39.691547, 43.234776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494728, 39.293694, 43.546162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599232, 39.097092, 43.213856>,  <43.661934, 38.979130, 43.014473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599232, 39.097092, 43.213856>,  <43.494728, 39.293694, 43.546162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599232, 39.097092, 43.213856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121880, -0.836967, 0.533508,
		-0.957543, -0.240637, -0.158760,
		0.261259, -0.491507, -0.830761,
		43.677608, 38.949638, 42.964626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121696, 38.636349, 43.341988>,  <43.494728, 39.293694, 43.546162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121696, 38.636349, 43.341988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501957, 38.607700, 43.221230>,  <43.730114, 38.590511, 43.148773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501957, 38.607700, 43.221230>,  <43.121696, 38.636349, 43.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501957, 38.607700, 43.221230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134511, -0.781679, 0.609003,
		-0.279599, -0.619556, -0.733468,
		0.950648, -0.071617, -0.301893,
		43.787151, 38.586216, 43.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686699, 38.034740, 42.990486>,  <43.121696, 38.636349, 43.341988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686699, 38.034740, 42.990486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376347, 37.939014, 42.756996>,  <42.190136, 37.881580, 42.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376347, 37.939014, 42.756996>,  <42.686699, 38.034740, 42.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376347, 37.939014, 42.756996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609713, -0.522104, -0.596371,
		-0.162045, -0.818618, 0.551004,
		-0.775881, -0.239315, -0.583726,
		42.143581, 37.867218, 42.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636482, 37.316277, 43.009502>,  <42.686699, 38.034740, 42.990486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636482, 37.316277, 43.009502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490688, 37.455513, 42.664021>,  <42.403214, 37.539055, 42.456734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490688, 37.455513, 42.664021>,  <42.636482, 37.316277, 43.009502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490688, 37.455513, 42.664021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593738, -0.627651, -0.503518,
		-0.717374, -0.696338, 0.022092,
		-0.364484, 0.348094, -0.863703,
		42.381344, 37.559940, 42.404911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672482, 36.799149, 42.586182>,  <42.636482, 37.316277, 43.009502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672482, 36.799149, 42.586182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682987, 37.121529, 42.349625>,  <42.689293, 37.314957, 42.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682987, 37.121529, 42.349625>,  <42.672482, 36.799149, 42.586182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682987, 37.121529, 42.349625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634892, -0.470414, -0.612882,
		-0.772155, -0.359373, -0.524050,
		0.026267, 0.805954, -0.591395,
		42.690868, 37.363316, 42.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726147, 36.501736, 42.019009>,  <42.672482, 36.799149, 42.586182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726147, 36.501736, 42.019009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821068, 36.880669, 41.932995>,  <42.878021, 37.108028, 41.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821068, 36.880669, 41.932995>,  <42.726147, 36.501736, 42.019009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821068, 36.880669, 41.932995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695098, -0.320222, -0.643659,
		-0.678621, 0.003272, -0.734482,
		0.237303, 0.947337, -0.215035,
		42.892258, 37.164871, 41.868484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596134, 36.590328, 41.221813>,  <42.726147, 36.501736, 42.019009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596134, 36.590328, 41.221813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843529, 36.887787, 41.323372>,  <42.991966, 37.066261, 41.384308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843529, 36.887787, 41.323372>,  <42.596134, 36.590328, 41.221813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843529, 36.887787, 41.323372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603864, -0.243044, -0.759129,
		-0.502816, 0.622831, -0.599381,
		0.618485, 0.743647, 0.253899,
		43.029076, 37.110882, 41.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697701, 37.051472, 40.630287>,  <42.596134, 36.590328, 41.221813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697701, 37.051472, 40.630287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010223, 37.137234, 40.864754>,  <43.197735, 37.188690, 41.005436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010223, 37.137234, 40.864754>,  <42.697701, 37.051472, 40.630287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010223, 37.137234, 40.864754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618781, -0.143161, -0.772408,
		-0.081689, 0.966197, -0.244521,
		0.781305, 0.214402, 0.586170,
		43.244614, 37.201553, 41.040604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105858, 37.462399, 40.270302>,  <42.697701, 37.051472, 40.630287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105858, 37.462399, 40.270302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363739, 37.325932, 40.543934>,  <43.518467, 37.244053, 40.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363739, 37.325932, 40.543934>,  <43.105858, 37.462399, 40.270302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363739, 37.325932, 40.543934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702108, -0.089653, -0.706405,
		0.302332, 0.935718, 0.181736,
		0.644702, -0.341166, 0.684079,
		43.557148, 37.223583, 40.749157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822102, 37.753677, 40.150097>,  <43.105858, 37.462399, 40.270302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822102, 37.753677, 40.150097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904648, 37.423897, 40.360886>,  <43.954174, 37.226028, 40.487358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904648, 37.423897, 40.360886>,  <43.822102, 37.753677, 40.150097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904648, 37.423897, 40.360886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770874, -0.194709, -0.606499,
		0.602634, 0.531386, 0.595367,
		0.206361, -0.824450, 0.526970,
		43.966557, 37.176563, 40.518978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503185, 37.808662, 40.217690>,  <43.822102, 37.753677, 40.150097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503185, 37.808662, 40.217690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427700, 37.421597, 40.284637>,  <44.382408, 37.189358, 40.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427700, 37.421597, 40.284637>,  <44.503185, 37.808662, 40.217690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427700, 37.421597, 40.284637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652875, -0.250943, -0.714690,
		0.733580, -0.025600, 0.679121,
		-0.188717, -0.967663, 0.167374,
		44.371086, 37.131298, 40.334850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133694, 37.551262, 40.299812>,  <44.503185, 37.808662, 40.217690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133694, 37.551262, 40.299812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899601, 37.244205, 40.195332>,  <44.759144, 37.059971, 40.132645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899601, 37.244205, 40.195332>,  <45.133694, 37.551262, 40.299812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899601, 37.244205, 40.195332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729390, -0.357643, -0.583165,
		0.354245, -0.531808, 0.769215,
		-0.585236, -0.767641, -0.261202,
		44.724030, 37.013912, 40.116970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620361, 36.962254, 40.385170>,  <45.133694, 37.551262, 40.299812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620361, 36.962254, 40.385170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313797, 36.818947, 40.171906>,  <45.129860, 36.732964, 40.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313797, 36.818947, 40.171906>,  <45.620361, 36.962254, 40.385170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313797, 36.818947, 40.171906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638723, -0.513175, -0.573310,
		-0.068209, -0.779934, 0.622134,
		-0.766407, -0.358267, -0.533165,
		45.083874, 36.711468, 40.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811886, 36.256756, 40.255764>,  <45.620361, 36.962254, 40.385170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811886, 36.256756, 40.255764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514896, 36.338142, 40.000473>,  <45.336704, 36.386974, 39.847298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514896, 36.338142, 40.000473>,  <45.811886, 36.256756, 40.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514896, 36.338142, 40.000473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399481, -0.630313, -0.665672,
		-0.537727, -0.749204, 0.386709,
		-0.742472, 0.203467, -0.638229,
		45.292156, 36.399181, 39.809006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558750, 35.612637, 39.981499>,  <45.811886, 36.256756, 40.255764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558750, 35.612637, 39.981499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472412, 35.904423, 39.721870>,  <45.420609, 36.079494, 39.566093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472412, 35.904423, 39.721870>,  <45.558750, 35.612637, 39.981499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472412, 35.904423, 39.721870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362976, -0.557162, -0.746873,
		-0.906455, -0.396804, -0.144519,
		-0.215842, 0.729464, -0.649072,
		45.407661, 36.123260, 39.527149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244892, 35.300007, 39.476341>,  <45.558750, 35.612637, 39.981499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244892, 35.300007, 39.476341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377632, 35.634094, 39.300941>,  <45.457275, 35.834545, 39.195702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377632, 35.634094, 39.300941>,  <45.244892, 35.300007, 39.476341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377632, 35.634094, 39.300941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288747, -0.532472, -0.795675,
		-0.898052, 0.137432, -0.417869,
		0.331855, 0.835216, -0.438504,
		45.477188, 35.884659, 39.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849480, 35.343945, 38.778080>,  <45.244892, 35.300007, 39.476341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849480, 35.343945, 38.778080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181404, 35.566647, 38.762924>,  <45.380558, 35.700268, 38.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181404, 35.566647, 38.762924>,  <44.849480, 35.343945, 38.778080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181404, 35.566647, 38.762924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211408, -0.376483, -0.901979,
		-0.516448, 0.740462, -0.430113,
		0.829812, 0.556755, -0.037894,
		45.430347, 35.733673, 38.751556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956627, 35.523273, 38.111794>,  <44.849480, 35.343945, 38.778080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956627, 35.523273, 38.111794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322174, 35.630825, 38.233482>,  <45.541504, 35.695358, 38.306496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322174, 35.630825, 38.233482>,  <44.956627, 35.523273, 38.111794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322174, 35.630825, 38.233482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379829, -0.301464, -0.874557,
		-0.143442, 0.914780, -0.377627,
		0.913868, 0.268882, 0.304218,
		45.596333, 35.711491, 38.324749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175587, 35.981476, 37.616814>,  <44.956627, 35.523273, 38.111794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175587, 35.981476, 37.616814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523235, 35.867798, 37.778728>,  <45.731827, 35.799591, 37.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523235, 35.867798, 37.778728>,  <45.175587, 35.981476, 37.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523235, 35.867798, 37.778728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383418, -0.129834, -0.914404,
		0.312427, 0.949934, -0.003875,
		0.869126, -0.284199, 0.404785,
		45.783974, 35.782539, 37.900166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681942, 36.335777, 37.288094>,  <45.175587, 35.981476, 37.616814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681942, 36.335777, 37.288094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846298, 36.000965, 37.432617>,  <45.944912, 35.800076, 37.519329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846298, 36.000965, 37.432617>,  <45.681942, 36.335777, 37.288094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846298, 36.000965, 37.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458418, -0.152871, -0.875490,
		0.788048, 0.525361, 0.320898,
		0.410893, -0.837034, 0.361305,
		45.969566, 35.749855, 37.541008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368805, 36.377655, 37.160507>,  <45.681942, 36.335777, 37.288094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368805, 36.377655, 37.160507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326981, 35.988968, 37.245201>,  <46.301888, 35.755756, 37.296017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326981, 35.988968, 37.245201>,  <46.368805, 36.377655, 37.160507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326981, 35.988968, 37.245201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538921, -0.234298, -0.809116,
		0.835842, 0.029510, 0.548176,
		-0.104559, -0.971717, 0.211740,
		46.295612, 35.697453, 37.308723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057323, 36.066166, 37.240841>,  <46.368805, 36.377655, 37.160507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057323, 36.066166, 37.240841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792118, 35.781837, 37.146908>,  <46.632996, 35.611240, 37.090546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792118, 35.781837, 37.146908>,  <47.057323, 36.066166, 37.240841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792118, 35.781837, 37.146908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637805, -0.372132, -0.674331,
		0.391937, -0.596871, 0.700093,
		-0.663015, -0.710818, -0.234835,
		46.593212, 35.568592, 37.076458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565666, 35.515766, 37.254498>,  <47.057323, 36.066166, 37.240841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565666, 35.515766, 37.254498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243889, 35.419338, 37.037334>,  <47.050823, 35.361481, 36.907036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243889, 35.419338, 37.037334>,  <47.565666, 35.515766, 37.254498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243889, 35.419338, 37.037334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593386, -0.368445, -0.715641,
		-0.027515, -0.897850, 0.439441,
		-0.804448, -0.241067, -0.542909,
		47.002556, 35.347019, 36.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655735, 34.793133, 37.021683>,  <47.565666, 35.515766, 37.254498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655735, 34.793133, 37.021683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415283, 34.975357, 36.759048>,  <47.271011, 35.084690, 36.601467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415283, 34.975357, 36.759048>,  <47.655735, 34.793133, 37.021683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415283, 34.975357, 36.759048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496868, -0.430442, -0.753553,
		-0.625911, -0.779221, 0.032399,
		-0.601130, 0.455559, -0.656588,
		47.234943, 35.112026, 36.562073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487816, 34.278564, 36.330490>,  <47.655735, 34.793133, 37.021683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487816, 34.278564, 36.330490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441551, 34.656315, 36.207344>,  <47.413792, 34.882965, 36.133457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441551, 34.656315, 36.207344>,  <47.487816, 34.278564, 36.330490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441551, 34.656315, 36.207344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506691, -0.210494, -0.836036,
		-0.854334, -0.252692, -0.454159,
		-0.115662, 0.944372, -0.307869,
		47.406853, 34.939625, 36.114983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003883, 34.445339, 35.655689>,  <47.487816, 34.278564, 36.330490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003883, 34.445339, 35.655689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306705, 34.702187, 35.703945>,  <47.488400, 34.856293, 35.732899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306705, 34.702187, 35.703945>,  <47.003883, 34.445339, 35.655689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306705, 34.702187, 35.703945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313103, -0.194502, -0.929589,
		-0.573440, 0.741522, -0.348297,
		0.757055, 0.642116, 0.120638,
		47.533821, 34.894821, 35.740135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132698, 34.925674, 35.174606>,  <47.003883, 34.445339, 35.655689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132698, 34.925674, 35.174606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512665, 34.917355, 35.299335>,  <47.740643, 34.912365, 35.374172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512665, 34.917355, 35.299335>,  <47.132698, 34.925674, 35.174606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512665, 34.917355, 35.299335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296157, -0.258653, -0.919451,
		0.099774, 0.965746, -0.239539,
		0.949914, -0.020796, 0.311819,
		47.797638, 34.911118, 35.392879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632370, 35.388248, 34.803196>,  <47.132698, 34.925674, 35.174606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632370, 35.388248, 34.803196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812828, 35.057007, 34.936291>,  <47.921101, 34.858261, 35.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812828, 35.057007, 34.936291>,  <47.632370, 35.388248, 34.803196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812828, 35.057007, 34.936291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256999, -0.236493, -0.937029,
		0.854647, 0.508247, 0.106130,
		0.451143, -0.828104, 0.332737,
		47.948170, 34.808575, 35.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.818890, 37.129475, 45.219147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536129, 36.856007, 45.291698>,  <36.366474, 36.691925, 45.335228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536129, 36.856007, 45.291698>,  <36.818890, 37.129475, 45.219147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536129, 36.856007, 45.291698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133406, -0.122956, -0.983405,
		0.694621, -0.719363, -0.004288,
		-0.706898, -0.683666, 0.181375,
		36.324059, 36.650906, 45.346111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976643, 36.590355, 44.858017>,  <36.818890, 37.129475, 45.219147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976643, 36.590355, 44.858017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580708, 36.576077, 44.913067>,  <36.343147, 36.567509, 44.946095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580708, 36.576077, 44.913067>,  <36.976643, 36.590355, 44.858017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580708, 36.576077, 44.913067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133947, -0.090365, -0.986860,
		0.047659, -0.995269, 0.084666,
		-0.989842, -0.035692, 0.137620,
		36.283756, 36.565369, 44.954353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743885, 36.001068, 44.598358>,  <36.976643, 36.590355, 44.858017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743885, 36.001068, 44.598358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401554, 36.207829, 44.606068>,  <36.196156, 36.331886, 44.610695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401554, 36.207829, 44.606068>,  <36.743885, 36.001068, 44.598358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401554, 36.207829, 44.606068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204983, -0.304707, -0.930126,
		-0.474913, -0.799978, 0.366733,
		-0.855827, 0.516903, 0.019273,
		36.144806, 36.362900, 44.611851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249886, 35.517258, 44.472515>,  <36.743885, 36.001068, 44.598358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249886, 35.517258, 44.472515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076229, 35.869064, 44.394577>,  <35.972034, 36.080151, 44.347813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076229, 35.869064, 44.394577>,  <36.249886, 35.517258, 44.472515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076229, 35.869064, 44.394577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191183, -0.301323, -0.934159,
		-0.880323, -0.368308, 0.298967,
		-0.434144, 0.879519, -0.194847,
		35.945988, 36.132919, 44.336124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653755, 35.285507, 44.168789>,  <36.249886, 35.517258, 44.472515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653755, 35.285507, 44.168789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757252, 35.656422, 44.060566>,  <35.819347, 35.878971, 43.995632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757252, 35.656422, 44.060566>,  <35.653755, 35.285507, 44.168789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757252, 35.656422, 44.060566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246467, -0.207445, -0.946689,
		-0.933975, 0.311626, 0.174871,
		0.258737, 0.927284, -0.270554,
		35.834873, 35.934608, 43.979401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028664, 35.446701, 43.774315>,  <35.653755, 35.285507, 44.168789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028664, 35.446701, 43.774315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272350, 35.749630, 43.680233>,  <35.418564, 35.931385, 43.623783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272350, 35.749630, 43.680233>,  <35.028664, 35.446701, 43.774315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272350, 35.749630, 43.680233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287260, -0.065697, -0.955597,
		-0.739144, 0.649732, 0.177524,
		0.609219, 0.757319, -0.235201,
		35.455116, 35.976826, 43.609673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707436, 35.907425, 43.293274>,  <35.028664, 35.446701, 43.774315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707436, 35.907425, 43.293274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099525, 35.961525, 43.235497>,  <35.334782, 35.993984, 43.200829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099525, 35.961525, 43.235497>,  <34.707436, 35.907425, 43.293274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099525, 35.961525, 43.235497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115362, -0.202507, -0.972462,
		-0.160773, 0.969897, -0.182900,
		0.980226, 0.135246, -0.144447,
		35.393593, 36.002098, 43.192162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814953, 36.363415, 42.697117>,  <34.707436, 35.907425, 43.293274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814953, 36.363415, 42.697117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121258, 36.108372, 42.730721>,  <35.305042, 35.955345, 42.750881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121258, 36.108372, 42.730721>,  <34.814953, 36.363415, 42.697117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121258, 36.108372, 42.730721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138263, -0.290791, -0.946744,
		0.628080, 0.713370, -0.310836,
		0.765767, -0.637608, 0.084008,
		35.350986, 35.917088, 42.755924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188023, 36.537548, 42.102142>,  <34.814953, 36.363415, 42.697117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188023, 36.537548, 42.102142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352039, 36.193916, 42.224686>,  <35.450447, 35.987740, 42.298214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352039, 36.193916, 42.224686>,  <35.188023, 36.537548, 42.102142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352039, 36.193916, 42.224686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006001, -0.338431, -0.940972,
		0.912048, 0.383998, -0.143925,
		0.410040, -0.859075, 0.306361,
		35.475052, 35.936195, 42.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759857, 36.396751, 41.640621>,  <35.188023, 36.537548, 42.102142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759857, 36.396751, 41.640621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708599, 36.028934, 41.789227>,  <35.677845, 35.808243, 41.878387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708599, 36.028934, 41.789227>,  <35.759857, 36.396751, 41.640621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708599, 36.028934, 41.789227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237557, -0.392153, -0.888697,
		0.962883, -0.025631, 0.268698,
		-0.128149, -0.919543, 0.371509,
		35.670155, 35.753071, 41.900681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460609, 35.897148, 41.432087>,  <35.759857, 36.396751, 41.640621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460609, 35.897148, 41.432087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118065, 35.703617, 41.504265>,  <35.912537, 35.587498, 41.547569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118065, 35.703617, 41.504265>,  <36.460609, 35.897148, 41.432087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118065, 35.703617, 41.504265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060433, -0.440940, -0.895499,
		0.512829, -0.755966, 0.406843,
		-0.856361, -0.483825, 0.180442,
		35.861156, 35.558468, 41.558399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624161, 35.207481, 41.310329>,  <36.460609, 35.897148, 41.432087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624161, 35.207481, 41.310329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227459, 35.213589, 41.259434>,  <35.989437, 35.217251, 41.228897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227459, 35.213589, 41.259434>,  <36.624161, 35.207481, 41.310329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227459, 35.213589, 41.259434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093202, -0.595509, -0.797924,
		-0.087951, -0.803204, 0.589176,
		-0.991755, 0.015266, -0.127236,
		35.929932, 35.218170, 41.221264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500782, 34.635532, 40.987915>,  <36.624161, 35.207481, 41.310329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500782, 34.635532, 40.987915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158009, 34.830616, 40.921227>,  <35.952343, 34.947666, 40.881214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158009, 34.830616, 40.921227>,  <36.500782, 34.635532, 40.987915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158009, 34.830616, 40.921227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081115, -0.447045, -0.890826,
		-0.509000, -0.749857, 0.422650,
		-0.856936, 0.487714, -0.166722,
		35.900928, 34.976929, 40.871212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025852, 34.149704, 40.694519>,  <36.500782, 34.635532, 40.987915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025852, 34.149704, 40.694519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876762, 34.509624, 40.603809>,  <35.787308, 34.725578, 40.549381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876762, 34.509624, 40.603809>,  <36.025852, 34.149704, 40.694519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876762, 34.509624, 40.603809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193938, -0.314526, -0.929226,
		-0.907451, -0.302361, 0.291737,
		-0.372721, 0.899806, -0.226778,
		35.764946, 34.779568, 40.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480461, 34.006912, 40.199322>,  <36.025852, 34.149704, 40.694519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480461, 34.006912, 40.199322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574509, 34.391098, 40.139687>,  <35.630936, 34.621609, 40.103905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574509, 34.391098, 40.139687>,  <35.480461, 34.006912, 40.199322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574509, 34.391098, 40.139687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184465, -0.106502, -0.977052,
		-0.954302, 0.257222, 0.152132,
		0.235117, 0.960466, -0.149084,
		35.645042, 34.679237, 40.094963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013474, 34.164192, 39.718239>,  <35.480461, 34.006912, 40.199322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013474, 34.164192, 39.718239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290356, 34.450951, 39.685005>,  <35.456486, 34.623005, 39.665066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290356, 34.450951, 39.685005>,  <35.013474, 34.164192, 39.718239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290356, 34.450951, 39.685005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022279, -0.136290, -0.990418,
		-0.721353, 0.683725, -0.110313,
		0.692209, 0.716899, -0.083081,
		35.498020, 34.666019, 39.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854954, 34.528553, 39.255836>,  <35.013474, 34.164192, 39.718239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854954, 34.528553, 39.255836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232647, 34.660267, 39.255333>,  <35.459263, 34.739296, 39.255032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232647, 34.660267, 39.255333>,  <34.854954, 34.528553, 39.255836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232647, 34.660267, 39.255333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087814, -0.255502, -0.962812,
		-0.317361, 0.909005, -0.270168,
		0.944230, 0.329284, -0.001263,
		35.515915, 34.759052, 39.254955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924210, 35.052155, 38.833485>,  <34.854954, 34.528553, 39.255836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924210, 35.052155, 38.833485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282356, 34.874615, 38.847977>,  <35.497246, 34.768089, 38.856674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282356, 34.874615, 38.847977>,  <34.924210, 35.052155, 38.833485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282356, 34.874615, 38.847977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128800, -0.335992, -0.933017,
		0.426293, 0.830727, -0.358004,
		0.895369, -0.443849, 0.036234,
		35.550968, 34.741459, 38.858849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251400, 35.276470, 38.234024>,  <34.924210, 35.052155, 38.833485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251400, 35.276470, 38.234024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470943, 34.960018, 38.341995>,  <35.602669, 34.770145, 38.406776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470943, 34.960018, 38.341995>,  <35.251400, 35.276470, 38.234024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470943, 34.960018, 38.341995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058954, -0.285469, -0.956573,
		0.833833, 0.540938, -0.110041,
		0.548860, -0.791135, 0.269924,
		35.635601, 34.722679, 38.422974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782585, 35.397377, 37.869743>,  <35.251400, 35.276470, 38.234024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782585, 35.397377, 37.869743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770496, 35.009792, 37.967884>,  <35.763245, 34.777241, 38.026768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770496, 35.009792, 37.967884>,  <35.782585, 35.397377, 37.869743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770496, 35.009792, 37.967884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010414, -0.245149, -0.969429,
		0.999489, -0.031851, -0.002682,
		-0.030220, -0.968962, 0.245355,
		35.761429, 34.719105, 38.041492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373974, 35.113945, 37.563213>,  <35.782585, 35.397377, 37.869743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373974, 35.113945, 37.563213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108356, 34.823734, 37.635506>,  <35.948986, 34.649609, 37.678883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108356, 34.823734, 37.635506>,  <36.373974, 35.113945, 37.563213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108356, 34.823734, 37.635506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001899, -0.240078, -0.970752,
		0.747694, -0.644962, 0.158044,
		-0.664041, -0.725525, 0.180730,
		35.909145, 34.606075, 37.689724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686897, 34.508701, 37.275375>,  <36.373974, 35.113945, 37.563213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686897, 34.508701, 37.275375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290066, 34.463020, 37.296341>,  <36.051968, 34.435612, 37.308922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290066, 34.463020, 37.296341>,  <36.686897, 34.508701, 37.275375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290066, 34.463020, 37.296341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015841, -0.300163, -0.953756,
		0.124651, -0.947027, 0.295975,
		-0.992074, -0.114199, 0.052418,
		35.992443, 34.428761, 37.312065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478214, 34.569771, 37.330021>,  <36.686897, 34.508701, 37.275375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478214, 34.569771, 37.330021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753494, 34.546677, 37.040733>,  <37.918663, 34.532822, 36.867161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753494, 34.546677, 37.040733>,  <37.478214, 34.569771, 37.330021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753494, 34.546677, 37.040733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460273, 0.805293, 0.373700,
		0.560825, -0.590059, 0.580780,
		0.688203, -0.057737, -0.723217,
		37.959953, 34.529354, 36.823769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156868, 34.290012, 37.538162>,  <37.478214, 34.569771, 37.330021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156868, 34.290012, 37.538162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198799, 34.575031, 37.260662>,  <38.223957, 34.746044, 37.094162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198799, 34.575031, 37.260662>,  <38.156868, 34.290012, 37.538162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198799, 34.575031, 37.260662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503281, 0.563658, 0.654979,
		0.857741, -0.417812, -0.299523,
		0.104829, 0.712547, -0.693749,
		38.230247, 34.788795, 37.052536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477917, 34.022610, 36.940510>,  <38.156868, 34.290012, 37.538162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477917, 34.022610, 36.940510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754566, 34.307316, 36.891445>,  <38.920555, 34.478138, 36.862007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754566, 34.307316, 36.891445>,  <38.477917, 34.022610, 36.940510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754566, 34.307316, 36.891445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144394, 0.302664, 0.942096,
		0.707674, -0.633867, 0.312105,
		0.691626, 0.711764, -0.122661,
		38.962055, 34.520844, 36.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084610, 33.863178, 37.451782>,  <38.477917, 34.022610, 36.940510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084610, 33.863178, 37.451782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045876, 34.252281, 37.367527>,  <39.022636, 34.485744, 37.316975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045876, 34.252281, 37.367527>,  <39.084610, 33.863178, 37.451782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045876, 34.252281, 37.367527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247714, 0.181417, 0.951696,
		0.963982, 0.144335, 0.223398,
		-0.096835, 0.972756, -0.210637,
		39.016827, 34.544109, 37.304337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582325, 34.221626, 37.902222>,  <39.084610, 33.863178, 37.451782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582325, 34.221626, 37.902222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325294, 34.515423, 37.814938>,  <39.171078, 34.691700, 37.762566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325294, 34.515423, 37.814938>,  <39.582325, 34.221626, 37.902222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325294, 34.515423, 37.814938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146969, 0.161350, 0.975893,
		0.751997, 0.659152, 0.004269,
		-0.642573, 0.734496, -0.218209,
		39.132523, 34.735771, 37.749474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836071, 34.829964, 38.194645>,  <39.582325, 34.221626, 37.902222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836071, 34.829964, 38.194645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440628, 34.867702, 38.147743>,  <39.203362, 34.890347, 38.119602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440628, 34.867702, 38.147743>,  <39.836071, 34.829964, 38.194645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440628, 34.867702, 38.147743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089902, 0.254630, 0.962850,
		0.120699, 0.962425, -0.243248,
		-0.988610, 0.094347, -0.117258,
		39.144047, 34.896008, 38.112564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667660, 35.493725, 38.568367>,  <39.836071, 34.829964, 38.194645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667660, 35.493725, 38.568367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332104, 35.276752, 38.550335>,  <39.130772, 35.146568, 38.539516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332104, 35.276752, 38.550335>,  <39.667660, 35.493725, 38.568367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332104, 35.276752, 38.550335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168562, 0.180146, 0.969089,
		-0.517546, 0.820557, -0.242556,
		-0.838888, -0.542434, -0.045081,
		39.080437, 35.114021, 38.536812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088299, 35.946121, 38.783512>,  <39.667660, 35.493725, 38.568367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088299, 35.946121, 38.783512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939407, 35.579510, 38.842064>,  <38.850071, 35.359543, 38.877197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939407, 35.579510, 38.842064>,  <39.088299, 35.946121, 38.783512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939407, 35.579510, 38.842064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241033, 0.247760, 0.938359,
		-0.896298, 0.314001, -0.313136,
		-0.372228, -0.916525, 0.146382,
		38.827740, 35.304554, 38.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394276, 36.033005, 39.012257>,  <39.088299, 35.946121, 38.783512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394276, 36.033005, 39.012257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484810, 35.661537, 39.129791>,  <38.539131, 35.438656, 39.200314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484810, 35.661537, 39.129791>,  <38.394276, 36.033005, 39.012257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484810, 35.661537, 39.129791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388190, 0.190676, 0.901638,
		-0.893355, -0.318133, -0.317346,
		0.226331, -0.928673, 0.293837,
		38.552708, 35.382935, 39.217941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890087, 35.922768, 39.422352>,  <38.394276, 36.033005, 39.012257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890087, 35.922768, 39.422352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146896, 35.623436, 39.489052>,  <38.300983, 35.443836, 39.529072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146896, 35.623436, 39.489052>,  <37.890087, 35.922768, 39.422352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146896, 35.623436, 39.489052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208785, 0.038619, 0.977199,
		-0.737707, -0.662201, -0.131446,
		0.642026, -0.748331, 0.166747,
		38.339504, 35.398937, 39.539078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520355, 35.328159, 39.742916>,  <37.890087, 35.922768, 39.422352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520355, 35.328159, 39.742916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907207, 35.311577, 39.843269>,  <38.139320, 35.301628, 39.903481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907207, 35.311577, 39.843269>,  <37.520355, 35.328159, 39.742916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907207, 35.311577, 39.843269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253912, -0.104009, 0.961619,
		-0.013773, -0.993712, -0.111116,
		0.967129, -0.041458, 0.250883,
		38.197346, 35.299137, 39.918533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684631, 34.745380, 40.103989>,  <37.520355, 35.328159, 39.742916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684631, 34.745380, 40.103989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980339, 34.991726, 40.212936>,  <38.157764, 35.139534, 40.278305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980339, 34.991726, 40.212936>,  <37.684631, 34.745380, 40.103989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980339, 34.991726, 40.212936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249837, -0.124757, 0.960217,
		0.625345, -0.777910, 0.061637,
		0.739273, 0.615867, 0.272367,
		38.202122, 35.176487, 40.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126804, 34.480656, 40.649563>,  <37.684631, 34.745380, 40.103989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126804, 34.480656, 40.649563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168144, 34.877396, 40.679352>,  <38.192947, 35.115440, 40.697224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168144, 34.877396, 40.679352>,  <38.126804, 34.480656, 40.649563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168144, 34.877396, 40.679352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339686, -0.035174, 0.939881,
		0.934843, -0.122433, 0.333283,
		0.103350, 0.991853, 0.074471,
		38.199150, 35.174953, 40.701694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437531, 34.475300, 41.223965>,  <38.126804, 34.480656, 40.649563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437531, 34.475300, 41.223965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319237, 34.853905, 41.172340>,  <38.248260, 35.081066, 41.141365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319237, 34.853905, 41.172340>,  <38.437531, 34.475300, 41.223965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319237, 34.853905, 41.172340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042967, 0.121783, 0.991626,
		0.954302, 0.298807, 0.004653,
		-0.295739, 0.946511, -0.129057,
		38.230515, 35.137859, 41.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904591, 34.786732, 41.633595>,  <38.437531, 34.475300, 41.223965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904591, 34.786732, 41.633595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618851, 35.056599, 41.559261>,  <38.447407, 35.218517, 41.514660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618851, 35.056599, 41.559261>,  <38.904591, 34.786732, 41.633595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618851, 35.056599, 41.559261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127274, 0.386379, 0.913517,
		0.688122, 0.628915, -0.361876,
		-0.714346, 0.674668, -0.185831,
		38.404549, 35.258999, 41.503513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151295, 35.418655, 41.847286>,  <38.904591, 34.786732, 41.633595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151295, 35.418655, 41.847286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753010, 35.455341, 41.852001>,  <38.514038, 35.477352, 41.854832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753010, 35.455341, 41.852001>,  <39.151295, 35.418655, 41.847286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753010, 35.455341, 41.852001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046712, 0.388886, 0.920101,
		0.079805, 0.916709, -0.391504,
		-0.995715, 0.091717, 0.011786,
		38.454296, 35.482857, 41.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001385, 36.165401, 42.000175>,  <39.151295, 35.418655, 41.847286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001385, 36.165401, 42.000175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690369, 35.942749, 42.117195>,  <38.503757, 35.809158, 42.187408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690369, 35.942749, 42.117195>,  <39.001385, 36.165401, 42.000175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690369, 35.942749, 42.117195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063311, 0.393572, 0.917111,
		-0.625635, 0.731615, -0.270778,
		-0.777543, -0.556633, 0.292552,
		38.457108, 35.775761, 42.204960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705555, 36.601501, 42.454262>,  <39.001385, 36.165401, 42.000175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705555, 36.601501, 42.454262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541878, 36.249325, 42.550091>,  <38.443672, 36.038021, 42.607586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541878, 36.249325, 42.550091>,  <38.705555, 36.601501, 42.454262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541878, 36.249325, 42.550091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105278, 0.306358, 0.946077,
		-0.906356, 0.361903, -0.218049,
		-0.409189, -0.880438, 0.239569,
		38.419121, 35.985195, 42.621960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.155022, 36.841671, 42.849495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233974, 36.461479, 42.945518>,  <38.281345, 36.233364, 43.003132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233974, 36.461479, 42.945518>,  <38.155022, 36.841671, 42.849495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233974, 36.461479, 42.945518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215652, 0.280973, 0.935173,
		-0.956312, -0.132822, 0.260433,
		0.197386, -0.950480, 0.240054,
		38.293190, 36.176334, 43.017536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901630, 36.725529, 43.531734>,  <38.155022, 36.841671, 42.849495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901630, 36.725529, 43.531734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146164, 36.410912, 43.496811>,  <38.292885, 36.222141, 43.475857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146164, 36.410912, 43.496811>,  <37.901630, 36.725529, 43.531734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146164, 36.410912, 43.496811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176600, 0.028045, 0.983883,
		-0.771420, -0.616896, 0.156049,
		0.611330, -0.786545, -0.087309,
		38.329563, 36.174950, 43.470619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869743, 36.434444, 44.213123>,  <37.901630, 36.725529, 43.531734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869743, 36.434444, 44.213123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167789, 36.229496, 44.042347>,  <38.346615, 36.106525, 43.939880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167789, 36.229496, 44.042347>,  <37.869743, 36.434444, 44.213123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167789, 36.229496, 44.042347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347588, -0.248009, 0.904253,
		-0.569202, -0.822170, -0.006699,
		0.745111, -0.512374, -0.426944,
		38.391323, 36.075783, 43.914265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892525, 35.804256, 44.635738>,  <37.869743, 36.434444, 44.213123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892525, 35.804256, 44.635738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248535, 35.886379, 44.472912>,  <38.462143, 35.935654, 44.375217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248535, 35.886379, 44.472912>,  <37.892525, 35.804256, 44.635738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248535, 35.886379, 44.472912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451534, -0.273538, 0.849290,
		0.063020, -0.939694, -0.336160,
		0.890025, 0.205310, -0.407065,
		38.515541, 35.947971, 44.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368519, 35.164452, 44.742828>,  <37.892525, 35.804256, 44.635738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368519, 35.164452, 44.742828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612259, 35.475960, 44.683212>,  <38.758503, 35.662865, 44.647442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612259, 35.475960, 44.683212>,  <38.368519, 35.164452, 44.742828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612259, 35.475960, 44.683212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517629, -0.248331, 0.818775,
		0.600624, -0.576068, -0.554434,
		0.609353, 0.778766, -0.149036,
		38.795063, 35.709591, 44.638500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951763, 34.952320, 45.059803>,  <38.368519, 35.164452, 44.742828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951763, 34.952320, 45.059803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979362, 35.351322, 45.053871>,  <38.995922, 35.590725, 45.050312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979362, 35.351322, 45.053871>,  <38.951763, 34.952320, 45.059803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979362, 35.351322, 45.053871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489337, -0.020890, 0.871844,
		0.869361, -0.067412, -0.489559,
		0.069000, 0.997506, -0.014826,
		39.000061, 35.650574, 45.049423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689423, 35.108463, 45.277580>,  <38.951763, 34.952320, 45.059803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689423, 35.108463, 45.277580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490845, 35.452610, 45.323746>,  <39.371700, 35.659096, 45.351444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490845, 35.452610, 45.323746>,  <39.689423, 35.108463, 45.277580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490845, 35.452610, 45.323746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491665, 0.169112, 0.854205,
		0.715411, 0.480805, -0.506965,
		-0.496440, 0.860365, 0.115411,
		39.341911, 35.710720, 45.358368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184078, 35.503994, 45.687660>,  <39.689423, 35.108463, 45.277580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184078, 35.503994, 45.687660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835777, 35.699524, 45.708984>,  <39.626797, 35.816841, 45.721779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835777, 35.699524, 45.708984>,  <40.184078, 35.503994, 45.687660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835777, 35.699524, 45.708984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228097, 0.305499, 0.924469,
		0.435613, 0.817144, -0.377513,
		-0.870754, 0.488820, 0.053308,
		39.574551, 35.846169, 45.724976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316631, 36.130119, 45.907833>,  <40.184078, 35.503994, 45.687660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316631, 36.130119, 45.907833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.935196, 36.097855, 46.023880>,  <39.706337, 36.078495, 46.093510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.935196, 36.097855, 46.023880>,  <40.316631, 36.130119, 45.907833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935196, 36.097855, 46.023880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250179, 0.323999, 0.912379,
		-0.167595, 0.942612, -0.288781,
		-0.953584, -0.080663, 0.290122,
		39.649120, 36.073654, 46.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347656, 36.621918, 46.462070>,  <40.316631, 36.130119, 45.907833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347656, 36.621918, 46.462070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002129, 36.429466, 46.521835>,  <39.794811, 36.313995, 46.557693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002129, 36.429466, 46.521835>,  <40.347656, 36.621918, 46.462070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002129, 36.429466, 46.521835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092412, 0.140220, 0.985798,
		-0.495250, 0.865361, -0.076663,
		-0.863821, -0.481132, 0.149414,
		39.742981, 36.285126, 46.566658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877705, 37.000393, 46.782528>,  <40.347656, 36.621918, 46.462070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877705, 37.000393, 46.782528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750446, 36.635944, 46.887325>,  <39.674091, 36.417274, 46.950203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750446, 36.635944, 46.887325>,  <39.877705, 37.000393, 46.782528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750446, 36.635944, 46.887325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085368, 0.247700, 0.965069,
		-0.944191, 0.329397, -0.001024,
		-0.318145, -0.911121, 0.261996,
		39.655003, 36.362606, 46.965923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452473, 37.126972, 47.351284>,  <39.877705, 37.000393, 46.782528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452473, 37.126972, 47.351284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.563278, 36.743114, 47.370655>,  <39.629761, 36.512798, 47.382278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.563278, 36.743114, 47.370655>,  <39.452473, 37.126972, 47.351284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563278, 36.743114, 47.370655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251889, 0.121169, 0.960141,
		-0.927261, -0.253776, 0.275289,
		0.277017, -0.959644, 0.048431,
		39.646385, 36.455223, 47.385185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165066, 36.851006, 47.899086>,  <39.452473, 37.126972, 47.351284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165066, 36.851006, 47.899086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469643, 36.598732, 47.839172>,  <39.652390, 36.447369, 47.803223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469643, 36.598732, 47.839172>,  <39.165066, 36.851006, 47.899086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469643, 36.598732, 47.839172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280056, 0.111670, 0.953467,
		-0.584611, -0.767962, 0.261658,
		0.761445, -0.630686, -0.149789,
		39.698078, 36.409527, 47.794235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081589, 36.421341, 48.372768>,  <39.165066, 36.851006, 47.899086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081589, 36.421341, 48.372768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462345, 36.352901, 48.271084>,  <39.690800, 36.311836, 48.210072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462345, 36.352901, 48.271084>,  <39.081589, 36.421341, 48.372768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462345, 36.352901, 48.271084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237567, -0.111948, 0.964899,
		-0.193554, -0.978873, -0.065915,
		0.951892, -0.171101, -0.254216,
		39.747913, 36.301571, 48.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367825, 35.865292, 48.794666>,  <39.081589, 36.421341, 48.372768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367825, 35.865292, 48.794666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717461, 36.022724, 48.680786>,  <39.927242, 36.117184, 48.612457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717461, 36.022724, 48.680786>,  <39.367825, 35.865292, 48.794666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717461, 36.022724, 48.680786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390551, -0.220898, 0.893686,
		0.288852, -0.892353, -0.346800,
		0.874091, 0.393586, -0.284703,
		39.979687, 36.140800, 48.595375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841034, 35.339188, 48.747677>,  <39.367825, 35.865292, 48.794666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841034, 35.339188, 48.747677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058475, 35.674164, 48.770267>,  <40.188938, 35.875149, 48.783821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058475, 35.674164, 48.770267>,  <39.841034, 35.339188, 48.747677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058475, 35.674164, 48.770267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486350, -0.369114, 0.791972,
		0.684077, -0.403047, -0.607940,
		0.543601, 0.837441, 0.056481,
		40.221558, 35.925396, 48.787212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508671, 35.131165, 49.023609>,  <39.841034, 35.339188, 48.747677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508671, 35.131165, 49.023609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530186, 35.528946, 49.059769>,  <40.543095, 35.767616, 49.081463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530186, 35.528946, 49.059769>,  <40.508671, 35.131165, 49.023609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530186, 35.528946, 49.059769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484937, -0.105149, 0.868205,
		0.872893, -0.002862, -0.487903,
		0.053787, 0.994453, 0.090396,
		40.546322, 35.827282, 49.086887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155289, 35.249622, 49.083519>,  <40.508671, 35.131165, 49.023609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155289, 35.249622, 49.083519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943417, 35.537067, 49.263756>,  <40.816292, 35.709534, 49.371899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943417, 35.537067, 49.263756>,  <41.155289, 35.249622, 49.083519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943417, 35.537067, 49.263756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394824, -0.261283, 0.880821,
		0.750700, 0.644460, -0.145327,
		-0.529682, 0.718611, 0.450594,
		40.784512, 35.752651, 49.398933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622250, 35.548813, 49.480221>,  <41.155289, 35.249622, 49.083519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622250, 35.548813, 49.480221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272511, 35.624611, 49.658932>,  <41.062668, 35.670090, 49.766159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272511, 35.624611, 49.658932>,  <41.622250, 35.548813, 49.480221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272511, 35.624611, 49.658932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367790, -0.341909, 0.864771,
		0.316624, 0.920430, 0.229254,
		-0.874345, 0.189491, 0.446781,
		41.010208, 35.681458, 49.792965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833496, 35.538395, 50.105614>,  <41.622250, 35.548813, 49.480221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833496, 35.538395, 50.105614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442932, 35.568748, 50.186481>,  <41.208595, 35.586960, 50.235001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442932, 35.568748, 50.186481>,  <41.833496, 35.538395, 50.105614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442932, 35.568748, 50.186481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175293, -0.268205, 0.947280,
		0.126103, 0.960369, 0.248576,
		-0.976407, 0.075881, 0.202167,
		41.150009, 35.591515, 50.247131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682545, 36.014561, 50.652008>,  <41.833496, 35.538395, 50.105614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682545, 36.014561, 50.652008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370888, 35.764130, 50.639614>,  <41.183895, 35.613869, 50.632179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370888, 35.764130, 50.639614>,  <41.682545, 36.014561, 50.652008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370888, 35.764130, 50.639614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057446, -0.120530, 0.991046,
		-0.624208, 0.770387, 0.129876,
		-0.779143, -0.626080, -0.030981,
		41.137146, 35.576305, 50.630322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240864, 36.211628, 51.228951>,  <41.682545, 36.014561, 50.652008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240864, 36.211628, 51.228951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146721, 35.834415, 51.134884>,  <41.090233, 35.608089, 51.078445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146721, 35.834415, 51.134884>,  <41.240864, 36.211628, 51.228951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146721, 35.834415, 51.134884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001690, -0.242359, 0.970185,
		-0.971907, 0.227946, 0.058635,
		-0.235361, -0.943028, -0.235165,
		41.076111, 35.551506, 51.064335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099628, 36.048084, 51.843746>,  <41.240864, 36.211628, 51.228951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099628, 36.048084, 51.843746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.065765, 35.693275, 51.662189>,  <41.045448, 35.480389, 51.553253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.065765, 35.693275, 51.662189>,  <41.099628, 36.048084, 51.843746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065765, 35.693275, 51.662189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083523, -0.447609, 0.890320,
		-0.992904, 0.113280, -0.036194,
		-0.084655, -0.887025, -0.453894,
		41.040367, 35.427166, 51.526020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409161, 36.147369, 51.798035>,  <41.099628, 36.048084, 51.843746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409161, 36.147369, 51.798035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031860, 36.257977, 51.871590>,  <39.805481, 36.324341, 51.915722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031860, 36.257977, 51.871590>,  <40.409161, 36.147369, 51.798035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031860, 36.257977, 51.871590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322536, -0.631107, -0.705460,
		-0.079021, -0.724736, 0.684480,
		-0.943253, 0.276516, 0.183883,
		39.748886, 36.340931, 51.926754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951874, 35.537819, 51.820068>,  <40.409161, 36.147369, 51.798035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951874, 35.537819, 51.820068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733913, 35.850330, 51.698288>,  <39.603138, 36.037838, 51.625217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733913, 35.850330, 51.698288>,  <39.951874, 35.537819, 51.820068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733913, 35.850330, 51.698288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604518, -0.617655, -0.503050,
		-0.581067, -0.090066, 0.808857,
		-0.544902, 0.781274, -0.304453,
		39.570442, 36.084713, 51.606953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339050, 35.346558, 51.699821>,  <39.951874, 35.537819, 51.820068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339050, 35.346558, 51.699821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260403, 35.674824, 51.485214>,  <39.213215, 35.871784, 51.356449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260403, 35.674824, 51.485214>,  <39.339050, 35.346558, 51.699821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260403, 35.674824, 51.485214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638575, -0.522412, -0.565073,
		-0.744019, 0.231502, 0.626772,
		-0.196618, 0.820666, -0.536516,
		39.201416, 35.921024, 51.324261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591465, 35.320568, 51.764496>,  <39.339050, 35.346558, 51.699821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591465, 35.320568, 51.764496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669197, 35.542728, 51.441071>,  <38.715836, 35.676025, 51.247017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669197, 35.542728, 51.441071>,  <38.591465, 35.320568, 51.764496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669197, 35.542728, 51.441071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706936, -0.492155, -0.507962,
		-0.680058, 0.670310, 0.296993,
		0.194326, 0.555399, -0.808561,
		38.727493, 35.709347, 51.198502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941700, 35.622501, 51.453934>,  <38.591465, 35.320568, 51.764496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941700, 35.622501, 51.453934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195614, 35.620628, 51.144863>,  <38.347961, 35.619503, 50.959419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195614, 35.620628, 51.144863>,  <37.941700, 35.622501, 51.453934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195614, 35.620628, 51.144863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655302, -0.533128, -0.535121,
		-0.409428, 0.846022, -0.341491,
		0.634782, -0.004686, -0.772677,
		38.386047, 35.619221, 50.913059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657970, 35.887772, 50.844776>,  <37.941700, 35.622501, 51.453934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657970, 35.887772, 50.844776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953274, 35.650703, 50.715961>,  <38.130455, 35.508461, 50.638672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953274, 35.650703, 50.715961>,  <37.657970, 35.887772, 50.844776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953274, 35.650703, 50.715961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628785, -0.431899, -0.646601,
		0.244136, 0.679853, -0.691518,
		0.738260, -0.592675, -0.322039,
		38.174751, 35.472900, 50.619350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549030, 35.941811, 50.075409>,  <37.657970, 35.887772, 50.844776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549030, 35.941811, 50.075409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803493, 35.642811, 50.151867>,  <37.956173, 35.463409, 50.197742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803493, 35.642811, 50.151867>,  <37.549030, 35.941811, 50.075409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803493, 35.642811, 50.151867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358029, -0.505453, -0.785069,
		0.683457, 0.430995, -0.589177,
		0.636162, -0.747503, 0.191147,
		37.994343, 35.418560, 50.209209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785740, 35.803486, 49.411247>,  <37.549030, 35.941811, 50.075409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785740, 35.803486, 49.411247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853725, 35.492008, 49.652824>,  <37.894516, 35.305122, 49.797771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853725, 35.492008, 49.652824>,  <37.785740, 35.803486, 49.411247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853725, 35.492008, 49.652824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194003, -0.627306, -0.754222,
		0.966164, 0.011028, -0.257691,
		0.169968, -0.778695, 0.603941,
		37.904716, 35.258400, 49.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244617, 35.412167, 49.012829>,  <37.785740, 35.803486, 49.411247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244617, 35.412167, 49.012829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055271, 35.179726, 49.277630>,  <37.941666, 35.040260, 49.436512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055271, 35.179726, 49.277630>,  <38.244617, 35.412167, 49.012829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055271, 35.179726, 49.277630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284640, -0.610314, -0.739254,
		0.833612, -0.538368, 0.123495,
		-0.473361, -0.581100, 0.662006,
		37.913261, 35.005394, 49.476231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491306, 34.670826, 49.150547>,  <38.244617, 35.412167, 49.012829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491306, 34.670826, 49.150547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099979, 34.750599, 49.172913>,  <37.865185, 34.798462, 49.186333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099979, 34.750599, 49.172913>,  <38.491306, 34.670826, 49.150547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099979, 34.750599, 49.172913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176708, -0.662834, -0.727616,
		-0.108046, -0.721719, 0.683702,
		-0.978315, 0.199431, 0.055916,
		37.806484, 34.810429, 49.189686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811611, 34.629963, 48.517227>,  <38.491306, 34.670826, 49.150547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811611, 34.629963, 48.517227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446663, 34.473236, 48.469791>,  <38.227695, 34.379200, 48.441330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446663, 34.473236, 48.469791>,  <38.811611, 34.629963, 48.517227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446663, 34.473236, 48.469791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229598, 0.729603, -0.644178,
		0.338918, -0.560501, -0.755627,
		-0.912370, -0.391814, -0.118586,
		38.172951, 34.355690, 48.434216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689323, 34.530029, 47.755287>,  <38.811611, 34.629963, 48.517227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689323, 34.530029, 47.755287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318989, 34.526436, 47.906418>,  <38.096790, 34.524281, 47.997097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318989, 34.526436, 47.906418>,  <38.689323, 34.530029, 47.755287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318989, 34.526436, 47.906418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268905, 0.718129, -0.641857,
		-0.265558, -0.695852, -0.667285,
		-0.925834, -0.008986, 0.377823,
		38.041237, 34.523739, 48.019764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232624, 34.427986, 47.192863>,  <38.689323, 34.530029, 47.755287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232624, 34.427986, 47.192863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992092, 34.609112, 47.456188>,  <37.847775, 34.717785, 47.614182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992092, 34.609112, 47.456188>,  <38.232624, 34.427986, 47.192863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992092, 34.609112, 47.456188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439532, 0.500582, -0.745808,
		-0.667246, -0.737822, -0.101989,
		-0.601327, 0.452810, 0.658307,
		37.811695, 34.744953, 47.653679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673359, 34.486938, 46.800213>,  <38.232624, 34.427986, 47.192863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673359, 34.486938, 46.800213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581154, 34.734001, 47.100975>,  <37.525829, 34.882240, 47.281433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581154, 34.734001, 47.100975>,  <37.673359, 34.486938, 46.800213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581154, 34.734001, 47.100975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486788, 0.595880, -0.638721,
		-0.842556, -0.513253, 0.163310,
		-0.230512, 0.617655, 0.751908,
		37.512001, 34.919296, 47.326546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088776, 34.723965, 46.652451>,  <37.673359, 34.486938, 46.800213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088776, 34.723965, 46.652451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236855, 35.002411, 46.898499>,  <37.325703, 35.169479, 47.046127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236855, 35.002411, 46.898499>,  <37.088776, 34.723965, 46.652451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236855, 35.002411, 46.898499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437391, 0.714795, -0.545671,
		-0.819536, -0.067041, 0.569092,
		0.370202, 0.696113, 0.615123,
		37.347916, 35.211246, 47.083035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536301, 35.071827, 46.944557>,  <37.088776, 34.723965, 46.652451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536301, 35.071827, 46.944557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849205, 35.320511, 46.960281>,  <37.036949, 35.469723, 46.969715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849205, 35.320511, 46.960281>,  <36.536301, 35.071827, 46.944557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849205, 35.320511, 46.960281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538517, 0.706605, -0.459030,
		-0.313159, 0.337913, 0.887551,
		0.782260, 0.621710, 0.039308,
		37.083881, 35.507023, 46.972073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205845, 35.650368, 47.003677>,  <36.536301, 35.071827, 46.944557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205845, 35.650368, 47.003677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581581, 35.779774, 46.958107>,  <36.807022, 35.857418, 46.930767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581581, 35.779774, 46.958107>,  <36.205845, 35.650368, 47.003677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581581, 35.779774, 46.958107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342684, 0.871311, -0.351261,
		-0.014375, 0.368994, 0.929321,
		0.939341, 0.323513, -0.113923,
		36.863384, 35.876827, 46.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146519, 36.279129, 47.312637>,  <36.205845, 35.650368, 47.003677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146519, 36.279129, 47.312637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446301, 36.236435, 47.051277>,  <36.626167, 36.210819, 46.894463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446301, 36.236435, 47.051277>,  <36.146519, 36.279129, 47.312637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446301, 36.236435, 47.051277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458198, 0.628757, -0.628267,
		0.477889, 0.770242, 0.422315,
		0.749451, -0.106738, -0.653399,
		36.671135, 36.204414, 46.855259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212437, 36.897621, 47.078236>,  <36.146519, 36.279129, 47.312637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212437, 36.897621, 47.078236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399696, 36.672550, 46.805698>,  <36.512054, 36.537510, 46.642178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399696, 36.672550, 46.805698>,  <36.212437, 36.897621, 47.078236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399696, 36.672550, 46.805698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440420, 0.519884, -0.731950,
		0.766070, 0.642742, -0.004429,
		0.468152, -0.562675, -0.681344,
		36.540142, 36.503746, 46.601295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084732, 37.198143, 46.459602>,  <36.212437, 36.897621, 47.078236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084732, 37.198143, 46.459602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252335, 36.860687, 46.325317>,  <36.352894, 36.658215, 46.244747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252335, 36.860687, 46.325317>,  <36.084732, 37.198143, 46.459602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252335, 36.860687, 46.325317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285343, 0.228656, -0.930750,
		0.861983, 0.485781, -0.144920,
		0.419004, -0.843643, -0.335712,
		36.378036, 36.607594, 46.224606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690250, 37.331348, 45.918106>,  <36.084732, 37.198143, 46.459602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690250, 37.331348, 45.918106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528088, 36.970890, 45.856670>,  <36.430790, 36.754616, 45.819809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528088, 36.970890, 45.856670>,  <36.690250, 37.331348, 45.918106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528088, 36.970890, 45.856670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173767, 0.240921, -0.954862,
		0.897470, -0.360416, -0.254259,
		-0.405404, -0.901143, -0.153591,
		36.406467, 36.700546, 45.810593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.250309, 40.543182, 40.236622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855892, 40.590332, 40.189587>,  <43.619244, 40.618622, 40.161366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855892, 40.590332, 40.189587>,  <44.250309, 40.543182, 40.236622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855892, 40.590332, 40.189587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073749, -0.323980, -0.943185,
		-0.149277, -0.938692, 0.310765,
		-0.986041, 0.117877, -0.117590,
		43.560081, 40.625694, 40.154308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876953, 39.843594, 40.152615>,  <44.250309, 40.543182, 40.236622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876953, 39.843594, 40.152615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675137, 40.141956, 39.978687>,  <43.554047, 40.320972, 39.874332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675137, 40.141956, 39.978687>,  <43.876953, 39.843594, 40.152615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675137, 40.141956, 39.978687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093169, -0.547715, -0.831461,
		-0.858345, -0.378996, 0.345841,
		-0.504542, 0.745902, -0.434818,
		43.523773, 40.365726, 39.848244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208714, 39.585037, 39.885880>,  <43.876953, 39.843594, 40.152615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208714, 39.585037, 39.885880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240936, 39.921017, 39.671219>,  <43.260269, 40.122604, 39.542423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240936, 39.921017, 39.671219>,  <43.208714, 39.585037, 39.885880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240936, 39.921017, 39.671219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266643, -0.500616, -0.823581,
		-0.960423, 0.209440, 0.183638,
		0.080559, 0.839952, -0.536649,
		43.265102, 40.173000, 39.510223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666943, 39.639301, 39.495640>,  <43.208714, 39.585037, 39.885880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666943, 39.639301, 39.495640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946465, 39.849670, 39.301704>,  <43.114178, 39.975891, 39.185341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946465, 39.849670, 39.301704>,  <42.666943, 39.639301, 39.495640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946465, 39.849670, 39.301704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166266, -0.539820, -0.825197,
		-0.695716, 0.657269, -0.289788,
		0.698809, 0.525921, -0.484843,
		43.156109, 40.007446, 39.156250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386353, 39.681522, 38.798084>,  <42.666943, 39.639301, 39.495640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386353, 39.681522, 38.798084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767105, 39.778042, 38.722504>,  <42.995556, 39.835953, 38.677155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767105, 39.778042, 38.722504>,  <42.386353, 39.681522, 38.798084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767105, 39.778042, 38.722504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000869, -0.614396, -0.788998,
		-0.306476, 0.751194, -0.584620,
		0.951878, 0.241301, -0.188950,
		43.052670, 39.850433, 38.665817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466179, 39.637390, 38.042534>,  <42.386353, 39.681522, 38.798084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466179, 39.637390, 38.042534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.837376, 39.624523, 38.191013>,  <43.060093, 39.616802, 38.280102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.837376, 39.624523, 38.191013>,  <42.466179, 39.637390, 38.042534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837376, 39.624523, 38.191013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248847, -0.687974, -0.681739,
		0.277304, 0.725022, -0.630432,
		0.927996, -0.032168, 0.371198,
		43.115776, 39.614872, 38.302372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888165, 39.785309, 37.451000>,  <42.466179, 39.637390, 38.042534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888165, 39.785309, 37.451000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109108, 39.591927, 37.722637>,  <43.241673, 39.475895, 37.885620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109108, 39.591927, 37.722637>,  <42.888165, 39.785309, 37.451000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109108, 39.591927, 37.722637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256213, -0.676753, -0.690188,
		0.793258, 0.555222, -0.249940,
		0.552355, -0.483459, 0.679095,
		43.274815, 39.446888, 37.926365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418159, 39.395077, 37.038624>,  <42.888165, 39.785309, 37.451000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418159, 39.395077, 37.038624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451859, 39.236553, 37.404324>,  <43.472076, 39.141441, 37.623741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451859, 39.236553, 37.404324>,  <43.418159, 39.395077, 37.038624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451859, 39.236553, 37.404324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260291, -0.876898, -0.404102,
		0.961848, 0.272015, 0.029278,
		0.084248, -0.396306, 0.914245,
		43.477135, 39.117661, 37.678596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102474, 39.056767, 36.982010>,  <43.418159, 39.395077, 37.038624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102474, 39.056767, 36.982010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874668, 38.899284, 37.270634>,  <43.737984, 38.804794, 37.443810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874668, 38.899284, 37.270634>,  <44.102474, 39.056767, 36.982010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874668, 38.899284, 37.270634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073262, -0.898648, -0.432510,
		0.818712, -0.193457, 0.540634,
		-0.569512, -0.393709, 0.721560,
		43.703815, 38.781170, 37.487103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419460, 38.460144, 37.050117>,  <44.102474, 39.056767, 36.982010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419460, 38.460144, 37.050117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085445, 38.402657, 37.262550>,  <43.885036, 38.368164, 37.390011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085445, 38.402657, 37.262550>,  <44.419460, 38.460144, 37.050117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085445, 38.402657, 37.262550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166119, -0.986089, -0.005663,
		0.524510, 0.083495, 0.847300,
		-0.835041, -0.143722, 0.531084,
		43.834934, 38.359539, 37.421875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605251, 37.988686, 37.568497>,  <44.419460, 38.460144, 37.050117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605251, 37.988686, 37.568497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215000, 37.950775, 37.489326>,  <43.980850, 37.928028, 37.441826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215000, 37.950775, 37.489326>,  <44.605251, 37.988686, 37.568497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215000, 37.950775, 37.489326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140551, -0.962527, -0.231923,
		-0.168525, -0.254088, 0.952386,
		-0.975626, -0.094774, -0.197922,
		43.922314, 37.922344, 37.429951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352261, 37.350216, 37.879486>,  <44.605251, 37.988686, 37.568497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352261, 37.350216, 37.879486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066696, 37.384052, 37.601444>,  <43.895355, 37.404354, 37.434620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066696, 37.384052, 37.601444>,  <44.352261, 37.350216, 37.879486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066696, 37.384052, 37.601444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000787, -0.992773, -0.120005,
		-0.700232, -0.085126, 0.708822,
		-0.713915, 0.084590, -0.695105,
		43.852520, 37.409428, 37.392914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955814, 36.773689, 37.956669>,  <44.352261, 37.350216, 37.879486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955814, 36.773689, 37.956669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.854988, 36.913437, 37.595692>,  <43.794491, 36.997284, 37.379105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.854988, 36.913437, 37.595692>,  <43.955814, 36.773689, 37.956669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854988, 36.913437, 37.595692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078304, -0.936862, -0.340821,
		-0.964536, -0.015246, 0.263510,
		-0.252069, 0.349368, -0.902443,
		43.779366, 37.018246, 37.324959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485386, 36.235687, 37.648415>,  <43.955814, 36.773689, 37.956669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485386, 36.235687, 37.648415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585342, 36.468513, 37.338898>,  <43.645317, 36.608212, 37.153187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585342, 36.468513, 37.338898>,  <43.485386, 36.235687, 37.648415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585342, 36.468513, 37.338898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053400, -0.789641, -0.611241,
		-0.966800, 0.194064, -0.166241,
		0.249891, 0.582070, -0.773789,
		43.660309, 36.643135, 37.106762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111919, 35.994362, 37.051369>,  <43.485386, 36.235687, 37.648415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111919, 35.994362, 37.051369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441090, 36.185368, 36.928230>,  <43.638592, 36.299973, 36.854347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441090, 36.185368, 36.928230>,  <43.111919, 35.994362, 37.051369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441090, 36.185368, 36.928230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234714, -0.779175, -0.581202,
		-0.517397, 0.406033, -0.753285,
		0.822928, 0.477519, -0.307841,
		43.687969, 36.328625, 36.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019779, 35.884209, 36.338924>,  <43.111919, 35.994362, 37.051369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019779, 35.884209, 36.338924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402409, 35.974682, 36.412476>,  <43.631985, 36.028965, 36.456608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402409, 35.974682, 36.412476>,  <43.019779, 35.884209, 36.338924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402409, 35.974682, 36.412476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291473, -0.734261, -0.613110,
		-0.003656, 0.640081, -0.768299,
		0.956572, 0.226180, 0.183882,
		43.689381, 36.042538, 36.467640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329048, 35.942791, 35.748856>,  <43.019779, 35.884209, 36.338924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329048, 35.942791, 35.748856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631107, 35.888577, 36.005409>,  <43.812344, 35.856049, 36.159344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631107, 35.888577, 36.005409>,  <43.329048, 35.942791, 35.748856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631107, 35.888577, 36.005409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447981, -0.607614, -0.655834,
		0.478604, 0.782583, -0.398123,
		0.755150, -0.135533, 0.641389,
		43.857651, 35.847916, 36.197826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955666, 36.178921, 35.443153>,  <43.329048, 35.942791, 35.748856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955666, 36.178921, 35.443153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043018, 35.925442, 35.740002>,  <44.095428, 35.773354, 35.918110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043018, 35.925442, 35.740002>,  <43.955666, 36.178921, 35.443153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043018, 35.925442, 35.740002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516614, -0.570094, -0.638829,
		0.827901, 0.522896, 0.202880,
		0.218381, -0.633698, 0.742116,
		44.108532, 35.735332, 35.962635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628422, 36.138351, 35.370136>,  <43.955666, 36.178921, 35.443153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628422, 36.138351, 35.370136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529621, 35.813938, 35.582256>,  <44.470341, 35.619289, 35.709526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529621, 35.813938, 35.582256>,  <44.628422, 36.138351, 35.370136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529621, 35.813938, 35.582256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534481, -0.570508, -0.623579,
		0.808282, 0.129407, 0.574399,
		-0.247004, -0.811033, 0.530297,
		44.455521, 35.570629, 35.741344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270458, 35.740086, 35.488979>,  <44.628422, 36.138351, 35.370136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270458, 35.740086, 35.488979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977646, 35.472733, 35.541744>,  <44.801960, 35.312321, 35.573402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977646, 35.472733, 35.541744>,  <45.270458, 35.740086, 35.488979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977646, 35.472733, 35.541744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472009, -0.637198, -0.609250,
		0.491269, -0.383722, 0.781929,
		-0.732026, -0.668383, 0.131916,
		44.758038, 35.272217, 35.581318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631741, 35.089489, 35.610615>,  <45.270458, 35.740086, 35.488979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631741, 35.089489, 35.610615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254673, 34.995235, 35.516079>,  <45.028435, 34.938683, 35.459358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254673, 34.995235, 35.516079>,  <45.631741, 35.089489, 35.610615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254673, 34.995235, 35.516079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332315, -0.728044, -0.599598,
		-0.030776, -0.643760, 0.764609,
		-0.942666, -0.235638, -0.236338,
		44.971874, 34.924545, 35.445179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322521, 35.494408, 35.783154>,  <45.631741, 35.089489, 35.610615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322521, 35.494408, 35.783154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609917, 35.347622, 36.019501>,  <46.782352, 35.259552, 36.161308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609917, 35.347622, 36.019501>,  <46.322521, 35.494408, 35.783154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609917, 35.347622, 36.019501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596225, 0.112534, 0.794891,
		-0.358186, -0.923405, -0.137937,
		0.718484, -0.366960, 0.590865,
		46.825462, 35.237534, 36.196758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006645, 34.965084, 36.199352>,  <46.322521, 35.494408, 35.783154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006645, 34.965084, 36.199352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.329140, 35.036732, 36.424881>,  <46.522636, 35.079720, 36.560200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.329140, 35.036732, 36.424881>,  <46.006645, 34.965084, 36.199352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329140, 35.036732, 36.424881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589186, 0.157306, 0.792537,
		0.053262, -0.971171, 0.232358,
		0.806240, 0.179114, 0.563821,
		46.571011, 35.090466, 36.594028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884663, 34.523151, 36.781212>,  <46.006645, 34.965084, 36.199352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884663, 34.523151, 36.781212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.119915, 34.832706, 36.875183>,  <46.261066, 35.018440, 36.931564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.119915, 34.832706, 36.875183>,  <45.884663, 34.523151, 36.781212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119915, 34.832706, 36.875183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586412, 0.208005, 0.782851,
		0.556976, -0.598184, 0.576154,
		0.588132, 0.773892, 0.234929,
		46.296356, 35.064873, 36.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106331, 34.404293, 37.471378>,  <45.884663, 34.523151, 36.781212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106331, 34.404293, 37.471378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170788, 34.796154, 37.423508>,  <46.209461, 35.031269, 37.394787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170788, 34.796154, 37.423508>,  <46.106331, 34.404293, 37.471378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170788, 34.796154, 37.423508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364572, 0.171771, 0.915195,
		0.917126, -0.103846, 0.384832,
		0.161142, 0.979648, -0.119676,
		46.219131, 35.090050, 37.387604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471729, 34.675835, 38.081448>,  <46.106331, 34.404293, 37.471378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471729, 34.675835, 38.081448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297676, 34.991486, 37.908039>,  <46.193245, 35.180878, 37.803993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297676, 34.991486, 37.908039>,  <46.471729, 34.675835, 38.081448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297676, 34.991486, 37.908039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212836, 0.377698, 0.901135,
		0.874851, 0.484379, 0.003607,
		-0.435129, 0.789127, -0.433523,
		46.167137, 35.228222, 37.777981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793102, 35.223770, 38.482040>,  <46.471729, 34.675835, 38.081448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793102, 35.223770, 38.482040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472969, 35.380180, 38.300240>,  <46.280891, 35.474026, 38.191158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472969, 35.380180, 38.300240>,  <46.793102, 35.223770, 38.482040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472969, 35.380180, 38.300240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247160, 0.475478, 0.844294,
		0.546244, 0.788049, -0.283895,
		-0.800331, 0.391023, -0.454501,
		46.232868, 35.497486, 38.163891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729893, 35.891888, 38.849129>,  <46.793102, 35.223770, 38.482040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729893, 35.891888, 38.849129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381725, 35.837837, 38.659771>,  <46.172825, 35.805405, 38.546154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381725, 35.837837, 38.659771>,  <46.729893, 35.891888, 38.849129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381725, 35.837837, 38.659771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437225, 0.654153, 0.617186,
		0.226274, 0.744194, -0.628471,
		-0.870422, -0.135130, -0.473398,
		46.120598, 35.797298, 38.517750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497780, 36.520638, 38.709076>,  <46.729893, 35.891888, 38.849129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497780, 36.520638, 38.709076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183514, 36.274952, 38.738663>,  <45.994953, 36.127541, 38.756416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183514, 36.274952, 38.738663>,  <46.497780, 36.520638, 38.709076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183514, 36.274952, 38.738663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421017, 0.618440, 0.663534,
		-0.453297, 0.490173, -0.744481,
		-0.785663, -0.614217, 0.073966,
		45.947815, 36.090687, 38.760853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903778, 36.936584, 38.554699>,  <46.497780, 36.520638, 38.709076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903778, 36.936584, 38.554699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.775497, 36.614681, 38.754501>,  <45.698528, 36.421539, 38.874382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.775497, 36.614681, 38.754501>,  <45.903778, 36.936584, 38.554699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775497, 36.614681, 38.754501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547192, 0.587871, 0.595809,
		-0.773132, -0.082253, -0.628889,
		-0.320699, -0.804762, 0.499510,
		45.679287, 36.373253, 38.904354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074387, 36.976921, 38.616638>,  <45.903778, 36.936584, 38.554699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074387, 36.976921, 38.616638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176422, 36.711742, 38.898186>,  <45.237644, 36.552635, 39.067116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176422, 36.711742, 38.898186>,  <45.074387, 36.976921, 38.616638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176422, 36.711742, 38.898186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689729, 0.385414, 0.612968,
		-0.677645, -0.641843, -0.358936,
		0.255091, -0.662943, 0.703871,
		45.252949, 36.512859, 39.109348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482746, 36.502819, 38.773296>,  <45.074387, 36.976921, 38.616638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482746, 36.502819, 38.773296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716690, 36.507053, 39.097721>,  <44.857056, 36.509594, 39.292377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716690, 36.507053, 39.097721>,  <44.482746, 36.502819, 38.773296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716690, 36.507053, 39.097721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766451, 0.334500, 0.548327,
		-0.265495, -0.942336, 0.203752,
		0.584864, 0.010588, 0.811063,
		44.892151, 36.510231, 39.341042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103523, 36.221348, 39.313660>,  <44.482746, 36.502819, 38.773296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103523, 36.221348, 39.313660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402481, 36.379028, 39.527576>,  <44.581856, 36.473637, 39.655926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402481, 36.379028, 39.527576>,  <44.103523, 36.221348, 39.313660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402481, 36.379028, 39.527576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653021, 0.287684, 0.700573,
		0.122313, -0.872838, 0.472434,
		0.747398, 0.394199, 0.534793,
		44.626701, 36.497288, 39.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052429, 35.922680, 40.017002>,  <44.103523, 36.221348, 39.313660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052429, 35.922680, 40.017002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251122, 36.268459, 40.047955>,  <44.370338, 36.475925, 40.066528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251122, 36.268459, 40.047955>,  <44.052429, 35.922680, 40.017002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251122, 36.268459, 40.047955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575085, 0.261054, 0.775325,
		0.650025, -0.429632, 0.626804,
		0.496734, 0.864446, 0.077384,
		44.400143, 36.527794, 40.071171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136097, 35.891289, 40.638222>,  <44.052429, 35.922680, 40.017002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136097, 35.891289, 40.638222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183632, 36.270218, 40.519257>,  <44.212154, 36.497574, 40.447876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183632, 36.270218, 40.519257>,  <44.136097, 35.891289, 40.638222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183632, 36.270218, 40.519257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604109, 0.306704, 0.735517,
		0.787991, 0.092263, 0.608735,
		0.118841, 0.947323, -0.297417,
		44.219284, 36.554413, 40.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245087, 36.180164, 41.299683>,  <44.136097, 35.891289, 40.638222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245087, 36.180164, 41.299683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133327, 36.468803, 41.046310>,  <44.066273, 36.641987, 40.894287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133327, 36.468803, 41.046310>,  <44.245087, 36.180164, 41.299683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133327, 36.468803, 41.046310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517028, 0.442828, 0.732520,
		0.809084, 0.532168, 0.249360,
		-0.279400, 0.721596, -0.633431,
		44.049507, 36.685284, 40.856281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152328, 36.702316, 41.738953>,  <44.245087, 36.180164, 41.299683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152328, 36.702316, 41.738953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000526, 36.874149, 41.411190>,  <43.909447, 36.977249, 41.214531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000526, 36.874149, 41.411190>,  <44.152328, 36.702316, 41.738953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000526, 36.874149, 41.411190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534891, 0.620773, 0.573178,
		0.754897, 0.655818, -0.005804,
		-0.379504, 0.429586, -0.819410,
		43.886677, 37.003025, 41.165367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209240, 37.376656, 41.859638>,  <44.152328, 36.702316, 41.738953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209240, 37.376656, 41.859638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904099, 37.343857, 41.603096>,  <43.721016, 37.324177, 41.449173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904099, 37.343857, 41.603096>,  <44.209240, 37.376656, 41.859638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904099, 37.343857, 41.603096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617083, 0.388485, 0.684316,
		0.193043, 0.917799, -0.346956,
		-0.762852, -0.081999, -0.641353,
		43.675243, 37.319256, 41.410690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878437, 38.006886, 41.782322>,  <44.209240, 37.376656, 41.859638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878437, 38.006886, 41.782322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596523, 37.758877, 41.644424>,  <43.427376, 37.610069, 41.561687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596523, 37.758877, 41.644424>,  <43.878437, 38.006886, 41.782322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596523, 37.758877, 41.644424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685990, 0.471771, 0.553941,
		-0.180817, 0.626899, -0.757828,
		-0.704786, -0.620024, -0.344742,
		43.385086, 37.572868, 41.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288456, 38.358963, 41.504433>,  <43.878437, 38.006886, 41.782322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288456, 38.358963, 41.504433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154736, 37.998440, 41.614624>,  <43.074505, 37.782124, 41.680737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154736, 37.998440, 41.614624>,  <43.288456, 38.358963, 41.504433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154736, 37.998440, 41.614624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654562, 0.432332, 0.620192,
		-0.678082, 0.027012, -0.734490,
		-0.334296, -0.901310, 0.275476,
		43.054447, 37.728046, 41.697266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595165, 38.359909, 41.302216>,  <43.288456, 38.358963, 41.504433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595165, 38.359909, 41.302216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.633274, 38.082939, 41.588284>,  <42.656139, 37.916756, 41.759926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.633274, 38.082939, 41.588284>,  <42.595165, 38.359909, 41.302216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633274, 38.082939, 41.588284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796941, 0.377451, 0.471610,
		-0.596497, -0.614880, -0.515863,
		0.095270, -0.692426, 0.715172,
		42.661854, 37.875210, 41.802834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936420, 38.082531, 41.267792>,  <42.595165, 38.359909, 41.302216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936420, 38.082531, 41.267792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.125950, 38.010303, 41.612556>,  <42.239666, 37.966969, 41.819416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.125950, 38.010303, 41.612556>,  <41.936420, 38.082531, 41.267792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125950, 38.010303, 41.612556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738643, 0.451421, 0.500626,
		-0.479481, -0.873851, 0.080518,
		0.473820, -0.180567, 0.861911,
		42.268097, 37.956135, 41.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.175003, 36.020363, 40.617104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875874, 35.769566, 40.529793>,  <38.696396, 35.619087, 40.477406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875874, 35.769566, 40.529793>,  <39.175003, 36.020363, 40.617104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875874, 35.769566, 40.529793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381823, -0.137219, -0.913993,
		0.543115, -0.766845, 0.342015,
		-0.747822, -0.626993, -0.218273,
		38.651527, 35.581467, 40.464310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403362, 35.369553, 40.334465>,  <39.175003, 36.020363, 40.617104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403362, 35.369553, 40.334465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021183, 35.358437, 40.216930>,  <38.791874, 35.351765, 40.146408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021183, 35.358437, 40.216930>,  <39.403362, 35.369553, 40.334465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021183, 35.358437, 40.216930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285519, -0.339271, -0.896312,
		-0.074778, -0.940278, 0.332092,
		-0.955451, -0.027794, -0.293837,
		38.734547, 35.350098, 40.128780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407993, 34.751881, 39.937157>,  <39.403362, 35.369553, 40.334465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407993, 34.751881, 39.937157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057549, 34.910698, 39.827774>,  <38.847282, 35.005989, 39.762142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057549, 34.910698, 39.827774>,  <39.407993, 34.751881, 39.937157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057549, 34.910698, 39.827774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217199, -0.181327, -0.959138,
		-0.430410, -0.899708, 0.072625,
		-0.876112, 0.397048, -0.273460,
		38.794716, 35.029812, 39.745735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077328, 34.291725, 39.501152>,  <39.407993, 34.751881, 39.937157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077328, 34.291725, 39.501152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858128, 34.620075, 39.436817>,  <38.726608, 34.817085, 39.398216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858128, 34.620075, 39.436817>,  <39.077328, 34.291725, 39.501152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858128, 34.620075, 39.436817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077596, -0.241330, -0.967336,
		-0.832873, -0.517618, 0.195945,
		-0.547998, 0.820872, -0.160832,
		38.693729, 34.866337, 39.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424522, 34.126736, 39.092632>,  <39.077328, 34.291725, 39.501152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424522, 34.126736, 39.092632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566425, 34.491608, 39.010578>,  <38.651566, 34.710529, 38.961346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566425, 34.491608, 39.010578>,  <38.424522, 34.126736, 39.092632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566425, 34.491608, 39.010578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105407, -0.178990, -0.978188,
		-0.928998, 0.368643, 0.032652,
		0.354757, 0.912176, -0.205139,
		38.672852, 34.765259, 38.949036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942719, 34.453197, 38.537125>,  <38.424522, 34.126736, 39.092632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942719, 34.453197, 38.537125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289696, 34.652023, 38.528389>,  <38.497883, 34.771317, 38.523148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289696, 34.652023, 38.528389>,  <37.942719, 34.453197, 38.537125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289696, 34.652023, 38.528389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084639, 0.104159, -0.990953,
		-0.490288, 0.861441, 0.132423,
		0.867441, 0.497061, -0.021844,
		38.549927, 34.801140, 38.521835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835320, 35.008633, 38.138668>,  <37.942719, 34.453197, 38.537125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835320, 35.008633, 38.138668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232620, 34.963764, 38.126904>,  <38.471001, 34.936844, 38.119843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232620, 34.963764, 38.126904>,  <37.835320, 35.008633, 38.138668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232620, 34.963764, 38.126904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056859, -0.250000, -0.966575,
		0.101071, 0.961726, -0.254691,
		0.993253, -0.112174, -0.029415,
		38.530598, 34.930111, 38.118080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166119, 35.536140, 37.555412>,  <37.835320, 35.008633, 38.138668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166119, 35.536140, 37.555412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465904, 35.274506, 37.596344>,  <38.645775, 35.117523, 37.620903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465904, 35.274506, 37.596344>,  <38.166119, 35.536140, 37.555412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465904, 35.274506, 37.596344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116356, -0.022022, -0.992963,
		0.651742, 0.756095, 0.059603,
		0.749462, -0.654092, 0.102329,
		38.690742, 35.078278, 37.627045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758945, 35.822884, 37.079819>,  <38.166119, 35.536140, 37.555412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758945, 35.822884, 37.079819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816532, 35.430347, 37.130810>,  <38.851082, 35.194828, 37.161404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816532, 35.430347, 37.130810>,  <38.758945, 35.822884, 37.079819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816532, 35.430347, 37.130810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249504, -0.088662, -0.964306,
		0.957613, 0.170632, 0.232083,
		0.143965, -0.981338, 0.127478,
		38.859722, 35.135944, 37.169052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463512, 35.765400, 36.786343>,  <38.758945, 35.822884, 37.079819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463512, 35.765400, 36.786343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307686, 35.397133, 36.796234>,  <39.214191, 35.176174, 36.802170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307686, 35.397133, 36.796234>,  <39.463512, 35.765400, 36.786343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307686, 35.397133, 36.796234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476832, -0.224586, -0.849819,
		0.787955, -0.319266, 0.526495,
		-0.389562, -0.920668, 0.024727,
		39.190819, 35.120934, 36.803654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005116, 35.351429, 36.682148>,  <39.463512, 35.765400, 36.786343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005116, 35.351429, 36.682148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674438, 35.155849, 36.570789>,  <39.476032, 35.038502, 36.503975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674438, 35.155849, 36.570789>,  <40.005116, 35.351429, 36.682148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674438, 35.155849, 36.570789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421451, -0.210308, -0.882128,
		0.372763, -0.846584, 0.379927,
		-0.826697, -0.488945, -0.278399,
		39.426430, 35.009167, 36.487270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043114, 34.616875, 36.440792>,  <40.005116, 35.351429, 36.682148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043114, 34.616875, 36.440792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720917, 34.748398, 36.243584>,  <39.527599, 34.827312, 36.125259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720917, 34.748398, 36.243584>,  <40.043114, 34.616875, 36.440792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720917, 34.748398, 36.243584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413196, -0.284750, -0.864978,
		-0.424802, -0.900445, 0.093500,
		-0.805489, 0.328811, -0.493023,
		39.479271, 34.847042, 36.095676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667976, 34.116512, 35.995846>,  <40.043114, 34.616875, 36.440792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667976, 34.116512, 35.995846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587635, 34.472660, 35.832428>,  <39.539429, 34.686348, 35.734379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587635, 34.472660, 35.832428>,  <39.667976, 34.116512, 35.995846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587635, 34.472660, 35.832428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190732, -0.373516, -0.907803,
		-0.960873, -0.260261, -0.094798,
		-0.200857, 0.890365, -0.408542,
		39.527378, 34.739769, 35.709866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047634, 33.480881, 36.456032>,  <39.667976, 34.116512, 35.995846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047634, 33.480881, 36.456032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959675, 33.090847, 36.444351>,  <39.906898, 32.856827, 36.437344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959675, 33.090847, 36.444351>,  <40.047634, 33.480881, 36.456032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959675, 33.090847, 36.444351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207043, -0.017394, -0.978177,
		0.953299, -0.221145, 0.205710,
		-0.219897, -0.975086, -0.029205,
		39.893707, 32.798321, 36.435589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616344, 33.104683, 36.130466>,  <40.047634, 33.480881, 36.456032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616344, 33.104683, 36.130466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260567, 32.923370, 36.107029>,  <40.047100, 32.814583, 36.092964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260567, 32.923370, 36.107029>,  <40.616344, 33.104683, 36.130466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260567, 32.923370, 36.107029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052778, 0.025488, -0.998281,
		0.453992, -0.891005, 0.001253,
		-0.889441, -0.453278, -0.058597,
		39.993732, 32.787388, 36.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139454, 33.347721, 36.581867>,  <40.616344, 33.104683, 36.130466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139454, 33.347721, 36.581867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469288, 33.122345, 36.561512>,  <41.667191, 32.987118, 36.549301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469288, 33.122345, 36.561512>,  <41.139454, 33.347721, 36.581867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469288, 33.122345, 36.561512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319776, -0.538403, 0.779657,
		-0.466683, -0.626627, -0.624136,
		0.824591, -0.563436, -0.050883,
		41.716663, 32.953312, 36.546246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969833, 32.626724, 36.537586>,  <41.139454, 33.347721, 36.581867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969833, 32.626724, 36.537586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334049, 32.666664, 36.698063>,  <41.552578, 32.690628, 36.794350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334049, 32.666664, 36.698063>,  <40.969833, 32.626724, 36.537586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334049, 32.666664, 36.698063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274881, -0.578622, 0.767878,
		0.308806, -0.809461, -0.499411,
		0.910538, 0.099847, 0.401188,
		41.607212, 32.696617, 36.818420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089706, 31.930588, 36.884083>,  <40.969833, 32.626724, 36.537586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089706, 31.930588, 36.884083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336891, 32.214054, 37.020267>,  <41.485203, 32.384132, 37.101978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336891, 32.214054, 37.020267>,  <41.089706, 31.930588, 36.884083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336891, 32.214054, 37.020267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218277, -0.261376, 0.940233,
		0.755299, -0.655345, -0.006835,
		0.617963, 0.708665, 0.340464,
		41.522282, 32.426655, 37.122406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451412, 31.579630, 37.366276>,  <41.089706, 31.930588, 36.884083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451412, 31.579630, 37.366276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484154, 31.963717, 37.473076>,  <41.503799, 32.194168, 37.537155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484154, 31.963717, 37.473076>,  <41.451412, 31.579630, 37.366276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484154, 31.963717, 37.473076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159686, -0.251799, 0.954514,
		0.983768, -0.120770, 0.132721,
		0.081858, 0.960214, 0.266997,
		41.508713, 32.251781, 37.553173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920288, 31.514332, 37.910576>,  <41.451412, 31.579630, 37.366276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920288, 31.514332, 37.910576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732830, 31.866190, 37.943066>,  <41.620354, 32.077305, 37.962559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732830, 31.866190, 37.943066>,  <41.920288, 31.514332, 37.910576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732830, 31.866190, 37.943066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087503, -0.137721, 0.986598,
		0.879041, 0.455258, 0.141514,
		-0.468646, 0.879644, 0.081226,
		41.592236, 32.130081, 37.967434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035362, 31.752638, 38.514336>,  <41.920288, 31.514332, 37.910576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035362, 31.752638, 38.514336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694546, 31.952772, 38.452774>,  <41.490055, 32.072853, 38.415836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694546, 31.952772, 38.452774>,  <42.035362, 31.752638, 38.514336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694546, 31.952772, 38.452774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349671, -0.325210, 0.878617,
		0.389556, 0.802434, 0.452046,
		-0.852042, 0.500338, -0.153901,
		41.438934, 32.102875, 38.406605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875328, 31.885548, 39.175381>,  <42.035362, 31.752638, 38.514336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875328, 31.885548, 39.175381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532326, 31.950867, 38.980228>,  <41.326527, 31.990057, 38.863136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532326, 31.950867, 38.980228>,  <41.875328, 31.885548, 39.175381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532326, 31.950867, 38.980228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496206, -0.012004, 0.868122,
		0.135904, 0.986504, 0.091322,
		-0.857502, 0.163296, -0.487878,
		41.275074, 31.999855, 38.833866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524967, 32.419071, 39.465477>,  <41.875328, 31.885548, 39.175381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524967, 32.419071, 39.465477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231693, 32.220711, 39.279350>,  <41.055729, 32.101692, 39.167675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231693, 32.220711, 39.279350>,  <41.524967, 32.419071, 39.465477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231693, 32.220711, 39.279350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535615, -0.000489, 0.844462,
		-0.419000, 0.868377, -0.265255,
		-0.733182, -0.495904, -0.465321,
		41.011738, 32.071938, 39.139755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892754, 32.765926, 39.662762>,  <41.524967, 32.419071, 39.465477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892754, 32.765926, 39.662762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806545, 32.394623, 39.541504>,  <40.754822, 32.171841, 39.468750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806545, 32.394623, 39.541504>,  <40.892754, 32.765926, 39.662762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806545, 32.394623, 39.541504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538318, -0.146064, 0.829987,
		-0.814717, 0.342065, -0.468217,
		-0.215520, -0.928255, -0.303141,
		40.741890, 32.116146, 39.450562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218258, 32.724972, 39.796173>,  <40.892754, 32.765926, 39.662762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218258, 32.724972, 39.796173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343674, 32.346855, 39.760139>,  <40.418922, 32.119984, 39.738518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343674, 32.346855, 39.760139>,  <40.218258, 32.724972, 39.796173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343674, 32.346855, 39.760139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397088, -0.216702, 0.891831,
		-0.862562, -0.243852, -0.443308,
		0.313541, -0.945292, -0.090088,
		40.437737, 32.063267, 39.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641323, 32.367676, 39.877583>,  <40.218258, 32.724972, 39.796173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641323, 32.367676, 39.877583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943165, 32.118603, 39.960373>,  <40.124268, 31.969158, 40.010048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943165, 32.118603, 39.960373>,  <39.641323, 32.367676, 39.877583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943165, 32.118603, 39.960373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409870, -0.200964, 0.889730,
		-0.512429, -0.756224, -0.406869,
		0.754601, -0.622687, 0.206974,
		40.169544, 31.931797, 40.022465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274036, 31.739338, 40.163902>,  <39.641323, 32.367676, 39.877583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274036, 31.739338, 40.163902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653690, 31.735294, 40.289783>,  <39.881481, 31.732868, 40.365311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653690, 31.735294, 40.289783>,  <39.274036, 31.739338, 40.163902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653690, 31.735294, 40.289783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309148, -0.219546, 0.925325,
		0.059736, -0.975550, -0.211505,
		0.949136, -0.010111, 0.314704,
		39.938431, 31.732262, 40.384193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284252, 31.432545, 40.761478>,  <39.274036, 31.739338, 40.163902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284252, 31.432545, 40.761478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666042, 31.548542, 40.789394>,  <39.895119, 31.618141, 40.806145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666042, 31.548542, 40.789394>,  <39.284252, 31.432545, 40.761478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666042, 31.548542, 40.789394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116726, 0.147829, 0.982101,
		0.274487, -0.945542, 0.174949,
		0.954480, 0.289995, 0.069792,
		39.952385, 31.635540, 40.810333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957561, 30.838646, 40.560429>,  <39.284252, 31.432545, 40.761478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957561, 30.838646, 40.560429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780815, 30.501366, 40.682915>,  <38.674767, 30.298998, 40.756409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780815, 30.501366, 40.682915>,  <38.957561, 30.838646, 40.560429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780815, 30.501366, 40.682915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598460, 0.022781, -0.800829,
		0.668284, -0.537114, -0.514689,
		-0.441862, -0.843202, 0.306217,
		38.648258, 30.248405, 40.774780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849689, 30.431019, 39.904724>,  <38.957561, 30.838646, 40.560429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849689, 30.431019, 39.904724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578865, 30.326778, 40.180019>,  <38.416370, 30.264235, 40.345196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578865, 30.326778, 40.180019>,  <38.849689, 30.431019, 39.904724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578865, 30.326778, 40.180019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710929, -0.010063, -0.703192,
		0.190181, -0.965393, -0.178457,
		-0.677061, -0.260604, 0.688240,
		38.375748, 30.248598, 40.386490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510838, 30.001364, 39.584530>,  <38.849689, 30.431019, 39.904724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510838, 30.001364, 39.584530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259911, 30.083305, 39.885067>,  <38.109356, 30.132469, 40.065388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259911, 30.083305, 39.885067>,  <38.510838, 30.001364, 39.584530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259911, 30.083305, 39.885067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767898, -0.002090, -0.640569,
		-0.129651, -0.978791, 0.158616,
		-0.627315, 0.204851, 0.751341,
		38.071716, 30.144760, 40.110470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966190, 29.572302, 39.567722>,  <38.510838, 30.001364, 39.584530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966190, 29.572302, 39.567722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803230, 29.867044, 39.783524>,  <37.705456, 30.043890, 39.913006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803230, 29.867044, 39.783524>,  <37.966190, 29.572302, 39.567722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803230, 29.867044, 39.783524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732299, 0.089406, -0.675088,
		-0.545680, -0.670109, 0.503177,
		-0.407395, 0.736859, 0.539507,
		37.681011, 30.088102, 39.945377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265427, 29.413376, 39.607113>,  <37.966190, 29.572302, 39.567722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265427, 29.413376, 39.607113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301304, 29.806339, 39.672634>,  <37.322830, 30.042116, 39.711945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301304, 29.806339, 39.672634>,  <37.265427, 29.413376, 39.607113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301304, 29.806339, 39.672634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710847, 0.178340, -0.680361,
		-0.697604, -0.055413, 0.714338,
		0.089694, 0.982407, 0.163801,
		37.328213, 30.101061, 39.721775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585625, 29.621012, 39.791580>,  <37.265427, 29.413376, 39.607113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585625, 29.621012, 39.791580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786087, 29.947714, 39.677208>,  <36.906364, 30.143734, 39.608585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786087, 29.947714, 39.677208>,  <36.585625, 29.621012, 39.791580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786087, 29.947714, 39.677208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759709, 0.257053, -0.597299,
		-0.414347, 0.516563, 0.749319,
		0.501157, 0.816754, -0.285929,
		36.936436, 30.192739, 39.591431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095215, 30.052330, 39.745140>,  <36.585625, 29.621012, 39.791580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095215, 30.052330, 39.745140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391315, 30.223576, 39.537781>,  <36.568977, 30.326323, 39.413364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391315, 30.223576, 39.537781>,  <36.095215, 30.052330, 39.745140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391315, 30.223576, 39.537781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651016, 0.263845, -0.711733,
		-0.167927, 0.864351, 0.474023,
		0.740256, 0.428115, -0.518399,
		36.613392, 30.352011, 39.382259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833637, 30.753397, 39.498058>,  <36.095215, 30.052330, 39.745140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833637, 30.753397, 39.498058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139668, 30.654606, 39.260181>,  <36.323284, 30.595331, 39.117455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139668, 30.654606, 39.260181>,  <35.833637, 30.753397, 39.498058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139668, 30.654606, 39.260181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559224, 0.203042, -0.803768,
		0.319262, 0.947510, 0.017225,
		0.765075, -0.246979, -0.594694,
		36.369190, 30.580511, 39.081772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911629, 31.273979, 39.091007>,  <35.833637, 30.753397, 39.498058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911629, 31.273979, 39.091007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087723, 30.963448, 38.910561>,  <36.193378, 30.777128, 38.802292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087723, 30.963448, 38.910561>,  <35.911629, 31.273979, 39.091007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087723, 30.963448, 38.910561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508774, 0.198296, -0.837752,
		0.739826, 0.598324, -0.307680,
		0.440235, -0.776330, -0.451116,
		36.219795, 30.730549, 38.775227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185276, 31.601355, 38.508217>,  <35.911629, 31.273979, 39.091007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185276, 31.601355, 38.508217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177719, 31.211136, 38.420624>,  <36.173183, 30.977005, 38.368069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177719, 31.211136, 38.420624>,  <36.185276, 31.601355, 38.508217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177719, 31.211136, 38.420624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539320, 0.194367, -0.819363,
		0.841889, 0.102617, -0.529805,
		-0.018896, -0.975547, -0.218979,
		36.172050, 30.918472, 38.354931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507378, 31.474077, 37.838608>,  <36.185276, 31.601355, 38.508217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507378, 31.474077, 37.838608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254463, 31.172171, 37.908520>,  <36.102715, 30.991026, 37.950466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254463, 31.172171, 37.908520>,  <36.507378, 31.474077, 37.838608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254463, 31.172171, 37.908520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472139, 0.196528, -0.859338,
		0.614251, -0.625863, -0.480616,
		-0.632282, -0.754767, 0.174777,
		36.064777, 30.945742, 37.960953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317207, 31.210421, 37.281677>,  <36.507378, 31.474077, 37.838608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317207, 31.210421, 37.281677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996223, 31.104063, 37.495350>,  <35.803631, 31.040249, 37.623554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996223, 31.104063, 37.495350>,  <36.317207, 31.210421, 37.281677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996223, 31.104063, 37.495350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579361, 0.132949, -0.804155,
		0.142844, -0.954776, -0.260764,
		-0.802456, -0.265945, 0.534169,
		35.755486, 31.024294, 37.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.426029, 30.124226, 44.206017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035133, 30.045498, 44.174358>,  <39.800594, 29.998260, 44.155365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035133, 30.045498, 44.174358>,  <40.426029, 30.124226, 44.206017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035133, 30.045498, 44.174358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140115, -0.318756, -0.937423,
		0.159277, -0.927177, 0.339079,
		-0.977240, -0.196820, -0.079141,
		39.741962, 29.986452, 44.150616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421841, 29.523998, 43.873001>,  <40.426029, 30.124226, 44.206017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421841, 29.523998, 43.873001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050236, 29.661530, 43.818283>,  <39.827271, 29.744049, 43.785454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050236, 29.661530, 43.818283>,  <40.421841, 29.523998, 43.873001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050236, 29.661530, 43.818283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008940, -0.348714, -0.937187,
		-0.369938, -0.871882, 0.320886,
		-0.929014, 0.343832, -0.136797,
		39.771530, 29.764677, 43.777245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074558, 28.963114, 43.544559>,  <40.421841, 29.523998, 43.873001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074558, 28.963114, 43.544559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856041, 29.288126, 43.463211>,  <39.724930, 29.483133, 43.414402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856041, 29.288126, 43.463211>,  <40.074558, 28.963114, 43.544559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856041, 29.288126, 43.463211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073025, -0.288084, -0.954817,
		-0.834405, -0.506759, 0.216713,
		-0.546293, 0.812529, -0.203372,
		39.692154, 29.531885, 43.402199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524014, 28.728443, 43.094521>,  <40.074558, 28.963114, 43.544559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524014, 28.728443, 43.094521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573059, 29.119652, 43.027069>,  <39.602486, 29.354378, 42.986599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573059, 29.119652, 43.027069>,  <39.524014, 28.728443, 43.094521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573059, 29.119652, 43.027069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096957, -0.157293, -0.982781,
		-0.987707, 0.136852, 0.075540,
		0.122613, 0.978024, -0.168628,
		39.609844, 29.413059, 42.976482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904778, 28.918139, 42.723553>,  <39.524014, 28.728443, 43.094521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904778, 28.918139, 42.723553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158596, 29.225103, 42.686840>,  <39.310886, 29.409283, 42.664814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158596, 29.225103, 42.686840>,  <38.904778, 28.918139, 42.723553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158596, 29.225103, 42.686840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465008, 0.284223, -0.838442,
		-0.617344, 0.574713, 0.537207,
		0.634550, 0.767413, -0.091783,
		39.348961, 29.455328, 42.659306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543053, 29.466692, 42.601810>,  <38.904778, 28.918139, 42.723553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543053, 29.466692, 42.601810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898159, 29.560846, 42.443588>,  <39.111225, 29.617338, 42.348656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898159, 29.560846, 42.443588>,  <38.543053, 29.466692, 42.601810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898159, 29.560846, 42.443588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454589, 0.313502, -0.833706,
		-0.072234, 0.919952, 0.385320,
		0.887767, 0.235384, -0.395554,
		39.164490, 29.631462, 42.324921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468967, 30.173538, 42.347340>,  <38.543053, 29.466692, 42.601810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468967, 30.173538, 42.347340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790802, 30.031597, 42.156876>,  <38.983902, 29.946432, 42.042599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790802, 30.031597, 42.156876>,  <38.468967, 30.173538, 42.347340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790802, 30.031597, 42.156876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300494, 0.448310, -0.841856,
		0.512202, 0.820425, 0.254071,
		0.804582, -0.354854, -0.476158,
		39.032177, 29.925140, 42.014027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738041, 30.720268, 41.975849>,  <38.468967, 30.173538, 42.347340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738041, 30.720268, 41.975849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866272, 30.393887, 41.783413>,  <38.943211, 30.198057, 41.667950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866272, 30.393887, 41.783413>,  <38.738041, 30.720268, 41.975849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866272, 30.393887, 41.783413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301113, 0.393764, -0.868493,
		0.898088, 0.423280, -0.119464,
		0.320575, -0.815956, -0.481090,
		38.962444, 30.149099, 41.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996090, 30.957506, 41.317417>,  <38.738041, 30.720268, 41.975849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996090, 30.957506, 41.317417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.911373, 30.568146, 41.282459>,  <38.860542, 30.334530, 41.261486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.911373, 30.568146, 41.282459>,  <38.996090, 30.957506, 41.317417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911373, 30.568146, 41.282459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359586, 0.160761, -0.919159,
		0.908759, -0.163245, -0.384069,
		-0.211791, -0.973400, -0.087393,
		38.847836, 30.276125, 41.256241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713650, 30.913414, 41.430470>,  <38.996090, 30.957506, 41.317417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713650, 30.913414, 41.430470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930824, 31.235748, 41.335945>,  <40.061131, 31.429150, 41.279228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930824, 31.235748, 41.335945>,  <39.713650, 30.913414, 41.430470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930824, 31.235748, 41.335945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264028, 0.103330, 0.958964,
		0.797188, -0.583051, -0.156662,
		0.542937, 0.805838, -0.236315,
		40.093704, 31.477499, 41.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417679, 30.894516, 41.819206>,  <39.713650, 30.913414, 41.430470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417679, 30.894516, 41.819206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293034, 31.267906, 41.748188>,  <40.218246, 31.491940, 41.705578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293034, 31.267906, 41.748188>,  <40.417679, 30.894516, 41.819206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293034, 31.267906, 41.748188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316488, 0.278140, 0.906903,
		0.895955, 0.226408, -0.382105,
		-0.311609, 0.933476, -0.177546,
		40.199551, 31.547949, 41.694923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945450, 31.311201, 42.224476>,  <40.417679, 30.894516, 41.819206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945450, 31.311201, 42.224476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664562, 31.580809, 42.132744>,  <40.496029, 31.742573, 42.077705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664562, 31.580809, 42.132744>,  <40.945450, 31.311201, 42.224476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664562, 31.580809, 42.132744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083648, 0.397977, 0.913574,
		0.707034, 0.622342, -0.335846,
		-0.702215, 0.674021, -0.229326,
		40.453899, 31.783014, 42.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182877, 32.063591, 42.172432>,  <40.945450, 31.311201, 42.224476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182877, 32.063591, 42.172432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.797523, 32.043167, 42.277714>,  <40.566311, 32.030910, 42.340885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.797523, 32.043167, 42.277714>,  <41.182877, 32.063591, 42.172432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797523, 32.043167, 42.277714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202691, 0.503897, 0.839645,
		-0.175503, 0.862253, -0.475098,
		-0.963387, -0.051063, 0.263206,
		40.508507, 32.027847, 42.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112816, 32.726433, 42.438595>,  <41.182877, 32.063591, 42.172432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112816, 32.726433, 42.438595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808220, 32.499973, 42.564835>,  <40.625462, 32.364098, 42.640579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808220, 32.499973, 42.564835>,  <41.112816, 32.726433, 42.438595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808220, 32.499973, 42.564835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020084, 0.466056, 0.884527,
		-0.647863, 0.679899, -0.343527,
		-0.761492, -0.566153, 0.315596,
		40.579773, 32.330128, 42.659512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747253, 33.127323, 42.866779>,  <41.112816, 32.726433, 42.438595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747253, 33.127323, 42.866779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.575432, 32.785484, 42.983494>,  <40.472340, 32.580379, 43.053524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.575432, 32.785484, 42.983494>,  <40.747253, 33.127323, 42.866779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575432, 32.785484, 42.983494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083278, 0.359231, 0.929526,
		-0.899191, 0.374986, -0.225479,
		-0.429558, -0.854599, 0.291789,
		40.446564, 32.529106, 43.071030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231415, 33.272141, 43.235168>,  <40.747253, 33.127323, 42.866779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231415, 33.272141, 43.235168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355255, 32.910332, 43.352467>,  <40.429558, 32.693245, 43.422844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355255, 32.910332, 43.352467>,  <40.231415, 33.272141, 43.235168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355255, 32.910332, 43.352467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026589, 0.300039, 0.953557,
		-0.950496, -0.303015, 0.068840,
		0.309597, -0.904521, 0.293242,
		40.448135, 32.638977, 43.440441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903969, 33.242851, 43.873699>,  <40.231415, 33.272141, 43.235168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903969, 33.242851, 43.873699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 32.948235, 43.878315>,  <40.336796, 32.771465, 43.881084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 32.948235, 43.878315>,  <39.903969, 33.242851, 43.873699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174484, 32.948235, 43.878315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101478, 0.108665, 0.988885,
		-0.729609, -0.667606, 0.148232,
		0.676293, -0.736542, 0.011535,
		40.377373, 32.727272, 43.881775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750294, 32.817158, 44.491238>,  <39.903969, 33.242851, 43.873699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750294, 32.817158, 44.491238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129917, 32.738018, 44.393139>,  <40.357689, 32.690533, 44.334278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129917, 32.738018, 44.393139>,  <39.750294, 32.817158, 44.491238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129917, 32.738018, 44.393139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265613, 0.083560, 0.960452,
		-0.169531, -0.976665, 0.131855,
		0.949057, -0.197849, -0.245249,
		40.414635, 32.678665, 44.319565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911678, 32.298267, 44.925491>,  <39.750294, 32.817158, 44.491238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911678, 32.298267, 44.925491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233513, 32.498154, 44.797169>,  <40.426613, 32.618088, 44.720177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233513, 32.498154, 44.797169>,  <39.911678, 32.298267, 44.925491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233513, 32.498154, 44.797169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431470, -0.120772, 0.894007,
		0.408008, -0.857726, -0.312785,
		0.804589, 0.499719, -0.320807,
		40.474888, 32.648071, 44.700928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475445, 31.956694, 45.251961>,  <39.911678, 32.298267, 44.925491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475445, 31.956694, 45.251961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610409, 32.301357, 45.100330>,  <40.691387, 32.508156, 45.009354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610409, 32.301357, 45.100330>,  <40.475445, 31.956694, 45.251961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610409, 32.301357, 45.100330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612063, 0.105141, 0.783789,
		0.715216, -0.496474, -0.491915,
		0.337410, 0.861661, -0.379071,
		40.711632, 32.559856, 44.986610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185841, 31.843248, 45.418716>,  <40.475445, 31.956694, 45.251961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185841, 31.843248, 45.418716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076653, 32.224583, 45.367126>,  <41.011139, 32.453384, 45.336170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076653, 32.224583, 45.367126>,  <41.185841, 31.843248, 45.418716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076653, 32.224583, 45.367126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526669, 0.260285, 0.809241,
		0.805051, 0.152970, -0.573143,
		-0.272970, 0.953337, -0.128978,
		40.994762, 32.510582, 45.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799347, 32.280956, 45.487938>,  <41.185841, 31.843248, 45.418716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799347, 32.280956, 45.487938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.472260, 32.495876, 45.570534>,  <41.276005, 32.624828, 45.620090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.472260, 32.495876, 45.570534>,  <41.799347, 32.280956, 45.487938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472260, 32.495876, 45.570534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449048, 0.371031, 0.812829,
		0.360121, 0.757391, -0.544675,
		-0.817721, 0.537302, 0.206489,
		41.226944, 32.657066, 45.632481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099510, 32.959206, 45.886051>,  <41.799347, 32.280956, 45.487938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099510, 32.959206, 45.886051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.707397, 32.991116, 45.958366>,  <41.472130, 33.010262, 46.001755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.707397, 32.991116, 45.958366>,  <42.099510, 32.959206, 45.886051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707397, 32.991116, 45.958366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193374, 0.198842, 0.960765,
		0.040699, 0.976779, -0.210348,
		-0.980281, 0.079778, 0.180791,
		41.413315, 33.015049, 46.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.883728, 33.422295, 47.417706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204857, 33.234928, 47.270161>,  <35.397533, 33.122509, 47.181633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204857, 33.234928, 47.270161>,  <34.883728, 33.422295, 47.417706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204857, 33.234928, 47.270161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332484, 0.161814, -0.929124,
		0.494904, 0.868563, -0.025833,
		0.802823, -0.468416, -0.368866,
		35.445705, 33.094402, 47.159500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199306, 33.880333, 46.854263>,  <34.883728, 33.422295, 47.417706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199306, 33.880333, 46.854263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318794, 33.504387, 46.788025>,  <35.390488, 33.278820, 46.748283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318794, 33.504387, 46.788025>,  <35.199306, 33.880333, 46.854263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318794, 33.504387, 46.788025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224539, 0.099431, -0.969379,
		0.927550, 0.326754, -0.181334,
		0.298718, -0.939865, -0.165596,
		35.408409, 33.222427, 46.738346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797688, 33.827805, 46.308716>,  <35.199306, 33.880333, 46.854263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797688, 33.827805, 46.308716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619003, 33.470470, 46.328350>,  <35.511791, 33.256069, 46.340130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619003, 33.470470, 46.328350>,  <35.797688, 33.827805, 46.308716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619003, 33.470470, 46.328350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287259, 0.091249, -0.953497,
		0.847309, -0.440037, -0.297379,
		-0.446710, -0.893331, 0.049089,
		35.484989, 33.202473, 46.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992512, 33.498646, 45.689476>,  <35.797688, 33.827805, 46.308716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992512, 33.498646, 45.689476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676720, 33.273163, 45.786610>,  <35.487244, 33.137875, 45.844891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676720, 33.273163, 45.786610>,  <35.992512, 33.498646, 45.689476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676720, 33.273163, 45.786610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372870, 0.126215, -0.919259,
		0.487541, -0.816277, -0.309832,
		-0.789475, -0.563704, 0.242830,
		35.439877, 33.104053, 45.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054794, 32.936573, 45.232426>,  <35.992512, 33.498646, 45.689476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054794, 32.936573, 45.232426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673512, 32.975010, 45.347080>,  <35.444740, 32.998074, 45.415871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673512, 32.975010, 45.347080>,  <36.054794, 32.936573, 45.232426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673512, 32.975010, 45.347080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289452, -0.016507, -0.957050,
		-0.087241, -0.995235, 0.043551,
		-0.953209, 0.096100, 0.286633,
		35.387550, 33.003838, 45.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748325, 32.679474, 44.711048>,  <36.054794, 32.936573, 45.232426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748325, 32.679474, 44.711048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428833, 32.822155, 44.904869>,  <35.237137, 32.907764, 45.021164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428833, 32.822155, 44.904869>,  <35.748325, 32.679474, 44.711048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428833, 32.822155, 44.904869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517267, 0.004298, -0.855813,
		-0.307353, -0.934208, 0.181077,
		-0.798730, 0.356702, 0.484556,
		35.189213, 32.929165, 45.050236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051216, 32.326733, 44.481434>,  <35.748325, 32.679474, 44.711048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051216, 32.326733, 44.481434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928959, 32.671646, 44.642952>,  <34.855602, 32.878593, 44.739864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928959, 32.671646, 44.642952>,  <35.051216, 32.326733, 44.481434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928959, 32.671646, 44.642952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567295, 0.175679, -0.804558,
		-0.764693, -0.474982, 0.435472,
		-0.305647, 0.862281, 0.403796,
		34.837265, 32.930332, 44.764091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321629, 32.347664, 44.296303>,  <35.051216, 32.326733, 44.481434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321629, 32.347664, 44.296303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425362, 32.722206, 44.390938>,  <34.487602, 32.946934, 44.447720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425362, 32.722206, 44.390938>,  <34.321629, 32.347664, 44.296303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425362, 32.722206, 44.390938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530080, 0.342777, -0.775576,
		-0.807317, 0.075723, 0.585240,
		0.259336, 0.936360, 0.236590,
		34.503162, 33.003113, 44.461914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693417, 32.633205, 44.154289>,  <34.321629, 32.347664, 44.296303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693417, 32.633205, 44.154289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978519, 32.912804, 44.177570>,  <34.149582, 33.080563, 44.191540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978519, 32.912804, 44.177570>,  <33.693417, 32.633205, 44.154289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978519, 32.912804, 44.177570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448466, 0.517949, -0.728428,
		-0.539310, 0.493090, 0.682647,
		0.712757, 0.698992, 0.058201,
		34.192345, 33.122501, 44.195030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379181, 33.302959, 44.198769>,  <33.693417, 32.633205, 44.154289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379181, 33.302959, 44.198769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743809, 33.315392, 44.034782>,  <33.962585, 33.322849, 43.936390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743809, 33.315392, 44.034782>,  <33.379181, 33.302959, 44.198769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743809, 33.315392, 44.034782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410559, 0.122043, -0.903630,
		0.021951, 0.992038, 0.124010,
		0.911570, 0.031078, -0.409969,
		34.017281, 33.324715, 43.911793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298271, 33.833160, 43.670658>,  <33.379181, 33.302959, 44.198769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298271, 33.833160, 43.670658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651737, 33.672596, 43.574326>,  <33.863819, 33.576256, 43.516525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651737, 33.672596, 43.574326>,  <33.298271, 33.833160, 43.670658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651737, 33.672596, 43.574326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200433, 0.140489, -0.969582,
		0.423036, 0.905059, 0.043689,
		0.883667, -0.401411, -0.240836,
		33.916836, 33.552174, 43.502075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701519, 34.355831, 43.366367>,  <33.298271, 33.833160, 43.670658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701519, 34.355831, 43.366367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862347, 34.012806, 43.238041>,  <33.958843, 33.806992, 43.161045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862347, 34.012806, 43.238041>,  <33.701519, 34.355831, 43.366367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862347, 34.012806, 43.238041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042009, 0.332742, -0.942081,
		0.914644, 0.392260, 0.097761,
		0.402070, -0.857563, -0.320819,
		33.982967, 33.755535, 43.141796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189407, 34.629135, 42.909409>,  <33.701519, 34.355831, 43.366367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189407, 34.629135, 42.909409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107876, 34.254879, 42.794151>,  <34.058956, 34.030327, 42.724998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107876, 34.254879, 42.794151>,  <34.189407, 34.629135, 42.909409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107876, 34.254879, 42.794151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010749, 0.296444, -0.954990,
		0.978947, -0.191560, -0.070482,
		-0.203831, -0.935642, -0.288144,
		34.046726, 33.974186, 42.707706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499332, 34.591923, 42.342796>,  <34.189407, 34.629135, 42.909409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499332, 34.591923, 42.342796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274380, 34.263702, 42.301964>,  <34.139408, 34.066769, 42.277466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274380, 34.263702, 42.301964>,  <34.499332, 34.591923, 42.342796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274380, 34.263702, 42.301964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049392, 0.089897, -0.994726,
		0.825401, -0.564458, -0.010028,
		-0.562383, -0.820552, -0.102080,
		34.105663, 34.017536, 42.271339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252636, 34.713333, 42.468121>,  <34.499332, 34.591923, 42.342796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252636, 34.713333, 42.468121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441532, 35.012291, 42.281193>,  <35.554871, 35.191666, 42.169037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441532, 35.012291, 42.281193>,  <35.252636, 34.713333, 42.468121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441532, 35.012291, 42.281193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264536, 0.385560, 0.883948,
		0.840839, -0.541060, -0.015636,
		0.472240, 0.747394, -0.467323,
		35.583206, 35.236507, 42.140995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985397, 34.753651, 42.688251>,  <35.252636, 34.713333, 42.468121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985397, 34.753651, 42.688251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878738, 35.116127, 42.556969>,  <35.814743, 35.333614, 42.478199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878738, 35.116127, 42.556969>,  <35.985397, 34.753651, 42.688251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878738, 35.116127, 42.556969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104280, 0.365659, 0.924888,
		0.958136, 0.212395, -0.192000,
		-0.266649, 0.906191, -0.328203,
		35.798744, 35.387985, 42.458508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514484, 35.350559, 42.829597>,  <35.985397, 34.753651, 42.688251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514484, 35.350559, 42.829597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147190, 35.508728, 42.820789>,  <35.926815, 35.603630, 42.815506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147190, 35.508728, 42.820789>,  <36.514484, 35.350559, 42.829597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147190, 35.508728, 42.820789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186207, 0.480148, 0.857196,
		0.349525, 0.783008, -0.514520,
		-0.918237, 0.395419, -0.022022,
		35.871719, 35.627354, 42.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624847, 36.088318, 43.091248>,  <36.514484, 35.350559, 42.829597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624847, 36.088318, 43.091248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226597, 36.065971, 43.121197>,  <35.987648, 36.052563, 43.139164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226597, 36.065971, 43.121197>,  <36.624847, 36.088318, 43.091248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226597, 36.065971, 43.121197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025891, 0.605060, 0.795759,
		-0.089753, 0.794218, -0.600968,
		-0.995628, -0.055862, 0.074869,
		35.927910, 36.049213, 43.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399204, 36.767471, 43.239517>,  <36.624847, 36.088318, 43.091248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399204, 36.767471, 43.239517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107292, 36.526871, 43.369507>,  <35.932144, 36.382511, 43.447502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107292, 36.526871, 43.369507>,  <36.399204, 36.767471, 43.239517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107292, 36.526871, 43.369507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014185, 0.488551, 0.872420,
		-0.683530, 0.632069, -0.365069,
		-0.729785, -0.601504, 0.324973,
		35.888355, 36.346420, 43.466999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877239, 37.200245, 43.549595>,  <36.399204, 36.767471, 43.239517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877239, 37.200245, 43.549595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867886, 36.833221, 43.708359>,  <35.862274, 36.613007, 43.803616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867886, 36.833221, 43.708359>,  <35.877239, 37.200245, 43.549595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867886, 36.833221, 43.708359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200071, 0.393279, 0.897387,
		-0.979502, -0.058424, -0.192774,
		-0.023385, -0.917561, 0.396906,
		35.860870, 36.557953, 43.827431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389324, 37.299297, 44.186283>,  <35.877239, 37.200245, 43.549595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389324, 37.299297, 44.186283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.545959, 36.934605, 44.235939>,  <35.639942, 36.715790, 44.265732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.545959, 36.934605, 44.235939>,  <35.389324, 37.299297, 44.186283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545959, 36.934605, 44.235939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033236, 0.120807, 0.992119,
		-0.919541, -0.392627, 0.017004,
		0.391587, -0.911729, 0.124136,
		35.663437, 36.661087, 44.273178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173111, 37.104324, 44.870941>,  <35.389324, 37.299297, 44.186283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173111, 37.104324, 44.870941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439907, 36.825527, 44.765621>,  <35.599987, 36.658249, 44.702431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439907, 36.825527, 44.765621>,  <35.173111, 37.104324, 44.870941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439907, 36.825527, 44.765621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193667, -0.179055, 0.964589,
		-0.719453, -0.694367, 0.015556,
		0.666993, -0.696989, -0.263297,
		35.640007, 36.616432, 44.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018864, 36.440636, 45.153194>,  <35.173111, 37.104324, 44.870941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018864, 36.440636, 45.153194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414635, 36.454010, 45.096760>,  <35.652100, 36.462036, 45.062897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414635, 36.454010, 45.096760>,  <35.018864, 36.440636, 45.153194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414635, 36.454010, 45.096760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144400, -0.315391, 0.937911,
		-0.013136, -0.948372, -0.316887,
		0.989432, 0.033438, -0.141088,
		35.711464, 36.464043, 45.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294460, 35.879074, 45.606461>,  <35.018864, 36.440636, 45.153194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294460, 35.879074, 45.606461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610313, 36.107243, 45.516037>,  <35.799824, 36.244144, 45.461784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610313, 36.107243, 45.516037>,  <35.294460, 35.879074, 45.606461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610313, 36.107243, 45.516037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395450, -0.191421, 0.898319,
		0.469149, -0.798735, -0.376725,
		0.789632, 0.570421, -0.226055,
		35.847202, 36.278370, 45.448219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912987, 35.503445, 45.849941>,  <35.294460, 35.879074, 45.606461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912987, 35.503445, 45.849941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037792, 35.882931, 45.829578>,  <36.112675, 36.110622, 45.817360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037792, 35.882931, 45.829578>,  <35.912987, 35.503445, 45.849941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037792, 35.882931, 45.829578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665680, -0.180067, 0.724186,
		0.677879, -0.259841, -0.687723,
		0.312009, 0.948714, -0.050907,
		36.131393, 36.167545, 45.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707939, 35.395885, 45.891895>,  <35.912987, 35.503445, 45.849941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707939, 35.395885, 45.891895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601311, 35.768711, 45.990044>,  <36.537334, 35.992405, 46.048931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601311, 35.768711, 45.990044>,  <36.707939, 35.395885, 45.891895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601311, 35.768711, 45.990044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686193, 0.004759, 0.727404,
		0.676816, 0.362273, -0.640842,
		-0.266569, 0.932060, 0.245369,
		36.521339, 36.048328, 46.063656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282883, 35.858917, 45.777527>,  <36.707939, 35.395885, 45.891895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282883, 35.858917, 45.777527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.033421, 36.022770, 46.043835>,  <36.883743, 36.121082, 46.203621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.033421, 36.022770, 46.043835>,  <37.282883, 35.858917, 45.777527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033421, 36.022770, 46.043835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752851, 0.085516, 0.652612,
		0.210395, 0.908235, -0.361723,
		-0.623658, 0.409630, 0.665773,
		36.846325, 36.145660, 46.243568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725555, 36.360905, 46.075783>,  <37.282883, 35.858917, 45.777527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725555, 36.360905, 46.075783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418671, 36.313126, 46.327850>,  <37.234539, 36.284458, 46.479092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418671, 36.313126, 46.327850>,  <37.725555, 36.360905, 46.075783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418671, 36.313126, 46.327850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641068, -0.174139, 0.747467,
		0.020451, 0.977449, 0.210178,
		-0.767211, -0.119452, 0.630173,
		37.188507, 36.277290, 46.516903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419083, 36.432533, 45.873531>,  <37.725555, 36.360905, 46.075783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419083, 36.432533, 45.873531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779709, 36.262844, 45.839573>,  <38.996086, 36.161030, 45.819199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779709, 36.262844, 45.839573>,  <38.419083, 36.432533, 45.873531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779709, 36.262844, 45.839573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149892, -0.122218, -0.981119,
		0.405839, 0.897272, -0.173776,
		0.901569, -0.424224, -0.084893,
		39.050179, 36.135578, 45.814106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840511, 36.878628, 45.494278>,  <38.419083, 36.432533, 45.873531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840511, 36.878628, 45.494278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.972591, 36.502670, 45.459499>,  <39.051838, 36.277096, 45.438633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.972591, 36.502670, 45.459499>,  <38.840511, 36.878628, 45.494278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972591, 36.502670, 45.459499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197493, 0.021276, -0.980073,
		0.923019, 0.340792, -0.178598,
		0.330202, -0.939898, -0.086943,
		39.071651, 36.220699, 45.433418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166912, 36.950859, 44.930344>,  <38.840511, 36.878628, 45.494278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166912, 36.950859, 44.930344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.119431, 36.555820, 44.971439>,  <39.090942, 36.318798, 44.996098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.119431, 36.555820, 44.971439>,  <39.166912, 36.950859, 44.930344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119431, 36.555820, 44.971439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102993, -0.090667, -0.990541,
		0.987574, -0.128160, -0.090954,
		-0.118701, -0.987600, 0.102740,
		39.083820, 36.259541, 45.002262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524452, 36.771725, 44.447128>,  <39.166912, 36.950859, 44.930344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524452, 36.771725, 44.447128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316322, 36.435486, 44.507324>,  <39.191444, 36.233742, 44.543442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316322, 36.435486, 44.507324>,  <39.524452, 36.771725, 44.447128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316322, 36.435486, 44.507324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128112, -0.097391, -0.986966,
		0.844302, -0.532826, -0.057016,
		-0.520329, -0.840602, 0.150489,
		39.160225, 36.183304, 44.552471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685841, 36.297512, 43.959686>,  <39.524452, 36.771725, 44.447128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685841, 36.297512, 43.959686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316166, 36.189198, 44.067425>,  <39.094360, 36.124210, 44.132069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316166, 36.189198, 44.067425>,  <39.685841, 36.297512, 43.959686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316166, 36.189198, 44.067425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224057, -0.186734, -0.956519,
		0.309305, -0.944355, 0.111907,
		-0.924191, -0.270783, 0.269347,
		39.038910, 36.107964, 44.148228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593910, 35.885406, 43.462242>,  <39.685841, 36.297512, 43.959686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593910, 35.885406, 43.462242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226303, 35.904469, 43.618767>,  <39.005737, 35.915905, 43.712681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226303, 35.904469, 43.618767>,  <39.593910, 35.885406, 43.462242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226303, 35.904469, 43.618767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383486, -0.337991, -0.859477,
		0.091300, -0.939942, 0.328898,
		-0.919022, 0.047657, 0.391314,
		38.950596, 35.918766, 43.736160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171413, 35.197834, 43.527832>,  <39.593910, 35.885406, 43.462242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171413, 35.197834, 43.527832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910263, 35.499260, 43.497124>,  <38.753574, 35.680115, 43.478699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910263, 35.499260, 43.497124>,  <39.171413, 35.197834, 43.527832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910263, 35.499260, 43.497124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512308, -0.513952, -0.688037,
		-0.557942, -0.409866, 0.721603,
		-0.652872, 0.753567, -0.076778,
		38.714401, 35.725330, 43.474091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500980, 34.864792, 43.367718>,  <39.171413, 35.197834, 43.527832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500980, 34.864792, 43.367718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465595, 35.251007, 43.269806>,  <38.444366, 35.482735, 43.211060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465595, 35.251007, 43.269806>,  <38.500980, 34.864792, 43.367718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465595, 35.251007, 43.269806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521237, -0.254282, -0.814648,
		-0.848815, 0.055526, 0.525766,
		-0.088459, 0.965535, -0.244781,
		38.439056, 35.540668, 43.196373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995087, 34.795322, 42.831982>,  <38.500980, 34.864792, 43.367718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995087, 34.795322, 42.831982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092495, 35.179729, 42.779610>,  <38.150940, 35.410374, 42.748188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092495, 35.179729, 42.779610>,  <37.995087, 34.795322, 42.831982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092495, 35.179729, 42.779610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313304, -0.049808, -0.948346,
		-0.917898, 0.271965, 0.288961,
		0.243524, 0.961017, -0.130926,
		38.165554, 35.468033, 42.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355255, 35.270943, 42.614342>,  <37.995087, 34.795322, 42.831982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355255, 35.270943, 42.614342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700176, 35.415092, 42.472038>,  <37.907127, 35.501583, 42.386658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700176, 35.415092, 42.472038>,  <37.355255, 35.270943, 42.614342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700176, 35.415092, 42.472038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347251, -0.090537, -0.933391,
		-0.368581, 0.928403, 0.047071,
		0.862302, 0.360376, -0.355760,
		37.958866, 35.523205, 42.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186489, 35.746891, 41.947472>,  <37.355255, 35.270943, 42.614342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186489, 35.746891, 41.947472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564777, 35.621284, 41.914005>,  <37.791752, 35.545921, 41.893925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564777, 35.621284, 41.914005>,  <37.186489, 35.746891, 41.947472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564777, 35.621284, 41.914005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075681, 0.037554, -0.996425,
		0.316039, 0.948673, 0.011750,
		0.945723, -0.314020, -0.083665,
		37.848495, 35.527077, 41.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404881, 36.091854, 41.334938>,  <37.186489, 35.746891, 41.947472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404881, 36.091854, 41.334938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705441, 35.835014, 41.395737>,  <37.885777, 35.680908, 41.432217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705441, 35.835014, 41.395737>,  <37.404881, 36.091854, 41.334938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705441, 35.835014, 41.395737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242499, 0.054486, -0.968620,
		0.613672, 0.764680, 0.196650,
		0.751400, -0.642102, 0.151998,
		37.930859, 35.642384, 41.441338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848610, 36.404339, 41.033554>,  <37.404881, 36.091854, 41.334938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848610, 36.404339, 41.033554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967911, 36.023888, 41.065544>,  <38.039490, 35.795616, 41.084740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967911, 36.023888, 41.065544>,  <37.848610, 36.404339, 41.033554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967911, 36.023888, 41.065544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494986, 0.082483, -0.864977,
		0.816111, 0.297564, 0.495397,
		0.298248, -0.951132, 0.079975,
		38.057384, 35.738548, 41.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508587, 36.455101, 40.829441>,  <37.848610, 36.404339, 41.033554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508587, 36.455101, 40.829441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428452, 36.065083, 40.791191>,  <38.380371, 35.831070, 40.768242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428452, 36.065083, 40.791191>,  <38.508587, 36.455101, 40.829441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428452, 36.065083, 40.791191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485984, -0.014153, -0.873853,
		0.850696, -0.221539, 0.476694,
		-0.200340, -0.975049, -0.095625,
		38.368351, 35.772568, 40.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.764376, 42.278805, 35.556686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551016, 42.387989, 35.236443>,  <27.423000, 42.453499, 35.044296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551016, 42.387989, 35.236443>,  <27.764376, 42.278805, 35.556686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551016, 42.387989, 35.236443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150462, -0.962024, -0.227752,
		-0.832374, -0.001022, 0.554214,
		-0.533400, 0.272963, -0.800610,
		27.390997, 42.469879, 34.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134977, 42.033592, 35.652142>,  <27.764376, 42.278805, 35.556686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134977, 42.033592, 35.652142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134518, 42.069607, 35.253765>,  <27.134243, 42.091213, 35.014740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134518, 42.069607, 35.253765>,  <27.134977, 42.033592, 35.652142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134518, 42.069607, 35.253765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439579, -0.894601, -0.080367,
		-0.898203, 0.437702, 0.040604,
		-0.001148, 0.090035, -0.995938,
		27.134174, 42.096619, 34.954983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390888, 42.055157, 35.237862>,  <27.134977, 42.033592, 35.652142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390888, 42.055157, 35.237862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.690825, 41.925735, 35.007019>,  <26.870787, 41.848083, 34.868515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.690825, 41.925735, 35.007019>,  <26.390888, 42.055157, 35.237862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690825, 41.925735, 35.007019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501348, -0.847051, -0.176506,
		-0.431727, 0.421682, -0.797368,
		0.749841, -0.323556, -0.577104,
		26.915777, 41.828671, 34.833889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122080, 41.438293, 34.968903>,  <26.390888, 42.055157, 35.237862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122080, 41.438293, 34.968903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.495644, 41.398762, 34.831470>,  <26.719782, 41.375042, 34.749012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.495644, 41.398762, 34.831470>,  <26.122080, 41.438293, 34.968903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495644, 41.398762, 34.831470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098337, -0.994973, 0.018903,
		-0.343721, 0.016133, -0.938933,
		0.933909, -0.098830, -0.343580,
		26.775816, 41.369114, 34.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137892, 40.948841, 34.355747>,  <26.122080, 41.438293, 34.968903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137892, 40.948841, 34.355747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530254, 40.943733, 34.433372>,  <26.765671, 40.940670, 34.479950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530254, 40.943733, 34.433372>,  <26.137892, 40.948841, 34.355747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530254, 40.943733, 34.433372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026416, -0.997341, 0.067915,
		0.192683, -0.071745, -0.978635,
		0.980906, -0.012765, 0.194066,
		26.824526, 40.939903, 34.491592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422890, 40.515564, 33.902199>,  <26.137892, 40.948841, 34.355747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422890, 40.515564, 33.902199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671682, 40.520630, 34.215370>,  <26.820959, 40.523670, 34.403275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671682, 40.520630, 34.215370>,  <26.422890, 40.515564, 33.902199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671682, 40.520630, 34.215370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001512, -0.999887, 0.014969,
		0.783029, -0.008127, -0.621932,
		0.621983, 0.012661, 0.782928,
		26.858276, 40.524429, 34.450249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848419, 39.984566, 33.782677>,  <26.422890, 40.515564, 33.902199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848419, 39.984566, 33.782677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937935, 40.040508, 34.168499>,  <26.991644, 40.074074, 34.399990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937935, 40.040508, 34.168499>,  <26.848419, 39.984566, 33.782677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937935, 40.040508, 34.168499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124446, -0.985650, 0.114045,
		0.966661, 0.094513, -0.237981,
		0.223787, 0.139859, 0.964551,
		27.005072, 40.082466, 34.457863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446415, 39.568172, 33.960083>,  <26.848419, 39.984566, 33.782677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446415, 39.568172, 33.960083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306911, 39.654922, 34.324791>,  <27.223209, 39.706974, 34.543617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306911, 39.654922, 34.324791>,  <27.446415, 39.568172, 33.960083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306911, 39.654922, 34.324791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241595, -0.919174, 0.311049,
		0.905539, 0.328760, 0.268171,
		-0.348757, 0.216879, 0.911774,
		27.202284, 39.719986, 34.598324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976227, 39.411953, 34.531120>,  <27.446415, 39.568172, 33.960083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976227, 39.411953, 34.531120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610750, 39.408981, 34.693657>,  <27.391464, 39.407196, 34.791180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610750, 39.408981, 34.693657>,  <27.976227, 39.411953, 34.531120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610750, 39.408981, 34.693657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161580, -0.924059, 0.346420,
		0.372911, 0.382178, 0.845504,
		-0.913690, -0.007433, 0.406344,
		27.336643, 39.406750, 34.815559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012621, 39.081306, 35.152710>,  <27.976227, 39.411953, 34.531120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012621, 39.081306, 35.152710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622589, 39.057579, 35.067200>,  <27.388569, 39.043343, 35.015896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622589, 39.057579, 35.067200>,  <28.012621, 39.081306, 35.152710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622589, 39.057579, 35.067200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051924, -0.875799, 0.479875,
		-0.215687, 0.479017, 0.850895,
		-0.975081, -0.059322, -0.213771,
		27.330065, 39.039783, 35.003067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811367, 38.660221, 35.683205>,  <28.012621, 39.081306, 35.152710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811367, 38.660221, 35.683205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498524, 38.640598, 35.434719>,  <27.310818, 38.628826, 35.285629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498524, 38.640598, 35.434719>,  <27.811367, 38.660221, 35.683205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498524, 38.640598, 35.434719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176923, -0.938392, 0.296849,
		-0.597500, 0.342075, 0.725244,
		-0.782108, -0.049055, -0.621210,
		27.263891, 38.625881, 35.248356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470995, 38.123581, 35.968151>,  <27.811367, 38.660221, 35.683205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470995, 38.123581, 35.968151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240566, 38.166107, 35.643967>,  <27.102308, 38.191624, 35.449455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240566, 38.166107, 35.643967>,  <27.470995, 38.123581, 35.968151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240566, 38.166107, 35.643967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327740, -0.938358, 0.109869,
		-0.748818, 0.328912, 0.575404,
		-0.576072, 0.106311, -0.810456,
		27.067745, 38.198002, 35.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827827, 37.920242, 36.206448>,  <27.470995, 38.123581, 35.968151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827827, 37.920242, 36.206448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834721, 37.886955, 35.807896>,  <26.838858, 37.866982, 35.568764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834721, 37.886955, 35.807896>,  <26.827827, 37.920242, 36.206448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834721, 37.886955, 35.807896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236828, -0.968512, 0.076795,
		-0.971399, 0.234648, -0.036401,
		0.017235, -0.083219, -0.996382,
		26.839891, 37.861988, 35.508980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196087, 37.594559, 36.091560>,  <26.827827, 37.920242, 36.206448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196087, 37.594559, 36.091560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.451265, 37.533363, 35.789665>,  <26.604372, 37.496647, 35.608528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.451265, 37.533363, 35.789665>,  <26.196087, 37.594559, 36.091560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451265, 37.533363, 35.789665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289698, -0.955751, -0.051136,
		-0.713514, 0.251267, -0.654036,
		0.637945, -0.152987, -0.754733,
		26.642649, 37.487469, 35.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763580, 37.236549, 35.572182>,  <26.196087, 37.594559, 36.091560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763580, 37.236549, 35.572182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.155098, 37.173347, 35.520035>,  <26.390009, 37.135426, 35.488747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.155098, 37.173347, 35.520035>,  <25.763580, 37.236549, 35.572182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155098, 37.173347, 35.520035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149372, -0.986038, 0.073603,
		-0.140181, -0.052568, -0.988729,
		0.978794, -0.158006, -0.130372,
		26.448736, 37.125946, 35.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863092, 36.824829, 34.873051>,  <25.763580, 37.236549, 35.572182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863092, 36.824829, 34.873051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153360, 36.767036, 35.142132>,  <26.327520, 36.732361, 35.303581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153360, 36.767036, 35.142132>,  <25.863092, 36.824829, 34.873051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153360, 36.767036, 35.142132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165075, -0.985707, -0.033641,
		0.667948, -0.086634, -0.739148,
		0.725669, -0.144485, 0.672702,
		26.371061, 36.723690, 35.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058027, 36.155788, 34.696537>,  <25.863092, 36.824829, 34.873051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058027, 36.155788, 34.696537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222195, 36.221531, 35.055321>,  <26.320696, 36.260975, 35.270592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222195, 36.221531, 35.055321>,  <26.058027, 36.155788, 34.696537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222195, 36.221531, 35.055321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147717, -0.958650, 0.243248,
		0.899854, -0.232331, -0.369169,
		0.410418, 0.164355, 0.896964,
		26.345320, 36.270836, 35.324409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380360, 35.555408, 34.812614>,  <26.058027, 36.155788, 34.696537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380360, 35.555408, 34.812614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.356968, 35.719658, 35.176586>,  <26.342934, 35.818207, 35.394970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.356968, 35.719658, 35.176586>,  <26.380360, 35.555408, 34.812614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356968, 35.719658, 35.176586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229313, -0.892639, 0.388085,
		0.971594, -0.185963, 0.146363,
		-0.058480, 0.410625, 0.909927,
		26.339424, 35.842846, 35.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874969, 35.158669, 35.273182>,  <26.380360, 35.555408, 34.812614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874969, 35.158669, 35.273182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586403, 35.325565, 35.494259>,  <26.413263, 35.425705, 35.626904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586403, 35.325565, 35.494259>,  <26.874969, 35.158669, 35.273182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586403, 35.325565, 35.494259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183464, -0.884745, 0.428448,
		0.667757, 0.207691, 0.714818,
		-0.721416, 0.417243, 0.552691,
		26.369978, 35.450737, 35.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925364, 34.784004, 35.892021>,  <26.874969, 35.158669, 35.273182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925364, 34.784004, 35.892021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567184, 34.961277, 35.875221>,  <26.352278, 35.067642, 35.865143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567184, 34.961277, 35.875221>,  <26.925364, 34.784004, 35.892021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567184, 34.961277, 35.875221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395887, -0.749622, 0.530416,
		0.203585, 0.491587, 0.846697,
		-0.895448, 0.443181, -0.042001,
		26.298550, 35.094231, 35.862621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545191, 34.414314, 36.249924>,  <26.925364, 34.784004, 35.892021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545191, 34.414314, 36.249924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908960, 34.268375, 36.170086>,  <28.127222, 34.180813, 36.122185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908960, 34.268375, 36.170086>,  <27.545191, 34.414314, 36.249924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908960, 34.268375, 36.170086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412795, 0.850230, 0.326665,
		0.050517, -0.379467, 0.923825,
		0.909422, -0.364848, -0.199593,
		28.181787, 34.158920, 36.110207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838932, 34.396862, 36.874058>,  <27.545191, 34.414314, 36.249924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838932, 34.396862, 36.874058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137863, 34.402630, 36.608337>,  <28.317223, 34.406090, 36.448906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137863, 34.402630, 36.608337>,  <27.838932, 34.396862, 36.874058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137863, 34.402630, 36.608337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251686, 0.919125, 0.303089,
		0.614943, -0.393701, 0.683260,
		0.747328, 0.014416, -0.664299,
		28.362061, 34.406956, 36.409046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373434, 34.586945, 37.228497>,  <27.838932, 34.396862, 36.874058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373434, 34.586945, 37.228497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.506498, 34.653603, 36.857212>,  <28.586336, 34.693596, 36.634441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.506498, 34.653603, 36.857212>,  <28.373434, 34.586945, 37.228497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506498, 34.653603, 36.857212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331840, 0.900631, 0.280618,
		0.882733, -0.401367, 0.244308,
		0.332662, 0.166640, -0.928206,
		28.606297, 34.703594, 36.578751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976154, 35.035358, 37.328510>,  <28.373434, 34.586945, 37.228497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976154, 35.035358, 37.328510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871819, 35.092819, 36.946655>,  <28.809217, 35.127296, 36.717545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871819, 35.092819, 36.946655>,  <28.976154, 35.035358, 37.328510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871819, 35.092819, 36.946655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165618, 0.980865, 0.102347,
		0.951070, -0.131409, -0.279637,
		-0.260837, 0.143652, -0.954635,
		28.793568, 35.135914, 36.660263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594139, 35.354977, 37.030869>,  <28.976154, 35.035358, 37.328510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594139, 35.354977, 37.030869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297544, 35.442970, 36.777317>,  <29.119589, 35.495766, 36.625187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297544, 35.442970, 36.777317>,  <29.594139, 35.354977, 37.030869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297544, 35.442970, 36.777317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350454, 0.932596, -0.086288,
		0.572174, -0.286128, -0.768601,
		-0.741484, 0.219988, -0.633882,
		29.075100, 35.508968, 36.587151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865286, 35.758011, 36.422173>,  <29.594139, 35.354977, 37.030869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865286, 35.758011, 36.422173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.478283, 35.847073, 36.470097>,  <29.246080, 35.900509, 36.498852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.478283, 35.847073, 36.470097>,  <29.865286, 35.758011, 36.422173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478283, 35.847073, 36.470097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223726, 0.974641, -0.004616,
		-0.117802, 0.022339, -0.992786,
		-0.967507, 0.222655, 0.119813,
		29.188030, 35.913868, 36.506039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805609, 36.298046, 36.043415>,  <29.865286, 35.758011, 36.422173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805609, 36.298046, 36.043415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499958, 36.306858, 36.301292>,  <29.316568, 36.312145, 36.456017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499958, 36.306858, 36.301292>,  <29.805609, 36.298046, 36.043415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499958, 36.306858, 36.301292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128482, 0.984589, 0.118646,
		-0.632141, 0.173491, -0.755181,
		-0.764127, 0.022026, 0.644689,
		29.270720, 36.313465, 36.494698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503242, 36.953247, 35.812080>,  <29.805609, 36.298046, 36.043415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503242, 36.953247, 35.812080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336964, 36.881233, 36.168682>,  <29.237196, 36.838024, 36.382645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336964, 36.881233, 36.168682>,  <29.503242, 36.953247, 35.812080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336964, 36.881233, 36.168682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063120, 0.972140, 0.225745,
		-0.907311, 0.150113, -0.392750,
		-0.415695, -0.180030, 0.891508,
		29.212255, 36.827225, 36.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936152, 37.404366, 35.909889>,  <29.503242, 36.953247, 35.812080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936152, 37.404366, 35.909889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043695, 37.283768, 36.275799>,  <29.108221, 37.211407, 36.495346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043695, 37.283768, 36.275799>,  <28.936152, 37.404366, 35.909889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043695, 37.283768, 36.275799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044750, 0.944809, 0.324551,
		-0.962140, -0.128194, 0.240527,
		0.268857, -0.301499, 0.914775,
		29.124353, 37.193317, 36.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536791, 37.794884, 36.302681>,  <28.936152, 37.404366, 35.909889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536791, 37.794884, 36.302681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809370, 37.666172, 36.565617>,  <28.972918, 37.588947, 36.723377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809370, 37.666172, 36.565617>,  <28.536791, 37.794884, 36.302681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809370, 37.666172, 36.565617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118307, 0.837917, 0.532821,
		-0.722241, -0.440857, 0.532929,
		0.681448, -0.321776, 0.657335,
		29.013805, 37.569641, 36.762817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207037, 37.791245, 37.000603>,  <28.536791, 37.794884, 36.302681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207037, 37.791245, 37.000603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605085, 37.812981, 37.033535>,  <28.843914, 37.826023, 37.053295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605085, 37.812981, 37.033535>,  <28.207037, 37.791245, 37.000603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605085, 37.812981, 37.033535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091387, 0.822092, 0.561973,
		-0.037142, -0.566756, 0.823048,
		0.995122, 0.054343, 0.082328,
		28.903622, 37.829285, 37.058235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339529, 37.861633, 37.749226>,  <28.207037, 37.791245, 37.000603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339529, 37.861633, 37.749226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669130, 38.003822, 37.572742>,  <28.866890, 38.089134, 37.466854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669130, 38.003822, 37.572742>,  <28.339529, 37.861633, 37.749226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669130, 38.003822, 37.572742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040999, 0.814076, 0.579310,
		0.565103, -0.459263, 0.685373,
		0.824001, 0.355469, -0.441207,
		28.916330, 38.110462, 37.440380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865507, 38.052944, 38.314201>,  <28.339529, 37.861633, 37.749226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865507, 38.052944, 38.314201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943710, 38.260975, 37.981625>,  <28.990633, 38.385792, 37.782078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943710, 38.260975, 37.981625>,  <28.865507, 38.052944, 38.314201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943710, 38.260975, 37.981625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135347, 0.854002, 0.502356,
		0.971317, 0.014318, 0.237356,
		0.195510, 0.520072, -0.831445,
		29.002363, 38.416996, 37.732193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214567, 38.610851, 38.590782>,  <28.865507, 38.052944, 38.314201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214567, 38.610851, 38.590782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111353, 38.710682, 38.217445>,  <29.049425, 38.770580, 37.993443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111353, 38.710682, 38.217445>,  <29.214567, 38.610851, 38.590782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111353, 38.710682, 38.217445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085583, 0.956357, 0.279386,
		0.962338, 0.151970, -0.225413,
		-0.258034, 0.249573, -0.933345,
		29.033943, 38.785553, 37.937443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662258, 39.242619, 38.318897>,  <29.214567, 38.610851, 38.590782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662258, 39.242619, 38.318897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401886, 39.287663, 38.018600>,  <29.245663, 39.314690, 37.838425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401886, 39.287663, 38.018600>,  <29.662258, 39.242619, 38.318897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401886, 39.287663, 38.018600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163420, 0.944964, 0.283438,
		0.741340, 0.307184, -0.596701,
		-0.650929, 0.112611, -0.750740,
		29.206608, 39.321445, 37.793377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852098, 39.860928, 37.997082>,  <29.662258, 39.242619, 38.318897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852098, 39.860928, 37.997082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472057, 39.771118, 37.910465>,  <29.244032, 39.717232, 37.858494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472057, 39.771118, 37.910465>,  <29.852098, 39.860928, 37.997082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472057, 39.771118, 37.910465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281101, 0.917200, 0.282358,
		0.135216, 0.329140, -0.934550,
		-0.950104, -0.224524, -0.216542,
		29.187025, 39.703762, 37.845501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570555, 40.261379, 37.302223>,  <29.852098, 39.860928, 37.997082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570555, 40.261379, 37.302223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254879, 40.165142, 37.528248>,  <29.065474, 40.107399, 37.663864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254879, 40.165142, 37.528248>,  <29.570555, 40.261379, 37.302223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254879, 40.165142, 37.528248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249459, 0.966332, 0.063037,
		-0.561202, -0.091211, -0.822638,
		-0.789191, -0.240590, 0.565061,
		29.018122, 40.092964, 37.697765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286560, 40.797798, 37.326614>,  <29.570555, 40.261379, 37.302223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286560, 40.797798, 37.326614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082769, 40.634190, 37.629436>,  <28.960495, 40.536022, 37.811131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082769, 40.634190, 37.629436>,  <29.286560, 40.797798, 37.326614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082769, 40.634190, 37.629436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443615, 0.878722, 0.176217,
		-0.737318, -0.246062, -0.629139,
		-0.509478, -0.409024, 0.757055,
		28.929926, 40.511482, 37.856552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582277, 41.001099, 37.250164>,  <29.286560, 40.797798, 37.326614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582277, 41.001099, 37.250164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652206, 40.894684, 37.629356>,  <28.694164, 40.830837, 37.856873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652206, 40.894684, 37.629356>,  <28.582277, 41.001099, 37.250164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652206, 40.894684, 37.629356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337666, 0.888217, 0.311533,
		-0.924888, -0.374563, 0.065450,
		0.174823, -0.266033, 0.947979,
		28.704653, 40.814873, 37.913750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995440, 41.365807, 37.688564>,  <28.582277, 41.001099, 37.250164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995440, 41.365807, 37.688564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278944, 41.272278, 37.954792>,  <28.449047, 41.216160, 38.114529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278944, 41.272278, 37.954792>,  <27.995440, 41.365807, 37.688564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278944, 41.272278, 37.954792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177826, 0.853784, 0.489317,
		-0.682666, -0.465165, 0.563550,
		0.708763, -0.233826, 0.665567,
		28.491573, 41.202129, 38.154461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776028, 41.482941, 38.354988>,  <27.995440, 41.365807, 37.688564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776028, 41.482941, 38.354988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174683, 41.492950, 38.386196>,  <28.413876, 41.498955, 38.404919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174683, 41.492950, 38.386196>,  <27.776028, 41.482941, 38.354988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174683, 41.492950, 38.386196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058418, 0.884688, 0.462508,
		-0.057448, -0.465511, 0.883176,
		0.996638, 0.025023, 0.078018,
		28.473675, 41.500458, 38.409603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769733, 41.613506, 39.187939>,  <27.776028, 41.482941, 38.354988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769733, 41.613506, 39.187939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427290, 41.801308, 39.101547>,  <27.221823, 41.913986, 39.049713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427290, 41.801308, 39.101547>,  <27.769733, 41.613506, 39.187939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427290, 41.801308, 39.101547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451474, 0.882832, 0.129537,
		0.251487, 0.013391, -0.967768,
		-0.856111, 0.469499, -0.215975,
		27.170456, 41.942158, 39.036755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.951065, 33.698917, 46.280575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621700, 33.481373, 46.345333>,  <41.424080, 33.350845, 46.384190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621700, 33.481373, 46.345333>,  <41.951065, 33.698917, 46.280575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621700, 33.481373, 46.345333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114106, 0.120790, 0.986098,
		-0.555854, 0.830438, -0.037402,
		-0.823412, -0.543859, 0.161899,
		41.374676, 33.318214, 46.393902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460373, 34.164356, 46.744972>,  <41.951065, 33.698917, 46.280575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460373, 34.164356, 46.744972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.367367, 33.777676, 46.787739>,  <41.311565, 33.545670, 46.813400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.367367, 33.777676, 46.787739>,  <41.460373, 34.164356, 46.744972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367367, 33.777676, 46.787739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118047, 0.081066, 0.989694,
		-0.965403, 0.242737, 0.095267,
		-0.232513, -0.966699, 0.106915,
		41.297611, 33.487667, 46.819813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906559, 34.098541, 47.237858>,  <41.460373, 34.164356, 46.744972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906559, 34.098541, 47.237858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064297, 33.731041, 47.245781>,  <41.158939, 33.510540, 47.250534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064297, 33.731041, 47.245781>,  <40.906559, 34.098541, 47.237858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064297, 33.731041, 47.245781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001862, 0.022353, 0.999748,
		-0.918960, -0.394211, 0.010525,
		0.394348, -0.918748, 0.019807,
		41.182602, 33.455418, 47.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417709, 33.695728, 47.657127>,  <40.906559, 34.098541, 47.237858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417709, 33.695728, 47.657127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773598, 33.513153, 47.660393>,  <40.987129, 33.403606, 47.662354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773598, 33.513153, 47.660393>,  <40.417709, 33.695728, 47.657127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773598, 33.513153, 47.660393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007264, 0.032040, 0.999460,
		-0.456453, -0.889178, 0.031822,
		0.889718, -0.456438, 0.008166,
		41.040512, 33.376221, 47.662842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306767, 33.432743, 48.221119>,  <40.417709, 33.695728, 47.657127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306767, 33.432743, 48.221119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698292, 33.384941, 48.154610>,  <40.933205, 33.356258, 48.114704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698292, 33.384941, 48.154610>,  <40.306767, 33.432743, 48.221119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698292, 33.384941, 48.154610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163614, -0.031835, 0.986011,
		-0.123129, -0.992323, -0.011607,
		0.978811, -0.119507, -0.166278,
		40.991936, 33.349091, 48.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511482, 32.822189, 48.574993>,  <40.306767, 33.432743, 48.221119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511482, 32.822189, 48.574993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852982, 33.027493, 48.539925>,  <41.057880, 33.150673, 48.518883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852982, 33.027493, 48.539925>,  <40.511482, 32.822189, 48.574993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852982, 33.027493, 48.539925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164374, -0.105906, 0.980696,
		0.494062, -0.851677, -0.174782,
		0.853747, 0.513254, -0.087670,
		41.109104, 33.181469, 48.513622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062908, 32.440109, 49.016472>,  <40.511482, 32.822189, 48.574993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062908, 32.440109, 49.016472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215118, 32.807953, 48.977432>,  <41.306446, 33.028660, 48.954010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215118, 32.807953, 48.977432>,  <41.062908, 32.440109, 49.016472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215118, 32.807953, 48.977432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377653, -0.058195, 0.924117,
		0.844143, -0.388508, -0.369437,
		0.380526, 0.919606, -0.097597,
		41.329277, 33.083836, 48.948154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880245, 32.485126, 49.097290>,  <41.062908, 32.440109, 49.016472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880245, 32.485126, 49.097290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.696922, 32.831211, 49.178654>,  <41.586929, 33.038860, 49.227470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.696922, 32.831211, 49.178654>,  <41.880245, 32.485126, 49.097290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696922, 32.831211, 49.178654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409881, 0.002676, 0.912135,
		0.788641, 0.501408, -0.355858,
		-0.458304, 0.865207, 0.203407,
		41.559429, 33.090775, 49.239677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242039, 32.679634, 49.590115>,  <41.880245, 32.485126, 49.097290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242039, 32.679634, 49.590115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936996, 32.937782, 49.607735>,  <41.753971, 33.092670, 49.618305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936996, 32.937782, 49.607735>,  <42.242039, 32.679634, 49.590115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936996, 32.937782, 49.607735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257103, 0.239916, 0.936130,
		0.593579, 0.725219, -0.348886,
		-0.762602, 0.645366, 0.044047,
		41.708218, 33.131393, 49.620949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530952, 33.287109, 49.911007>,  <42.242039, 32.679634, 49.590115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530952, 33.287109, 49.911007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.133713, 33.299667, 49.956192>,  <41.895367, 33.307201, 49.983303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.133713, 33.299667, 49.956192>,  <42.530952, 33.287109, 49.911007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133713, 33.299667, 49.956192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117117, 0.220186, 0.968402,
		0.005532, 0.974952, -0.222345,
		-0.993103, 0.031398, 0.112966,
		41.835781, 33.309086, 49.990082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309235, 34.007324, 50.194984>,  <42.530952, 33.287109, 49.911007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309235, 34.007324, 50.194984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031235, 33.734211, 50.285126>,  <41.864433, 33.570343, 50.339211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031235, 33.734211, 50.285126>,  <42.309235, 34.007324, 50.194984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031235, 33.734211, 50.285126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067364, 0.250215, 0.965844,
		-0.715845, 0.686445, -0.127905,
		-0.695002, -0.682779, 0.225357,
		41.822735, 33.529377, 50.352734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076454, 34.438339, 50.687054>,  <42.309235, 34.007324, 50.194984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076454, 34.438339, 50.687054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.891800, 34.087772, 50.741894>,  <41.781010, 33.877434, 50.774799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.891800, 34.087772, 50.741894>,  <42.076454, 34.438339, 50.687054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891800, 34.087772, 50.741894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218468, 0.262117, 0.939982,
		-0.859748, 0.403974, -0.312470,
		-0.461632, -0.876413, 0.137099,
		41.753311, 33.824848, 50.783024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732948, 34.386860, 51.309219>,  <42.076454, 34.438339, 50.687054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732948, 34.386860, 51.309219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449631, 34.620388, 51.467953>,  <41.279640, 34.760506, 51.563190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449631, 34.620388, 51.467953>,  <41.732948, 34.386860, 51.309219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449631, 34.620388, 51.467953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196785, 0.376569, -0.905246,
		-0.677934, -0.719271, -0.151835,
		-0.708294, 0.583819, 0.396831,
		41.237141, 34.795532, 51.587002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212112, 34.400059, 50.882439>,  <41.732948, 34.386860, 51.309219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212112, 34.400059, 50.882439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.104492, 34.727840, 51.084862>,  <41.039921, 34.924511, 51.206318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.104492, 34.727840, 51.084862>,  <41.212112, 34.400059, 50.882439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104492, 34.727840, 51.084862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304474, 0.426123, -0.851889,
		-0.913732, -0.383286, 0.134854,
		-0.269053, 0.819458, 0.506063,
		41.023777, 34.973679, 51.236679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533764, 34.429089, 50.773205>,  <41.212112, 34.400059, 50.882439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533764, 34.429089, 50.773205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.688293, 34.789577, 50.851738>,  <40.781013, 35.005871, 50.898857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.688293, 34.789577, 50.851738>,  <40.533764, 34.429089, 50.773205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688293, 34.789577, 50.851738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407236, 0.357650, -0.840384,
		-0.827592, 0.244710, 0.505181,
		0.386328, 0.901223, 0.196334,
		40.804192, 35.059944, 50.910637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171371, 34.813931, 50.422810>,  <40.533764, 34.429089, 50.773205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171371, 34.813931, 50.422810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.468788, 35.069824, 50.500660>,  <40.647240, 35.223362, 50.547371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.468788, 35.069824, 50.500660>,  <40.171371, 34.813931, 50.422810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468788, 35.069824, 50.500660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187979, 0.479296, -0.857286,
		-0.641722, 0.600843, 0.476635,
		0.743543, 0.639737, 0.194629,
		40.691853, 35.261745, 50.559048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861412, 35.535652, 50.352409>,  <40.171371, 34.813931, 50.422810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861412, 35.535652, 50.352409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259750, 35.556519, 50.322540>,  <40.498753, 35.569038, 50.304619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259750, 35.556519, 50.322540>,  <39.861412, 35.535652, 50.352409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259750, 35.556519, 50.322540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091030, 0.599620, -0.795091,
		0.003295, 0.798583, 0.601876,
		0.995843, 0.052169, -0.074671,
		40.558502, 35.572170, 50.300140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878803, 36.173298, 50.309479>,  <39.861412, 35.535652, 50.352409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878803, 36.173298, 50.309479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216011, 36.021893, 50.156616>,  <40.418335, 35.931049, 50.064899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216011, 36.021893, 50.156616>,  <39.878803, 36.173298, 50.309479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216011, 36.021893, 50.156616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071066, 0.625872, -0.776681,
		0.533161, 0.681918, 0.500726,
		0.843024, -0.378511, -0.382152,
		40.468918, 35.908340, 50.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241386, 36.669968, 50.053139>,  <39.878803, 36.173298, 50.309479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241386, 36.669968, 50.053139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.422947, 36.388901, 49.833961>,  <40.531883, 36.220261, 49.702457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.422947, 36.388901, 49.833961>,  <40.241386, 36.669968, 50.053139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422947, 36.388901, 49.833961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198332, 0.519839, -0.830922,
		0.868700, 0.485829, 0.096594,
		0.453899, -0.702665, -0.547939,
		40.559116, 36.178101, 49.669579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538525, 37.065609, 49.494484>,  <40.241386, 36.669968, 50.053139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538525, 37.065609, 49.494484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537025, 36.688156, 49.362099>,  <40.536125, 36.461685, 49.282669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537025, 36.688156, 49.362099>,  <40.538525, 37.065609, 49.494484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537025, 36.688156, 49.362099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248330, 0.321476, -0.913775,
		0.968668, 0.078766, -0.235537,
		-0.003746, -0.943636, -0.330964,
		40.535900, 36.405064, 49.262810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936817, 37.006973, 48.851551>,  <40.538525, 37.065609, 49.494484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936817, 37.006973, 48.851551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732689, 36.663376, 48.835072>,  <40.610210, 36.457218, 48.825184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732689, 36.663376, 48.835072>,  <40.936817, 37.006973, 48.851551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732689, 36.663376, 48.835072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063882, 0.085643, -0.994276,
		0.857607, -0.504770, -0.098579,
		-0.510323, -0.858995, -0.041203,
		40.579594, 36.405678, 48.822712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094898, 36.616871, 48.228970>,  <40.936817, 37.006973, 48.851551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094898, 36.616871, 48.228970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.735172, 36.467087, 48.319317>,  <40.519337, 36.377216, 48.373528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.735172, 36.467087, 48.319317>,  <41.094898, 36.616871, 48.228970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735172, 36.467087, 48.319317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187345, -0.136801, -0.972722,
		0.395148, -0.917095, 0.052873,
		-0.899311, -0.374463, 0.225870,
		40.465378, 36.354748, 48.387077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974339, 36.109947, 47.677017>,  <41.094898, 36.616871, 48.228970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974339, 36.109947, 47.677017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.618279, 36.143501, 47.856167>,  <40.404640, 36.163631, 47.963657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.618279, 36.143501, 47.856167>,  <40.974339, 36.109947, 47.677017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618279, 36.143501, 47.856167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450441, -0.310357, -0.837127,
		0.068781, -0.946912, 0.314050,
		-0.890153, 0.083883, 0.447874,
		40.351234, 36.168667, 47.990528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566139, 35.467346, 47.638741>,  <40.974339, 36.109947, 47.677017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566139, 35.467346, 47.638741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296726, 35.759811, 47.682114>,  <40.135078, 35.935291, 47.708138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296726, 35.759811, 47.682114>,  <40.566139, 35.467346, 47.638741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296726, 35.759811, 47.682114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453781, -0.293221, -0.841489,
		-0.583469, -0.615976, 0.529281,
		-0.673533, 0.731160, 0.108433,
		40.094666, 35.979160, 47.714645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917099, 35.144047, 47.486649>,  <40.566139, 35.467346, 47.638741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917099, 35.144047, 47.486649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850941, 35.535393, 47.436951>,  <39.811245, 35.770203, 47.407131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850941, 35.535393, 47.436951>,  <39.917099, 35.144047, 47.486649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850941, 35.535393, 47.436951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420006, -0.183864, -0.888700,
		-0.892322, -0.094805, 0.441332,
		-0.165399, 0.978369, -0.124247,
		39.801319, 35.828903, 47.399677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248253, 35.160938, 47.238487>,  <39.917099, 35.144047, 47.486649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248253, 35.160938, 47.238487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380222, 35.527668, 47.148525>,  <39.459404, 35.747707, 47.094547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380222, 35.527668, 47.148525>,  <39.248253, 35.160938, 47.238487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380222, 35.527668, 47.148525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435259, -0.063672, -0.898051,
		-0.837675, 0.394184, 0.378048,
		0.329926, 0.916823, -0.224908,
		39.479198, 35.802715, 47.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722950, 35.475002, 46.768597>,  <39.248253, 35.160938, 47.238487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722950, 35.475002, 46.768597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011860, 35.747532, 46.721085>,  <39.185207, 35.911049, 46.692577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011860, 35.747532, 46.721085>,  <38.722950, 35.475002, 46.768597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011860, 35.747532, 46.721085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261857, 0.110445, -0.958766,
		-0.640114, 0.723599, 0.258182,
		0.722278, 0.681326, -0.118782,
		39.228542, 35.951931, 46.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444283, 36.045162, 46.490898>,  <38.722950, 35.475002, 46.768597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444283, 36.045162, 46.490898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823540, 36.082138, 46.369255>,  <39.051094, 36.104324, 46.296268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823540, 36.082138, 46.369255>,  <38.444283, 36.045162, 46.490898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823540, 36.082138, 46.369255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295346, -0.097363, -0.950416,
		-0.117462, 0.990947, -0.065014,
		0.948142, 0.092436, -0.304109,
		39.107983, 36.109867, 46.278023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968067, 36.592834, 46.776863>,  <38.444283, 36.045162, 46.490898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968067, 36.592834, 46.776863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665340, 36.331429, 46.781681>,  <37.483704, 36.174583, 46.784573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665340, 36.331429, 46.781681>,  <37.968067, 36.592834, 46.776863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665340, 36.331429, 46.781681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390883, -0.437743, 0.809686,
		-0.523871, 0.617491, 0.586740,
		-0.756815, -0.653518, 0.012046,
		37.438297, 36.135372, 46.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038895, 36.286385, 47.355488>,  <37.968067, 36.592834, 46.776863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038895, 36.286385, 47.355488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743870, 36.049171, 47.226295>,  <37.566856, 35.906845, 47.148781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743870, 36.049171, 47.226295>,  <38.038895, 36.286385, 47.355488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743870, 36.049171, 47.226295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223308, -0.665578, 0.712137,
		-0.637291, 0.453119, 0.623333,
		-0.737559, -0.593034, -0.322982,
		37.522602, 35.871262, 47.129402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685055, 36.127110, 47.929707>,  <38.038895, 36.286385, 47.355488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685055, 36.127110, 47.929707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581715, 35.836380, 47.675156>,  <37.519711, 35.661942, 47.522423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581715, 35.836380, 47.675156>,  <37.685055, 36.127110, 47.929707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581715, 35.836380, 47.675156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109525, -0.676533, 0.728222,
		-0.959822, 0.118440, 0.254391,
		-0.258354, -0.726825, -0.636379,
		37.504208, 35.618332, 47.484241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344540, 35.709709, 48.382061>,  <37.685055, 36.127110, 47.929707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344540, 35.709709, 48.382061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390869, 35.482891, 48.055859>,  <37.418667, 35.346802, 47.860138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390869, 35.482891, 48.055859>,  <37.344540, 35.709709, 48.382061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390869, 35.482891, 48.055859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263994, -0.773923, 0.575631,
		-0.957544, -0.281961, 0.060055,
		0.115827, -0.567047, -0.815501,
		37.425617, 35.312778, 47.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022621, 35.106915, 48.569958>,  <37.344540, 35.709709, 48.382061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022621, 35.106915, 48.569958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264053, 35.002308, 48.268681>,  <37.408913, 34.939545, 48.087914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264053, 35.002308, 48.268681>,  <37.022621, 35.106915, 48.569958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264053, 35.002308, 48.268681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225978, -0.849828, 0.476158,
		-0.764608, -0.457605, -0.453842,
		0.603580, -0.261516, -0.753193,
		37.445126, 34.923855, 48.042721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792149, 34.453323, 48.406353>,  <37.022621, 35.106915, 48.569958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792149, 34.453323, 48.406353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177422, 34.483700, 48.303188>,  <37.408585, 34.501926, 48.241291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177422, 34.483700, 48.303188>,  <36.792149, 34.453323, 48.406353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177422, 34.483700, 48.303188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196696, -0.853005, 0.483418,
		-0.183286, -0.516348, -0.836535,
		0.963181, 0.075939, -0.257908,
		37.466377, 34.506481, 48.225815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035763, 33.745598, 48.327465>,  <36.792149, 34.453323, 48.406353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035763, 33.745598, 48.327465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374962, 33.947170, 48.393135>,  <37.578480, 34.068115, 48.432537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374962, 33.947170, 48.393135>,  <37.035763, 33.745598, 48.327465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374962, 33.947170, 48.393135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343799, -0.758768, 0.553239,
		0.403366, -0.412702, -0.816684,
		0.847996, 0.503933, 0.164174,
		37.629360, 34.098351, 48.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566536, 33.284042, 48.204781>,  <37.035763, 33.745598, 48.327465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566536, 33.284042, 48.204781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697044, 33.575802, 48.445286>,  <37.775349, 33.750858, 48.589588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697044, 33.575802, 48.445286>,  <37.566536, 33.284042, 48.204781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697044, 33.575802, 48.445286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515769, -0.670414, 0.533411,
		0.792167, 0.136076, -0.594940,
		0.326272, 0.729403, 0.601264,
		37.794926, 33.794624, 48.625664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451565, 33.013206, 48.890182>,  <37.566536, 33.284042, 48.204781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451565, 33.013206, 48.890182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113464, 32.948601, 49.093933>,  <36.910603, 32.909840, 49.216183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113464, 32.948601, 49.093933>,  <37.451565, 33.013206, 48.890182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113464, 32.948601, 49.093933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513925, -0.015428, -0.857696,
		0.146385, -0.986751, -0.069963,
		-0.845253, -0.161510, 0.509374,
		36.859890, 32.900146, 49.246746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231079, 32.350445, 48.670994>,  <37.451565, 33.013206, 48.890182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231079, 32.350445, 48.670994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912785, 32.537914, 48.824429>,  <36.721806, 32.650394, 48.916489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912785, 32.537914, 48.824429>,  <37.231079, 32.350445, 48.670994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912785, 32.537914, 48.824429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516333, -0.193950, -0.834136,
		-0.316544, -0.861815, 0.396327,
		-0.795739, 0.468678, 0.383590,
		36.674065, 32.678516, 48.939507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708004, 31.906336, 48.518963>,  <37.231079, 32.350445, 48.670994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708004, 31.906336, 48.518963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568573, 32.277271, 48.573421>,  <36.484913, 32.499832, 48.606098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568573, 32.277271, 48.573421>,  <36.708004, 31.906336, 48.518963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568573, 32.277271, 48.573421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484694, -0.054022, -0.873014,
		-0.802225, -0.370302, 0.468306,
		-0.348578, 0.927339, 0.136145,
		36.464001, 32.555473, 48.614265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052315, 31.813869, 48.371662>,  <36.708004, 31.906336, 48.518963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052315, 31.813869, 48.371662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099884, 32.210056, 48.343861>,  <36.128426, 32.447769, 48.327179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099884, 32.210056, 48.343861>,  <36.052315, 31.813869, 48.371662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099884, 32.210056, 48.343861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613939, 0.018337, -0.789141,
		-0.780343, 0.136523, 0.610267,
		0.118926, 0.990467, -0.069508,
		36.135563, 32.507198, 48.323009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334343, 32.119179, 48.249771>,  <36.052315, 31.813869, 48.371662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334343, 32.119179, 48.249771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593433, 32.389015, 48.108135>,  <35.748886, 32.550919, 48.023155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593433, 32.389015, 48.108135>,  <35.334343, 32.119179, 48.249771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593433, 32.389015, 48.108135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612209, 0.184218, -0.768937,
		-0.453488, 0.714836, 0.532314,
		0.647725, 0.674591, -0.354088,
		35.787750, 32.591393, 48.001907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848602, 32.592766, 47.847740>,  <35.334343, 32.119179, 48.249771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848602, 32.592766, 47.847740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213318, 32.686581, 47.712902>,  <35.432148, 32.742870, 47.632000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213318, 32.686581, 47.712902>,  <34.848602, 32.592766, 47.847740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213318, 32.686581, 47.712902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402812, 0.351098, -0.845265,
		-0.079895, 0.906489, 0.414603,
		0.911789, 0.234539, -0.337093,
		35.486855, 32.756943, 47.611774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.400990, 30.364071, 50.688858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467976, 30.757906, 50.668686>,  <40.508167, 30.994207, 50.656582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467976, 30.757906, 50.668686>,  <40.400990, 30.364071, 50.688858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467976, 30.757906, 50.668686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427472, 0.026426, -0.903642,
		-0.888383, 0.172881, 0.425309,
		0.167461, 0.984588, -0.050426,
		40.518215, 31.053282, 50.653557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713879, 30.675755, 50.470772>,  <40.400990, 30.364071, 50.688858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713879, 30.675755, 50.470772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.055111, 30.848837, 50.354141>,  <40.259850, 30.952686, 50.284161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.055111, 30.848837, 50.354141>,  <39.713879, 30.675755, 50.470772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055111, 30.848837, 50.354141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364627, 0.094650, -0.926331,
		-0.373233, 0.896552, 0.238521,
		0.853079, 0.432708, -0.291580,
		40.311035, 30.978649, 50.266666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418884, 31.043245, 49.986900>,  <39.713879, 30.675755, 50.470772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418884, 31.043245, 49.986900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.806351, 31.111542, 49.914749>,  <40.038830, 31.152519, 49.871456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.806351, 31.111542, 49.914749>,  <39.418884, 31.043245, 49.986900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806351, 31.111542, 49.914749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218273, 0.238628, -0.946263,
		-0.118523, 0.955983, 0.268418,
		0.968664, 0.170743, -0.180383,
		40.096951, 31.162764, 49.860634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379383, 31.551233, 49.532291>,  <39.418884, 31.043245, 49.986900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379383, 31.551233, 49.532291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737808, 31.377407, 49.496006>,  <39.952862, 31.273111, 49.474236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737808, 31.377407, 49.496006>,  <39.379383, 31.551233, 49.532291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737808, 31.377407, 49.496006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083074, 0.036580, -0.995872,
		0.436090, 0.899897, -0.003323,
		0.896060, -0.434566, -0.090710,
		40.006626, 31.247038, 49.468792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808495, 31.974058, 49.002918>,  <39.379383, 31.551233, 49.532291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808495, 31.974058, 49.002918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.939808, 31.596228, 49.003639>,  <40.018597, 31.369530, 49.004070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.939808, 31.596228, 49.003639>,  <39.808495, 31.974058, 49.002918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939808, 31.596228, 49.003639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105828, -0.038676, -0.993632,
		0.938632, 0.326002, -0.112659,
		0.328283, -0.944578, 0.001802,
		40.038292, 31.312855, 49.004181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456795, 31.856974, 48.545406>,  <39.808495, 31.974058, 49.002918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456795, 31.856974, 48.545406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.281670, 31.499752, 48.586922>,  <40.176594, 31.285419, 48.611832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.281670, 31.499752, 48.586922>,  <40.456795, 31.856974, 48.545406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281670, 31.499752, 48.586922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158111, -0.190125, -0.968945,
		0.885054, -0.407807, 0.224441,
		-0.437814, -0.893055, 0.103792,
		40.150326, 31.231836, 48.618061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730854, 31.398588, 47.987236>,  <40.456795, 31.856974, 48.545406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730854, 31.398588, 47.987236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.399887, 31.195240, 48.082684>,  <40.201309, 31.073231, 48.139954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.399887, 31.195240, 48.082684>,  <40.730854, 31.398588, 47.987236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399887, 31.195240, 48.082684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039901, -0.370615, -0.927929,
		0.560171, -0.777304, 0.286368,
		-0.827416, -0.508372, 0.238623,
		40.151661, 31.042728, 48.154270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807350, 30.815382, 47.586105>,  <40.730854, 31.398588, 47.987236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807350, 30.815382, 47.586105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.418663, 30.809809, 47.680401>,  <40.185452, 30.806465, 47.736980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.418663, 30.809809, 47.680401>,  <40.807350, 30.815382, 47.586105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418663, 30.809809, 47.680401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227281, -0.215860, -0.949604,
		0.064119, -0.976325, 0.206587,
		-0.971716, -0.013934, 0.235741,
		40.127148, 30.805630, 47.751122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658241, 30.145582, 47.422668>,  <40.807350, 30.815382, 47.586105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658241, 30.145582, 47.422668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.300575, 30.324656, 47.425632>,  <40.085976, 30.432100, 47.427410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.300575, 30.324656, 47.425632>,  <40.658241, 30.145582, 47.422668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300575, 30.324656, 47.425632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180224, -0.344706, -0.921248,
		-0.409878, -0.825077, 0.388906,
		-0.894158, 0.447689, 0.007411,
		40.032326, 30.458961, 47.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134079, 29.652952, 47.110126>,  <40.658241, 30.145582, 47.422668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134079, 29.652952, 47.110126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.911243, 29.985113, 47.113853>,  <39.777542, 30.184410, 47.116089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.911243, 29.985113, 47.113853>,  <40.134079, 29.652952, 47.110126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911243, 29.985113, 47.113853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443781, -0.288193, -0.848530,
		-0.701937, -0.476838, 0.529065,
		-0.557084, 0.830404, 0.009318,
		39.744118, 30.234234, 47.116650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430595, 29.478395, 47.010826>,  <40.134079, 29.652952, 47.110126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430595, 29.478395, 47.010826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.478405, 29.857403, 46.892220>,  <39.507092, 30.084808, 46.821056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.478405, 29.857403, 46.892220>,  <39.430595, 29.478395, 47.010826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478405, 29.857403, 46.892220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485792, -0.204647, -0.849780,
		-0.865864, 0.245615, 0.435836,
		0.119527, 0.947519, -0.296514,
		39.514263, 30.141659, 46.803265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846668, 29.663763, 46.699909>,  <39.430595, 29.478395, 47.010826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846668, 29.663763, 46.699909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.096672, 29.936535, 46.547943>,  <39.246674, 30.100199, 46.456764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.096672, 29.936535, 46.547943>,  <38.846668, 29.663763, 46.699909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096672, 29.936535, 46.547943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447621, -0.085638, -0.890113,
		-0.639530, 0.726386, 0.251722,
		0.625009, 0.681930, -0.379914,
		39.284176, 30.141113, 46.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356831, 30.185232, 46.880955>,  <38.846668, 29.663763, 46.699909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356831, 30.185232, 46.880955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052738, 30.030035, 47.089378>,  <37.870281, 29.936916, 47.214432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052738, 30.030035, 47.089378>,  <38.356831, 30.185232, 46.880955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052738, 30.030035, 47.089378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397340, 0.356858, 0.845443,
		-0.513972, 0.849772, -0.117129,
		-0.760232, -0.387994, 0.521064,
		37.824669, 29.913637, 47.245697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301285, 30.561373, 47.428551>,  <38.356831, 30.185232, 46.880955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301285, 30.561373, 47.428551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070812, 30.270283, 47.577381>,  <37.932529, 30.095629, 47.666679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070812, 30.270283, 47.577381>,  <38.301285, 30.561373, 47.428551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070812, 30.270283, 47.577381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411561, 0.134981, 0.901331,
		-0.706143, 0.672457, 0.221729,
		-0.576177, -0.727723, 0.372073,
		37.897961, 30.051966, 47.689003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023666, 30.858871, 48.015640>,  <38.301285, 30.561373, 47.428551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023666, 30.858871, 48.015640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.983551, 30.464285, 48.067524>,  <37.959480, 30.227533, 48.098656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.983551, 30.464285, 48.067524>,  <38.023666, 30.858871, 48.015640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983551, 30.464285, 48.067524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217473, 0.105484, 0.970350,
		-0.970901, 0.125522, 0.203951,
		-0.100287, -0.986467, 0.129712,
		37.953465, 30.168344, 48.106438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433762, 30.706705, 48.400173>,  <38.023666, 30.858871, 48.015640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433762, 30.706705, 48.400173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.645077, 30.376089, 48.477882>,  <37.771866, 30.177719, 48.524509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.645077, 30.376089, 48.477882>,  <37.433762, 30.706705, 48.400173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645077, 30.376089, 48.477882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002142, 0.230107, 0.973163,
		-0.849064, -0.513692, 0.123333,
		0.528286, -0.826542, 0.194276,
		37.803562, 30.128126, 48.536163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062798, 30.381927, 48.955498>,  <37.433762, 30.706705, 48.400173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062798, 30.381927, 48.955498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423714, 30.210325, 48.972591>,  <37.640263, 30.107365, 48.982849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423714, 30.210325, 48.972591>,  <37.062798, 30.381927, 48.955498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423714, 30.210325, 48.972591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119127, -0.152819, 0.981048,
		-0.414345, -0.890281, -0.188993,
		0.902290, -0.429006, 0.042736,
		37.694401, 30.081623, 48.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937450, 29.752920, 49.312637>,  <37.062798, 30.381927, 48.955498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937450, 29.752920, 49.312637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323704, 29.855778, 49.327785>,  <37.555454, 29.917492, 49.336872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323704, 29.855778, 49.327785>,  <36.937450, 29.752920, 49.312637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323704, 29.855778, 49.327785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026147, -0.048848, 0.998464,
		0.258597, -0.965138, -0.040446,
		0.965631, 0.257142, 0.037868,
		37.613392, 29.932920, 49.339146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209305, 29.377859, 49.877434>,  <36.937450, 29.752920, 49.312637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209305, 29.377859, 49.877434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494495, 29.653748, 49.826908>,  <37.665607, 29.819281, 49.796593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494495, 29.653748, 49.826908>,  <37.209305, 29.377859, 49.877434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494495, 29.653748, 49.826908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091375, 0.087215, 0.991990,
		0.695212, -0.718804, -0.000841,
		0.712973, 0.689720, -0.126313,
		37.708389, 29.860664, 49.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575466, 29.301497, 50.533695>,  <37.209305, 29.377859, 49.877434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575466, 29.301497, 50.533695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.701107, 29.651625, 50.386642>,  <37.776493, 29.861702, 50.298409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.701107, 29.651625, 50.386642>,  <37.575466, 29.301497, 50.533695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701107, 29.651625, 50.386642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142874, 0.339240, 0.929787,
		0.938576, -0.344576, -0.018503,
		0.314105, 0.875319, -0.367634,
		37.795338, 29.914221, 50.276352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174850, 29.469690, 50.925552>,  <37.575466, 29.301497, 50.533695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174850, 29.469690, 50.925552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033062, 29.817417, 50.787777>,  <37.947987, 30.026052, 50.705112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033062, 29.817417, 50.787777>,  <38.174850, 29.469690, 50.925552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033062, 29.817417, 50.787777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125693, 0.409309, 0.903697,
		0.926579, 0.277046, -0.254357,
		-0.354476, 0.869317, -0.344434,
		37.926720, 30.078213, 50.684448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611256, 29.980408, 51.134533>,  <38.174850, 29.469690, 50.925552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611256, 29.980408, 51.134533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.268856, 30.183279, 51.094456>,  <38.063416, 30.305002, 51.070412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.268856, 30.183279, 51.094456>,  <38.611256, 29.980408, 51.134533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268856, 30.183279, 51.094456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155121, 0.436841, 0.886063,
		0.493161, 0.742926, -0.452608,
		-0.855997, 0.507180, -0.100190,
		38.012058, 30.335434, 51.064400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726940, 30.769333, 51.248039>,  <38.611256, 29.980408, 51.134533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726940, 30.769333, 51.248039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329521, 30.739019, 51.281788>,  <38.091068, 30.720831, 51.302036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329521, 30.739019, 51.281788>,  <38.726940, 30.769333, 51.248039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329521, 30.739019, 51.281788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008567, 0.691680, 0.722153,
		-0.113088, 0.718217, -0.686569,
		-0.993548, -0.075785, 0.084374,
		38.031456, 30.716284, 51.307098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459698, 31.465900, 51.284588>,  <38.726940, 30.769333, 51.248039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459698, 31.465900, 51.284588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151573, 31.247980, 51.417141>,  <37.966698, 31.117228, 51.496674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151573, 31.247980, 51.417141>,  <38.459698, 31.465900, 51.284588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151573, 31.247980, 51.417141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183462, 0.687049, 0.703069,
		-0.610705, 0.480787, -0.629192,
		-0.770312, -0.544800, 0.331378,
		37.920479, 31.084539, 51.516556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955463, 31.998087, 51.504410>,  <38.459698, 31.465900, 51.284588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955463, 31.998087, 51.504410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866539, 31.648071, 51.676403>,  <37.813183, 31.438063, 51.779598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866539, 31.648071, 51.676403>,  <37.955463, 31.998087, 51.504410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866539, 31.648071, 51.676403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367696, 0.483702, 0.794249,
		-0.902983, 0.018466, -0.429280,
		-0.222310, -0.875038, 0.429985,
		37.799847, 31.385559, 51.805397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231728, 31.917870, 51.644299>,  <37.955463, 31.998087, 51.504410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231728, 31.917870, 51.644299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428696, 31.695456, 51.912132>,  <37.546879, 31.562008, 52.072834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428696, 31.695456, 51.912132>,  <37.231728, 31.917870, 51.644299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428696, 31.695456, 51.912132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382208, 0.553026, 0.740324,
		-0.781944, -0.620473, 0.059802,
		0.492423, -0.556035, 0.669585,
		37.576424, 31.528645, 52.113007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864155, 31.986044, 52.292229>,  <37.231728, 31.917870, 51.644299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864155, 31.986044, 52.292229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.586006, 32.250530, 52.404839>,  <36.419117, 32.409222, 52.472404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.586006, 32.250530, 52.404839>,  <36.864155, 31.986044, 52.292229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586006, 32.250530, 52.404839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131495, 0.502196, -0.854698,
		-0.706522, -0.557309, -0.436157,
		-0.695367, 0.661215, 0.281529,
		36.377396, 32.448895, 52.489296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287041, 31.896135, 51.864307>,  <36.864155, 31.986044, 52.292229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287041, 31.896135, 51.864307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275249, 32.267326, 52.012897>,  <36.268173, 32.490040, 52.102051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275249, 32.267326, 52.012897>,  <36.287041, 31.896135, 51.864307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275249, 32.267326, 52.012897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015747, 0.371156, -0.928437,
		-0.999441, -0.033222, 0.003671,
		-0.029482, 0.927976, 0.371472,
		36.266403, 32.545719, 52.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651516, 32.248459, 51.547867>,  <36.287041, 31.896135, 51.864307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651516, 32.248459, 51.547867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912834, 32.530819, 51.657341>,  <36.069626, 32.700237, 51.723026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912834, 32.530819, 51.657341>,  <35.651516, 32.248459, 51.547867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912834, 32.530819, 51.657341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019691, 0.377208, -0.925919,
		-0.756844, 0.599513, 0.260329,
		0.653299, 0.705902, 0.273683,
		36.108826, 32.742588, 51.739445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314613, 32.807251, 51.148502>,  <35.651516, 32.248459, 51.547867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314613, 32.807251, 51.148502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677376, 32.933491, 51.260159>,  <35.895035, 33.009235, 51.327152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677376, 32.933491, 51.260159>,  <35.314613, 32.807251, 51.148502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677376, 32.933491, 51.260159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172439, 0.326464, -0.929347,
		-0.384427, 0.890966, 0.241651,
		0.906907, 0.315596, 0.279138,
		35.949448, 33.028172, 51.343899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388992, 33.417103, 50.929729>,  <35.314613, 32.807251, 51.148502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388992, 33.417103, 50.929729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.769897, 33.296299, 50.947586>,  <35.998440, 33.223816, 50.958298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.769897, 33.296299, 50.947586>,  <35.388992, 33.417103, 50.929729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769897, 33.296299, 50.947586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179842, 0.436775, -0.881411,
		0.246697, 0.847359, 0.470237,
		0.952259, -0.302010, 0.044639,
		36.055576, 33.205696, 50.960979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791660, 33.921333, 50.597603>,  <35.388992, 33.417103, 50.929729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791660, 33.921333, 50.597603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057312, 33.624100, 50.630474>,  <36.216705, 33.445759, 50.650196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057312, 33.624100, 50.630474>,  <35.791660, 33.921333, 50.597603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057312, 33.624100, 50.630474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389133, 0.249729, -0.886685,
		0.638362, 0.620853, 0.455012,
		0.664131, -0.743086, 0.082177,
		36.256550, 33.401173, 50.655128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374088, 34.199291, 50.536697>,  <35.791660, 33.921333, 50.597603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374088, 34.199291, 50.536697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393593, 33.813927, 50.431274>,  <36.405296, 33.582710, 50.368019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393593, 33.813927, 50.431274>,  <36.374088, 34.199291, 50.536697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393593, 33.813927, 50.431274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249728, 0.267255, -0.930704,
		0.967088, -0.020434, 0.253622,
		0.048764, -0.963409, -0.263562,
		36.408222, 33.524902, 50.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757793, 34.683292, 50.078445>,  <36.374088, 34.199291, 50.536697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757793, 34.683292, 50.078445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.042339, 34.629208, 49.802567>,  <37.213066, 34.596756, 49.637039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.042339, 34.629208, 49.802567>,  <36.757793, 34.683292, 50.078445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042339, 34.629208, 49.802567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700036, 0.223661, 0.678178,
		0.062560, -0.965243, 0.253758,
		0.711362, -0.135213, -0.689696,
		37.255749, 34.588642, 49.595657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346825, 34.227352, 50.377918>,  <36.757793, 34.683292, 50.078445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346825, 34.227352, 50.377918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.498001, 34.455853, 50.086483>,  <37.588707, 34.592953, 49.911621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.498001, 34.455853, 50.086483>,  <37.346825, 34.227352, 50.377918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498001, 34.455853, 50.086483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703353, 0.334581, 0.627176,
		0.602045, -0.749486, -0.275340,
		0.377936, 0.571249, -0.728587,
		37.611382, 34.627228, 49.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065659, 34.108749, 50.390938>,  <37.346825, 34.227352, 50.377918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065659, 34.108749, 50.390938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.015068, 34.475716, 50.240017>,  <37.984715, 34.695896, 50.149464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.015068, 34.475716, 50.240017>,  <38.065659, 34.108749, 50.390938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015068, 34.475716, 50.240017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764650, 0.332468, 0.552064,
		0.631912, -0.218682, -0.743549,
		-0.126480, 0.917411, -0.377305,
		37.977123, 34.750938, 50.126823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693069, 34.372654, 50.387947>,  <38.065659, 34.108749, 50.390938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693069, 34.372654, 50.387947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.486225, 34.708817, 50.323059>,  <38.362118, 34.910515, 50.284126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.486225, 34.708817, 50.323059>,  <38.693069, 34.372654, 50.387947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486225, 34.708817, 50.323059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783436, 0.541072, 0.305727,
		0.344706, 0.031007, -0.938198,
		-0.517113, 0.840404, -0.162219,
		38.331093, 34.960938, 50.274395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232506, 34.897400, 50.106899>,  <38.693069, 34.372654, 50.387947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232506, 34.897400, 50.106899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.902798, 35.054497, 50.270035>,  <38.704971, 35.148754, 50.367916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.902798, 35.054497, 50.270035>,  <39.232506, 34.897400, 50.106899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902798, 35.054497, 50.270035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563905, 0.634125, 0.529052,
		-0.050839, 0.666064, -0.744160,
		-0.824273, 0.392739, 0.407835,
		38.655514, 35.172318, 50.392384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250813, 35.614250, 49.988365>,  <39.232506, 34.897400, 50.106899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250813, 35.614250, 49.988365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.998436, 35.612099, 50.298691>,  <38.847012, 35.610809, 50.484886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.998436, 35.612099, 50.298691>,  <39.250813, 35.614250, 49.988365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998436, 35.612099, 50.298691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580571, 0.660050, 0.476729,
		-0.514639, 0.751202, -0.413331,
		-0.630939, -0.005376, 0.775814,
		38.809155, 35.610485, 50.531433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076103, 36.321552, 50.084850>,  <39.250813, 35.614250, 49.988365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076103, 36.321552, 50.084850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.010021, 36.133045, 50.431400>,  <38.970371, 36.019939, 50.639332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.010021, 36.133045, 50.431400>,  <39.076103, 36.321552, 50.084850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010021, 36.133045, 50.431400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396801, 0.772454, 0.495847,
		-0.902914, 0.425698, 0.059384,
		-0.165210, -0.471271, 0.866377,
		38.960457, 35.991665, 50.691315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020855, 36.895111, 50.511192>,  <39.076103, 36.321552, 50.084850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020855, 36.895111, 50.511192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.067871, 36.590477, 50.766117>,  <39.096081, 36.407696, 50.919071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.067871, 36.590477, 50.766117>,  <39.020855, 36.895111, 50.511192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067871, 36.590477, 50.766117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458484, 0.610889, 0.645451,
		-0.880895, 0.216333, 0.420979,
		0.117539, -0.761587, 0.637315,
		39.103134, 36.362000, 50.957310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919632, 37.037323, 51.149971>,  <39.020855, 36.895111, 50.511192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919632, 37.037323, 51.149971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.226280, 36.781506, 51.172867>,  <39.410271, 36.628014, 51.186604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.226280, 36.781506, 51.172867>,  <38.919632, 37.037323, 51.149971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226280, 36.781506, 51.172867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489121, 0.639408, 0.593227,
		-0.415995, -0.426782, 0.802998,
		0.766621, -0.639543, 0.057243,
		39.456268, 36.589642, 51.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.712856, 34.055317, 37.476326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106651, 34.108845, 37.430931>,  <35.342930, 34.140961, 37.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106651, 34.108845, 37.430931>,  <34.712856, 34.055317, 37.476326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106651, 34.108845, 37.430931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095934, 0.131009, 0.986729,
		0.146924, -0.982306, 0.116137,
		0.984484, 0.133833, -0.113485,
		35.401997, 34.148991, 37.396885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106846, 33.638031, 37.925823>,  <34.712856, 34.055317, 37.476326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106846, 33.638031, 37.925823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366539, 33.932266, 37.848457>,  <35.522354, 34.108807, 37.802040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366539, 33.932266, 37.848457>,  <35.106846, 33.638031, 37.925823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366539, 33.932266, 37.848457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171979, 0.105730, 0.979410,
		0.740895, -0.669124, -0.057863,
		0.649229, 0.735592, -0.193410,
		35.561306, 34.152943, 37.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674793, 33.401173, 38.346050>,  <35.106846, 33.638031, 37.925823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674793, 33.401173, 38.346050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728966, 33.789127, 38.265083>,  <35.761471, 34.021900, 38.216503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728966, 33.789127, 38.265083>,  <35.674793, 33.401173, 38.346050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728966, 33.789127, 38.265083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056882, 0.196348, 0.978883,
		0.989153, -0.144085, -0.028578,
		0.135431, 0.969890, -0.202414,
		35.769596, 34.080093, 38.204361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149139, 33.655247, 38.875687>,  <35.674793, 33.401173, 38.346050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149139, 33.655247, 38.875687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033428, 34.002838, 38.715088>,  <35.964001, 34.211391, 38.618729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033428, 34.002838, 38.715088>,  <36.149139, 33.655247, 38.875687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033428, 34.002838, 38.715088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039940, 0.430017, 0.901937,
		0.956410, 0.244879, -0.159103,
		-0.289283, 0.868976, -0.401492,
		35.946644, 34.263531, 38.594639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690910, 34.200573, 39.032341>,  <36.149139, 33.655247, 38.875687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690910, 34.200573, 39.032341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342556, 34.380455, 38.953014>,  <36.133545, 34.488384, 38.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342556, 34.380455, 38.953014>,  <36.690910, 34.200573, 39.032341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342556, 34.380455, 38.953014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119234, 0.584756, 0.802399,
		0.476811, 0.675148, -0.562874,
		-0.870882, 0.449706, -0.198317,
		36.081291, 34.515366, 38.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741657, 35.014706, 39.116299>,  <36.690910, 34.200573, 39.032341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741657, 35.014706, 39.116299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364285, 34.913826, 39.202393>,  <36.137859, 34.853298, 39.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364285, 34.913826, 39.202393>,  <36.741657, 35.014706, 39.116299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364285, 34.913826, 39.202393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046756, 0.541469, 0.839419,
		-0.328240, 0.802002, -0.499050,
		-0.943436, -0.252198, 0.215230,
		36.081253, 34.838165, 39.266960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480270, 35.511642, 39.644524>,  <36.741657, 35.014706, 39.116299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480270, 35.511642, 39.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180141, 35.247311, 39.637363>,  <36.000065, 35.088711, 39.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180141, 35.247311, 39.637363>,  <36.480270, 35.511642, 39.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180141, 35.247311, 39.637363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183825, 0.182549, 0.965859,
		-0.635004, 0.727994, -0.258448,
		-0.750319, -0.660834, -0.017904,
		35.955048, 35.049061, 39.631992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942486, 35.882320, 39.813984>,  <36.480270, 35.511642, 39.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942486, 35.882320, 39.813984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829796, 35.514664, 39.924118>,  <35.762180, 35.294071, 39.990200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829796, 35.514664, 39.924118>,  <35.942486, 35.882320, 39.813984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829796, 35.514664, 39.924118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083820, 0.309442, 0.947217,
		-0.955826, 0.243778, -0.164221,
		-0.281727, -0.919140, 0.275339,
		35.745277, 35.238922, 40.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307159, 35.915001, 40.184734>,  <35.942486, 35.882320, 39.813984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307159, 35.915001, 40.184734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438210, 35.556343, 40.303860>,  <35.516842, 35.341148, 40.375336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438210, 35.556343, 40.303860>,  <35.307159, 35.915001, 40.184734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438210, 35.556343, 40.303860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099432, 0.280739, 0.954620,
		-0.939560, -0.342371, 0.002823,
		0.327627, -0.896642, 0.297814,
		35.536499, 35.287350, 40.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868431, 35.689949, 40.704346>,  <35.307159, 35.915001, 40.184734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868431, 35.689949, 40.704346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194939, 35.463947, 40.752483>,  <35.390842, 35.328346, 40.781368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194939, 35.463947, 40.752483>,  <34.868431, 35.689949, 40.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194939, 35.463947, 40.752483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103444, 0.062003, 0.992701,
		-0.568339, -0.822757, -0.007835,
		0.816266, -0.565001, 0.120348,
		35.439819, 35.294449, 40.788589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647835, 35.180645, 41.209702>,  <34.868431, 35.689949, 40.704346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647835, 35.180645, 41.209702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047409, 35.179356, 41.191261>,  <35.287151, 35.178581, 41.180199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047409, 35.179356, 41.191261>,  <34.647835, 35.180645, 41.209702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047409, 35.179356, 41.191261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046199, 0.090334, 0.994839,
		0.000953, -0.995906, 0.090386,
		0.998932, -0.003227, -0.046096,
		35.347088, 35.178387, 41.177433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878189, 34.774273, 41.774460>,  <34.647835, 35.180645, 41.209702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878189, 34.774273, 41.774460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203407, 35.001839, 41.724983>,  <35.398537, 35.138378, 41.695297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203407, 35.001839, 41.724983>,  <34.878189, 34.774273, 41.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203407, 35.001839, 41.724983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066229, 0.301456, 0.951177,
		0.578425, -0.765155, 0.282775,
		0.813042, 0.568913, -0.123695,
		35.447319, 35.172512, 41.687874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907799, 34.034801, 41.832733>,  <34.878189, 34.774273, 41.774460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907799, 34.034801, 41.832733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513775, 33.970436, 41.857250>,  <34.277359, 33.931816, 41.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513775, 33.970436, 41.857250>,  <34.907799, 34.034801, 41.832733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513775, 33.970436, 41.857250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073277, 0.069621, -0.994879,
		0.155824, -0.984510, -0.080372,
		-0.985063, -0.160915, 0.061293,
		34.218254, 33.922161, 41.875637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742363, 33.528278, 41.387402>,  <34.907799, 34.034801, 41.832733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742363, 33.528278, 41.387402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381683, 33.695518, 41.431454>,  <34.165276, 33.795864, 41.457886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381683, 33.695518, 41.431454>,  <34.742363, 33.528278, 41.387402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381683, 33.695518, 41.431454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152624, -0.069493, -0.985838,
		-0.404531, -0.905737, 0.126474,
		-0.901699, 0.418105, 0.110126,
		34.111176, 33.820950, 41.464493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252766, 32.998795, 41.158306>,  <34.742363, 33.528278, 41.387402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252766, 32.998795, 41.158306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053017, 33.343662, 41.124134>,  <33.933167, 33.550583, 41.103630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053017, 33.343662, 41.124134>,  <34.252766, 32.998795, 41.158306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053017, 33.343662, 41.124134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262259, -0.244400, -0.933536,
		-0.825743, -0.443774, 0.348157,
		-0.499368, 0.862168, -0.085428,
		33.903206, 33.602314, 41.098507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577366, 32.874950, 40.881077>,  <34.252766, 32.998795, 41.158306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577366, 32.874950, 40.881077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632927, 33.256855, 40.775902>,  <33.666264, 33.485996, 40.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632927, 33.256855, 40.775902>,  <33.577366, 32.874950, 40.881077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632927, 33.256855, 40.775902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490784, -0.164249, -0.855660,
		-0.860139, 0.247897, 0.445767,
		0.138899, 0.954761, -0.262941,
		33.674595, 33.543282, 40.697018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970196, 33.028793, 40.480503>,  <33.577366, 32.874950, 40.881077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970196, 33.028793, 40.480503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182682, 33.355797, 40.391521>,  <33.310173, 33.551998, 40.338135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182682, 33.355797, 40.391521>,  <32.970196, 33.028793, 40.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182682, 33.355797, 40.391521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276187, -0.081124, -0.957674,
		-0.800954, 0.570173, 0.182691,
		0.531219, 0.817510, -0.222451,
		33.342049, 33.601051, 40.324787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440880, 33.583618, 40.184856>,  <32.970196, 33.028793, 40.480503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440880, 33.583618, 40.184856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812351, 33.662899, 40.059460>,  <33.035233, 33.710468, 39.984222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812351, 33.662899, 40.059460>,  <32.440880, 33.583618, 40.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812351, 33.662899, 40.059460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310248, -0.048045, -0.949441,
		-0.203240, 0.978983, 0.016873,
		0.928676, 0.198200, -0.313492,
		33.090954, 33.722359, 39.965412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332222, 34.035763, 39.695168>,  <32.440880, 33.583618, 40.184856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332222, 34.035763, 39.695168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684376, 33.892742, 39.570534>,  <32.895668, 33.806931, 39.495754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684376, 33.892742, 39.570534>,  <32.332222, 34.035763, 39.695168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684376, 33.892742, 39.570534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321178, 0.033915, -0.946411,
		0.348954, 0.933279, -0.084978,
		0.880384, -0.357547, -0.311583,
		32.948490, 33.785477, 39.477058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413551, 34.356083, 39.091599>,  <32.332222, 34.035763, 39.695168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413551, 34.356083, 39.091599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684177, 34.061726, 39.080849>,  <32.846554, 33.885113, 39.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684177, 34.061726, 39.080849>,  <32.413551, 34.356083, 39.091599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684177, 34.061726, 39.080849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166898, -0.117691, -0.978925,
		0.717219, 0.666793, -0.202445,
		0.676566, -0.735891, -0.026876,
		32.887146, 33.840958, 39.072784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765770, 34.505665, 38.428959>,  <32.413551, 34.356083, 39.091599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765770, 34.505665, 38.428959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843079, 34.123856, 38.519753>,  <32.889465, 33.894768, 38.574230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843079, 34.123856, 38.519753>,  <32.765770, 34.505665, 38.428959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843079, 34.123856, 38.519753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122823, -0.253065, -0.959621,
		0.973426, 0.157592, -0.166149,
		0.193275, -0.954528, 0.226985,
		32.901062, 33.837498, 38.587849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160755, 34.175976, 37.765034>,  <32.765770, 34.505665, 38.428959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160755, 34.175976, 37.765034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025970, 33.865753, 37.978565>,  <32.945099, 33.679619, 38.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025970, 33.865753, 37.978565>,  <33.160755, 34.175976, 37.765034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025970, 33.865753, 37.978565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248333, -0.473698, -0.844950,
		0.908179, -0.417280, -0.032980,
		-0.336959, -0.775557, 0.533827,
		32.924881, 33.633087, 38.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364006, 33.574856, 37.348194>,  <33.160755, 34.175976, 37.765034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364006, 33.574856, 37.348194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072182, 33.464848, 37.598667>,  <32.897087, 33.398842, 37.748951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072182, 33.464848, 37.598667>,  <33.364006, 33.574856, 37.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072182, 33.464848, 37.598667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507456, -0.396150, -0.765215,
		0.458512, -0.876031, 0.149454,
		-0.729558, -0.275019, 0.626187,
		32.853313, 33.382343, 37.786522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139805, 32.897625, 37.061424>,  <33.364006, 33.574856, 37.348194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139805, 32.897625, 37.061424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832970, 32.990482, 37.300652>,  <32.648869, 33.046196, 37.444187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832970, 32.990482, 37.300652>,  <33.139805, 32.897625, 37.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832970, 32.990482, 37.300652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623713, -0.488100, -0.610525,
		0.150187, -0.841349, 0.519207,
		-0.767089, 0.232143, 0.598066,
		32.602844, 33.060127, 37.480072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792858, 32.254559, 37.234406>,  <33.139805, 32.897625, 37.061424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792858, 32.254559, 37.234406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537258, 32.562176, 37.240856>,  <32.383900, 32.746746, 37.244724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537258, 32.562176, 37.240856>,  <32.792858, 32.254559, 37.234406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537258, 32.562176, 37.240856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607913, -0.492050, -0.623161,
		-0.471296, -0.408007, 0.781927,
		-0.639001, 0.769037, 0.016132,
		32.345558, 32.792889, 37.245693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025360, 32.073360, 37.561882>,  <32.792858, 32.254559, 37.234406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025360, 32.073360, 37.561882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075817, 32.354538, 37.281895>,  <32.106091, 32.523243, 37.113903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075817, 32.354538, 37.281895>,  <32.025360, 32.073360, 37.561882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075817, 32.354538, 37.281895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478651, -0.574910, -0.663604,
		-0.868897, 0.418749, 0.263945,
		0.126139, 0.702941, -0.699973,
		32.113659, 32.565422, 37.071903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498646, 31.798754, 37.974655>,  <32.025360, 32.073360, 37.561882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498646, 31.798754, 37.974655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454269, 31.420357, 37.852814>,  <32.427643, 31.193317, 37.779709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454269, 31.420357, 37.852814>,  <32.498646, 31.798754, 37.974655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454269, 31.420357, 37.852814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685846, -0.294694, 0.665411,
		-0.719241, -0.135091, 0.681501,
		-0.110943, -0.945995, -0.304607,
		32.420986, 31.136559, 37.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543480, 31.468163, 38.561108>,  <32.498646, 31.798754, 37.974655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543480, 31.468163, 38.561108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640690, 31.218637, 38.263973>,  <32.699017, 31.068922, 38.085693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640690, 31.218637, 38.263973>,  <32.543480, 31.468163, 38.561108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640690, 31.218637, 38.263973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757825, -0.355926, 0.546825,
		-0.605508, -0.695828, 0.386241,
		0.243023, -0.623810, -0.742832,
		32.713596, 31.031494, 38.041122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346386, 30.777117, 38.727936>,  <32.543480, 31.468163, 38.561108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346386, 30.777117, 38.727936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659157, 30.786798, 38.478779>,  <32.846821, 30.792608, 38.329285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659157, 30.786798, 38.478779>,  <32.346386, 30.777117, 38.727936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659157, 30.786798, 38.478779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523989, -0.566804, 0.635743,
		-0.337672, -0.823497, -0.455885,
		0.781930, 0.024206, -0.622897,
		32.893734, 30.794060, 38.291908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619904, 30.160788, 38.826885>,  <32.346386, 30.777117, 38.727936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619904, 30.160788, 38.826885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924171, 30.390041, 38.704971>,  <33.106731, 30.527594, 38.631821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924171, 30.390041, 38.704971>,  <32.619904, 30.160788, 38.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924171, 30.390041, 38.704971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550727, -0.321241, 0.770392,
		0.343629, -0.753869, -0.560000,
		0.760670, 0.573136, -0.304788,
		33.152374, 30.561983, 38.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289543, 29.797531, 38.814548>,  <32.619904, 30.160788, 38.826885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289543, 29.797531, 38.814548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450100, 30.163204, 38.792099>,  <33.546436, 30.382608, 38.778629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450100, 30.163204, 38.792099>,  <33.289543, 29.797531, 38.814548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450100, 30.163204, 38.792099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494380, -0.164674, 0.853505,
		0.771019, -0.370337, -0.518054,
		0.401395, 0.914184, -0.056120,
		33.570518, 30.437460, 38.775265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099751, 29.759415, 38.842659>,  <33.289543, 29.797531, 38.814548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099751, 29.759415, 38.842659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964985, 30.107946, 38.985359>,  <33.884125, 30.317066, 39.070980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964985, 30.107946, 38.985359>,  <34.099751, 29.759415, 38.842659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964985, 30.107946, 38.985359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517233, -0.145321, 0.843417,
		0.786738, 0.468683, -0.401720,
		-0.336916, 0.871331, 0.356748,
		33.863911, 30.369347, 39.092384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671906, 30.044886, 39.211590>,  <34.099751, 29.759415, 38.842659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671906, 30.044886, 39.211590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361359, 30.266922, 39.331013>,  <34.175030, 30.400143, 39.402668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361359, 30.266922, 39.331013>,  <34.671906, 30.044886, 39.211590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361359, 30.266922, 39.331013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383499, 0.040112, 0.922670,
		0.500188, 0.830824, -0.244017,
		-0.776364, 0.555089, 0.298557,
		34.128448, 30.433449, 39.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993919, 30.629248, 39.576847>,  <34.671906, 30.044886, 39.211590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993919, 30.629248, 39.576847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622536, 30.619490, 39.725101>,  <34.399708, 30.613634, 39.814053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622536, 30.619490, 39.725101>,  <34.993919, 30.629248, 39.576847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622536, 30.619490, 39.725101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367484, -0.205555, 0.907030,
		0.054058, 0.978342, 0.199814,
		-0.928457, -0.024396, 0.370637,
		34.343998, 30.612171, 39.836292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006218, 30.994331, 40.191570>,  <34.993919, 30.629248, 39.576847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006218, 30.994331, 40.191570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670097, 30.785398, 40.249611>,  <34.468426, 30.660038, 40.284435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670097, 30.785398, 40.249611>,  <35.006218, 30.994331, 40.191570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670097, 30.785398, 40.249611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186814, -0.027737, 0.982004,
		-0.508907, 0.852291, 0.120886,
		-0.840306, -0.522332, 0.145104,
		34.418007, 30.628698, 40.293140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423996, 31.470703, 40.591366>,  <35.006218, 30.994331, 40.191570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423996, 31.470703, 40.591366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341972, 31.081844, 40.636768>,  <34.292759, 30.848530, 40.664009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341972, 31.081844, 40.636768>,  <34.423996, 31.470703, 40.591366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341972, 31.081844, 40.636768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171074, 0.078581, 0.982120,
		-0.963683, 0.220811, 0.150195,
		-0.205060, -0.972146, 0.113502,
		34.280453, 30.790201, 40.670818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994888, 31.394320, 41.138485>,  <34.423996, 31.470703, 40.591366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994888, 31.394320, 41.138485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141018, 31.022455, 41.119434>,  <34.228695, 30.799337, 41.108002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141018, 31.022455, 41.119434>,  <33.994888, 31.394320, 41.138485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141018, 31.022455, 41.119434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124892, -0.001752, 0.992169,
		-0.922464, -0.368411, 0.115467,
		0.365324, -0.929661, -0.047628,
		34.250614, 30.743557, 41.105145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913311, 31.202190, 41.769848>,  <33.994888, 31.394320, 41.138485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913311, 31.202190, 41.769848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155746, 30.913324, 41.636497>,  <34.301208, 30.740005, 41.556488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155746, 30.913324, 41.636497>,  <33.913311, 31.202190, 41.769848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155746, 30.913324, 41.636497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281159, -0.197556, 0.939106,
		-0.744048, -0.662911, 0.083306,
		0.606087, -0.722163, -0.333375,
		34.337574, 30.696676, 41.536484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866573, 30.632669, 42.242413>,  <33.913311, 31.202190, 41.769848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866573, 30.632669, 42.242413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212223, 30.574476, 42.049698>,  <34.419613, 30.539560, 41.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212223, 30.574476, 42.049698>,  <33.866573, 30.632669, 42.242413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212223, 30.574476, 42.049698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440943, -0.242592, 0.864129,
		-0.242592, -0.959158, -0.145482,
		-0.864129, 0.145482, 0.481785,
		34.471462, 30.530832, 41.905163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199211, 30.138893, 42.650318>,  <33.866573, 30.632669, 42.242413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199211, 30.138893, 42.650318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500221, 30.267231, 42.420273>,  <34.680828, 30.344234, 42.282246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500221, 30.267231, 42.420273>,  <34.199211, 30.138893, 42.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500221, 30.267231, 42.420273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646033, -0.190123, 0.739253,
		0.127844, -0.927853, -0.350351,
		0.752527, 0.320847, -0.575117,
		34.725979, 30.363485, 42.247738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746773, 29.610788, 42.670910>,  <34.199211, 30.138893, 42.650318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746773, 29.610788, 42.670910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921410, 29.953245, 42.560337>,  <35.026192, 30.158718, 42.493996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921410, 29.953245, 42.560337>,  <34.746773, 29.610788, 42.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921410, 29.953245, 42.560337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775854, -0.202745, 0.597450,
		0.455456, -0.475310, -0.752755,
		0.436591, 0.856140, -0.276429,
		35.052387, 30.210087, 42.477409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417923, 29.443302, 42.615345>,  <34.746773, 29.610788, 42.670910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417923, 29.443302, 42.615345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435383, 29.841600, 42.647800>,  <35.445858, 30.080580, 42.667274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435383, 29.841600, 42.647800>,  <35.417923, 29.443302, 42.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435383, 29.841600, 42.647800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804864, -0.083166, 0.587604,
		0.591853, 0.039661, -0.805070,
		0.043649, 0.995746, 0.081143,
		35.448479, 30.140324, 42.672142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113491, 29.649572, 42.675594>,  <35.417923, 29.443302, 42.615345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113491, 29.649572, 42.675594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901497, 29.946749, 42.839134>,  <35.774300, 30.125055, 42.937256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901497, 29.946749, 42.839134>,  <36.113491, 29.649572, 42.675594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901497, 29.946749, 42.839134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488678, -0.126453, 0.863252,
		0.693047, 0.657302, -0.296042,
		-0.529982, 0.742943, 0.408847,
		35.742504, 30.169632, 42.961788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609943, 30.119034, 42.858883>,  <36.113491, 29.649572, 42.675594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609943, 30.119034, 42.858883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282589, 30.188107, 43.078125>,  <36.086174, 30.229551, 43.209671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282589, 30.188107, 43.078125>,  <36.609943, 30.119034, 42.858883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282589, 30.188107, 43.078125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558439, 0.013929, 0.829429,
		0.135594, 0.984879, -0.107832,
		-0.818389, 0.172683, 0.548106,
		36.037071, 30.239912, 43.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722706, 30.679115, 43.287895>,  <36.609943, 30.119034, 42.858883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722706, 30.679115, 43.287895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417465, 30.480433, 43.453281>,  <36.234322, 30.361223, 43.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417465, 30.480433, 43.453281>,  <36.722706, 30.679115, 43.287895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417465, 30.480433, 43.453281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435803, 0.076922, 0.896749,
		-0.477227, 0.864502, 0.157767,
		-0.763106, -0.496708, 0.413462,
		36.188534, 30.331421, 43.577320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797440, 30.932461, 43.932304>,  <36.722706, 30.679115, 43.287895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797440, 30.932461, 43.932304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551884, 30.620502, 43.981129>,  <36.404549, 30.433327, 44.010422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551884, 30.620502, 43.981129>,  <36.797440, 30.932461, 43.932304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551884, 30.620502, 43.981129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234310, -0.032375, 0.971623,
		-0.753812, 0.625072, 0.202613,
		-0.613894, -0.779895, 0.122056,
		36.367714, 30.386534, 44.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312881, 31.032482, 44.539429>,  <36.797440, 30.932461, 43.932304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312881, 31.032482, 44.539429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298210, 30.636976, 44.481468>,  <36.289406, 30.399672, 44.446693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298210, 30.636976, 44.481468>,  <36.312881, 31.032482, 44.539429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298210, 30.636976, 44.481468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155956, -0.148886, 0.976479,
		-0.987083, 0.013217, 0.159665,
		-0.036678, -0.988766, -0.144902,
		36.287209, 30.340347, 44.437996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828205, 30.722301, 45.008839>,  <36.312881, 31.032482, 44.539429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828205, 30.722301, 45.008839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073574, 30.421206, 44.913254>,  <36.220795, 30.240547, 44.855904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073574, 30.421206, 44.913254>,  <35.828205, 30.722301, 45.008839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073574, 30.421206, 44.913254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177795, -0.163181, 0.970444,
		-0.769485, -0.637774, 0.033735,
		0.613419, -0.752740, -0.238958,
		36.257599, 30.195383, 44.841568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731789, 30.095373, 45.566174>,  <35.828205, 30.722301, 45.008839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731789, 30.095373, 45.566174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075294, 30.011967, 45.378963>,  <36.281399, 29.961924, 45.266636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075294, 30.011967, 45.378963>,  <35.731789, 30.095373, 45.566174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075294, 30.011967, 45.378963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400616, -0.296220, 0.867041,
		-0.319440, -0.932078, -0.170842,
		0.858757, -0.208526, -0.468030,
		36.332924, 29.949413, 45.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896164, 29.409878, 45.716522>,  <35.731789, 30.095373, 45.566174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896164, 29.409878, 45.716522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251179, 29.572912, 45.630596>,  <36.464188, 29.670732, 45.579041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251179, 29.572912, 45.630596>,  <35.896164, 29.409878, 45.716522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251179, 29.572912, 45.630596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374651, -0.367098, 0.851396,
		0.268157, -0.836130, -0.478517,
		0.887541, 0.407585, -0.214817,
		36.517441, 29.695187, 45.566151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449329, 28.903460, 45.983768>,  <35.896164, 29.409878, 45.716522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449329, 28.903460, 45.983768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616756, 29.263134, 45.932755>,  <36.717213, 29.478939, 45.902145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616756, 29.263134, 45.932755>,  <36.449329, 28.903460, 45.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616756, 29.263134, 45.932755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451311, -0.084082, 0.888397,
		0.788110, -0.429413, -0.441007,
		0.418570, 0.899186, -0.127532,
		36.742329, 29.532890, 45.894493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114304, 28.779089, 46.283123>,  <36.449329, 28.903460, 45.983768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114304, 28.779089, 46.283123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087765, 29.178114, 46.291775>,  <37.071842, 29.417528, 46.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087765, 29.178114, 46.291775>,  <37.114304, 28.779089, 46.283123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087765, 29.178114, 46.291775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479617, 0.012879, 0.877384,
		0.874966, 0.068582, -0.479302,
		-0.066346, 0.997562, 0.021625,
		37.067860, 29.477383, 46.298264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745895, 29.000185, 46.475067>,  <37.114304, 28.779089, 46.283123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745895, 29.000185, 46.475067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508110, 29.313326, 46.548553>,  <37.365437, 29.501211, 46.592648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508110, 29.313326, 46.548553>,  <37.745895, 29.000185, 46.475067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508110, 29.313326, 46.548553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562203, 0.241277, 0.791020,
		0.574925, 0.573522, -0.583553,
		-0.594465, 0.782852, 0.183720,
		37.329769, 29.548182, 46.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178169, 29.564152, 46.454407>,  <37.745895, 29.000185, 46.475067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178169, 29.564152, 46.454407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862595, 29.643337, 46.687092>,  <37.673248, 29.690847, 46.826702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862595, 29.643337, 46.687092>,  <38.178169, 29.564152, 46.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862595, 29.643337, 46.687092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612454, 0.176691, 0.770507,
		0.049748, 0.964153, -0.260641,
		-0.788939, 0.197962, 0.581709,
		37.625912, 29.702726, 46.861603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548393, 29.996092, 46.123146>,  <38.178169, 29.564152, 46.454407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548393, 29.996092, 46.123146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935585, 30.092192, 46.094025>,  <39.167900, 30.149851, 46.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935585, 30.092192, 46.094025>,  <38.548393, 29.996092, 46.123146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935585, 30.092192, 46.094025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084630, 0.039267, -0.995638,
		-0.236343, 0.969917, 0.058342,
		0.967977, 0.240250, -0.072803,
		39.225979, 30.164267, 46.072186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626682, 30.736830, 45.833027>,  <38.548393, 29.996092, 46.123146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626682, 30.736830, 45.833027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946095, 30.504835, 45.768581>,  <39.137741, 30.365639, 45.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946095, 30.504835, 45.768581>,  <38.626682, 30.736830, 45.833027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946095, 30.504835, 45.768581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107209, 0.126344, -0.986176,
		0.592324, 0.804770, 0.038711,
		0.798535, -0.579986, -0.161115,
		39.185654, 30.330839, 45.720245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979603, 30.995308, 45.233940>,  <38.626682, 30.736830, 45.833027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979603, 30.995308, 45.233940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119572, 30.622303, 45.269661>,  <39.203552, 30.398500, 45.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119572, 30.622303, 45.269661>,  <38.979603, 30.995308, 45.233940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119572, 30.622303, 45.269661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141966, -0.041435, -0.989004,
		0.925960, 0.358750, 0.117886,
		0.349921, -0.932514, 0.089297,
		39.224548, 30.342548, 45.296452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363804, 31.038456, 44.734798>,  <38.979603, 30.995308, 45.233940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363804, 31.038456, 44.734798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369251, 30.648600, 44.824139>,  <39.372520, 30.414686, 44.877743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369251, 30.648600, 44.824139>,  <39.363804, 31.038456, 44.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369251, 30.648600, 44.824139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173711, -0.217670, -0.960440,
		0.984703, 0.051874, 0.166343,
		0.013614, -0.974643, 0.223351,
		39.373337, 30.356207, 44.891144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985806, 30.746164, 44.394375>,  <39.363804, 31.038456, 44.734798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985806, 30.746164, 44.394375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746887, 30.427391, 44.430458>,  <39.603539, 30.236126, 44.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746887, 30.427391, 44.430458>,  <39.985806, 30.746164, 44.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746887, 30.427391, 44.430458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148025, -0.220081, -0.964185,
		0.788246, -0.562547, 0.249419,
		-0.597292, -0.796935, 0.090207,
		39.567699, 30.188311, 44.457520>
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
