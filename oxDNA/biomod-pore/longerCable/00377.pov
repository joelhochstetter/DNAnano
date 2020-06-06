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
	<24.603655, 34.549957, 34.961353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337610, 34.838318, 35.039257>,  <24.177984, 35.011333, 35.085999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337610, 34.838318, 35.039257>,  <24.603655, 34.549957, 34.961353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337610, 34.838318, 35.039257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575131, 0.660881, -0.482143,
		-0.476290, -0.208666, -0.854171,
		-0.665111, 0.720899, 0.194761,
		24.138077, 35.054588, 35.097687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515669, 34.834259, 34.313499>,  <24.603655, 34.549957, 34.961353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515669, 34.834259, 34.313499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437529, 35.074173, 34.623878>,  <24.390644, 35.218121, 34.810104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437529, 35.074173, 34.623878>,  <24.515669, 34.834259, 34.313499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437529, 35.074173, 34.623878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632740, 0.681580, -0.367544,
		-0.749318, 0.419173, -0.512656,
		-0.195352, 0.599786, 0.775948,
		24.378923, 35.254108, 34.856663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159109, 35.475822, 34.134380>,  <24.515669, 34.834259, 34.313499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159109, 35.475822, 34.134380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382740, 35.529667, 34.461628>,  <24.516918, 35.561974, 34.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382740, 35.529667, 34.461628>,  <24.159109, 35.475822, 34.134380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382740, 35.529667, 34.461628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578085, 0.644047, -0.501020,
		-0.594348, 0.753049, 0.282254,
		0.559078, 0.134614, 0.818114,
		24.550463, 35.570049, 34.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437780, 36.064640, 33.961895>,  <24.159109, 35.475822, 34.134380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437780, 36.064640, 33.961895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657055, 35.960213, 34.279720>,  <24.788620, 35.897556, 34.470417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657055, 35.960213, 34.279720>,  <24.437780, 36.064640, 33.961895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657055, 35.960213, 34.279720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666196, 0.710673, -0.226112,
		-0.505645, 0.653288, 0.563506,
		0.548185, -0.261073, 0.794565,
		24.821510, 35.881889, 34.518089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542618, 36.643661, 34.545269>,  <24.437780, 36.064640, 33.961895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542618, 36.643661, 34.545269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861967, 36.402817, 34.548485>,  <25.053577, 36.258312, 34.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861967, 36.402817, 34.548485>,  <24.542618, 36.643661, 34.545269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861967, 36.402817, 34.548485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556806, 0.733083, -0.390584,
		0.229278, 0.316311, 0.920532,
		0.798373, -0.602110, 0.008043,
		25.101479, 36.222183, 34.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073423, 37.063602, 34.624866>,  <24.542618, 36.643661, 34.545269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073423, 37.063602, 34.624866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240316, 36.730171, 34.480057>,  <25.340452, 36.530113, 34.393169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240316, 36.730171, 34.480057>,  <25.073423, 37.063602, 34.624866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240316, 36.730171, 34.480057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607061, 0.552083, -0.571560,
		0.676308, 0.018704, 0.736382,
		0.417235, -0.833579, -0.362023,
		25.365486, 36.480099, 34.371449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753422, 37.306694, 34.624554>,  <25.073423, 37.063602, 34.624866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753422, 37.306694, 34.624554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699621, 37.006180, 34.366100>,  <25.667341, 36.825871, 34.211029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699621, 37.006180, 34.366100>,  <25.753422, 37.306694, 34.624554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699621, 37.006180, 34.366100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570528, 0.474420, -0.670390,
		0.810190, -0.458803, 0.364818,
		-0.134500, -0.751282, -0.646131,
		25.659271, 36.780796, 34.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405048, 37.096031, 34.308044>,  <25.753422, 37.306694, 34.624554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405048, 37.096031, 34.308044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104904, 37.002472, 34.060738>,  <25.924818, 36.946335, 33.912354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104904, 37.002472, 34.060738>,  <26.405048, 37.096031, 34.308044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104904, 37.002472, 34.060738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472281, 0.464702, -0.749002,
		0.462462, -0.854027, -0.238258,
		-0.750386, -0.233860, -0.618247,
		25.879797, 36.932301, 33.875259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741302, 36.934826, 33.726322>,  <26.405048, 37.096031, 34.308044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741302, 36.934826, 33.726322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371328, 37.005955, 33.591938>,  <26.149343, 37.048634, 33.511307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371328, 37.005955, 33.591938>,  <26.741302, 36.934826, 33.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371328, 37.005955, 33.591938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379707, 0.473404, -0.794803,
		0.017709, -0.862709, -0.505391,
		-0.924937, 0.177825, -0.335960,
		26.093847, 37.059303, 33.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682970, 36.722477, 33.039017>,  <26.741302, 36.934826, 33.726322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682970, 36.722477, 33.039017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407583, 37.004902, 33.105343>,  <26.242352, 37.174355, 33.145138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407583, 37.004902, 33.105343>,  <26.682970, 36.722477, 33.039017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407583, 37.004902, 33.105343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306017, 0.490069, -0.816202,
		-0.657546, -0.511187, -0.553463,
		-0.688466, 0.706060, 0.165811,
		26.201044, 37.216721, 33.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369623, 36.900276, 32.378559>,  <26.682970, 36.722477, 33.039017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369623, 36.900276, 32.378559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331636, 37.216129, 32.621033>,  <26.308846, 37.405640, 32.766518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331636, 37.216129, 32.621033>,  <26.369623, 36.900276, 32.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331636, 37.216129, 32.621033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496798, 0.565280, -0.658521,
		-0.862655, 0.238616, -0.445970,
		-0.094965, 0.789634, 0.606185,
		26.303146, 37.453018, 32.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448952, 37.333370, 31.877417>,  <26.369623, 36.900276, 32.378559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448952, 37.333370, 31.877417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572002, 37.490692, 32.223984>,  <26.645834, 37.585087, 32.431923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572002, 37.490692, 32.223984>,  <26.448952, 37.333370, 31.877417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572002, 37.490692, 32.223984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819863, 0.352558, -0.451141,
		-0.482897, 0.849126, -0.213998,
		0.307629, 0.393303, 0.866416,
		26.664291, 37.608685, 32.483910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473007, 38.124969, 31.810946>,  <26.448952, 37.333370, 31.877417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473007, 38.124969, 31.810946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710825, 37.950138, 32.080902>,  <26.853516, 37.845238, 32.242878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710825, 37.950138, 32.080902>,  <26.473007, 38.124969, 31.810946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710825, 37.950138, 32.080902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800532, 0.400337, -0.445958,
		-0.075266, 0.805415, 0.587913,
		0.594544, -0.437078, 0.674892,
		26.889189, 37.819016, 32.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014856, 38.601948, 31.490814>,  <26.473007, 38.124969, 31.810946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014856, 38.601948, 31.490814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662266, 38.434036, 31.577337>,  <25.450712, 38.333290, 31.629251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662266, 38.434036, 31.577337>,  <26.014856, 38.601948, 31.490814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662266, 38.434036, 31.577337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224844, 0.029723, 0.973941,
		-0.415268, 0.907140, 0.068184,
		-0.881475, -0.419778, 0.216308,
		25.397823, 38.308102, 31.642229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723398, 38.921364, 32.196842>,  <26.014856, 38.601948, 31.490814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723398, 38.921364, 32.196842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556847, 38.564331, 32.127640>,  <25.456915, 38.350113, 32.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556847, 38.564331, 32.127640>,  <25.723398, 38.921364, 32.196842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556847, 38.564331, 32.127640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329665, -0.325552, 0.886193,
		-0.847319, 0.311958, 0.429805,
		-0.416379, -0.892579, -0.173005,
		25.431932, 38.296558, 32.075737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726578, 38.631145, 32.819565>,  <25.723398, 38.921364, 32.196842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726578, 38.631145, 32.819565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656799, 38.314697, 32.585060>,  <25.614931, 38.124828, 32.444359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656799, 38.314697, 32.585060>,  <25.726578, 38.631145, 32.819565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656799, 38.314697, 32.585060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160904, -0.610289, 0.775666,
		-0.971431, 0.040981, 0.233758,
		-0.174448, -0.791118, -0.586259,
		25.604465, 38.077362, 32.409184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937744, 38.442123, 33.613403>,  <25.726578, 38.631145, 32.819565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937744, 38.442123, 33.613403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037865, 38.146404, 33.363354>,  <26.097937, 37.968971, 33.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037865, 38.146404, 33.363354>,  <25.937744, 38.442123, 33.613403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037865, 38.146404, 33.363354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543127, -0.641732, 0.541473,
		-0.801476, 0.203992, -0.562160,
		0.250301, -0.739302, -0.625126,
		26.112955, 37.924614, 33.175816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298332, 38.045559, 33.540131>,  <25.937744, 38.442123, 33.613403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298332, 38.045559, 33.540131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579937, 37.798050, 33.400711>,  <25.748899, 37.649544, 33.317059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579937, 37.798050, 33.400711>,  <25.298332, 38.045559, 33.540131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579937, 37.798050, 33.400711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514519, -0.782685, 0.350248,
		-0.489527, -0.067245, -0.869391,
		0.704012, -0.618775, -0.348546,
		25.791142, 37.612419, 33.296146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923418, 37.551899, 33.071278>,  <25.298332, 38.045559, 33.540131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923418, 37.551899, 33.071278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263821, 37.391399, 33.206799>,  <25.468061, 37.295101, 33.288113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263821, 37.391399, 33.206799>,  <24.923418, 37.551899, 33.071278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263821, 37.391399, 33.206799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523971, -0.692046, 0.496514,
		0.035240, -0.600059, -0.799179,
		0.851006, -0.401249, 0.338801,
		25.519123, 37.271023, 33.308437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809114, 36.812496, 33.093494>,  <24.923418, 37.551899, 33.071278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809114, 36.812496, 33.093494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114725, 36.857105, 33.347683>,  <25.298092, 36.883873, 33.500195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114725, 36.857105, 33.347683>,  <24.809114, 36.812496, 33.093494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114725, 36.857105, 33.347683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417277, -0.665799, 0.618540,
		0.492080, -0.737749, -0.462151,
		0.764027, 0.111525, 0.635472,
		25.343933, 36.890564, 33.538326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145220, 36.209965, 33.231209>,  <24.809114, 36.812496, 33.093494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145220, 36.209965, 33.231209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450233, 36.397026, 33.410023>,  <25.633242, 36.509262, 33.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450233, 36.397026, 33.410023>,  <25.145220, 36.209965, 33.231209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450233, 36.397026, 33.410023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148748, -0.545743, 0.824645,
		0.629617, -0.695314, -0.346584,
		0.762533, 0.467657, 0.447035,
		25.678993, 36.537323, 33.544132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574858, 35.700325, 33.478191>,  <25.145220, 36.209965, 33.231209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574858, 35.700325, 33.478191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621365, 36.029339, 33.700871>,  <25.649269, 36.226749, 33.834476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621365, 36.029339, 33.700871>,  <25.574858, 35.700325, 33.478191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621365, 36.029339, 33.700871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319254, -0.499804, 0.805154,
		0.940510, -0.271340, 0.204489,
		0.116266, 0.822539, 0.556697,
		25.656244, 36.276100, 33.867878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055363, 35.485882, 34.007923>,  <25.574858, 35.700325, 33.478191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055363, 35.485882, 34.007923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832237, 35.796616, 34.124802>,  <25.698362, 35.983055, 34.194927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832237, 35.796616, 34.124802>,  <26.055363, 35.485882, 34.007923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832237, 35.796616, 34.124802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346705, -0.537965, 0.768368,
		0.754083, 0.327300, 0.569415,
		-0.557813, 0.776832, 0.292194,
		25.664894, 36.029667, 34.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543001, 35.944881, 34.440067>,  <26.055363, 35.485882, 34.007923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543001, 35.944881, 34.440067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198744, 36.065151, 34.604454>,  <25.992189, 36.137314, 34.703087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198744, 36.065151, 34.604454>,  <26.543001, 35.944881, 34.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198744, 36.065151, 34.604454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428440, -0.008599, 0.903530,
		0.275202, 0.953688, -0.121420,
		-0.860641, 0.300674, 0.410964,
		25.940552, 36.155354, 34.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091179, 35.471436, 34.868603>,  <26.543001, 35.944881, 34.440067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091179, 35.471436, 34.868603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771734, 35.676365, 34.742271>,  <25.580069, 35.799324, 34.666473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771734, 35.676365, 34.742271>,  <26.091179, 35.471436, 34.868603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771734, 35.676365, 34.742271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592530, -0.577306, 0.561806,
		0.105496, 0.635801, 0.764609,
		-0.798611, 0.512322, -0.315828,
		25.532150, 35.830063, 34.647522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657402, 35.648441, 35.522793>,  <26.091179, 35.471436, 34.868603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657402, 35.648441, 35.522793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396791, 35.724583, 35.229050>,  <25.240425, 35.770267, 35.052803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396791, 35.724583, 35.229050>,  <25.657402, 35.648441, 35.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396791, 35.724583, 35.229050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731665, -0.413442, 0.541970,
		-0.200449, 0.890411, 0.408642,
		-0.651526, 0.190352, -0.734357,
		25.201334, 35.781689, 35.008743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036598, 35.825737, 35.870121>,  <25.657402, 35.648441, 35.522793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036598, 35.825737, 35.870121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909426, 35.725754, 35.504292>,  <24.833122, 35.665764, 35.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909426, 35.725754, 35.504292>,  <25.036598, 35.825737, 35.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909426, 35.725754, 35.504292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726892, -0.555067, 0.404388,
		-0.608728, 0.793362, -0.005218,
		-0.317930, -0.249955, -0.914573,
		24.814047, 35.650768, 35.229919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740353, 35.950470, 36.297134>,  <25.036598, 35.825737, 35.870121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740353, 35.950470, 36.297134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611589, 36.323383, 36.363129>,  <25.534332, 36.547131, 36.402725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611589, 36.323383, 36.363129>,  <25.740353, 35.950470, 36.297134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611589, 36.323383, 36.363129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469251, 0.005758, 0.883046,
		0.822302, 0.361676, -0.439330,
		-0.321906, 0.932286, 0.164982,
		25.515018, 36.603069, 36.412624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251713, 36.352940, 36.398464>,  <25.740353, 35.950470, 36.297134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251713, 36.352940, 36.398464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957638, 36.555264, 36.578979>,  <25.781193, 36.676659, 36.687290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957638, 36.555264, 36.578979>,  <26.251713, 36.352940, 36.398464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957638, 36.555264, 36.578979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521282, -0.003714, 0.853376,
		0.433319, 0.862639, -0.260937,
		-0.735187, 0.505806, 0.451288,
		25.737082, 36.707005, 36.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627539, 36.784649, 36.862289>,  <26.251713, 36.352940, 36.398464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627539, 36.784649, 36.862289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248180, 36.723076, 36.973179>,  <26.020565, 36.686134, 37.039711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248180, 36.723076, 36.973179>,  <26.627539, 36.784649, 36.862289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248180, 36.723076, 36.973179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294518, -0.103658, 0.950008,
		-0.117498, 0.982629, 0.143644,
		-0.948395, -0.153930, 0.277222,
		25.963661, 36.676895, 37.056347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826391, 37.434864, 37.079575>,  <26.627539, 36.784649, 36.862289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826391, 37.434864, 37.079575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948963, 37.513630, 37.452095>,  <27.022507, 37.560890, 37.675610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948963, 37.513630, 37.452095>,  <26.826391, 37.434864, 37.079575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948963, 37.513630, 37.452095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039124, 0.974937, -0.219013,
		-0.951088, 0.103549, 0.291047,
		0.306431, 0.196914, 0.931303,
		27.040892, 37.572704, 37.731487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312140, 37.905777, 37.566765>,  <26.826391, 37.434864, 37.079575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312140, 37.905777, 37.566765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704615, 37.952381, 37.628342>,  <26.940100, 37.980343, 37.665287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704615, 37.952381, 37.628342>,  <26.312140, 37.905777, 37.566765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704615, 37.952381, 37.628342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069937, 0.957710, -0.279107,
		-0.179948, 0.263090, 0.947841,
		0.981187, 0.116514, 0.153938,
		26.998970, 37.987335, 37.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472286, 38.614662, 37.900200>,  <26.312140, 37.905777, 37.566765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472286, 38.614662, 37.900200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824734, 38.502419, 37.747944>,  <27.036203, 38.435074, 37.656590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824734, 38.502419, 37.747944>,  <26.472286, 38.614662, 37.900200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824734, 38.502419, 37.747944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169181, 0.938698, -0.300374,
		0.441593, 0.200269, 0.874579,
		0.881121, -0.280605, -0.380640,
		27.089069, 38.418236, 37.633751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904600, 39.155945, 38.124168>,  <26.472286, 38.614662, 37.900200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904600, 39.155945, 38.124168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112122, 38.996967, 37.821415>,  <27.236635, 38.901581, 37.639763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112122, 38.996967, 37.821415>,  <26.904600, 39.155945, 38.124168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112122, 38.996967, 37.821415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132675, 0.912065, -0.387988,
		0.844535, 0.100870, 0.525914,
		0.518804, -0.397446, -0.756888,
		27.267763, 38.877735, 37.594349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579405, 39.504204, 38.000450>,  <26.904600, 39.155945, 38.124168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579405, 39.504204, 38.000450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451481, 39.365852, 37.647614>,  <27.374727, 39.282841, 37.435909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451481, 39.365852, 37.647614>,  <27.579405, 39.504204, 38.000450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451481, 39.365852, 37.647614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249435, 0.867411, -0.430558,
		0.914059, -0.357722, -0.191131,
		-0.319809, -0.345881, -0.882093,
		27.355537, 39.262089, 37.382984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114092, 39.812416, 37.577110>,  <27.579405, 39.504204, 38.000450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114092, 39.812416, 37.577110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022079, 39.516716, 37.323940>,  <27.966873, 39.339294, 37.172039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022079, 39.516716, 37.323940>,  <28.114092, 39.812416, 37.577110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022079, 39.516716, 37.323940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167107, 0.670709, -0.722651,
		0.958729, -0.060465, -0.277817,
		-0.230030, -0.739252, -0.632924,
		27.953070, 39.294941, 37.134064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480820, 39.903275, 36.863224>,  <28.114092, 39.812416, 37.577110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480820, 39.903275, 36.863224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137003, 39.700768, 36.835285>,  <27.930714, 39.579262, 36.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137003, 39.700768, 36.835285>,  <28.480820, 39.903275, 36.863224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137003, 39.700768, 36.835285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291361, 0.597712, -0.746893,
		0.419878, -0.621635, -0.661266,
		-0.859542, -0.506271, -0.069846,
		27.879141, 39.548885, 36.814331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453442, 39.844078, 36.113319>,  <28.480820, 39.903275, 36.863224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453442, 39.844078, 36.113319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095404, 39.738094, 36.256760>,  <27.880581, 39.674503, 36.342823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095404, 39.738094, 36.256760>,  <28.453442, 39.844078, 36.113319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095404, 39.738094, 36.256760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443648, 0.449045, -0.775587,
		0.044471, -0.853319, -0.519489,
		-0.895097, -0.264961, 0.358604,
		27.826874, 39.658607, 36.364342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066746, 39.515732, 35.613590>,  <28.453442, 39.844078, 36.113319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066746, 39.515732, 35.613590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870407, 39.724957, 35.892296>,  <27.752604, 39.850491, 36.059517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870407, 39.724957, 35.892296>,  <28.066746, 39.515732, 35.613590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870407, 39.724957, 35.892296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365968, 0.601973, -0.709715,
		-0.790657, -0.603353, -0.104052,
		-0.490845, 0.523062, 0.696762,
		27.723154, 39.881874, 36.101326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089378, 40.184792, 35.258564>,  <28.066746, 39.515732, 35.613590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089378, 40.184792, 35.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840042, 40.456554, 35.413406>,  <27.690441, 40.619610, 35.506313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840042, 40.456554, 35.413406>,  <28.089378, 40.184792, 35.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840042, 40.456554, 35.413406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397671, -0.701692, 0.591173,
		0.673278, 0.214560, 0.707573,
		-0.623341, 0.679405, 0.387110,
		27.653040, 40.660378, 35.529541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026955, 40.406918, 35.993202>,  <28.089378, 40.184792, 35.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026955, 40.406918, 35.993202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658255, 40.423874, 35.839020>,  <27.437035, 40.434048, 35.746510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658255, 40.423874, 35.839020>,  <28.026955, 40.406918, 35.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658255, 40.423874, 35.839020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343053, -0.552606, 0.759567,
		-0.180808, 0.832364, 0.523907,
		-0.921750, 0.042393, -0.385461,
		27.381729, 40.436592, 35.723381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502718, 40.565220, 36.551048>,  <28.026955, 40.406918, 35.993202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502718, 40.565220, 36.551048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356344, 40.339046, 36.255379>,  <27.268520, 40.203342, 36.077976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356344, 40.339046, 36.255379>,  <27.502718, 40.565220, 36.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356344, 40.339046, 36.255379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040984, -0.783699, 0.619788,
		-0.929738, 0.257097, 0.263609,
		-0.365935, -0.565436, -0.739171,
		27.246563, 40.169415, 36.033627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906607, 40.211159, 36.827557>,  <27.502718, 40.565220, 36.551048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906607, 40.211159, 36.827557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081898, 40.010853, 36.528976>,  <27.187073, 39.890671, 36.349827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081898, 40.010853, 36.528976>,  <26.906607, 40.211159, 36.827557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081898, 40.010853, 36.528976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120253, -0.790315, 0.600784,
		-0.890784, -0.353043, -0.286119,
		0.438227, -0.500762, -0.746455,
		27.213366, 39.860626, 36.305038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494345, 39.590641, 36.751961>,  <26.906607, 40.211159, 36.827557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494345, 39.590641, 36.751961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877672, 39.587029, 36.637737>,  <27.107668, 39.584862, 36.569202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877672, 39.587029, 36.637737>,  <26.494345, 39.590641, 36.751961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877672, 39.587029, 36.637737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163875, -0.801367, 0.575289,
		-0.234031, -0.598106, -0.766485,
		0.958319, -0.009028, -0.285559,
		27.165167, 39.584320, 36.552071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741177, 38.893673, 36.515633>,  <26.494345, 39.590641, 36.751961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741177, 38.893673, 36.515633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076073, 39.086571, 36.618763>,  <27.277010, 39.202309, 36.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076073, 39.086571, 36.618763>,  <26.741177, 38.893673, 36.515633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076073, 39.086571, 36.618763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294117, -0.794598, 0.531140,
		0.461006, -0.368859, -0.807103,
		0.837238, 0.482242, 0.257827,
		27.327244, 39.231243, 36.696110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280390, 38.416931, 36.389034>,  <26.741177, 38.893673, 36.515633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280390, 38.416931, 36.389034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386646, 38.698738, 36.652271>,  <27.450399, 38.867821, 36.810215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386646, 38.698738, 36.652271>,  <27.280390, 38.416931, 36.389034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386646, 38.698738, 36.652271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291924, -0.709356, 0.641556,
		0.918812, 0.021691, -0.394099,
		0.265640, 0.704516, 0.658097,
		27.466339, 38.910091, 36.849701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975155, 38.352444, 36.614407>,  <27.280390, 38.416931, 36.389034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975155, 38.352444, 36.614407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771448, 38.516369, 36.917114>,  <27.649225, 38.614723, 37.098740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771448, 38.516369, 36.917114>,  <27.975155, 38.352444, 36.614407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771448, 38.516369, 36.917114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214008, -0.791417, 0.572591,
		0.833577, 0.453555, 0.315337,
		-0.509265, 0.409814, 0.756771,
		27.618670, 38.639313, 37.144146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321793, 38.215012, 37.283146>,  <27.975155, 38.352444, 36.614407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321793, 38.215012, 37.283146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934765, 38.272038, 37.366558>,  <27.702549, 38.306252, 37.416607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934765, 38.272038, 37.366558>,  <28.321793, 38.215012, 37.283146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934765, 38.272038, 37.366558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010941, -0.801094, 0.598438,
		0.252373, 0.581311, 0.773554,
		-0.967568, 0.142566, 0.208535,
		27.644495, 38.314808, 37.429119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347326, 38.151707, 38.017128>,  <28.321793, 38.215012, 37.283146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347326, 38.151707, 38.017128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977699, 38.073444, 37.885784>,  <27.755922, 38.026489, 37.806980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977699, 38.073444, 37.885784>,  <28.347326, 38.151707, 38.017128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977699, 38.073444, 37.885784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014040, -0.841104, 0.540691,
		-0.381969, 0.504245, 0.774491,
		-0.924068, -0.195654, -0.328355,
		27.700480, 38.014748, 37.787277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844255, 37.498280, 38.073219>,  <28.347326, 38.151707, 38.017128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844255, 37.498280, 38.073219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575306, 37.557690, 37.783157>,  <28.413937, 37.593338, 37.609119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575306, 37.557690, 37.783157>,  <28.844255, 37.498280, 38.073219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575306, 37.557690, 37.783157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097555, -0.988897, -0.112096,
		-0.733757, -0.004627, 0.679396,
		-0.672372, 0.148529, -0.725159,
		28.373594, 37.602249, 37.565609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208673, 38.045162, 38.390163>,  <28.844255, 37.498280, 38.073219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208673, 38.045162, 38.390163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442158, 38.095486, 38.711025>,  <29.582249, 38.125679, 38.903542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442158, 38.095486, 38.711025>,  <29.208673, 38.045162, 38.390163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442158, 38.095486, 38.711025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463211, -0.759791, 0.456238,
		0.666870, -0.637878, -0.385221,
		0.583712, 0.125813, 0.802155,
		29.617271, 38.133228, 38.951672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490015, 37.381821, 38.557858>,  <29.208673, 38.045162, 38.390163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490015, 37.381821, 38.557858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436438, 37.659710, 38.840534>,  <29.404291, 37.826443, 39.010139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436438, 37.659710, 38.840534>,  <29.490015, 37.381821, 38.557858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436438, 37.659710, 38.840534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623648, -0.613292, 0.484702,
		0.770144, -0.375804, 0.515412,
		-0.133946, 0.694726, 0.706692,
		29.396254, 37.868126, 39.052544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966373, 37.009972, 39.003422>,  <29.490015, 37.381821, 38.557858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966373, 37.009972, 39.003422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077265, 37.340340, 39.199791>,  <29.143799, 37.538559, 39.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077265, 37.340340, 39.199791>,  <28.966373, 37.009972, 39.003422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077265, 37.340340, 39.199791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523636, -0.298521, 0.797929,
		0.805575, -0.478271, 0.349723,
		0.277226, 0.825919, 0.490921,
		29.160433, 37.588116, 39.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120367, 36.830917, 39.788086>,  <28.966373, 37.009972, 39.003422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120367, 36.830917, 39.788086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013855, 37.216122, 39.771526>,  <28.949947, 37.447243, 39.761589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013855, 37.216122, 39.771526>,  <29.120367, 36.830917, 39.788086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013855, 37.216122, 39.771526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679396, -0.157042, 0.716770,
		0.683752, 0.218988, 0.696080,
		-0.266278, 0.963007, -0.041402,
		28.933971, 37.505024, 39.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299494, 37.123596, 40.348705>,  <29.120367, 36.830917, 39.788086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299494, 37.123596, 40.348705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989552, 37.345787, 40.228012>,  <28.803587, 37.479103, 40.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989552, 37.345787, 40.228012>,  <29.299494, 37.123596, 40.348705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989552, 37.345787, 40.228012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454931, -0.158604, 0.876289,
		0.438907, 0.816263, 0.375601,
		-0.774854, 0.555482, -0.301731,
		28.757095, 37.512432, 40.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813061, 36.626682, 40.092003>,  <29.299494, 37.123596, 40.348705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813061, 36.626682, 40.092003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150160, 36.447056, 40.210739>,  <30.352419, 36.339279, 40.281982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150160, 36.447056, 40.210739>,  <29.813061, 36.626682, 40.092003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150160, 36.447056, 40.210739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526435, -0.802714, 0.280206,
		0.112447, -0.392411, -0.912891,
		0.842746, -0.449070, 0.296842,
		30.402985, 36.312336, 40.299793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094835, 36.052486, 39.605152>,  <29.813061, 36.626682, 40.092003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094835, 36.052486, 39.605152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132090, 36.072430, 40.002914>,  <30.154442, 36.084396, 40.241573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132090, 36.072430, 40.002914>,  <30.094835, 36.052486, 39.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132090, 36.072430, 40.002914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685884, -0.720755, 0.100377,
		0.721727, -0.691395, -0.032929,
		0.093134, 0.049859, 0.994404,
		30.160030, 36.087387, 40.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779139, 36.249676, 39.688854>,  <30.094835, 36.052486, 39.605152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779139, 36.249676, 39.688854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946489, 35.987732, 39.437103>,  <31.046900, 35.830566, 39.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946489, 35.987732, 39.437103>,  <30.779139, 36.249676, 39.688854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946489, 35.987732, 39.437103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431421, -0.466502, 0.772174,
		-0.799273, -0.594586, 0.087348,
		0.418375, -0.654862, -0.629379,
		31.072002, 35.791275, 39.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660025, 35.536564, 39.997723>,  <30.779139, 36.249676, 39.688854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660025, 35.536564, 39.997723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965023, 35.571415, 39.741283>,  <31.148022, 35.592323, 39.587418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965023, 35.571415, 39.741283>,  <30.660025, 35.536564, 39.997723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965023, 35.571415, 39.741283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584396, -0.517956, 0.624662,
		-0.277640, -0.850959, -0.445854,
		0.762495, 0.087124, -0.641102,
		31.193771, 35.597553, 39.548954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047062, 34.884529, 39.624260>,  <30.660025, 35.536564, 39.997723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047062, 34.884529, 39.624260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272690, 35.192955, 39.742432>,  <31.408068, 35.378010, 39.813335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272690, 35.192955, 39.742432>,  <31.047062, 34.884529, 39.624260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272690, 35.192955, 39.742432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562296, -0.620700, 0.546402,
		0.604688, -0.142088, -0.783686,
		0.564071, 0.771066, 0.295434,
		31.441912, 35.424274, 39.831062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702316, 34.880825, 39.374645>,  <31.047062, 34.884529, 39.624260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702316, 34.880825, 39.374645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677742, 35.049587, 39.736465>,  <31.662998, 35.150845, 39.953560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677742, 35.049587, 39.736465>,  <31.702316, 34.880825, 39.374645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677742, 35.049587, 39.736465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422341, -0.810147, 0.406558,
		0.904353, 0.407007, -0.128419,
		-0.061434, 0.421908, 0.904555,
		31.659311, 35.176159, 40.007832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656830, 35.444355, 38.754158>,  <31.702316, 34.880825, 39.374645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656830, 35.444355, 38.754158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524025, 35.770039, 38.563652>,  <31.444342, 35.965450, 38.449348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524025, 35.770039, 38.563652>,  <31.656830, 35.444355, 38.754158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524025, 35.770039, 38.563652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558916, 0.576537, 0.596002,
		0.759856, -0.068314, -0.646492,
		-0.332011, 0.814210, -0.476267,
		31.424421, 36.014301, 38.420773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119095, 35.453876, 38.232826>,  <31.656830, 35.444355, 38.754158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119095, 35.453876, 38.232826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921520, 35.307579, 37.917294>,  <31.802977, 35.219799, 37.727974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921520, 35.307579, 37.917294>,  <32.119095, 35.453876, 38.232826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921520, 35.307579, 37.917294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849356, 0.397102, 0.347714,
		0.186071, 0.841748, -0.506793,
		-0.493936, -0.365748, -0.788832,
		31.773340, 35.197853, 37.680645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984184, 35.342190, 38.316849>,  <32.119095, 35.453876, 38.232826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984184, 35.342190, 38.316849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202557, 35.007534, 38.334740>,  <33.333580, 34.806740, 38.345474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202557, 35.007534, 38.334740>,  <32.984184, 35.342190, 38.316849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202557, 35.007534, 38.334740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484662, -0.358900, -0.797680,
		0.683421, 0.413798, -0.601420,
		0.545928, -0.836637, 0.044728,
		33.366337, 34.756542, 38.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471825, 35.089680, 37.629906>,  <32.984184, 35.342190, 38.316849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471825, 35.089680, 37.629906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 34.818707, 37.872772>,  <33.206059, 34.656124, 38.018490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 34.818707, 37.872772>,  <33.471825, 35.089680, 37.629906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305721, 34.818707, 37.872772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517360, -0.373122, -0.770142,
		0.748266, -0.633927, -0.195536,
		-0.415255, -0.677433, 0.607162,
		33.181145, 34.615475, 38.054920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380684, 34.385551, 37.367062>,  <33.471825, 35.089680, 37.629906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380684, 34.385551, 37.367062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051476, 34.430676, 37.589741>,  <32.853951, 34.457748, 37.723351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051476, 34.430676, 37.589741>,  <33.380684, 34.385551, 37.367062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051476, 34.430676, 37.589741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561790, -0.306359, -0.768464,
		0.083861, -0.945208, 0.315514,
		-0.823019, 0.112808, 0.556700,
		32.804569, 34.464520, 37.756752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919060, 33.768322, 37.304497>,  <33.380684, 34.385551, 37.367062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919060, 33.768322, 37.304497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696671, 34.078045, 37.425385>,  <32.563236, 34.263878, 37.497917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696671, 34.078045, 37.425385>,  <32.919060, 33.768322, 37.304497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696671, 34.078045, 37.425385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668532, -0.200506, -0.716144,
		-0.493919, -0.600203, 0.629126,
		-0.555976, 0.774308, 0.302221,
		32.529877, 34.310337, 37.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256397, 33.514076, 37.537289>,  <32.919060, 33.768322, 37.304497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256397, 33.514076, 37.537289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248333, 33.890705, 37.402805>,  <32.243496, 34.116684, 37.322113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248333, 33.890705, 37.402805>,  <32.256397, 33.514076, 37.537289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248333, 33.890705, 37.402805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730186, -0.243574, -0.638357,
		-0.682951, 0.232629, 0.692432,
		-0.020159, 0.941571, -0.336212,
		32.242287, 34.173176, 37.301941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593035, 33.634399, 37.438049>,  <32.256397, 33.514076, 37.537289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593035, 33.634399, 37.438049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786678, 33.876228, 37.185024>,  <31.902864, 34.021324, 37.033211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786678, 33.876228, 37.185024>,  <31.593035, 33.634399, 37.438049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786678, 33.876228, 37.185024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497763, -0.404271, -0.767331,
		-0.719633, 0.686335, 0.105223,
		0.484108, 0.604573, -0.632559,
		31.931911, 34.057602, 36.995258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083679, 33.947533, 37.045536>,  <31.593035, 33.634399, 37.438049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083679, 33.947533, 37.045536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422256, 33.974106, 36.834206>,  <31.625402, 33.990047, 36.707409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422256, 33.974106, 36.834206>,  <31.083679, 33.947533, 37.045536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422256, 33.974106, 36.834206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481709, -0.327301, -0.812915,
		-0.226922, 0.942582, -0.245041,
		0.846441, 0.066430, -0.528323,
		31.676189, 33.994034, 36.675709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846478, 34.214649, 36.349247>,  <31.083679, 33.947533, 37.045536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846478, 34.214649, 36.349247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210230, 34.056870, 36.296429>,  <31.428482, 33.962200, 36.264736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210230, 34.056870, 36.296429>,  <30.846478, 34.214649, 36.349247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210230, 34.056870, 36.296429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287093, -0.365466, -0.885445,
		0.301006, 0.843116, -0.445591,
		0.909381, -0.394451, -0.132045,
		31.483044, 33.938534, 36.256817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040955, 34.328850, 35.616611>,  <30.846478, 34.214649, 36.349247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040955, 34.328850, 35.616611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272385, 34.025627, 35.737011>,  <31.411243, 33.843693, 35.809250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272385, 34.025627, 35.737011>,  <31.040955, 34.328850, 35.616611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272385, 34.025627, 35.737011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146458, -0.459599, -0.875967,
		0.802371, 0.462731, -0.376937,
		0.578577, -0.758056, 0.300999,
		31.445957, 33.798210, 35.827312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605364, 34.335293, 35.125793>,  <31.040955, 34.328850, 35.616611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605364, 34.335293, 35.125793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609461, 33.967365, 35.282673>,  <31.611919, 33.746609, 35.376801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609461, 33.967365, 35.282673>,  <31.605364, 34.335293, 35.125793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609461, 33.967365, 35.282673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048030, -0.392223, -0.918615,
		0.998793, -0.009428, -0.048197,
		0.010243, -0.919822, 0.392203,
		31.612534, 33.691418, 35.400333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984465, 34.013977, 34.689186>,  <31.605364, 34.335293, 35.125793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984465, 34.013977, 34.689186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816175, 33.704876, 34.879276>,  <31.715202, 33.519413, 34.993332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816175, 33.704876, 34.879276>,  <31.984465, 34.013977, 34.689186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816175, 33.704876, 34.879276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041984, -0.506698, -0.861101,
		0.906217, -0.382236, 0.180736,
		-0.420723, -0.772757, 0.475226,
		31.689959, 33.473049, 35.021843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351494, 33.412201, 34.591908>,  <31.984465, 34.013977, 34.689186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351494, 33.412201, 34.591908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974638, 33.304890, 34.672318>,  <31.748526, 33.240505, 34.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974638, 33.304890, 34.672318>,  <32.351494, 33.412201, 34.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974638, 33.304890, 34.672318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005770, -0.612539, -0.790420,
		0.335183, -0.743522, 0.578642,
		-0.942135, -0.268274, 0.201022,
		31.691998, 33.224407, 34.732624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338875, 32.660309, 34.456367>,  <32.351494, 33.412201, 34.591908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338875, 32.660309, 34.456367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949146, 32.750103, 34.463383>,  <31.715309, 32.803982, 34.467590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949146, 32.750103, 34.463383>,  <32.338875, 32.660309, 34.456367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949146, 32.750103, 34.463383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155845, -0.616085, -0.772109,
		-0.162524, -0.755014, 0.635248,
		-0.974319, 0.224487, 0.017537,
		31.656851, 32.817448, 34.468643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057384, 32.120697, 34.136963>,  <32.338875, 32.660309, 34.456367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057384, 32.120697, 34.136963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768379, 32.397236, 34.135395>,  <31.594976, 32.563160, 34.134453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768379, 32.397236, 34.135395>,  <32.057384, 32.120697, 34.136963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768379, 32.397236, 34.135395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263703, -0.280827, -0.922820,
		-0.639089, -0.665716, 0.385211,
		-0.722513, 0.691346, -0.003922,
		31.551624, 32.604641, 34.134220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382603, 31.787819, 33.860588>,  <32.057384, 32.120697, 34.136963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382603, 31.787819, 33.860588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358494, 32.181267, 33.792637>,  <31.344028, 32.417336, 33.751865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358494, 32.181267, 33.792637>,  <31.382603, 31.787819, 33.860588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358494, 32.181267, 33.792637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394598, -0.179808, -0.901089,
		-0.916875, 0.012726, 0.398972,
		-0.060271, 0.983619, -0.169883,
		31.340412, 32.476353, 33.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725361, 31.810427, 33.531452>,  <31.382603, 31.787819, 33.860588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725361, 31.810427, 33.531452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872330, 32.170078, 33.436317>,  <30.960510, 32.385868, 33.379238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872330, 32.170078, 33.436317>,  <30.725361, 31.810427, 33.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872330, 32.170078, 33.436317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241973, -0.154503, -0.957903,
		-0.898026, 0.409504, 0.160798,
		0.367421, 0.899130, -0.237836,
		30.982555, 32.439816, 33.364967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309200, 32.080109, 32.954750>,  <30.725361, 31.810427, 33.531452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309200, 32.080109, 32.954750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640659, 32.301624, 32.922104>,  <30.839535, 32.434536, 32.902515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640659, 32.301624, 32.922104>,  <30.309200, 32.080109, 32.954750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640659, 32.301624, 32.922104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116846, 0.028526, -0.992740,
		-0.547442, 0.832167, 0.088346,
		0.828646, 0.553791, -0.081619,
		30.889254, 32.467762, 32.897617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153723, 32.640591, 32.572128>,  <30.309200, 32.080109, 32.954750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153723, 32.640591, 32.572128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552542, 32.624683, 32.545856>,  <30.791834, 32.615139, 32.530094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552542, 32.624683, 32.545856>,  <30.153723, 32.640591, 32.572128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552542, 32.624683, 32.545856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056487, 0.199500, -0.978268,
		0.052012, 0.979090, 0.196664,
		0.997048, -0.039773, -0.065682,
		30.851656, 32.612751, 32.526154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418859, 33.297031, 32.256790>,  <30.153723, 32.640591, 32.572128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418859, 33.297031, 32.256790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701233, 33.022343, 32.187428>,  <30.870657, 32.857529, 32.145809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701233, 33.022343, 32.187428>,  <30.418859, 33.297031, 32.256790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701233, 33.022343, 32.187428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062522, 0.304293, -0.950525,
		0.705512, 0.660167, 0.257746,
		0.705935, -0.686721, -0.173407,
		30.913013, 32.816326, 32.135406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987192, 33.641556, 31.944118>,  <30.418859, 33.297031, 32.256790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987192, 33.641556, 31.944118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027838, 33.261017, 31.827763>,  <31.052225, 33.032696, 31.757950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027838, 33.261017, 31.827763>,  <30.987192, 33.641556, 31.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027838, 33.261017, 31.827763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253467, 0.307512, -0.917165,
		0.961992, 0.019467, 0.272382,
		0.101615, -0.951345, -0.290890,
		31.058323, 32.975613, 31.740496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631205, 33.616920, 31.441347>,  <30.987192, 33.641556, 31.944118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631205, 33.616920, 31.441347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429165, 33.277264, 31.379604>,  <31.307941, 33.073467, 31.342558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429165, 33.277264, 31.379604>,  <31.631205, 33.616920, 31.441347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429165, 33.277264, 31.379604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087283, 0.127675, -0.987968,
		0.858636, -0.512495, 0.009628,
		-0.505099, -0.849146, -0.154359,
		31.277636, 33.022518, 31.333296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792280, 33.385262, 30.717812>,  <31.631205, 33.616920, 31.441347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792280, 33.385262, 30.717812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471292, 33.164436, 30.808388>,  <31.278700, 33.031940, 30.862734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471292, 33.164436, 30.808388>,  <31.792280, 33.385262, 30.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471292, 33.164436, 30.808388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153279, -0.176038, -0.972376,
		0.576673, -0.815009, 0.056646,
		-0.802467, -0.552060, 0.226440,
		31.230553, 32.998817, 30.876320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854597, 32.747189, 30.326551>,  <31.792280, 33.385262, 30.717812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854597, 32.747189, 30.326551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466789, 32.779572, 30.419054>,  <31.234104, 32.799004, 30.474556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466789, 32.779572, 30.419054>,  <31.854597, 32.747189, 30.326551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466789, 32.779572, 30.419054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241304, -0.151765, -0.958509,
		-0.042502, -0.985095, 0.166674,
		-0.969518, 0.080958, 0.231257,
		31.175934, 32.803860, 30.488432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490862, 32.220535, 29.970684>,  <31.854597, 32.747189, 30.326551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490862, 32.220535, 29.970684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210724, 32.486637, 30.074179>,  <31.042641, 32.646297, 30.136276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210724, 32.486637, 30.074179>,  <31.490862, 32.220535, 29.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210724, 32.486637, 30.074179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445297, -0.123894, -0.886770,
		-0.557875, -0.736262, 0.383006,
		-0.700347, 0.665258, 0.258738,
		31.000620, 32.686214, 30.151800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850220, 31.885349, 29.864065>,  <31.490862, 32.220535, 29.970684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850220, 31.885349, 29.864065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775677, 32.278069, 29.849382>,  <30.730951, 32.513699, 29.840572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775677, 32.278069, 29.849382>,  <30.850220, 31.885349, 29.864065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775677, 32.278069, 29.849382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658083, -0.152481, -0.737345,
		-0.729519, -0.113254, 0.674519,
		-0.186358, 0.981796, -0.036707,
		30.719769, 32.572609, 29.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117302, 31.959105, 29.776375>,  <30.850220, 31.885349, 29.864065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117302, 31.959105, 29.776375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224258, 32.331287, 29.676176>,  <30.288433, 32.554596, 29.616056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224258, 32.331287, 29.676176>,  <30.117302, 31.959105, 29.776375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224258, 32.331287, 29.676176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691519, 0.004259, -0.722345,
		-0.671046, 0.366371, 0.644569,
		0.267392, 0.930459, -0.250495,
		30.304476, 32.610424, 29.601028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478420, 32.473663, 29.747702>,  <30.117302, 31.959105, 29.776375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478420, 32.473663, 29.747702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777430, 32.610054, 29.519686>,  <29.956835, 32.691891, 29.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777430, 32.610054, 29.519686>,  <29.478420, 32.473663, 29.747702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777430, 32.610054, 29.519686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660800, 0.294567, -0.690343,
		-0.067478, 0.892729, 0.445514,
		0.747523, 0.340979, -0.570038,
		30.001686, 32.712349, 29.348675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261946, 33.073952, 29.602444>,  <29.478420, 32.473663, 29.747702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261946, 33.073952, 29.602444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541143, 32.991188, 29.328220>,  <29.708662, 32.941528, 29.163687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541143, 32.991188, 29.328220>,  <29.261946, 33.073952, 29.602444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541143, 32.991188, 29.328220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596302, 0.362161, -0.716424,
		0.396516, 0.908861, 0.129408,
		0.697996, -0.206908, -0.685558,
		29.750542, 32.929115, 29.122553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149597, 33.587929, 29.088793>,  <29.261946, 33.073952, 29.602444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149597, 33.587929, 29.088793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344988, 33.295971, 28.897524>,  <29.462223, 33.120796, 28.782763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344988, 33.295971, 28.897524>,  <29.149597, 33.587929, 29.088793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344988, 33.295971, 28.897524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508101, 0.207580, -0.835909,
		0.709381, 0.651282, -0.269461,
		0.488478, -0.729892, -0.478171,
		29.491531, 33.077003, 28.754072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282570, 33.874081, 28.467333>,  <29.149597, 33.587929, 29.088793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282570, 33.874081, 28.467333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360630, 33.486858, 28.404364>,  <29.407465, 33.254524, 28.366581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360630, 33.486858, 28.404364>,  <29.282570, 33.874081, 28.467333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360630, 33.486858, 28.404364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397288, 0.068727, -0.915117,
		0.896705, 0.241126, -0.371185,
		0.195149, -0.968057, -0.157424,
		29.419174, 33.196442, 28.357136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678619, 33.844200, 27.843399>,  <29.282570, 33.874081, 28.467333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678619, 33.844200, 27.843399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498266, 33.493015, 27.907761>,  <29.390055, 33.282307, 27.946377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498266, 33.493015, 27.907761>,  <29.678619, 33.844200, 27.843399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498266, 33.493015, 27.907761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149198, -0.103600, -0.983365,
		0.880026, -0.467389, -0.084279,
		-0.450883, -0.877961, 0.160905,
		29.363001, 33.229626, 27.956032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950260, 33.473759, 27.355408>,  <29.678619, 33.844200, 27.843399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950260, 33.473759, 27.355408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638700, 33.255970, 27.479898>,  <29.451763, 33.125298, 27.554594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638700, 33.255970, 27.479898>,  <29.950260, 33.473759, 27.355408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638700, 33.255970, 27.479898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339090, -0.051840, -0.939324,
		0.527570, -0.837175, -0.144247,
		-0.778901, -0.544472, 0.311228,
		29.405029, 33.092628, 27.573267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905464, 32.891323, 26.893185>,  <29.950260, 33.473759, 27.355408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905464, 32.891323, 26.893185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537178, 32.925285, 27.045538>,  <29.316206, 32.945663, 27.136950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537178, 32.925285, 27.045538>,  <29.905464, 32.891323, 26.893185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537178, 32.925285, 27.045538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379880, 0.028301, -0.924603,
		-0.089289, -0.995987, 0.006199,
		-0.920716, 0.084912, 0.380882,
		29.260963, 32.950756, 27.159803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461748, 32.325928, 26.656834>,  <29.905464, 32.891323, 26.893185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461748, 32.325928, 26.656834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242785, 32.646976, 26.751614>,  <29.111406, 32.839603, 26.808481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242785, 32.646976, 26.751614>,  <29.461748, 32.325928, 26.656834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242785, 32.646976, 26.751614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455896, -0.048572, -0.888707,
		-0.701784, -0.594511, 0.392499,
		-0.547410, 0.802619, 0.236948,
		29.078562, 32.887760, 26.822699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879749, 32.169651, 26.329344>,  <29.461748, 32.325928, 26.656834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879749, 32.169651, 26.329344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839363, 32.561985, 26.396006>,  <28.815132, 32.797386, 26.436003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839363, 32.561985, 26.396006>,  <28.879749, 32.169651, 26.329344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839363, 32.561985, 26.396006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398551, 0.113606, -0.910083,
		-0.911572, -0.158306, 0.379442,
		-0.100965, 0.980832, 0.166653,
		28.809074, 32.856236, 26.446001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382990, 32.290012, 25.876318>,  <28.879749, 32.169651, 26.329344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382990, 32.290012, 25.876318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463812, 32.670380, 25.970068>,  <28.512304, 32.898602, 26.026318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463812, 32.670380, 25.970068>,  <28.382990, 32.290012, 25.876318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463812, 32.670380, 25.970068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361678, 0.294842, -0.884453,
		-0.910145, 0.093939, 0.403499,
		0.202054, 0.950917, 0.234373,
		28.524427, 32.955654, 26.040380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753292, 32.693092, 25.857880>,  <28.382990, 32.290012, 25.876318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753292, 32.693092, 25.857880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059229, 32.947071, 25.814320>,  <28.242790, 33.099461, 25.788183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059229, 32.947071, 25.814320>,  <27.753292, 32.693092, 25.857880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059229, 32.947071, 25.814320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373347, 0.299109, -0.878149,
		-0.525007, 0.712301, 0.465827,
		0.764840, 0.634949, -0.108902,
		28.288681, 33.137554, 25.781649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436155, 33.252613, 25.447889>,  <27.753292, 32.693092, 25.857880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436155, 33.252613, 25.447889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833780, 33.293484, 25.432915>,  <28.072355, 33.318005, 25.423929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833780, 33.293484, 25.432915>,  <27.436155, 33.252613, 25.447889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833780, 33.293484, 25.432915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068227, 0.317199, -0.945902,
		-0.084774, 0.942839, 0.322286,
		0.994062, 0.102176, -0.037437,
		28.131998, 33.324135, 25.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559877, 33.708076, 24.973698>,  <27.436155, 33.252613, 25.447889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559877, 33.708076, 24.973698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936878, 33.575153, 24.959473>,  <28.163078, 33.495399, 24.950937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936878, 33.575153, 24.959473>,  <27.559877, 33.708076, 24.973698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936878, 33.575153, 24.959473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043855, 0.228460, -0.972565,
		0.331315, 0.915083, 0.229897,
		0.942500, -0.332308, -0.035562,
		28.219627, 33.475460, 24.948805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999739, 34.307442, 24.836962>,  <27.559877, 33.708076, 24.973698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999739, 34.307442, 24.836962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186453, 33.974689, 24.716908>,  <28.298481, 33.775036, 24.644875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186453, 33.974689, 24.716908>,  <27.999739, 34.307442, 24.836962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186453, 33.974689, 24.716908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060171, 0.368466, -0.927692,
		0.882322, 0.414972, 0.222049,
		0.466784, -0.831884, -0.300136,
		28.326488, 33.725124, 24.626867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507069, 34.596790, 24.467356>,  <27.999739, 34.307442, 24.836962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507069, 34.596790, 24.467356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430288, 34.223438, 24.346060>,  <28.384220, 33.999428, 24.273283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430288, 34.223438, 24.346060>,  <28.507069, 34.596790, 24.467356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430288, 34.223438, 24.346060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074907, 0.322019, -0.943765,
		0.978541, -0.158444, -0.131729,
		-0.191953, -0.933381, -0.303240,
		28.372702, 33.943424, 24.255087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705391, 34.574280, 23.702116>,  <28.507069, 34.596790, 24.467356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705391, 34.574280, 23.702116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478773, 34.247681, 23.746576>,  <28.342802, 34.051720, 23.773252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478773, 34.247681, 23.746576>,  <28.705391, 34.574280, 23.702116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478773, 34.247681, 23.746576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296494, 0.076131, -0.951996,
		0.768842, -0.572304, -0.285219,
		-0.566545, -0.816500, 0.111152,
		28.308809, 34.002731, 23.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877363, 34.032146, 23.170931>,  <28.705391, 34.574280, 23.702116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877363, 34.032146, 23.170931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506922, 33.933434, 23.285078>,  <28.284657, 33.874207, 23.353567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506922, 33.933434, 23.285078>,  <28.877363, 34.032146, 23.170931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506922, 33.933434, 23.285078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313357, 0.081910, -0.946096,
		0.210101, -0.965604, -0.153187,
		-0.926102, -0.246778, 0.285370,
		28.229092, 33.859402, 23.370689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666710, 33.733250, 22.582443>,  <28.877363, 34.032146, 23.170931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666710, 33.733250, 22.582443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329712, 33.796745, 22.788357>,  <28.127514, 33.834843, 22.911905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329712, 33.796745, 22.788357>,  <28.666710, 33.733250, 22.582443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329712, 33.796745, 22.788357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522139, -0.005464, -0.852843,
		-0.132570, -0.987305, 0.087490,
		-0.842494, 0.158743, 0.514786,
		28.076963, 33.844368, 22.942793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160864, 33.181999, 22.318153>,  <28.666710, 33.733250, 22.582443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160864, 33.181999, 22.318153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979061, 33.498947, 22.480913>,  <27.869980, 33.689117, 22.578569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979061, 33.498947, 22.480913>,  <28.160864, 33.181999, 22.318153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979061, 33.498947, 22.480913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564202, 0.097392, -0.819872,
		-0.689274, -0.602211, 0.402794,
		-0.454507, 0.792374, 0.406899,
		27.842709, 33.736660, 22.602983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598577, 33.187027, 21.936525>,  <28.160864, 33.181999, 22.318153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598577, 33.187027, 21.936525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587265, 33.549355, 22.105610>,  <27.580479, 33.766750, 22.207060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587265, 33.549355, 22.105610>,  <27.598577, 33.187027, 21.936525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587265, 33.549355, 22.105610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634803, 0.310386, -0.707592,
		-0.772157, -0.288348, 0.566242,
		-0.028279, 0.905824, 0.422711,
		27.578781, 33.821102, 22.232424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841358, 33.296844, 22.046305>,  <27.598577, 33.187027, 21.936525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841358, 33.296844, 22.046305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029814, 33.648903, 22.023073>,  <27.142887, 33.860138, 22.009134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029814, 33.648903, 22.023073>,  <26.841358, 33.296844, 22.046305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029814, 33.648903, 22.023073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629906, 0.289635, -0.720645,
		-0.617451, 0.376107, 0.690868,
		0.471139, 0.880145, -0.058077,
		27.171156, 33.912945, 22.005650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352863, 33.812836, 21.925728>,  <26.841358, 33.296844, 22.046305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352863, 33.812836, 21.925728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681124, 34.010059, 21.810194>,  <26.878080, 34.128395, 21.740873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681124, 34.010059, 21.810194>,  <26.352863, 33.812836, 21.925728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681124, 34.010059, 21.810194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511291, 0.407861, -0.756459,
		-0.255176, 0.768467, 0.586808,
		0.820650, 0.493060, -0.288833,
		26.927319, 34.157978, 21.723543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061684, 34.409847, 21.685217>,  <26.352863, 33.812836, 21.925728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061684, 34.409847, 21.685217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433231, 34.363655, 21.544437>,  <26.656160, 34.335941, 21.459969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433231, 34.363655, 21.544437>,  <26.061684, 34.409847, 21.685217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433231, 34.363655, 21.544437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322965, 0.212771, -0.922183,
		0.181377, 0.970254, 0.160341,
		0.928868, -0.115478, -0.351950,
		26.711891, 34.329010, 21.438852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375584, 35.155476, 21.474154>,  <26.061684, 34.409847, 21.685217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375584, 35.155476, 21.474154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452063, 35.526268, 21.345070>,  <26.497950, 35.748745, 21.267620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452063, 35.526268, 21.345070>,  <26.375584, 35.155476, 21.474154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452063, 35.526268, 21.345070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629080, -0.136649, -0.765236,
		-0.753460, 0.349322, 0.557021,
		0.191197, 0.926985, -0.322711,
		26.509422, 35.804363, 21.248257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770178, 35.361599, 21.248188>,  <26.375584, 35.155476, 21.474154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770178, 35.361599, 21.248188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033949, 35.591953, 21.054895>,  <26.192211, 35.730164, 20.938921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033949, 35.591953, 21.054895>,  <25.770178, 35.361599, 21.248188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033949, 35.591953, 21.054895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449331, -0.213410, -0.867501,
		-0.602705, 0.789186, 0.118033,
		0.659430, 0.575883, -0.483230,
		26.231777, 35.764717, 20.909927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493057, 35.848835, 20.731209>,  <25.770178, 35.361599, 21.248188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493057, 35.848835, 20.731209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859705, 35.776878, 20.588411>,  <26.079695, 35.733704, 20.502733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859705, 35.776878, 20.588411>,  <25.493057, 35.848835, 20.731209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859705, 35.776878, 20.588411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380250, -0.116813, -0.917477,
		0.123348, 0.976726, -0.175478,
		0.916622, -0.179894, -0.356991,
		26.134691, 35.722912, 20.481314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702536, 36.402500, 20.111067>,  <25.493057, 35.848835, 20.731209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702536, 36.402500, 20.111067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813768, 36.018879, 20.132586>,  <25.880508, 35.788708, 20.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813768, 36.018879, 20.132586>,  <25.702536, 36.402500, 20.111067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813768, 36.018879, 20.132586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448147, -0.179073, -0.875841,
		0.849608, 0.219447, -0.479592,
		0.278083, -0.959049, 0.053797,
		25.897194, 35.731163, 20.148726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855547, 36.198528, 19.440025>,  <25.702536, 36.402500, 20.111067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855547, 36.198528, 19.440025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778372, 35.861347, 19.640905>,  <25.732067, 35.659039, 19.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778372, 35.861347, 19.640905>,  <25.855547, 36.198528, 19.440025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778372, 35.861347, 19.640905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525317, -0.343545, -0.778472,
		0.828744, -0.414010, -0.376536,
		-0.192938, -0.842954, 0.502198,
		25.720490, 35.608459, 19.791565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496035, 36.518158, 19.954115>,  <25.855547, 36.198528, 19.440025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496035, 36.518158, 19.954115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763651, 36.672920, 19.700283>,  <26.924221, 36.765778, 19.547983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763651, 36.672920, 19.700283>,  <26.496035, 36.518158, 19.954115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763651, 36.672920, 19.700283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740715, -0.276949, 0.612079,
		0.061071, -0.879547, -0.471877,
		0.669038, 0.386906, -0.634580,
		26.964363, 36.788994, 19.509909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154613, 36.622623, 20.250546>,  <26.496035, 36.518158, 19.954115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154613, 36.622623, 20.250546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890871, 36.393101, 20.444862>,  <26.732626, 36.255386, 20.561453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890871, 36.393101, 20.444862>,  <27.154613, 36.622623, 20.250546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890871, 36.393101, 20.444862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386623, 0.295381, 0.873655,
		-0.644803, 0.763868, 0.027086,
		-0.659357, -0.573808, 0.485791,
		26.693064, 36.220959, 20.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931496, 36.998657, 20.777557>,  <27.154613, 36.622623, 20.250546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931496, 36.998657, 20.777557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824495, 36.631969, 20.896261>,  <26.760296, 36.411957, 20.967484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824495, 36.631969, 20.896261>,  <26.931496, 36.998657, 20.777557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824495, 36.631969, 20.896261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384459, 0.180860, 0.905252,
		-0.883535, 0.356247, 0.304062,
		-0.267501, -0.916721, 0.296759,
		26.744246, 36.356953, 20.985289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516983, 37.104485, 21.430063>,  <26.931496, 36.998657, 20.777557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516983, 37.104485, 21.430063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649475, 36.727173, 21.439137>,  <26.728971, 36.500786, 21.444580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649475, 36.727173, 21.439137>,  <26.516983, 37.104485, 21.430063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649475, 36.727173, 21.439137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163328, 0.080998, 0.983241,
		-0.929306, -0.321976, 0.180893,
		0.331232, -0.943277, 0.022684,
		26.748844, 36.444191, 21.445942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309814, 36.899742, 22.098461>,  <26.516983, 37.104485, 21.430063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309814, 36.899742, 22.098461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575914, 36.623566, 21.984810>,  <26.735575, 36.457859, 21.916618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575914, 36.623566, 21.984810>,  <26.309814, 36.899742, 22.098461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575914, 36.623566, 21.984810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364146, -0.032172, 0.930786,
		-0.651797, -0.722670, 0.230020,
		0.665251, -0.690444, -0.284127,
		26.775490, 36.416431, 21.899572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453312, 36.528873, 22.726370>,  <26.309814, 36.899742, 22.098461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453312, 36.528873, 22.726370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779676, 36.465473, 22.503960>,  <26.975496, 36.427433, 22.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779676, 36.465473, 22.503960>,  <26.453312, 36.528873, 22.726370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779676, 36.465473, 22.503960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578173, 0.225824, 0.784041,
		0.001296, -0.961188, 0.275891,
		0.815913, -0.158496, -0.556025,
		27.024450, 36.417923, 22.337152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719187, 35.930775, 23.027271>,  <26.453312, 36.528873, 22.726370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719187, 35.930775, 23.027271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034977, 36.101749, 22.851076>,  <27.224451, 36.204334, 22.745359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034977, 36.101749, 22.851076>,  <26.719187, 35.930775, 23.027271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034977, 36.101749, 22.851076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561241, -0.212191, 0.799989,
		0.248475, -0.878791, -0.407413,
		0.789473, 0.427435, -0.440490,
		27.271818, 36.229980, 22.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259388, 35.629532, 23.271776>,  <26.719187, 35.930775, 23.027271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259388, 35.629532, 23.271776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458141, 35.920128, 23.081903>,  <27.577393, 36.094486, 22.967979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458141, 35.920128, 23.081903>,  <27.259388, 35.629532, 23.271776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458141, 35.920128, 23.081903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729097, -0.052810, 0.682370,
		0.470665, -0.685147, -0.555921,
		0.496882, 0.726488, -0.474683,
		27.607206, 36.138073, 22.939499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985065, 35.342941, 22.986742>,  <27.259388, 35.629532, 23.271776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985065, 35.342941, 22.986742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990326, 35.736305, 23.059118>,  <27.993483, 35.972324, 23.102545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990326, 35.736305, 23.059118>,  <27.985065, 35.342941, 22.986742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990326, 35.736305, 23.059118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744992, -0.130336, 0.654216,
		0.666943, 0.126195, -0.734344,
		0.013153, 0.983406, 0.180942,
		27.994272, 36.031326, 23.113401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615917, 35.444218, 23.170053>,  <27.985065, 35.342941, 22.986742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615917, 35.444218, 23.170053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454103, 35.780914, 23.313066>,  <28.357016, 35.982933, 23.398874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454103, 35.780914, 23.313066>,  <28.615917, 35.444218, 23.170053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454103, 35.780914, 23.313066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538042, -0.097069, 0.837310,
		0.739501, 0.531088, -0.413623,
		-0.404536, 0.841738, 0.357531,
		28.332743, 36.033436, 23.420326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266521, 35.805374, 23.553856>,  <28.615917, 35.444218, 23.170053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266521, 35.805374, 23.553856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928875, 35.973045, 23.687574>,  <28.726288, 36.073650, 23.767805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928875, 35.973045, 23.687574>,  <29.266521, 35.805374, 23.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928875, 35.973045, 23.687574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371730, 0.008237, 0.928305,
		0.386375, 0.907865, -0.162775,
		-0.844116, 0.419182, 0.334298,
		28.675640, 36.098801, 23.787863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453070, 36.428539, 23.959618>,  <29.266521, 35.805374, 23.553856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453070, 36.428539, 23.959618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091394, 36.305588, 24.078249>,  <28.874390, 36.231815, 24.149427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091394, 36.305588, 24.078249>,  <29.453070, 36.428539, 23.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091394, 36.305588, 24.078249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337167, -0.087371, 0.937382,
		-0.262222, 0.947567, 0.182638,
		-0.904189, -0.307381, 0.296577,
		28.820137, 36.213375, 24.167223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237104, 36.968525, 24.503595>,  <29.453070, 36.428539, 23.959618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237104, 36.968525, 24.503595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024084, 36.633419, 24.551817>,  <28.896273, 36.432354, 24.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024084, 36.633419, 24.551817>,  <29.237104, 36.968525, 24.503595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024084, 36.633419, 24.551817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162722, 0.038436, 0.985923,
		-0.830609, 0.544672, 0.115854,
		-0.532551, -0.837768, 0.120555,
		28.864319, 36.382088, 24.587984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912012, 37.170013, 25.076004>,  <29.237104, 36.968525, 24.503595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912012, 37.170013, 25.076004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870138, 36.774529, 25.033131>,  <28.845015, 36.537239, 25.007406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870138, 36.774529, 25.033131>,  <28.912012, 37.170013, 25.076004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870138, 36.774529, 25.033131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052752, -0.113143, 0.992177,
		-0.993106, 0.098211, 0.064000,
		-0.104684, -0.988713, -0.107182,
		28.838734, 36.477913, 25.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484642, 37.015877, 25.651047>,  <28.912012, 37.170013, 25.076004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484642, 37.015877, 25.651047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655090, 36.673145, 25.534929>,  <28.757359, 36.467506, 25.465258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655090, 36.673145, 25.534929>,  <28.484642, 37.015877, 25.651047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655090, 36.673145, 25.534929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136739, -0.256198, 0.956904,
		-0.894273, -0.447451, 0.007990,
		0.426121, -0.856826, -0.290295,
		28.782927, 36.416100, 25.447842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334797, 36.561161, 26.187988>,  <28.484642, 37.015877, 25.651047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334797, 36.561161, 26.187988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631884, 36.386528, 25.984905>,  <28.810135, 36.281750, 25.863054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631884, 36.386528, 25.984905>,  <28.334797, 36.561161, 26.187988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631884, 36.386528, 25.984905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377705, -0.352933, 0.856024,
		-0.552914, -0.827546, -0.097229,
		0.742715, -0.436584, -0.507710,
		28.854698, 36.255554, 25.832592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407564, 35.926796, 26.511633>,  <28.334797, 36.561161, 26.187988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407564, 35.926796, 26.511633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740557, 35.973824, 26.295059>,  <28.940353, 36.002041, 26.165115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740557, 35.973824, 26.295059>,  <28.407564, 35.926796, 26.511633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740557, 35.973824, 26.295059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553971, -0.159994, 0.817018,
		0.009434, -0.980091, -0.198325,
		0.832482, 0.117574, -0.541432,
		28.990301, 36.009094, 26.132629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817068, 35.238487, 26.640356>,  <28.407564, 35.926796, 26.511633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817068, 35.238487, 26.640356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068592, 35.530590, 26.533531>,  <29.219507, 35.705853, 26.469437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068592, 35.530590, 26.533531>,  <28.817068, 35.238487, 26.640356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068592, 35.530590, 26.533531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581144, -0.213191, 0.785380,
		0.516592, -0.649059, -0.558440,
		0.628812, 0.730255, -0.267064,
		29.257236, 35.749668, 26.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536999, 35.000263, 26.820148>,  <28.817068, 35.238487, 26.640356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536999, 35.000263, 26.820148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576023, 35.396084, 26.777695>,  <29.599438, 35.633575, 26.752222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576023, 35.396084, 26.777695>,  <29.536999, 35.000263, 26.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576023, 35.396084, 26.777695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734030, 0.000470, 0.679117,
		0.672074, -0.144158, -0.726317,
		0.097559, 0.989555, -0.106132,
		29.605291, 35.692951, 26.745855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151619, 35.088516, 27.114084>,  <29.536999, 35.000263, 26.820148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151619, 35.088516, 27.114084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949057, 35.433376, 27.120499>,  <29.827520, 35.640293, 27.124348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949057, 35.433376, 27.120499>,  <30.151619, 35.088516, 27.114084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949057, 35.433376, 27.120499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246227, 0.126755, 0.960888,
		0.826394, 0.490547, -0.276473,
		-0.506405, 0.862147, 0.016037,
		29.797134, 35.692020, 27.125309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585161, 35.648899, 27.590187>,  <30.151619, 35.088516, 27.114084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585161, 35.648899, 27.590187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208763, 35.782280, 27.567072>,  <29.982925, 35.862309, 27.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208763, 35.782280, 27.567072>,  <30.585161, 35.648899, 27.590187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208763, 35.782280, 27.567072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027895, 0.246601, 0.968716,
		0.337271, 0.909944, -0.241352,
		-0.940994, 0.333452, -0.057788,
		29.926464, 35.882317, 27.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501486, 36.318371, 27.878693>,  <30.585161, 35.648899, 27.590187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501486, 36.318371, 27.878693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142405, 36.144894, 27.909784>,  <29.926956, 36.040810, 27.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142405, 36.144894, 27.909784>,  <30.501486, 36.318371, 27.878693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142405, 36.144894, 27.909784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044303, 0.264370, 0.963403,
		-0.438367, 0.861407, -0.256540,
		-0.897703, -0.433690, 0.077729,
		29.873093, 36.014786, 27.933104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182796, 36.669449, 28.386116>,  <30.501486, 36.318371, 27.878693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182796, 36.669449, 28.386116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937456, 36.353630, 28.377899>,  <29.790253, 36.164139, 28.372969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937456, 36.353630, 28.377899>,  <30.182796, 36.669449, 28.386116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937456, 36.353630, 28.377899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034984, 0.001172, 0.999387,
		-0.789037, 0.613692, -0.028341,
		-0.613349, -0.789545, -0.020544,
		29.753452, 36.116768, 28.371737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757942, 36.828754, 28.927448>,  <30.182796, 36.669449, 28.386116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757942, 36.828754, 28.927448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736174, 36.434467, 28.863689>,  <29.723112, 36.197895, 28.825434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736174, 36.434467, 28.863689>,  <29.757942, 36.828754, 28.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736174, 36.434467, 28.863689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013141, -0.158911, 0.987205,
		-0.998431, 0.055821, -0.004305,
		-0.054423, -0.985713, -0.159396,
		29.719847, 36.138752, 28.815870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443674, 36.567451, 29.503157>,  <29.757942, 36.828754, 28.927448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443674, 36.567451, 29.503157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639332, 36.257885, 29.342266>,  <29.756727, 36.072144, 29.245731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639332, 36.257885, 29.342266>,  <29.443674, 36.567451, 29.503157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639332, 36.257885, 29.342266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182400, -0.360199, 0.914870,
		-0.852917, -0.520870, -0.035027,
		0.489145, -0.773919, -0.402226,
		29.786076, 36.025711, 29.221598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131226, 35.950985, 29.700481>,  <29.443674, 36.567451, 29.503157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131226, 35.950985, 29.700481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497349, 35.834511, 29.589178>,  <29.717022, 35.764626, 29.522396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497349, 35.834511, 29.589178>,  <29.131226, 35.950985, 29.700481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497349, 35.834511, 29.589178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191949, -0.291993, 0.936961,
		-0.354075, -0.911018, -0.211371,
		0.915307, -0.291182, -0.278257,
		29.771940, 35.747158, 29.505701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259230, 35.317490, 30.049757>,  <29.131226, 35.950985, 29.700481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259230, 35.317490, 30.049757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631392, 35.398499, 29.927557>,  <29.854689, 35.447105, 29.854237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631392, 35.398499, 29.927557>,  <29.259230, 35.317490, 30.049757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631392, 35.398499, 29.927557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325111, -0.071092, 0.943000,
		0.169262, -0.976693, -0.131988,
		0.930405, 0.202525, -0.305501,
		29.910513, 35.459255, 29.835907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735830, 34.736828, 30.187641>,  <29.259230, 35.317490, 30.049757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735830, 34.736828, 30.187641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932190, 35.083702, 30.154154>,  <30.050005, 35.291828, 30.134062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932190, 35.083702, 30.154154>,  <29.735830, 34.736828, 30.187641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932190, 35.083702, 30.154154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304902, -0.080992, 0.948934,
		0.816120, -0.491356, -0.304166,
		0.490899, 0.867185, -0.083716,
		30.079460, 35.343857, 30.129040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387726, 34.512440, 30.333801>,  <29.735830, 34.736828, 30.187641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387726, 34.512440, 30.333801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396603, 34.901356, 30.426891>,  <30.401928, 35.134705, 30.482746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396603, 34.901356, 30.426891>,  <30.387726, 34.512440, 30.333801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396603, 34.901356, 30.426891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570093, -0.203534, 0.795970,
		0.821280, 0.115011, -0.558812,
		0.022192, 0.972289, 0.232725,
		30.403259, 35.193043, 30.496710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094383, 34.582584, 30.479055>,  <30.387726, 34.512440, 30.333801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094383, 34.582584, 30.479055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917517, 34.917469, 30.607780>,  <30.811398, 35.118401, 30.685015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917517, 34.917469, 30.607780>,  <31.094383, 34.582584, 30.479055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917517, 34.917469, 30.607780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708750, 0.106247, 0.697413,
		0.549692, 0.536456, -0.640354,
		-0.442167, 0.837214, 0.321811,
		30.784866, 35.168633, 30.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617960, 35.082504, 30.604446>,  <31.094383, 34.582584, 30.479055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617960, 35.082504, 30.604446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302450, 35.213013, 30.812822>,  <31.113144, 35.291317, 30.937849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302450, 35.213013, 30.812822>,  <31.617960, 35.082504, 30.604446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302450, 35.213013, 30.812822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570861, 0.074577, 0.817653,
		0.227924, 0.942331, -0.245079,
		-0.788777, 0.326269, 0.520941,
		31.065817, 35.310894, 30.969105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833410, 35.690788, 30.903610>,  <31.617960, 35.082504, 30.604446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833410, 35.690788, 30.903610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526999, 35.580715, 31.135981>,  <31.343151, 35.514671, 31.275402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526999, 35.580715, 31.135981>,  <31.833410, 35.690788, 30.903610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526999, 35.580715, 31.135981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546532, 0.196923, 0.813956,
		-0.338383, 0.941008, -0.000454,
		-0.766029, -0.275181, 0.580926,
		31.297190, 35.498161, 31.310259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716652, 36.290836, 31.422413>,  <31.833410, 35.690788, 30.903610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716652, 36.290836, 31.422413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564640, 35.961372, 31.590775>,  <31.473433, 35.763695, 31.691792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564640, 35.961372, 31.590775>,  <31.716652, 36.290836, 31.422413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564640, 35.961372, 31.590775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474732, 0.216858, 0.852996,
		-0.793857, 0.523978, 0.308606,
		-0.380027, -0.823662, 0.420903,
		31.450632, 35.714275, 31.717045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659479, 36.518677, 32.155193>,  <31.716652, 36.290836, 31.422413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659479, 36.518677, 32.155193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598488, 36.123650, 32.139874>,  <31.561893, 35.886635, 32.130680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598488, 36.123650, 32.139874>,  <31.659479, 36.518677, 32.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598488, 36.123650, 32.139874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250247, -0.076073, 0.965189,
		-0.956100, 0.137587, 0.258735,
		-0.152480, -0.987564, -0.038303,
		31.552744, 35.827381, 32.128384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086472, 36.390636, 32.703297>,  <31.659479, 36.518677, 32.155193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086472, 36.390636, 32.703297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308729, 36.065510, 32.633347>,  <31.442083, 35.870434, 32.591377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308729, 36.065510, 32.633347>,  <31.086472, 36.390636, 32.703297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308729, 36.065510, 32.633347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321933, 0.016407, 0.946620,
		-0.766562, -0.582284, 0.270790,
		0.555645, -0.812820, -0.174880,
		31.475422, 35.821663, 32.580883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991821, 35.939423, 33.308498>,  <31.086472, 36.390636, 32.703297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991821, 35.939423, 33.308498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326263, 35.803745, 33.136044>,  <31.526928, 35.722340, 33.032570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326263, 35.803745, 33.136044>,  <30.991821, 35.939423, 33.308498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326263, 35.803745, 33.136044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385559, -0.195700, 0.901690,
		-0.390221, -0.920135, -0.032846,
		0.836105, -0.339194, -0.431133,
		31.577095, 35.701988, 33.006702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187012, 35.362343, 33.705585>,  <30.991821, 35.939423, 33.308498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187012, 35.362343, 33.705585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522701, 35.486549, 33.527020>,  <31.724115, 35.561073, 33.419880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522701, 35.486549, 33.527020>,  <31.187012, 35.362343, 33.705585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522701, 35.486549, 33.527020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515333, -0.192071, 0.835189,
		0.173599, -0.930960, -0.321211,
		0.839223, 0.310519, -0.446411,
		31.774467, 35.579704, 33.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771683, 34.867790, 33.846199>,  <31.187012, 35.362343, 33.705585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771683, 34.867790, 33.846199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945135, 35.217323, 33.758213>,  <32.049206, 35.427044, 33.705421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945135, 35.217323, 33.758213>,  <31.771683, 34.867790, 33.846199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945135, 35.217323, 33.758213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377520, 0.045474, 0.924884,
		0.818196, -0.484097, -0.310170,
		0.433629, 0.873832, -0.219963,
		32.075226, 35.479473, 33.692223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421669, 34.790497, 34.086380>,  <31.771683, 34.867790, 33.846199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421669, 34.790497, 34.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312504, 35.174725, 34.065109>,  <32.247005, 35.405262, 34.052345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312504, 35.174725, 34.065109>,  <32.421669, 34.790497, 34.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312504, 35.174725, 34.065109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119635, 0.088737, 0.988844,
		0.954570, 0.263509, -0.139136,
		-0.272916, 0.960567, -0.053181,
		32.230629, 35.462894, 34.049156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887783, 35.094452, 34.454445>,  <32.421669, 34.790497, 34.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887783, 35.094452, 34.454445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622898, 35.394093, 34.447269>,  <32.463966, 35.573879, 34.442963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622898, 35.394093, 34.447269>,  <32.887783, 35.094452, 34.454445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622898, 35.394093, 34.447269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272148, 0.262744, 0.925689,
		0.698151, 0.608118, -0.377859,
		-0.662209, 0.749104, -0.017937,
		32.424236, 35.618824, 34.441887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258041, 35.554722, 34.802570>,  <32.887783, 35.094452, 34.454445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258041, 35.554722, 34.802570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882782, 35.693096, 34.808201>,  <32.657627, 35.776119, 34.811581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882782, 35.693096, 34.808201>,  <33.258041, 35.554722, 34.802570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882782, 35.693096, 34.808201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069682, 0.148829, 0.986405,
		0.339136, 0.926380, -0.163730,
		-0.938153, 0.345934, 0.014078,
		32.601337, 35.796875, 34.812424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192039, 36.309669, 35.060017>,  <33.258041, 35.554722, 34.802570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192039, 36.309669, 35.060017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864212, 36.097191, 35.145939>,  <32.667515, 35.969704, 35.197491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864212, 36.097191, 35.145939>,  <33.192039, 36.309669, 35.060017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864212, 36.097191, 35.145939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159588, 0.148430, 0.975961,
		-0.550311, 0.834145, -0.036875,
		-0.819566, -0.531197, 0.214803,
		32.618343, 35.937832, 35.210381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476692, 36.822678, 34.557713>,  <33.192039, 36.309669, 35.060017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476692, 36.822678, 34.557713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854679, 36.906372, 34.457111>,  <34.081470, 36.956589, 34.396751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854679, 36.906372, 34.457111>,  <33.476692, 36.822678, 34.557713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854679, 36.906372, 34.457111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299730, 0.245552, -0.921882,
		-0.131134, 0.946533, 0.294754,
		0.944969, 0.209237, -0.251504,
		34.138168, 36.969143, 34.381660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527061, 37.512787, 34.172897>,  <33.476692, 36.822678, 34.557713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527061, 37.512787, 34.172897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858402, 37.308613, 34.080566>,  <34.057209, 37.186108, 34.025169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858402, 37.308613, 34.080566>,  <33.527061, 37.512787, 34.172897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858402, 37.308613, 34.080566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115420, 0.247692, -0.961939,
		0.548186, 0.823468, 0.146262,
		0.828354, -0.510439, -0.230826,
		34.106907, 37.155479, 34.011318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961182, 37.952003, 33.729710>,  <33.527061, 37.512787, 34.172897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961182, 37.952003, 33.729710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086636, 37.583771, 33.636612>,  <34.161907, 37.362831, 33.580753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086636, 37.583771, 33.636612>,  <33.961182, 37.952003, 33.729710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086636, 37.583771, 33.636612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001388, 0.244670, -0.969605,
		0.949543, 0.304424, 0.075459,
		0.313634, -0.920577, -0.232747,
		34.180725, 37.307598, 33.566788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401402, 38.032669, 33.072266>,  <33.961182, 37.952003, 33.729710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401402, 38.032669, 33.072266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331173, 37.638893, 33.069290>,  <34.289036, 37.402630, 33.067505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331173, 37.638893, 33.069290>,  <34.401402, 38.032669, 33.072266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331173, 37.638893, 33.069290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123211, -0.014479, -0.992275,
		0.976726, -0.175133, 0.123836,
		-0.175574, -0.984438, -0.007436,
		34.278500, 37.343563, 33.067059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769444, 37.887333, 32.523399>,  <34.401402, 38.032669, 33.072266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769444, 37.887333, 32.523399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513260, 37.585442, 32.580254>,  <34.359550, 37.404308, 32.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513260, 37.585442, 32.580254>,  <34.769444, 37.887333, 32.523399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513260, 37.585442, 32.580254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025639, -0.163960, -0.986134,
		0.767568, -0.635218, 0.085658,
		-0.640455, -0.754728, 0.142137,
		34.321125, 37.359024, 32.622894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002384, 37.248920, 32.105728>,  <34.769444, 37.887333, 32.523399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002384, 37.248920, 32.105728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611794, 37.213074, 32.184177>,  <34.377438, 37.191566, 32.231247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611794, 37.213074, 32.184177>,  <35.002384, 37.248920, 32.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611794, 37.213074, 32.184177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173971, -0.209912, -0.962118,
		0.127389, -0.973605, 0.189384,
		-0.976477, -0.089616, 0.196119,
		34.318851, 37.186188, 32.243011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803352, 36.673561, 31.585718>,  <35.002384, 37.248920, 32.105728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803352, 36.673561, 31.585718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459145, 36.846535, 31.693422>,  <34.252621, 36.950317, 31.758045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459145, 36.846535, 31.693422>,  <34.803352, 36.673561, 31.585718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459145, 36.846535, 31.693422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333836, -0.079463, -0.939276,
		-0.384778, -0.898157, 0.212742,
		-0.860522, 0.432434, 0.269262,
		34.200989, 36.976265, 31.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283974, 36.184887, 31.387621>,  <34.803352, 36.673561, 31.585718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283974, 36.184887, 31.387621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133102, 36.554291, 31.415512>,  <34.042580, 36.775932, 31.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133102, 36.554291, 31.415512>,  <34.283974, 36.184887, 31.387621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133102, 36.554291, 31.415512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392626, -0.091259, -0.915159,
		-0.838796, -0.372559, 0.397015,
		-0.377182, 0.923510, 0.069729,
		34.019947, 36.831345, 31.436430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516933, 36.132835, 31.106565>,  <34.283974, 36.184887, 31.387621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516933, 36.132835, 31.106565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611877, 36.521378, 31.101883>,  <33.668842, 36.754501, 31.099073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611877, 36.521378, 31.101883>,  <33.516933, 36.132835, 31.106565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611877, 36.521378, 31.101883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469206, 0.104087, -0.876933,
		-0.850592, 0.213639, 0.480470,
		0.237357, 0.971352, -0.011705,
		33.683086, 36.812782, 31.098372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913605, 36.455532, 30.845200>,  <33.516933, 36.132835, 31.106565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913605, 36.455532, 30.845200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203815, 36.720436, 30.770346>,  <33.377941, 36.879379, 30.725433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203815, 36.720436, 30.770346>,  <32.913605, 36.455532, 30.845200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203815, 36.720436, 30.770346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249596, -0.000186, -0.968350,
		-0.641338, 0.749271, 0.165164,
		0.725525, 0.662264, -0.187134,
		33.421474, 36.919117, 30.714205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592243, 36.867474, 30.417963>,  <32.913605, 36.455532, 30.845200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592243, 36.867474, 30.417963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976223, 36.961987, 30.357735>,  <33.206612, 37.018696, 30.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976223, 36.961987, 30.357735>,  <32.592243, 36.867474, 30.417963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976223, 36.961987, 30.357735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219325, 0.299298, -0.928610,
		-0.174348, 0.924441, 0.339133,
		0.959948, 0.236282, -0.150571,
		33.264206, 37.032871, 30.312563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565239, 37.383904, 29.978079>,  <32.592243, 36.867474, 30.417963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565239, 37.383904, 29.978079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953098, 37.289612, 29.952126>,  <33.185814, 37.233036, 29.936554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953098, 37.289612, 29.952126>,  <32.565239, 37.383904, 29.978079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953098, 37.289612, 29.952126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005460, 0.244430, -0.969652,
		0.244430, 0.940578, 0.235725,
		0.969652, -0.235725, -0.064882,
		33.243996, 37.218895, 29.932661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983810, 37.993729, 29.713453>,  <32.565239, 37.383904, 29.978079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983810, 37.993729, 29.713453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185299, 37.659962, 29.623995>,  <33.306194, 37.459702, 29.570320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185299, 37.659962, 29.623995>,  <32.983810, 37.993729, 29.713453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185299, 37.659962, 29.623995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029385, 0.275292, -0.960911,
		0.863365, 0.477462, 0.163190,
		0.503723, -0.834413, -0.223647,
		33.336414, 37.409637, 29.556900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555004, 38.240467, 29.225332>,  <32.983810, 37.993729, 29.713453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555004, 38.240467, 29.225332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477180, 37.849163, 29.196632>,  <33.430489, 37.614380, 29.179413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477180, 37.849163, 29.196632>,  <33.555004, 38.240467, 29.225332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477180, 37.849163, 29.196632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027219, 0.067733, -0.997332,
		0.980514, -0.195989, 0.013450,
		-0.194556, -0.978264, -0.071748,
		33.418816, 37.555683, 29.175108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894573, 38.007717, 28.561230>,  <33.555004, 38.240467, 29.225332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894573, 38.007717, 28.561230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638870, 37.715290, 28.656633>,  <33.485447, 37.539833, 28.713875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638870, 37.715290, 28.656633>,  <33.894573, 38.007717, 28.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638870, 37.715290, 28.656633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162191, -0.174999, -0.971118,
		0.751693, -0.659479, -0.006703,
		-0.639259, -0.731070, 0.238507,
		33.447094, 37.495968, 28.728186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939854, 37.626266, 27.933500>,  <33.894573, 38.007717, 28.561230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939854, 37.626266, 27.933500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615658, 37.475750, 28.113066>,  <33.421143, 37.385441, 28.220804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615658, 37.475750, 28.113066>,  <33.939854, 37.626266, 27.933500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615658, 37.475750, 28.113066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440152, -0.114445, -0.890600,
		0.386498, -0.919407, -0.072868,
		-0.810485, -0.376288, 0.448911,
		33.372513, 37.362865, 28.247740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746586, 37.003197, 27.608622>,  <33.939854, 37.626266, 27.933500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746586, 37.003197, 27.608622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408627, 37.116051, 27.790411>,  <33.205849, 37.183762, 27.899485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408627, 37.116051, 27.790411>,  <33.746586, 37.003197, 27.608622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408627, 37.116051, 27.790411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512064, -0.180868, -0.839689,
		-0.154693, -0.942176, 0.297279,
		-0.844903, 0.282120, 0.454475,
		33.155155, 37.200691, 27.926752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264954, 36.488522, 27.430182>,  <33.746586, 37.003197, 27.608622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264954, 36.488522, 27.430182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050205, 36.803200, 27.552090>,  <32.921356, 36.992004, 27.625235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050205, 36.803200, 27.552090>,  <33.264954, 36.488522, 27.430182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050205, 36.803200, 27.552090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566056, -0.068025, -0.821555,
		-0.625580, -0.613585, 0.481833,
		-0.536871, 0.786693, 0.304768,
		32.889145, 37.039207, 27.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571201, 36.266983, 27.386749>,  <33.264954, 36.488522, 27.430182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571201, 36.266983, 27.386749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575340, 36.666302, 27.363766>,  <32.577824, 36.905891, 27.349976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575340, 36.666302, 27.363766>,  <32.571201, 36.266983, 27.386749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575340, 36.666302, 27.363766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697299, -0.033982, -0.715974,
		-0.716706, 0.047476, 0.695758,
		0.010348, 0.998294, -0.057461,
		32.578445, 36.965790, 27.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918734, 36.516468, 27.502357>,  <32.571201, 36.266983, 27.386749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918734, 36.516468, 27.502357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118912, 36.795624, 27.297415>,  <32.239017, 36.963116, 27.174450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118912, 36.795624, 27.297415>,  <31.918734, 36.516468, 27.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118912, 36.795624, 27.297415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555011, -0.195588, -0.808522,
		-0.664468, 0.688984, 0.289453,
		0.500445, 0.697886, -0.512356,
		32.269047, 37.004990, 27.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466705, 36.818722, 27.098047>,  <31.918734, 36.516468, 27.502357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466705, 36.818722, 27.098047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800203, 36.927921, 26.906071>,  <32.000301, 36.993439, 26.790884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800203, 36.927921, 26.906071>,  <31.466705, 36.818722, 27.098047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800203, 36.927921, 26.906071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444800, -0.182933, -0.876749,
		-0.327146, 0.944462, -0.031090,
		0.833743, 0.272996, -0.479943,
		32.050327, 37.009819, 26.762089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205341, 37.177193, 26.531492>,  <31.466705, 36.818722, 27.098047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205341, 37.177193, 26.531492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584595, 37.096420, 26.433294>,  <31.812147, 37.047958, 26.374376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584595, 37.096420, 26.433294>,  <31.205341, 37.177193, 26.531492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584595, 37.096420, 26.433294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293054, -0.256116, -0.921154,
		0.123133, 0.945320, -0.302008,
		0.948134, -0.201929, -0.245494,
		31.869036, 37.035843, 26.359646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288126, 37.433647, 25.839790>,  <31.205341, 37.177193, 26.531492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288126, 37.433647, 25.839790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572626, 37.154137, 25.870346>,  <31.743326, 36.986431, 25.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572626, 37.154137, 25.870346>,  <31.288126, 37.433647, 25.839790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572626, 37.154137, 25.870346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282578, -0.383732, -0.879147,
		0.643640, 0.603708, -0.470388,
		0.711251, -0.698775, 0.076390,
		31.786001, 36.944504, 25.893263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478655, 37.404255, 25.181110>,  <31.288126, 37.433647, 25.839790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478655, 37.404255, 25.181110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614052, 37.062763, 25.339388>,  <31.695290, 36.857868, 25.434355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614052, 37.062763, 25.339388>,  <31.478655, 37.404255, 25.181110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614052, 37.062763, 25.339388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235320, -0.483955, -0.842859,
		0.911070, 0.192187, -0.364714,
		0.338491, -0.853728, 0.395691,
		31.715599, 36.806644, 25.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964434, 37.212021, 24.753439>,  <31.478655, 37.404255, 25.181110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964434, 37.212021, 24.753439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813389, 36.898094, 24.949997>,  <31.722761, 36.709740, 25.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813389, 36.898094, 24.949997>,  <31.964434, 37.212021, 24.753439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813389, 36.898094, 24.949997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174762, -0.460742, -0.870158,
		0.909322, -0.414460, 0.036826,
		-0.377613, -0.784818, 0.491395,
		31.700106, 36.662647, 25.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220764, 36.612972, 24.396307>,  <31.964434, 37.212021, 24.753439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220764, 36.612972, 24.396307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910988, 36.462975, 24.600119>,  <31.725121, 36.372978, 24.722404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910988, 36.462975, 24.600119>,  <32.220764, 36.612972, 24.396307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910988, 36.462975, 24.600119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325991, -0.453702, -0.829388,
		0.542187, -0.808416, 0.229123,
		-0.774444, -0.374991, 0.509528,
		31.678654, 36.350479, 24.752977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195446, 35.996502, 24.229765>,  <32.220764, 36.612972, 24.396307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195446, 35.996502, 24.229765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818893, 36.025517, 24.361549>,  <31.592962, 36.042927, 24.440620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818893, 36.025517, 24.361549>,  <32.195446, 35.996502, 24.229765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818893, 36.025517, 24.361549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320408, -0.497859, -0.805900,
		0.105569, -0.864219, 0.491915,
		-0.941378, 0.072535, 0.329462,
		31.536480, 36.047276, 24.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969831, 35.423077, 23.945528>,  <32.195446, 35.996502, 24.229765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969831, 35.423077, 23.945528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655382, 35.637951, 24.067799>,  <31.466713, 35.766876, 24.141161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655382, 35.637951, 24.067799>,  <31.969831, 35.423077, 23.945528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655382, 35.637951, 24.067799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560891, -0.412283, -0.717930,
		-0.259637, -0.735834, 0.625409,
		-0.786123, 0.537187, 0.305679,
		31.419546, 35.799107, 24.159502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361877, 35.045738, 24.211588>,  <31.969831, 35.423077, 23.945528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361877, 35.045738, 24.211588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230476, 35.390446, 24.056955>,  <31.151636, 35.597271, 23.964176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230476, 35.390446, 24.056955>,  <31.361877, 35.045738, 24.211588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230476, 35.390446, 24.056955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450595, -0.502708, -0.737733,
		-0.830092, -0.068153, 0.553447,
		-0.328501, 0.861766, -0.386584,
		31.131926, 35.648975, 23.940981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826294, 34.836086, 23.884626>,  <31.361877, 35.045738, 24.211588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826294, 34.836086, 23.884626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857239, 35.209064, 23.743452>,  <30.875805, 35.432850, 23.658747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857239, 35.209064, 23.743452>,  <30.826294, 34.836086, 23.884626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857239, 35.209064, 23.743452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388193, -0.297889, -0.872106,
		-0.918325, 0.204475, 0.338923,
		0.077362, 0.932444, -0.352935,
		30.880447, 35.488796, 23.637571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266520, 34.829216, 23.470448>,  <30.826294, 34.836086, 23.884626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266520, 34.829216, 23.470448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456308, 35.155903, 23.339090>,  <30.570181, 35.351917, 23.260277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456308, 35.155903, 23.339090>,  <30.266520, 34.829216, 23.470448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456308, 35.155903, 23.339090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363413, -0.158043, -0.918125,
		-0.801753, 0.554967, 0.221820,
		0.474472, 0.816722, -0.328393,
		30.598650, 35.400921, 23.240572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816889, 35.102272, 23.015034>,  <30.266520, 34.829216, 23.470448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816889, 35.102272, 23.015034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151608, 35.294880, 22.910801>,  <30.352440, 35.410446, 22.848261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151608, 35.294880, 22.910801>,  <29.816889, 35.102272, 23.015034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151608, 35.294880, 22.910801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265612, -0.059154, -0.962263,
		-0.478767, 0.874435, 0.078398,
		0.836799, 0.481523, -0.260582,
		30.402647, 35.439339, 22.832626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651741, 35.718304, 22.561264>,  <29.816889, 35.102272, 23.015034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651741, 35.718304, 22.561264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023464, 35.596237, 22.478064>,  <30.246498, 35.522999, 22.428143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023464, 35.596237, 22.478064>,  <29.651741, 35.718304, 22.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023464, 35.596237, 22.478064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231663, -0.043062, -0.971842,
		0.287615, 0.951326, -0.110713,
		0.929306, -0.305165, -0.208002,
		30.302256, 35.504688, 22.415663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900032, 36.198326, 21.991394>,  <29.651741, 35.718304, 22.561264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900032, 36.198326, 21.991394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106421, 35.855701, 21.994680>,  <30.230253, 35.650127, 21.996653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106421, 35.855701, 21.994680>,  <29.900032, 36.198326, 21.991394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106421, 35.855701, 21.994680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140629, -0.094162, -0.985575,
		0.844982, 0.507375, -0.169043,
		0.515973, -0.856565, 0.008214,
		30.261213, 35.598732, 21.997145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215717, 36.135582, 21.365911>,  <29.900032, 36.198326, 21.991394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215717, 36.135582, 21.365911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254229, 35.756416, 21.487358>,  <30.277336, 35.528915, 21.560226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254229, 35.756416, 21.487358>,  <30.215717, 36.135582, 21.365911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254229, 35.756416, 21.487358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017495, -0.306598, -0.951678,
		0.995201, 0.086315, -0.046103,
		0.096279, -0.947918, 0.303616,
		30.283112, 35.472042, 21.578444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697027, 35.720535, 20.848122>,  <30.215717, 36.135582, 21.365911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697027, 35.720535, 20.848122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483521, 35.433689, 21.027382>,  <30.355417, 35.261581, 21.134937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483521, 35.433689, 21.027382>,  <30.697027, 35.720535, 20.848122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483521, 35.433689, 21.027382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098836, -0.473421, -0.875274,
		0.839837, -0.511483, 0.181818,
		-0.533765, -0.717118, 0.448149,
		30.323391, 35.218555, 21.161827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037874, 35.069263, 20.589306>,  <30.697027, 35.720535, 20.848122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037874, 35.069263, 20.589306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659351, 35.007576, 20.702951>,  <30.432238, 34.970562, 20.771139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659351, 35.007576, 20.702951>,  <31.037874, 35.069263, 20.589306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659351, 35.007576, 20.702951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106468, -0.681160, -0.724352,
		0.305235, -0.715708, 0.628167,
		-0.946307, -0.154218, 0.284113,
		30.375460, 34.961311, 20.788185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918194, 34.302505, 20.618807>,  <31.037874, 35.069263, 20.589306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918194, 34.302505, 20.618807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551128, 34.458763, 20.589712>,  <30.330889, 34.552517, 20.572256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551128, 34.458763, 20.589712>,  <30.918194, 34.302505, 20.618807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551128, 34.458763, 20.589712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265083, -0.738203, -0.620312,
		-0.296018, -0.549956, 0.780975,
		-0.917663, 0.390647, -0.072737,
		30.275829, 34.575958, 20.567890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312960, 33.731342, 20.897766>,  <30.918194, 34.302505, 20.618807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312960, 33.731342, 20.897766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558664, 33.521095, 20.662340>,  <31.706087, 33.394947, 20.521086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558664, 33.521095, 20.662340>,  <31.312960, 33.731342, 20.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558664, 33.521095, 20.662340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772803, 0.249891, 0.583378,
		-0.159558, -0.813190, 0.559699,
		0.614261, -0.525620, -0.588564,
		31.742943, 33.363411, 20.485771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549545, 33.081905, 21.284153>,  <31.312960, 33.731342, 20.897766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549545, 33.081905, 21.284153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811668, 33.223366, 21.017168>,  <31.968943, 33.308243, 20.856977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811668, 33.223366, 21.017168>,  <31.549545, 33.081905, 21.284153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811668, 33.223366, 21.017168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715423, -0.007059, 0.698656,
		0.242367, -0.935352, -0.257633,
		0.655308, 0.353647, -0.667461,
		32.008263, 33.329460, 20.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146832, 32.643787, 21.333221>,  <31.549545, 33.081905, 21.284153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146832, 32.643787, 21.333221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282299, 32.976421, 21.157145>,  <32.363579, 33.176003, 21.051498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282299, 32.976421, 21.157145>,  <32.146832, 32.643787, 21.333221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282299, 32.976421, 21.157145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686042, 0.101936, 0.720385,
		0.643934, -0.545959, -0.535982,
		0.338665, 0.831587, -0.440191,
		32.383900, 33.225899, 21.025087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862179, 32.627113, 21.448895>,  <32.146832, 32.643787, 21.333221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862179, 32.627113, 21.448895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806625, 33.005379, 21.331303>,  <32.773293, 33.232338, 21.260748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806625, 33.005379, 21.331303>,  <32.862179, 32.627113, 21.448895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806625, 33.005379, 21.331303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772549, 0.289185, 0.565279,
		0.619581, -0.148608, -0.770737,
		-0.138881, 0.945668, -0.293980,
		32.764961, 33.289078, 21.243109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568027, 32.924480, 21.315617>,  <32.862179, 32.627113, 21.448895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568027, 32.924480, 21.315617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321461, 33.236732, 21.356871>,  <33.173519, 33.424084, 21.381624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321461, 33.236732, 21.356871>,  <33.568027, 32.924480, 21.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321461, 33.236732, 21.356871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633215, 0.413578, 0.654211,
		0.468044, 0.468576, -0.749247,
		-0.616420, 0.780634, 0.103137,
		33.136536, 33.470924, 21.387812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018974, 33.453449, 21.406059>,  <33.568027, 32.924480, 21.315617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018974, 33.453449, 21.406059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667049, 33.586658, 21.541719>,  <33.455894, 33.666584, 21.623116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667049, 33.586658, 21.541719>,  <34.018974, 33.453449, 21.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667049, 33.586658, 21.541719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462987, 0.438972, 0.770030,
		0.107561, 0.834505, -0.540399,
		-0.879815, 0.333023, 0.339148,
		33.403107, 33.686565, 21.643463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179729, 34.116875, 21.475683>,  <34.018974, 33.453449, 21.406059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179729, 34.116875, 21.475683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860489, 34.033913, 21.701962>,  <33.668945, 33.984135, 21.837729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860489, 34.033913, 21.701962>,  <34.179729, 34.116875, 21.475683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860489, 34.033913, 21.701962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500427, 0.294712, 0.814074,
		-0.335560, 0.932807, -0.131421,
		-0.798105, -0.207404, 0.565696,
		33.621056, 33.971691, 21.871670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082664, 34.723251, 21.777163>,  <34.179729, 34.116875, 21.475683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082664, 34.723251, 21.777163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892696, 34.452835, 22.002522>,  <33.778717, 34.290585, 22.137737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892696, 34.452835, 22.002522>,  <34.082664, 34.723251, 21.777163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892696, 34.452835, 22.002522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502663, 0.317102, 0.804224,
		-0.722343, 0.665143, 0.189222,
		-0.474921, -0.676041, 0.563399,
		33.750221, 34.250023, 22.171541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855541, 35.061825, 22.440882>,  <34.082664, 34.723251, 21.777163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855541, 35.061825, 22.440882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817833, 34.673973, 22.531151>,  <33.795208, 34.441261, 22.585312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817833, 34.673973, 22.531151>,  <33.855541, 35.061825, 22.440882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817833, 34.673973, 22.531151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131347, 0.212585, 0.968275,
		-0.986844, 0.120923, 0.107318,
		-0.094272, -0.969632, 0.225671,
		33.789551, 34.383083, 22.598852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402725, 34.914684, 22.915073>,  <33.855541, 35.061825, 22.440882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402725, 34.914684, 22.915073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648239, 34.603912, 22.971136>,  <33.795547, 34.417450, 23.004774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648239, 34.603912, 22.971136>,  <33.402725, 34.914684, 22.915073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648239, 34.603912, 22.971136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181364, 0.311550, 0.932761,
		-0.768358, -0.547096, 0.332132,
		0.613786, -0.776932, 0.140158,
		33.832375, 34.370834, 23.013184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366737, 34.673523, 23.687555>,  <33.402725, 34.914684, 22.915073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366737, 34.673523, 23.687555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700943, 34.493080, 23.562069>,  <33.901466, 34.384815, 23.486776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700943, 34.493080, 23.562069>,  <33.366737, 34.673523, 23.687555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700943, 34.493080, 23.562069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376945, 0.055153, 0.924592,
		-0.399792, -0.890761, 0.216125,
		0.835511, -0.451112, -0.313718,
		33.951595, 34.357746, 23.467953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478195, 34.173702, 24.146635>,  <33.366737, 34.673523, 23.687555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478195, 34.173702, 24.146635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830353, 34.270115, 23.983263>,  <34.041645, 34.327965, 23.885239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830353, 34.270115, 23.983263>,  <33.478195, 34.173702, 24.146635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830353, 34.270115, 23.983263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395727, 0.101268, 0.912768,
		0.261371, -0.965218, -0.006229,
		0.880389, 0.241036, -0.408432,
		34.094471, 34.342426, 23.860733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936581, 33.791885, 24.546417>,  <33.478195, 34.173702, 24.146635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936581, 33.791885, 24.546417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201683, 34.038937, 24.377048>,  <34.360744, 34.187168, 24.275427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201683, 34.038937, 24.377048>,  <33.936581, 33.791885, 24.546417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201683, 34.038937, 24.377048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457457, 0.113728, 0.881929,
		0.592859, -0.778204, -0.207164,
		0.662760, 0.617628, -0.423420,
		34.400513, 34.224224, 24.250023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653996, 33.604294, 24.742767>,  <33.936581, 33.791885, 24.546417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653996, 33.604294, 24.742767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697269, 33.982437, 24.619749>,  <34.723232, 34.209324, 24.545938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697269, 33.982437, 24.619749>,  <34.653996, 33.604294, 24.742767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697269, 33.982437, 24.619749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486151, 0.219540, 0.845848,
		0.867153, -0.241022, -0.435838,
		0.108184, 0.945363, -0.307547,
		34.729725, 34.266045, 24.527485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405636, 33.717651, 24.882723>,  <34.653996, 33.604294, 24.742767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405636, 33.717651, 24.882723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215271, 34.068798, 24.861366>,  <35.101051, 34.279488, 24.848553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215271, 34.068798, 24.861366>,  <35.405636, 33.717651, 24.882723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215271, 34.068798, 24.861366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325380, 0.232146, 0.916644,
		0.817089, 0.418869, -0.396123,
		-0.475912, 0.877871, -0.053392,
		35.072498, 34.332161, 24.845348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879845, 34.313255, 25.104532>,  <35.405636, 33.717651, 24.882723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879845, 34.313255, 25.104532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499382, 34.410191, 25.181036>,  <35.271107, 34.468349, 25.226938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499382, 34.410191, 25.181036>,  <35.879845, 34.313255, 25.104532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499382, 34.410191, 25.181036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245516, 0.218184, 0.944520,
		0.187161, 0.945341, -0.267024,
		-0.951153, 0.242336, 0.191261,
		35.214035, 34.482891, 25.238415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024109, 35.007881, 25.378325>,  <35.879845, 34.313255, 25.104532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024109, 35.007881, 25.378325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656700, 34.900455, 25.494381>,  <35.436253, 34.835999, 25.564014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656700, 34.900455, 25.494381>,  <36.024109, 35.007881, 25.378325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656700, 34.900455, 25.494381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154620, 0.431402, 0.888811,
		-0.363871, 0.861258, -0.354729,
		-0.918526, -0.268564, 0.290142,
		35.381142, 34.819885, 25.581423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817535, 35.517326, 25.787514>,  <36.024109, 35.007881, 25.378325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817535, 35.517326, 25.787514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528980, 35.254868, 25.876123>,  <35.355846, 35.097393, 25.929289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528980, 35.254868, 25.876123>,  <35.817535, 35.517326, 25.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528980, 35.254868, 25.876123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001866, 0.318031, 0.948079,
		-0.692533, 0.684342, -0.228197,
		-0.721384, -0.656150, 0.221524,
		35.312565, 35.058022, 25.942581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381569, 35.868397, 26.142851>,  <35.817535, 35.517326, 25.787514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381569, 35.868397, 26.142851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321632, 35.487774, 26.250252>,  <35.285671, 35.259399, 26.314692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321632, 35.487774, 26.250252>,  <35.381569, 35.868397, 26.142851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321632, 35.487774, 26.250252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029949, 0.275812, 0.960745,
		-0.988256, 0.135919, -0.069827,
		-0.149843, -0.951553, 0.268502,
		35.276680, 35.202309, 26.330803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038860, 35.895729, 26.729849>,  <35.381569, 35.868397, 26.142851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038860, 35.895729, 26.729849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148304, 35.512196, 26.760250>,  <35.213970, 35.282074, 26.778492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148304, 35.512196, 26.760250>,  <35.038860, 35.895729, 26.729849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148304, 35.512196, 26.760250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125149, 0.113837, 0.985585,
		-0.953664, -0.260155, 0.151144,
		0.273611, -0.958833, 0.076004,
		35.230389, 35.224545, 26.783051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697906, 35.530941, 27.348385>,  <35.038860, 35.895729, 26.729849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697906, 35.530941, 27.348385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032471, 35.317928, 27.296497>,  <35.233208, 35.190121, 27.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032471, 35.317928, 27.296497>,  <34.697906, 35.530941, 27.348385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032471, 35.317928, 27.296497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222079, 0.112898, 0.968471,
		-0.501097, -0.838847, 0.212693,
		0.836411, -0.532532, -0.129717,
		35.283394, 35.158169, 27.257582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630066, 34.887589, 27.757717>,  <34.697906, 35.530941, 27.348385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630066, 34.887589, 27.757717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007576, 35.004650, 27.696209>,  <35.234081, 35.074886, 27.659304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007576, 35.004650, 27.696209>,  <34.630066, 34.887589, 27.757717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007576, 35.004650, 27.696209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126642, 0.109609, 0.985874,
		0.305372, -0.949916, 0.066384,
		0.943774, 0.292651, -0.153771,
		35.290707, 35.092445, 27.650078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884377, 34.747730, 28.390703>,  <34.630066, 34.887589, 27.757717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884377, 34.747730, 28.390703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192204, 34.949478, 28.234055>,  <35.376900, 35.070526, 28.140066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192204, 34.949478, 28.234055>,  <34.884377, 34.747730, 28.390703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192204, 34.949478, 28.234055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207684, 0.382247, 0.900419,
		0.603844, -0.774270, 0.189416,
		0.769571, 0.504373, -0.391621,
		35.423077, 35.100792, 28.116568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430946, 34.659859, 28.909693>,  <34.884377, 34.747730, 28.390703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430946, 34.659859, 28.909693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527935, 34.979843, 28.690140>,  <35.586128, 35.171833, 28.558407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527935, 34.979843, 28.690140>,  <35.430946, 34.659859, 28.909693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527935, 34.979843, 28.690140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293553, 0.478749, 0.827421,
		0.924682, -0.361749, -0.118749,
		0.242468, 0.799960, -0.548883,
		35.600674, 35.219830, 28.525475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172421, 34.784374, 28.945044>,  <35.430946, 34.659859, 28.909693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172421, 34.784374, 28.945044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956528, 35.116802, 28.891354>,  <35.826992, 35.316257, 28.859140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956528, 35.116802, 28.891354>,  <36.172421, 34.784374, 28.945044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956528, 35.116802, 28.891354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332748, 0.357069, 0.872800,
		0.773282, 0.426417, -0.469258,
		-0.539734, 0.831066, -0.134225,
		35.794609, 35.366123, 28.851086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640221, 35.381073, 28.975357>,  <36.172421, 34.784374, 28.945044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640221, 35.381073, 28.975357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285072, 35.555641, 29.033634>,  <36.071983, 35.660381, 29.068600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285072, 35.555641, 29.033634>,  <36.640221, 35.381073, 28.975357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285072, 35.555641, 29.033634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337515, 0.402597, 0.850882,
		0.312689, 0.804643, -0.504752,
		-0.887868, 0.436423, 0.145691,
		36.018711, 35.686569, 29.077341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796803, 36.108009, 29.127258>,  <36.640221, 35.381073, 28.975357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796803, 36.108009, 29.127258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413517, 36.076286, 29.237190>,  <36.183544, 36.057251, 29.303150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413517, 36.076286, 29.237190>,  <36.796803, 36.108009, 29.127258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413517, 36.076286, 29.237190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190898, 0.538230, 0.820894,
		-0.213026, 0.839058, -0.500601,
		-0.958216, -0.079307, 0.274832,
		36.126053, 36.052494, 29.319639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613766, 36.753845, 29.427980>,  <36.796803, 36.108009, 29.127258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613766, 36.753845, 29.427980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329979, 36.504627, 29.559721>,  <36.159706, 36.355095, 29.638765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329979, 36.504627, 29.559721>,  <36.613766, 36.753845, 29.427980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329979, 36.504627, 29.559721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009717, 0.475941, 0.879423,
		-0.704671, 0.620722, -0.343720,
		-0.709468, -0.623044, 0.329350,
		36.117138, 36.317715, 29.658525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099941, 37.242680, 29.761393>,  <36.613766, 36.753845, 29.427980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099941, 37.242680, 29.761393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046776, 36.869453, 29.895094>,  <36.014877, 36.645519, 29.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046776, 36.869453, 29.895094>,  <36.099941, 37.242680, 29.761393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046776, 36.869453, 29.895094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021251, 0.334485, 0.942161,
		-0.990900, 0.132331, -0.024630,
		-0.132916, -0.933064, 0.334254,
		36.006901, 36.589535, 29.995371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615997, 37.326500, 30.349146>,  <36.099941, 37.242680, 29.761393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615997, 37.326500, 30.349146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836575, 36.995258, 30.389444>,  <35.968922, 36.796513, 30.413624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836575, 36.995258, 30.389444>,  <35.615997, 37.326500, 30.349146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836575, 36.995258, 30.389444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170440, 0.230062, 0.958135,
		-0.816613, -0.511189, 0.268009,
		0.551447, -0.828105, 0.100744,
		36.002010, 36.746826, 30.419668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449905, 36.990555, 31.031029>,  <35.615997, 37.326500, 30.349146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449905, 36.990555, 31.031029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792950, 36.797970, 30.958696>,  <35.998775, 36.682419, 30.915297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792950, 36.797970, 30.958696>,  <35.449905, 36.990555, 31.031029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792950, 36.797970, 30.958696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205920, -0.000743, 0.978568,
		-0.471278, -0.876467, 0.098505,
		0.857609, -0.481462, -0.180832,
		36.050232, 36.653530, 30.904448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497120, 36.509521, 31.528294>,  <35.449905, 36.990555, 31.031029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497120, 36.509521, 31.528294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872921, 36.540710, 31.394873>,  <36.098400, 36.559425, 31.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872921, 36.540710, 31.394873>,  <35.497120, 36.509521, 31.528294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872921, 36.540710, 31.394873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342542, -0.208859, 0.915993,
		0.001757, -0.974832, -0.222932,
		0.939501, 0.077973, -0.333554,
		36.154770, 36.564102, 31.294806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853634, 35.972706, 31.710846>,  <35.497120, 36.509521, 31.528294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853634, 35.972706, 31.710846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150032, 36.229607, 31.632425>,  <36.327873, 36.383747, 31.585373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150032, 36.229607, 31.632425>,  <35.853634, 35.972706, 31.710846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150032, 36.229607, 31.632425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481723, -0.305011, 0.821529,
		0.467829, -0.703195, -0.535400,
		0.740999, 0.642250, -0.196052,
		36.372330, 36.422283, 31.573610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453400, 35.551029, 31.939224>,  <35.853634, 35.972706, 31.710846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453400, 35.551029, 31.939224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598015, 35.922215, 31.903053>,  <36.684784, 36.144924, 31.881351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598015, 35.922215, 31.903053>,  <36.453400, 35.551029, 31.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598015, 35.922215, 31.903053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585986, -0.150718, 0.796181,
		0.725196, -0.340840, -0.598263,
		0.361540, 0.927961, -0.090427,
		36.706478, 36.200603, 31.875925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160301, 35.478935, 32.112949>,  <36.453400, 35.551029, 31.939224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160301, 35.478935, 32.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037663, 35.855640, 32.168194>,  <36.964077, 36.081665, 32.201340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037663, 35.855640, 32.168194>,  <37.160301, 35.478935, 32.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037663, 35.855640, 32.168194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591953, 0.075036, 0.802472,
		0.745377, 0.327791, -0.580488,
		-0.306600, 0.941766, 0.138107,
		36.945683, 36.138168, 32.209625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698376, 35.839581, 32.249859>,  <37.160301, 35.478935, 32.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698376, 35.839581, 32.249859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418907, 36.069519, 32.420223>,  <37.251225, 36.207481, 32.522442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418907, 36.069519, 32.420223>,  <37.698376, 35.839581, 32.249859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418907, 36.069519, 32.420223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634779, 0.223478, 0.739671,
		0.330018, 0.787150, -0.521041,
		-0.698673, 0.574850, 0.425915,
		37.209305, 36.241974, 32.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066906, 36.214649, 32.624641>,  <37.698376, 35.839581, 32.249859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066906, 36.214649, 32.624641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726734, 36.340145, 32.793564>,  <37.522633, 36.415443, 32.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726734, 36.340145, 32.793564>,  <38.066906, 36.214649, 32.624641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726734, 36.340145, 32.793564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500837, 0.237092, 0.832436,
		0.161042, 0.919432, -0.358762,
		-0.850428, 0.313739, 0.422304,
		37.471607, 36.434265, 32.920254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240578, 36.870068, 32.888897>,  <38.066906, 36.214649, 32.624641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240578, 36.870068, 32.888897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924137, 36.715565, 33.078617>,  <37.734272, 36.622864, 33.192448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924137, 36.715565, 33.078617>,  <38.240578, 36.870068, 32.888897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924137, 36.715565, 33.078617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419519, 0.221681, 0.880262,
		-0.445152, 0.895356, -0.013330,
		-0.791103, -0.386258, 0.474300,
		37.686806, 36.599686, 33.220905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107548, 37.327278, 33.428188>,  <38.240578, 36.870068, 32.888897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107548, 37.327278, 33.428188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939869, 36.979469, 33.532646>,  <37.839260, 36.770782, 33.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939869, 36.979469, 33.532646>,  <38.107548, 37.327278, 33.428188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939869, 36.979469, 33.532646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309367, 0.133622, 0.941508,
		-0.853559, 0.475471, 0.212988,
		-0.419200, -0.869525, 0.261149,
		37.814110, 36.718613, 33.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722797, 37.473553, 34.035393>,  <38.107548, 37.327278, 33.428188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722797, 37.473553, 34.035393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799309, 37.081001, 34.028419>,  <37.845215, 36.845470, 34.024235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799309, 37.081001, 34.028419>,  <37.722797, 37.473553, 34.035393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799309, 37.081001, 34.028419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151535, 0.011973, 0.988379,
		-0.969768, -0.191700, 0.151004,
		0.191280, -0.981381, -0.017438,
		37.856693, 36.786587, 34.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301857, 37.228157, 34.500916>,  <37.722797, 37.473553, 34.035393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301857, 37.228157, 34.500916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607380, 36.970661, 34.482182>,  <37.790695, 36.816162, 34.470940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607380, 36.970661, 34.482182>,  <37.301857, 37.228157, 34.500916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607380, 36.970661, 34.482182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194398, 0.160250, 0.967744,
		-0.615472, -0.748276, 0.247542,
		0.763808, -0.643742, -0.046834,
		37.836521, 36.777538, 34.468132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284756, 36.793278, 35.130630>,  <37.301857, 37.228157, 34.500916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284756, 36.793278, 35.130630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659336, 36.758484, 34.994686>,  <37.884083, 36.737610, 34.913120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659336, 36.758484, 34.994686>,  <37.284756, 36.793278, 35.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659336, 36.758484, 34.994686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335968, -0.056453, 0.940180,
		-0.100969, -0.994609, -0.023641,
		0.936446, -0.086986, -0.339856,
		37.940269, 36.732388, 34.892731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550949, 36.219296, 35.548309>,  <37.284756, 36.793278, 35.130630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550949, 36.219296, 35.548309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851837, 36.419300, 35.376659>,  <38.032372, 36.539303, 35.273670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851837, 36.419300, 35.376659>,  <37.550949, 36.219296, 35.548309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851837, 36.419300, 35.376659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355289, 0.240687, 0.903238,
		0.554914, -0.831900, 0.003402,
		0.752223, 0.500011, -0.429125,
		38.077503, 36.569302, 35.247921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300129, 35.966869, 35.540607>,  <37.550949, 36.219296, 35.548309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300129, 35.966869, 35.540607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234165, 36.358177, 35.590870>,  <38.194588, 36.592964, 35.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234165, 36.358177, 35.590870>,  <38.300129, 35.966869, 35.540607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234165, 36.358177, 35.590870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240390, -0.083690, 0.967062,
		0.956565, 0.189684, -0.221366,
		-0.164910, 0.978272, 0.125653,
		38.184692, 36.651657, 35.628567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707150, 36.113163, 36.198391>,  <38.300129, 35.966869, 35.540607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707150, 36.113163, 36.198391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894905, 36.458683, 36.271637>,  <39.007557, 36.665993, 36.315582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894905, 36.458683, 36.271637>,  <38.707150, 36.113163, 36.198391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894905, 36.458683, 36.271637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105673, -0.260838, 0.959581,
		0.876647, -0.431065, -0.213714,
		0.469387, 0.863798, 0.183111,
		39.035721, 36.717823, 36.326569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355988, 35.929100, 36.548771>,  <38.707150, 36.113163, 36.198391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355988, 35.929100, 36.548771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207146, 36.291378, 36.630013>,  <39.117840, 36.508747, 36.678757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207146, 36.291378, 36.630013>,  <39.355988, 35.929100, 36.548771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207146, 36.291378, 36.630013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024213, -0.209268, 0.977559,
		0.927876, 0.368670, 0.055940,
		-0.372103, 0.905698, 0.203101,
		39.095516, 36.563087, 36.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693237, 36.143494, 37.008961>,  <39.355988, 35.929100, 36.548771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693237, 36.143494, 37.008961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357204, 36.354137, 37.061028>,  <39.155582, 36.480522, 37.092266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357204, 36.354137, 37.061028>,  <39.693237, 36.143494, 37.008961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357204, 36.354137, 37.061028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005812, -0.248677, 0.968569,
		0.542423, 0.812924, 0.211971,
		-0.840085, 0.526606, 0.130164,
		39.105179, 36.512119, 37.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686066, 36.564247, 37.642792>,  <39.693237, 36.143494, 37.008961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686066, 36.564247, 37.642792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307632, 36.459301, 37.566803>,  <39.080574, 36.396332, 37.521210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307632, 36.459301, 37.566803>,  <39.686066, 36.564247, 37.642792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307632, 36.459301, 37.566803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062831, -0.426710, 0.902203,
		-0.317770, 0.865496, 0.387219,
		-0.946084, -0.262364, -0.189976,
		39.023808, 36.380592, 37.509811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210968, 37.003571, 38.075691>,  <39.686066, 36.564247, 37.642792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210968, 37.003571, 38.075691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034340, 36.653614, 37.996109>,  <38.928364, 36.443642, 37.948360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034340, 36.653614, 37.996109>,  <39.210968, 37.003571, 38.075691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034340, 36.653614, 37.996109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110243, -0.167158, 0.979747,
		-0.890430, 0.454557, -0.022640,
		-0.441567, -0.874892, -0.198955,
		38.901871, 36.391148, 37.936424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709705, 36.898968, 38.542526>,  <39.210968, 37.003571, 38.075691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709705, 36.898968, 38.542526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762974, 36.520161, 38.425621>,  <38.794937, 36.292877, 38.355476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762974, 36.520161, 38.425621>,  <38.709705, 36.898968, 38.542526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762974, 36.520161, 38.425621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112469, -0.307424, 0.944903,
		-0.984690, -0.092966, -0.147452,
		0.133174, -0.947020, -0.292262,
		38.802925, 36.236053, 38.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425560, 36.342453, 39.111362>,  <38.709705, 36.898968, 38.542526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425560, 36.342453, 39.111362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562473, 36.082874, 38.839565>,  <38.644623, 35.927128, 38.676487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562473, 36.082874, 38.839565>,  <38.425560, 36.342453, 39.111362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562473, 36.082874, 38.839565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078045, -0.701038, 0.708840,
		-0.936349, -0.295656, -0.189308,
		0.342285, -0.648947, -0.679491,
		38.665157, 35.888191, 38.635719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116520, 35.593754, 39.207565>,  <38.425560, 36.342453, 39.111362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116520, 35.593754, 39.207565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433910, 35.505173, 38.980816>,  <38.624344, 35.452023, 38.844765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433910, 35.505173, 38.980816>,  <38.116520, 35.593754, 39.207565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433910, 35.505173, 38.980816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230635, -0.752559, 0.616817,
		-0.563203, -0.620173, -0.546066,
		0.793479, -0.221451, -0.566877,
		38.671955, 35.438736, 38.810753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103828, 34.803108, 39.099434>,  <38.116520, 35.593754, 39.207565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103828, 34.803108, 39.099434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468529, 34.963047, 39.061844>,  <38.687347, 35.059010, 39.039288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468529, 34.963047, 39.061844>,  <38.103828, 34.803108, 39.099434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468529, 34.963047, 39.061844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355055, -0.652188, 0.669766,
		0.206516, -0.644026, -0.736601,
		0.911750, 0.399852, -0.093978,
		38.742054, 35.083004, 39.033649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546471, 34.253315, 39.026646>,  <38.103828, 34.803108, 39.099434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546471, 34.253315, 39.026646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763405, 34.564697, 39.153069>,  <38.893566, 34.751526, 39.228920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763405, 34.564697, 39.153069>,  <38.546471, 34.253315, 39.026646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763405, 34.564697, 39.153069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334292, -0.545059, 0.768869,
		0.770795, -0.311328, -0.555832,
		0.542332, 0.778451, 0.316054,
		38.926105, 34.798233, 39.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281876, 34.021770, 39.114075>,  <38.546471, 34.253315, 39.026646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281876, 34.021770, 39.114075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254391, 34.351120, 39.339401>,  <39.237900, 34.548729, 39.474598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254391, 34.351120, 39.339401>,  <39.281876, 34.021770, 39.114075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254391, 34.351120, 39.339401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427595, -0.485851, 0.762307,
		0.901355, 0.293253, -0.318687,
		-0.068714, 0.823378, 0.563317,
		39.233776, 34.598133, 39.508396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026386, 34.091496, 39.365543>,  <39.281876, 34.021770, 39.114075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026386, 34.091496, 39.365543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732052, 34.239513, 39.592384>,  <39.555450, 34.328323, 39.728489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732052, 34.239513, 39.592384>,  <40.026386, 34.091496, 39.365543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732052, 34.239513, 39.592384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399010, -0.439706, 0.804642,
		0.547116, 0.818367, 0.175899,
		-0.735836, 0.370047, 0.567107,
		39.511299, 34.350529, 39.762516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220387, 34.442146, 39.967861>,  <40.026386, 34.091496, 39.365543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220387, 34.442146, 39.967861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841667, 34.340462, 40.046803>,  <39.614437, 34.279449, 40.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841667, 34.340462, 40.046803>,  <40.220387, 34.442146, 39.967861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841667, 34.340462, 40.046803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311608, -0.570858, 0.759619,
		-0.080448, 0.780702, 0.619703,
		-0.946799, -0.254214, 0.197349,
		39.557629, 34.264198, 40.106007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060848, 34.448410, 40.615200>,  <40.220387, 34.442146, 39.967861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060848, 34.448410, 40.615200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796139, 34.176304, 40.489155>,  <39.637314, 34.013039, 40.413528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796139, 34.176304, 40.489155>,  <40.060848, 34.448410, 40.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796139, 34.176304, 40.489155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252368, -0.597916, 0.760794,
		-0.705954, 0.423946, 0.567361,
		-0.661769, -0.680269, -0.315111,
		39.597607, 33.972221, 40.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704163, 34.245796, 41.231380>,  <40.060848, 34.448410, 40.615200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704163, 34.245796, 41.231380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620556, 33.954865, 40.969910>,  <39.570393, 33.780304, 40.813026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620556, 33.954865, 40.969910>,  <39.704163, 34.245796, 41.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620556, 33.954865, 40.969910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056577, -0.676319, 0.734433,
		-0.976274, 0.116527, 0.182514,
		-0.209019, -0.727334, -0.653679,
		39.557850, 33.736664, 40.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934769, 34.114624, 41.231323>,  <39.704163, 34.245796, 41.231380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934769, 34.114624, 41.231323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220280, 33.840633, 41.172913>,  <39.391586, 33.676239, 41.137867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220280, 33.840633, 41.172913>,  <38.934769, 34.114624, 41.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220280, 33.840633, 41.172913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224153, -0.420957, 0.878948,
		-0.663533, -0.594641, -0.454010,
		0.713778, -0.684980, -0.146028,
		39.434414, 33.635139, 41.129105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678741, 33.426170, 41.262779>,  <38.934769, 34.114624, 41.231323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678741, 33.426170, 41.262779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056095, 33.480667, 41.383759>,  <39.282505, 33.513363, 41.456345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056095, 33.480667, 41.383759>,  <38.678741, 33.426170, 41.262779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056095, 33.480667, 41.383759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246910, -0.320469, 0.914514,
		0.221517, -0.937411, -0.268685,
		0.943380, 0.136239, 0.302445,
		39.339108, 33.521538, 41.474491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897526, 32.773712, 41.602421>,  <38.678741, 33.426170, 41.262779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897526, 32.773712, 41.602421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094933, 33.077156, 41.772572>,  <39.213379, 33.259224, 41.874660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094933, 33.077156, 41.772572>,  <38.897526, 32.773712, 41.602421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094933, 33.077156, 41.772572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251792, -0.343518, 0.904763,
		0.832490, -0.553624, 0.021479,
		0.493520, 0.758614, 0.425373,
		39.242989, 33.304741, 41.900185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655910, 32.613331, 41.916500>,  <38.897526, 32.773712, 41.602421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655910, 32.613331, 41.916500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711136, 32.361443, 41.610718>,  <39.744270, 32.210308, 41.427250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711136, 32.361443, 41.610718>,  <39.655910, 32.613331, 41.916500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711136, 32.361443, 41.610718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309907, 0.705621, -0.637226,
		0.940689, 0.324887, -0.097736,
		0.138061, -0.629720, -0.764455,
		39.752556, 32.172527, 41.381382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059044, 32.956177, 41.408539>,  <39.655910, 32.613331, 41.916500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059044, 32.956177, 41.408539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860355, 32.668663, 41.213966>,  <39.741142, 32.496155, 41.097221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860355, 32.668663, 41.213966>,  <40.059044, 32.956177, 41.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860355, 32.668663, 41.213966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365419, 0.681566, -0.633985,
		0.787234, -0.137163, -0.601206,
		-0.496721, -0.718786, -0.486430,
		39.711338, 32.453026, 41.068039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253227, 32.915474, 40.662872>,  <40.059044, 32.956177, 41.408539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253227, 32.915474, 40.662872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876408, 32.806831, 40.741631>,  <39.650314, 32.741646, 40.788883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876408, 32.806831, 40.741631>,  <40.253227, 32.915474, 40.662872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876408, 32.806831, 40.741631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335437, 0.770505, -0.542037,
		-0.004487, -0.576673, -0.816963,
		-0.942052, -0.271608, 0.196894,
		39.593792, 32.725349, 40.800697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968418, 32.829288, 40.060215>,  <40.253227, 32.915474, 40.662872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968418, 32.829288, 40.060215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701057, 32.933479, 40.338894>,  <39.540642, 32.995995, 40.506100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701057, 32.933479, 40.338894>,  <39.968418, 32.829288, 40.060215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701057, 32.933479, 40.338894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228522, 0.819454, -0.525617,
		-0.707824, -0.510535, -0.488200,
		-0.668403, 0.260480, 0.696698,
		39.500538, 33.011623, 40.547905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282047, 32.831318, 39.839363>,  <39.968418, 32.829288, 40.060215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282047, 32.831318, 39.839363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327053, 33.099041, 40.133133>,  <39.354057, 33.259674, 40.309395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327053, 33.099041, 40.133133>,  <39.282047, 32.831318, 39.839363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327053, 33.099041, 40.133133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245432, 0.734932, -0.632169,
		-0.962863, -0.109125, 0.246956,
		0.112510, 0.669303, 0.734421,
		39.360806, 33.299831, 40.353458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693256, 33.173519, 39.928192>,  <39.282047, 32.831318, 39.839363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693256, 33.173519, 39.928192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959476, 33.424225, 40.090279>,  <39.119209, 33.574650, 40.187531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959476, 33.424225, 40.090279>,  <38.693256, 33.173519, 39.928192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959476, 33.424225, 40.090279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306791, 0.724689, -0.617013,
		-0.680381, 0.286337, 0.674605,
		0.665553, 0.626767, 0.405219,
		39.159142, 33.612255, 40.211845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270435, 33.718136, 40.030422>,  <38.693256, 33.173519, 39.928192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270435, 33.718136, 40.030422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647026, 33.852802, 40.023731>,  <38.872982, 33.933601, 40.019714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647026, 33.852802, 40.023731>,  <38.270435, 33.718136, 40.030422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647026, 33.852802, 40.023731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278308, 0.748363, -0.602077,
		-0.190179, 0.571497, 0.798263,
		0.941476, 0.336666, -0.016729,
		38.929470, 33.953800, 40.018711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141712, 34.458805, 40.247292>,  <38.270435, 33.718136, 40.030422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141712, 34.458805, 40.247292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454464, 34.367992, 40.015045>,  <38.642117, 34.313503, 39.875698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454464, 34.367992, 40.015045>,  <38.141712, 34.458805, 40.247292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454464, 34.367992, 40.015045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351203, 0.609080, -0.711110,
		0.515086, 0.759919, 0.396495,
		0.781884, -0.227033, -0.580615,
		38.689030, 34.299881, 39.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571579, 35.139027, 40.005184>,  <38.141712, 34.458805, 40.247292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571579, 35.139027, 40.005184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546429, 34.849785, 39.730034>,  <38.531338, 34.676239, 39.564945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546429, 34.849785, 39.730034>,  <38.571579, 35.139027, 40.005184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546429, 34.849785, 39.730034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452327, 0.635031, -0.626207,
		0.889633, 0.271773, -0.367005,
		-0.062873, -0.723101, -0.687875,
		38.527565, 34.632854, 39.523670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203159, 35.561264, 40.182449>,  <38.571579, 35.139027, 40.005184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203159, 35.561264, 40.182449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302734, 35.270775, 39.926125>,  <39.362480, 35.096481, 39.772331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302734, 35.270775, 39.926125>,  <39.203159, 35.561264, 40.182449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302734, 35.270775, 39.926125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262077, 0.586446, -0.766418,
		0.932388, 0.358730, -0.044339,
		0.248935, -0.726219, -0.640810,
		39.377415, 35.052910, 39.733883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658878, 35.796921, 39.505920>,  <39.203159, 35.561264, 40.182449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658878, 35.796921, 39.505920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463123, 35.462353, 39.407200>,  <39.345673, 35.261612, 39.347969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463123, 35.462353, 39.407200>,  <39.658878, 35.796921, 39.505920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463123, 35.462353, 39.407200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328257, 0.438873, -0.836444,
		0.807930, -0.328327, -0.489337,
		-0.489384, -0.836416, -0.246803,
		39.316307, 35.211430, 39.333160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952248, 35.591377, 38.878880>,  <39.658878, 35.796921, 39.505920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952248, 35.591377, 38.878880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589531, 35.430794, 38.930344>,  <39.371899, 35.334442, 38.961224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589531, 35.430794, 38.930344>,  <39.952248, 35.591377, 38.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589531, 35.430794, 38.930344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306019, 0.416917, -0.855881,
		0.289960, -0.815481, -0.500913,
		-0.906794, -0.401460, 0.128664,
		39.317493, 35.310356, 38.968941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723667, 35.269615, 38.244061>,  <39.952248, 35.591377, 38.878880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723667, 35.269615, 38.244061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386314, 35.374580, 38.431606>,  <39.183903, 35.437561, 38.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386314, 35.374580, 38.431606>,  <39.723667, 35.269615, 38.244061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386314, 35.374580, 38.431606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279817, 0.530445, -0.800207,
		-0.458696, -0.806081, -0.373941,
		-0.843386, 0.262416, 0.468868,
		39.133297, 35.453304, 38.572266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065407, 34.962929, 37.919746>,  <39.723667, 35.269615, 38.244061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065407, 34.962929, 37.919746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964596, 35.306374, 38.098301>,  <38.904110, 35.512440, 38.205433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964596, 35.306374, 38.098301>,  <39.065407, 34.962929, 37.919746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964596, 35.306374, 38.098301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400883, 0.327208, -0.855703,
		-0.880782, -0.394609, 0.261739,
		-0.252025, 0.858614, 0.446391,
		38.888988, 35.563957, 38.232220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245815, 35.189327, 37.904640>,  <39.065407, 34.962929, 37.919746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245815, 35.189327, 37.904640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479786, 35.512608, 37.931980>,  <38.620167, 35.706577, 37.948383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479786, 35.512608, 37.931980>,  <38.245815, 35.189327, 37.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479786, 35.512608, 37.931980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330639, 0.314540, -0.889799,
		-0.740638, 0.497865, 0.451205,
		0.584922, 0.808205, 0.068347,
		38.655262, 35.755070, 37.952484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742332, 35.749073, 37.790737>,  <38.245815, 35.189327, 37.904640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742332, 35.749073, 37.790737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110249, 35.890911, 37.723503>,  <38.330997, 35.976013, 37.683163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110249, 35.890911, 37.723503>,  <37.742332, 35.749073, 37.790737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110249, 35.890911, 37.723503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322357, 0.438494, -0.838933,
		-0.223775, 0.825825, 0.517627,
		0.919788, 0.354593, -0.168087,
		38.386185, 35.997288, 37.673077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822742, 36.123253, 37.116318>,  <37.742332, 35.749073, 37.790737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822742, 36.123253, 37.116318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185364, 36.208122, 37.262268>,  <38.402939, 36.259045, 37.349838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185364, 36.208122, 37.262268>,  <37.822742, 36.123253, 37.116318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185364, 36.208122, 37.262268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317058, 0.228325, -0.920512,
		-0.278616, 0.950185, 0.139720,
		0.906558, 0.212170, 0.364879,
		38.457333, 36.271774, 37.371731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023842, 36.899570, 36.982975>,  <37.822742, 36.123253, 37.116318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023842, 36.899570, 36.982975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287003, 36.598328, 36.983143>,  <38.444901, 36.417583, 36.983242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287003, 36.598328, 36.983143>,  <38.023842, 36.899570, 36.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287003, 36.598328, 36.983143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275345, 0.240020, -0.930900,
		0.700962, 0.612558, 0.365273,
		0.657903, -0.753102, 0.000421,
		38.484375, 36.372398, 36.983269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556393, 37.266354, 36.665134>,  <38.023842, 36.899570, 36.982975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556393, 37.266354, 36.665134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622833, 36.873318, 36.631832>,  <38.662697, 36.637497, 36.611851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622833, 36.873318, 36.631832>,  <38.556393, 37.266354, 36.665134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622833, 36.873318, 36.631832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262543, 0.125448, -0.956731,
		0.950517, 0.137053, 0.278808,
		0.166099, -0.982588, -0.083258,
		38.672665, 36.578541, 36.606853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450356, 37.292950, 35.966225>,  <38.556393, 37.266354, 36.665134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450356, 37.292950, 35.966225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613140, 36.952473, 35.833641>,  <38.710812, 36.748188, 35.754093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613140, 36.952473, 35.833641>,  <38.450356, 37.292950, 35.966225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613140, 36.952473, 35.833641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415504, 0.150650, -0.897029,
		0.813474, 0.502776, -0.292363,
		0.406960, -0.851188, -0.331455,
		38.735229, 36.697117, 35.734203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875416, 37.501526, 35.362915>,  <38.450356, 37.292950, 35.966225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875416, 37.501526, 35.362915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758301, 37.119083, 35.367496>,  <38.688030, 36.889618, 35.370247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758301, 37.119083, 35.367496>,  <38.875416, 37.501526, 35.362915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758301, 37.119083, 35.367496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293697, 0.078522, -0.952668,
		0.909955, -0.282293, -0.303796,
		-0.292787, -0.956109, 0.011457,
		38.670464, 36.832253, 35.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044880, 37.315350, 34.725121>,  <38.875416, 37.501526, 35.362915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044880, 37.315350, 34.725121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756638, 37.079655, 34.871284>,  <38.583691, 36.938236, 34.958981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756638, 37.079655, 34.871284>,  <39.044880, 37.315350, 34.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756638, 37.079655, 34.871284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402440, -0.073694, -0.912475,
		0.564593, -0.804592, -0.184028,
		-0.720609, -0.589237, 0.365407,
		38.540455, 36.902885, 34.980907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054016, 36.659389, 34.267323>,  <39.044880, 37.315350, 34.725121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054016, 36.659389, 34.267323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711136, 36.663601, 34.473274>,  <38.505409, 36.666126, 34.596844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711136, 36.663601, 34.473274>,  <39.054016, 36.659389, 34.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711136, 36.663601, 34.473274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503174, -0.229993, -0.833018,
		0.109650, -0.973135, 0.202446,
		-0.857201, 0.010526, 0.514875,
		38.453976, 36.666759, 34.627735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759235, 35.979084, 34.150177>,  <39.054016, 36.659389, 34.267323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759235, 35.979084, 34.150177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457005, 36.203651, 34.285183>,  <38.275665, 36.338390, 34.366188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457005, 36.203651, 34.285183>,  <38.759235, 35.979084, 34.150177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457005, 36.203651, 34.285183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518978, -0.198635, -0.831388,
		-0.399715, -0.803338, 0.441448,
		-0.755572, 0.561420, 0.337518,
		38.230331, 36.372078, 34.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430862, 35.733601, 33.874287>,  <38.759235, 35.979084, 34.150177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430862, 35.733601, 33.874287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411690, 35.369160, 34.038036>,  <39.400185, 35.150494, 34.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411690, 35.369160, 34.038036>,  <39.430862, 35.733601, 33.874287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411690, 35.369160, 34.038036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952985, 0.081054, 0.291976,
		-0.299203, 0.404124, 0.864385,
		-0.047933, -0.911106, 0.409376,
		39.397308, 35.095829, 34.160851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848381, 35.678288, 34.538807>,  <39.430862, 35.733601, 33.874287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848381, 35.678288, 34.538807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840069, 35.339558, 34.326218>,  <39.835079, 35.136322, 34.198666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840069, 35.339558, 34.326218>,  <39.848381, 35.678288, 34.538807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840069, 35.339558, 34.326218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999377, -0.002441, -0.035195,
		0.028507, -0.531874, 0.846344,
		-0.020785, -0.846820, -0.531473,
		39.833832, 35.085510, 34.166775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196774, 35.200745, 34.876278>,  <39.848381, 35.678288, 34.538807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196774, 35.200745, 34.876278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217396, 35.132656, 34.482655>,  <40.229771, 35.091805, 34.246483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217396, 35.132656, 34.482655>,  <40.196774, 35.200745, 34.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217396, 35.132656, 34.482655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990824, -0.114554, 0.071725,
		-0.124936, -0.978725, 0.162751,
		0.051555, -0.170219, -0.984057,
		40.232861, 35.081589, 34.187439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496109, 34.462578, 34.671425>,  <40.196774, 35.200745, 34.876278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496109, 34.462578, 34.671425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561707, 34.769142, 34.423000>,  <40.601067, 34.953079, 34.273945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561707, 34.769142, 34.423000>,  <40.496109, 34.462578, 34.671425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561707, 34.769142, 34.423000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985750, -0.103408, 0.132682,
		0.037466, -0.633972, -0.772448,
		0.163994, 0.766411, -0.621063,
		40.610905, 34.999065, 34.236683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860523, 34.276634, 34.040077>,  <40.496109, 34.462578, 34.671425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860523, 34.276634, 34.040077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910999, 34.661926, 34.134960>,  <40.941284, 34.893101, 34.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910999, 34.661926, 34.134960>,  <40.860523, 34.276634, 34.040077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910999, 34.661926, 34.134960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989452, -0.139359, 0.039544,
		0.071147, 0.229717, -0.970654,
		0.126186, 0.963229, 0.237209,
		40.948856, 34.950893, 34.206123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415844, 34.497601, 33.673840>,  <40.860523, 34.276634, 34.040077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415844, 34.497601, 33.673840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369030, 34.741741, 33.987213>,  <41.340942, 34.888226, 34.175236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369030, 34.741741, 33.987213>,  <41.415844, 34.497601, 33.673840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369030, 34.741741, 33.987213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958286, -0.137709, 0.250446,
		0.260747, 0.780067, -0.568776,
		-0.117039, 0.610354, 0.783435,
		41.333920, 34.924847, 34.222244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966251, 35.031921, 33.798672>,  <41.415844, 34.497601, 33.673840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966251, 35.031921, 33.798672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832756, 34.948872, 34.166477>,  <41.752659, 34.899044, 34.387161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832756, 34.948872, 34.166477>,  <41.966251, 35.031921, 33.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832756, 34.948872, 34.166477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941404, -0.022967, 0.336499,
		-0.048746, 0.977939, 0.203122,
		-0.333741, -0.207622, 0.919516,
		41.732635, 34.886585, 34.442333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375576, 35.491913, 34.157009>,  <41.966251, 35.031921, 33.798672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375576, 35.491913, 34.157009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259007, 35.187801, 34.389229>,  <42.189064, 35.005333, 34.528561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259007, 35.187801, 34.389229>,  <42.375576, 35.491913, 34.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259007, 35.187801, 34.389229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925967, -0.071861, 0.370704,
		-0.240120, 0.645605, 0.724939,
		-0.291423, -0.760282, 0.580554,
		42.171581, 34.959717, 34.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472816, 35.698822, 34.866486>,  <42.375576, 35.491913, 34.157009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472816, 35.698822, 34.866486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516632, 35.306278, 34.803314>,  <42.542923, 35.070751, 34.765411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516632, 35.306278, 34.803314>,  <42.472816, 35.698822, 34.866486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516632, 35.306278, 34.803314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939999, 0.050628, 0.337400,
		-0.323114, -0.185409, 0.928020,
		0.109541, -0.981356, -0.157926,
		42.549496, 35.011871, 34.755936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556255, 35.366737, 35.481049>,  <42.472816, 35.698822, 34.866486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556255, 35.366737, 35.481049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755135, 35.186371, 35.184544>,  <42.874462, 35.078152, 35.006641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755135, 35.186371, 35.184544>,  <42.556255, 35.366737, 35.481049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755135, 35.186371, 35.184544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840213, 0.037131, 0.540983,
		-0.216414, -0.891794, 0.397327,
		0.497199, -0.450916, -0.741262,
		42.904293, 35.051098, 34.962166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980991, 34.881771, 35.862434>,  <42.556255, 35.366737, 35.481049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980991, 34.881771, 35.862434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112606, 34.959175, 35.492725>,  <43.191574, 35.005615, 35.270901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112606, 34.959175, 35.492725>,  <42.980991, 34.881771, 35.862434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112606, 34.959175, 35.492725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926821, -0.253709, 0.276830,
		-0.180929, -0.947727, -0.262826,
		0.329041, 0.193506, -0.924276,
		43.211319, 35.017227, 35.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486938, 34.319862, 35.611580>,  <42.980991, 34.881771, 35.862434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486938, 34.319862, 35.611580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565514, 34.650497, 35.400612>,  <43.612659, 34.848877, 35.274033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565514, 34.650497, 35.400612>,  <43.486938, 34.319862, 35.611580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565514, 34.650497, 35.400612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971659, -0.236240, -0.008341,
		-0.131492, -0.510832, -0.849565,
		0.196440, 0.826584, -0.527418,
		43.624447, 34.898472, 35.242386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123722, 34.097424, 35.180408>,  <43.486938, 34.319862, 35.611580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123722, 34.097424, 35.180408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098927, 34.496536, 35.190083>,  <44.084049, 34.736004, 35.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098927, 34.496536, 35.190083>,  <44.123722, 34.097424, 35.180408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098927, 34.496536, 35.190083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986275, 0.057519, 0.154770,
		0.153035, 0.033450, -0.987654,
		-0.061985, 0.997784, 0.024188,
		44.080330, 34.795872, 35.197338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375679, 34.436962, 34.618736>,  <44.123722, 34.097424, 35.180408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375679, 34.436962, 34.618736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454250, 34.698681, 34.910851>,  <44.501392, 34.855713, 35.086121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454250, 34.698681, 34.910851>,  <44.375679, 34.436962, 34.618736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454250, 34.698681, 34.910851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976185, -0.060557, -0.208317,
		-0.092077, 0.753812, -0.650606,
		0.196431, 0.654293, 0.730284,
		44.513180, 34.894970, 35.129936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906178, 34.885887, 34.390697>,  <44.375679, 34.436962, 34.618736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906178, 34.885887, 34.390697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932461, 34.905376, 34.789356>,  <44.948231, 34.917068, 35.028553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932461, 34.905376, 34.789356>,  <44.906178, 34.885887, 34.390697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932461, 34.905376, 34.789356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990690, 0.116160, -0.070993,
		-0.119229, 0.992035, -0.040635,
		0.065708, 0.048721, 0.996649,
		44.952171, 34.919994, 35.088352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253273, 35.523022, 34.616699>,  <44.906178, 34.885887, 34.390697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253273, 35.523022, 34.616699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300827, 35.238888, 34.894199>,  <45.329361, 35.068409, 35.060699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300827, 35.238888, 34.894199>,  <45.253273, 35.523022, 34.616699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300827, 35.238888, 34.894199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978671, 0.201727, 0.038841,
		-0.167539, 0.674336, 0.719168,
		0.118884, -0.710336, 0.693750,
		45.336491, 35.025787, 35.102325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792507, 35.812206, 35.117069>,  <45.253273, 35.523022, 34.616699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792507, 35.812206, 35.117069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765217, 35.414440, 35.149269>,  <45.748844, 35.175781, 35.168591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765217, 35.414440, 35.149269>,  <45.792507, 35.812206, 35.117069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765217, 35.414440, 35.149269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997609, -0.068892, -0.005557,
		0.011072, 0.079927, 0.996739,
		-0.068224, -0.994417, 0.080498,
		45.744751, 35.116116, 35.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249630, 35.590115, 35.660969>,  <45.792507, 35.812206, 35.117069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249630, 35.590115, 35.660969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177570, 35.268429, 35.434414>,  <46.134335, 35.075417, 35.298481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177570, 35.268429, 35.434414>,  <46.249630, 35.590115, 35.660969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177570, 35.268429, 35.434414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983467, -0.136502, -0.118994,
		0.018383, -0.578458, 0.815505,
		-0.180151, -0.804210, -0.566385,
		46.123524, 35.027164, 35.264500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795853, 35.199848, 35.804367>,  <46.249630, 35.590115, 35.660969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795853, 35.199848, 35.804367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679543, 35.071304, 35.443886>,  <46.609756, 34.994179, 35.227596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679543, 35.071304, 35.443886>,  <46.795853, 35.199848, 35.804367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679543, 35.071304, 35.443886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956343, -0.068813, -0.284032,
		0.029263, -0.944453, 0.327343,
		-0.290780, -0.321364, -0.901206,
		46.592308, 34.974895, 35.173523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242813, 34.674282, 35.710705>,  <46.795853, 35.199848, 35.804367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242813, 34.674282, 35.710705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113419, 34.822945, 35.362629>,  <47.035782, 34.912140, 35.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113419, 34.822945, 35.362629>,  <47.242813, 34.674282, 35.710705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113419, 34.822945, 35.362629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907372, -0.139003, -0.396678,
		-0.268387, -0.917906, -0.292264,
		-0.323487, 0.371655, -0.870189,
		47.016373, 34.934441, 35.101574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822643, 34.445442, 35.353390>,  <47.242813, 34.674282, 35.710705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822643, 34.445442, 35.353390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634235, 34.755779, 35.185482>,  <47.521191, 34.941982, 35.084736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634235, 34.755779, 35.185482>,  <47.822643, 34.445442, 35.353390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634235, 34.755779, 35.185482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720362, 0.063647, -0.690672,
		-0.509135, -0.627708, -0.588866,
		-0.471020, 0.775842, -0.419772,
		47.492928, 34.988533, 35.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.800266, 30.979673, 27.954189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423019, 30.898130, 28.059237>,  <32.196671, 30.849205, 28.122265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423019, 30.898130, 28.059237>,  <32.800266, 30.979673, 27.954189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423019, 30.898130, 28.059237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281286, -0.068228, 0.957196,
		-0.177216, 0.976620, 0.121690,
		-0.943119, -0.203860, 0.262618,
		32.140083, 30.836973, 28.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880653, 31.221087, 28.537989>,  <32.800266, 30.979673, 27.954189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880653, 31.221087, 28.537989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.540928, 31.010632, 28.555164>,  <32.337093, 30.884359, 28.565470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.540928, 31.010632, 28.555164>,  <32.880653, 31.221087, 28.537989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540928, 31.010632, 28.555164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044568, 0.009587, 0.998960,
		-0.526001, 0.850346, 0.015307,
		-0.849316, -0.526136, 0.042941,
		32.286133, 30.852791, 28.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378666, 31.618755, 28.711552>,  <32.880653, 31.221087, 28.537989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378666, 31.618755, 28.711552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275909, 31.251579, 28.832476>,  <32.214256, 31.031273, 28.905029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275909, 31.251579, 28.832476>,  <32.378666, 31.618755, 28.711552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275909, 31.251579, 28.832476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036790, 0.321870, 0.946069,
		-0.965739, 0.231916, -0.116457,
		-0.256893, -0.917940, 0.302311,
		32.198841, 30.976196, 28.923168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932674, 31.688723, 29.308561>,  <32.378666, 31.618755, 28.711552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932674, 31.688723, 29.308561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058563, 31.309057, 29.306234>,  <32.134098, 31.081257, 29.304838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058563, 31.309057, 29.306234>,  <31.932674, 31.688723, 29.308561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058563, 31.309057, 29.306234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209509, 0.063487, 0.975744,
		-0.925773, -0.308309, 0.218839,
		0.314724, -0.949166, -0.005819,
		32.152981, 31.024307, 29.304489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607420, 31.399231, 29.893860>,  <31.932674, 31.688723, 29.308561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607420, 31.399231, 29.893860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908159, 31.152815, 29.799868>,  <32.088604, 31.004965, 29.743473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908159, 31.152815, 29.799868>,  <31.607420, 31.399231, 29.893860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908159, 31.152815, 29.799868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415889, 0.166557, 0.894033,
		-0.511624, -0.769904, 0.381431,
		0.751849, -0.616041, -0.234980,
		32.133713, 30.968002, 29.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748863, 30.904045, 30.420128>,  <31.607420, 31.399231, 29.893860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748863, 30.904045, 30.420128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.102985, 30.945192, 30.238733>,  <32.315460, 30.969881, 30.129896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.102985, 30.945192, 30.238733>,  <31.748863, 30.904045, 30.420128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102985, 30.945192, 30.238733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452545, 0.033686, 0.891105,
		0.106944, -0.994124, -0.016731,
		0.885305, 0.102870, -0.453488,
		32.368576, 30.976053, 30.102686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178593, 30.431780, 30.750870>,  <31.748863, 30.904045, 30.420128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178593, 30.431780, 30.750870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439114, 30.683397, 30.581108>,  <32.595425, 30.834368, 30.479252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439114, 30.683397, 30.581108>,  <32.178593, 30.431780, 30.750870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439114, 30.683397, 30.581108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472272, 0.101744, 0.875561,
		0.593945, -0.770685, -0.230813,
		0.651298, 0.629042, -0.424403,
		32.634502, 30.872110, 30.453787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797878, 30.307522, 31.027588>,  <32.178593, 30.431780, 30.750870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797878, 30.307522, 31.027588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871216, 30.669024, 30.872868>,  <32.915218, 30.885923, 30.780035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871216, 30.669024, 30.872868>,  <32.797878, 30.307522, 31.027588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871216, 30.669024, 30.872868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537294, 0.237376, 0.809301,
		0.823226, -0.356206, -0.442060,
		0.183343, 0.903753, -0.386801,
		32.926220, 30.940149, 30.756826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405605, 30.458641, 31.333754>,  <32.797878, 30.307522, 31.027588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405605, 30.458641, 31.333754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278397, 30.822348, 31.226349>,  <33.202072, 31.040571, 31.161905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278397, 30.822348, 31.226349>,  <33.405605, 30.458641, 31.333754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278397, 30.822348, 31.226349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331242, 0.371929, 0.867149,
		0.888337, 0.186826, -0.419467,
		-0.318018, 0.909266, -0.268514,
		33.182991, 31.095127, 31.145794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960236, 30.868484, 31.331974>,  <33.405605, 30.458641, 31.333754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960236, 30.868484, 31.331974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654968, 31.121155, 31.386477>,  <33.471809, 31.272757, 31.419178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654968, 31.121155, 31.386477>,  <33.960236, 30.868484, 31.331974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654968, 31.121155, 31.386477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531882, 0.494280, 0.687597,
		0.366988, 0.597223, -0.713193,
		-0.763166, 0.631674, 0.136257,
		33.426018, 31.310658, 31.427353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259647, 31.488983, 31.414019>,  <33.960236, 30.868484, 31.331974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259647, 31.488983, 31.414019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.901398, 31.552322, 31.580290>,  <33.686447, 31.590326, 31.680052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.901398, 31.552322, 31.580290>,  <34.259647, 31.488983, 31.414019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901398, 31.552322, 31.580290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400354, 0.694220, 0.598144,
		-0.193856, 0.702128, -0.685154,
		-0.895621, 0.158350, 0.415678,
		33.632713, 31.599827, 31.704994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036842, 32.189697, 31.335716>,  <34.259647, 31.488983, 31.414019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036842, 32.189697, 31.335716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831573, 32.059662, 31.653450>,  <33.708412, 31.981640, 31.844090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831573, 32.059662, 31.653450>,  <34.036842, 32.189697, 31.335716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831573, 32.059662, 31.653450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403696, 0.725302, 0.557644,
		-0.757416, 0.606839, -0.240970,
		-0.513176, -0.325090, 0.794334,
		33.677620, 31.962135, 31.891750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885132, 32.840031, 31.662949>,  <34.036842, 32.189697, 31.335716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885132, 32.840031, 31.662949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809841, 32.558933, 31.937387>,  <33.764668, 32.390274, 32.102051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809841, 32.558933, 31.937387>,  <33.885132, 32.840031, 31.662949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809841, 32.558933, 31.937387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499571, 0.532950, 0.682930,
		-0.845577, 0.471297, 0.250756,
		-0.188222, -0.702741, 0.686096,
		33.753376, 32.348110, 32.143215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592125, 33.178593, 32.182568>,  <33.885132, 32.840031, 31.662949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592125, 33.178593, 32.182568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762836, 32.847149, 32.327492>,  <33.865265, 32.648281, 32.414444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762836, 32.847149, 32.327492>,  <33.592125, 33.178593, 32.182568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762836, 32.847149, 32.327492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387617, 0.529562, 0.754531,
		-0.817075, -0.181582, 0.547189,
		0.426780, -0.828608, 0.362308,
		33.890869, 32.598568, 32.436184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523575, 33.256855, 32.871353>,  <33.592125, 33.178593, 32.182568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523575, 33.256855, 32.871353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787380, 32.962872, 32.808262>,  <33.945663, 32.786484, 32.770405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787380, 32.962872, 32.808262>,  <33.523575, 33.256855, 32.871353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787380, 32.962872, 32.808262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597451, 0.385176, 0.703343,
		-0.456172, -0.558102, 0.693130,
		0.659514, -0.734957, -0.157732,
		33.985233, 32.742386, 32.760941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774273, 33.160561, 33.541252>,  <33.523575, 33.256855, 32.871353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774273, 33.160561, 33.541252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021545, 32.939209, 33.317959>,  <34.169910, 32.806396, 33.183983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021545, 32.939209, 33.317959>,  <33.774273, 33.160561, 33.541252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021545, 32.939209, 33.317959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760599, 0.241928, 0.602461,
		-0.198339, -0.797020, 0.570457,
		0.618183, -0.553380, -0.558229,
		34.207001, 32.773193, 33.150490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142040, 32.796650, 33.933418>,  <33.774273, 33.160561, 33.541252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142040, 32.796650, 33.933418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380135, 32.774796, 33.612743>,  <34.522991, 32.761684, 33.420338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380135, 32.774796, 33.612743>,  <34.142040, 32.796650, 33.933418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380135, 32.774796, 33.612743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790845, 0.216529, 0.572433,
		0.142313, -0.974746, 0.172095,
		0.595240, -0.054636, -0.801688,
		34.558708, 32.758404, 33.372238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812405, 32.405403, 34.134567>,  <34.142040, 32.796650, 33.933418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812405, 32.405403, 34.134567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904755, 32.627083, 33.814678>,  <34.960163, 32.760090, 33.622746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904755, 32.627083, 33.814678>,  <34.812405, 32.405403, 34.134567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904755, 32.627083, 33.814678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838939, 0.302928, 0.452124,
		0.492826, -0.775303, -0.395002,
		0.230876, 0.554201, -0.799723,
		34.974018, 32.793343, 33.574760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501896, 32.189526, 33.816341>,  <34.812405, 32.405403, 34.134567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501896, 32.189526, 33.816341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432663, 32.572399, 33.723530>,  <35.391125, 32.802124, 33.667843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432663, 32.572399, 33.723530>,  <35.501896, 32.189526, 33.816341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432663, 32.572399, 33.723530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851468, 0.263825, 0.453209,
		0.495019, -0.119120, -0.860678,
		-0.173082, 0.957187, -0.232025,
		35.380737, 32.859554, 33.653923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138851, 32.355793, 33.656956>,  <35.501896, 32.189526, 33.816341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138851, 32.355793, 33.656956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970127, 32.715511, 33.703163>,  <35.868893, 32.931343, 33.730888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970127, 32.715511, 33.703163>,  <36.138851, 32.355793, 33.656956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970127, 32.715511, 33.703163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778218, 0.293719, 0.555072,
		0.465243, 0.324035, -0.823741,
		-0.421812, 0.899294, 0.115519,
		35.843582, 32.985298, 33.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709023, 32.822727, 33.757591>,  <36.138851, 32.355793, 33.656956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709023, 32.822727, 33.757591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387634, 33.027676, 33.878857>,  <36.194801, 33.150646, 33.951614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387634, 33.027676, 33.878857>,  <36.709023, 32.822727, 33.757591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387634, 33.027676, 33.878857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536944, 0.403717, 0.740745,
		0.257147, 0.757948, -0.599491,
		-0.803471, 0.512374, 0.303161,
		36.146591, 33.181389, 33.969807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891560, 33.482239, 33.703518>,  <36.709023, 32.822727, 33.757591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891560, 33.482239, 33.703518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611286, 33.456970, 33.987785>,  <36.443123, 33.441811, 34.158344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611286, 33.456970, 33.987785>,  <36.891560, 33.482239, 33.703518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611286, 33.456970, 33.987785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672526, 0.274099, 0.687444,
		-0.238220, 0.959624, -0.149573,
		-0.700686, -0.063171, 0.710668,
		36.401081, 33.438019, 34.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941032, 34.069645, 34.173283>,  <36.891560, 33.482239, 33.703518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941032, 34.069645, 34.173283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757137, 33.809532, 34.415199>,  <36.646801, 33.653465, 34.560349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757137, 33.809532, 34.415199>,  <36.941032, 34.069645, 34.173283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757137, 33.809532, 34.415199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495653, 0.377193, 0.782339,
		-0.736863, 0.659440, 0.148902,
		-0.459741, -0.650280, 0.604793,
		36.619217, 33.614449, 34.596638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124290, 34.282482, 33.403324>,  <36.941032, 34.069645, 34.173283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124290, 34.282482, 33.403324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456783, 34.060646, 33.387882>,  <37.656281, 33.927544, 33.378616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456783, 34.060646, 33.387882>,  <37.124290, 34.282482, 33.403324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456783, 34.060646, 33.387882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370078, -0.500197, -0.782844,
		0.414846, 0.665010, -0.621019,
		0.831231, -0.554585, -0.038600,
		37.706154, 33.894272, 33.376301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443199, 34.349354, 32.786903>,  <37.124290, 34.282482, 33.403324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443199, 34.349354, 32.786903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557858, 33.992966, 32.927765>,  <37.626652, 33.779133, 33.012280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557858, 33.992966, 32.927765>,  <37.443199, 34.349354, 32.786903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557858, 33.992966, 32.927765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231955, -0.421181, -0.876814,
		0.929534, 0.169650, -0.327393,
		0.286643, -0.890969, 0.352151,
		37.643852, 33.725674, 33.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900467, 34.104736, 32.275154>,  <37.443199, 34.349354, 32.786903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900467, 34.104736, 32.275154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783497, 33.782562, 32.481361>,  <37.713314, 33.589256, 32.605087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783497, 33.782562, 32.481361>,  <37.900467, 34.104736, 32.275154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783497, 33.782562, 32.481361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060986, -0.522281, -0.850590,
		0.954343, -0.280169, 0.103606,
		-0.292420, -0.805436, 0.515522,
		37.695770, 33.540932, 32.636017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381168, 33.581596, 32.056553>,  <37.900467, 34.104736, 32.275154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381168, 33.581596, 32.056553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077499, 33.393532, 32.236603>,  <37.895298, 33.280693, 32.344631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077499, 33.393532, 32.236603>,  <38.381168, 33.581596, 32.056553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077499, 33.393532, 32.236603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250965, -0.426636, -0.868906,
		0.600563, -0.772613, 0.205895,
		-0.759170, -0.470161, 0.450120,
		37.849747, 33.252483, 32.371639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330967, 32.942768, 31.724766>,  <38.381168, 33.581596, 32.056553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330967, 32.942768, 31.724766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972713, 32.931023, 31.902296>,  <37.757763, 32.923977, 32.008816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972713, 32.931023, 31.902296>,  <38.330967, 32.942768, 31.724766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972713, 32.931023, 31.902296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362041, -0.531550, -0.765756,
		0.258402, -0.846518, 0.465441,
		-0.895631, -0.029364, 0.443827,
		37.704025, 32.922215, 32.035446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130348, 32.227180, 31.905312>,  <38.330967, 32.942768, 31.724766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130348, 32.227180, 31.905312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809032, 32.461292, 31.861185>,  <37.616241, 32.601761, 31.834709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809032, 32.461292, 31.861185>,  <38.130348, 32.227180, 31.905312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809032, 32.461292, 31.861185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381857, -0.648261, -0.658743,
		-0.457063, -0.487038, 0.744236,
		-0.803292, 0.585279, -0.110317,
		37.568047, 32.636875, 31.828089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631439, 31.744865, 31.776165>,  <38.130348, 32.227180, 31.905312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631439, 31.744865, 31.776165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442883, 32.079113, 31.663361>,  <37.329746, 32.279663, 31.595678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442883, 32.079113, 31.663361>,  <37.631439, 31.744865, 31.776165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442883, 32.079113, 31.663361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437347, -0.499172, -0.748034,
		-0.765844, -0.229281, 0.600761,
		-0.471393, 0.835618, -0.282012,
		37.301464, 32.329800, 31.578756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986233, 31.586271, 31.575539>,  <37.631439, 31.744865, 31.776165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986233, 31.586271, 31.575539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024178, 31.936895, 31.386797>,  <37.046944, 32.147270, 31.273552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024178, 31.936895, 31.386797>,  <36.986233, 31.586271, 31.575539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024178, 31.936895, 31.386797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406627, -0.398526, -0.822089,
		-0.908656, 0.269851, 0.318629,
		0.094860, 0.876560, -0.471852,
		37.052635, 32.199863, 31.245241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352768, 31.572784, 31.176231>,  <36.986233, 31.586271, 31.575539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352768, 31.572784, 31.176231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580971, 31.851515, 31.002354>,  <36.717892, 32.018753, 30.898027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580971, 31.851515, 31.002354>,  <36.352768, 31.572784, 31.176231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580971, 31.851515, 31.002354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337673, -0.283463, -0.897566,
		-0.748666, 0.658852, 0.073581,
		0.570506, 0.696824, -0.434695,
		36.752121, 32.060562, 30.871944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878185, 31.928461, 30.885145>,  <36.352768, 31.572784, 31.176231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878185, 31.928461, 30.885145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237225, 32.005711, 30.726645>,  <36.452648, 32.052059, 30.631544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237225, 32.005711, 30.726645>,  <35.878185, 31.928461, 30.885145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237225, 32.005711, 30.726645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332996, -0.291940, -0.896596,
		-0.288835, 0.936736, -0.197737,
		0.897601, 0.193122, -0.396251,
		36.506504, 32.063648, 30.607769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743828, 32.506916, 30.456890>,  <35.878185, 31.928461, 30.885145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743828, 32.506916, 30.456890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066833, 32.319122, 30.314062>,  <36.260635, 32.206444, 30.228365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066833, 32.319122, 30.314062>,  <35.743828, 32.506916, 30.456890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066833, 32.319122, 30.314062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381746, 0.045505, -0.923146,
		0.449656, 0.881765, -0.142479,
		0.807515, -0.469489, -0.357072,
		36.309090, 32.178276, 30.206940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037579, 32.947975, 29.977020>,  <35.743828, 32.506916, 30.456890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037579, 32.947975, 29.977020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115543, 32.561996, 29.906725>,  <36.162323, 32.330410, 29.864548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115543, 32.561996, 29.906725>,  <36.037579, 32.947975, 29.977020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115543, 32.561996, 29.906725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496598, 0.057425, -0.866078,
		0.845813, 0.256081, -0.467999,
		0.194911, -0.964948, -0.175740,
		36.174015, 32.272511, 29.854002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279900, 32.935024, 29.210526>,  <36.037579, 32.947975, 29.977020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279900, 32.935024, 29.210526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203873, 32.554668, 29.308250>,  <36.158257, 32.326454, 29.366886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203873, 32.554668, 29.308250>,  <36.279900, 32.935024, 29.210526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203873, 32.554668, 29.308250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447847, -0.137477, -0.883478,
		0.873675, -0.277335, -0.399722,
		-0.190067, -0.950887, 0.244314,
		36.146854, 32.269402, 29.381544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183922, 32.649441, 28.532112>,  <36.279900, 32.935024, 29.210526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183922, 32.649441, 28.532112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043392, 32.357944, 28.767231>,  <35.959076, 32.183044, 28.908302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043392, 32.357944, 28.767231>,  <36.183922, 32.649441, 28.532112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043392, 32.357944, 28.767231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494850, -0.388426, -0.777334,
		0.794793, -0.563966, -0.224156,
		-0.351322, -0.728743, 0.587797,
		35.937996, 32.139320, 28.943569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228516, 32.086571, 28.173012>,  <36.183922, 32.649441, 28.532112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228516, 32.086571, 28.173012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965984, 31.980543, 28.455564>,  <35.808464, 31.916927, 28.625095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965984, 31.980543, 28.455564>,  <36.228516, 32.086571, 28.173012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965984, 31.980543, 28.455564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553795, -0.466589, -0.689642,
		0.512392, -0.843821, 0.159441,
		-0.656327, -0.265069, 0.706379,
		35.769085, 31.901022, 28.667479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041954, 31.381510, 27.973089>,  <36.228516, 32.086571, 28.173012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041954, 31.381510, 27.973089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741062, 31.548967, 28.176615>,  <35.560528, 31.649441, 28.298731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741062, 31.548967, 28.176615>,  <36.041954, 31.381510, 27.973089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741062, 31.548967, 28.176615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653162, -0.372064, -0.659506,
		-0.086785, -0.828437, 0.553318,
		-0.752229, 0.418642, 0.508814,
		35.515392, 31.674561, 28.329258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532642, 30.850332, 27.942715>,  <36.041954, 31.381510, 27.973089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532642, 30.850332, 27.942715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335545, 31.179638, 28.055450>,  <35.217285, 31.377222, 28.123093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335545, 31.179638, 28.055450>,  <35.532642, 30.850332, 27.942715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335545, 31.179638, 28.055450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803323, -0.305877, -0.510990,
		-0.334474, -0.478194, 0.812070,
		-0.492746, 0.823268, 0.281837,
		35.187721, 31.426619, 28.140001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.799969, 30.669363, 28.191319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777275, 31.057749, 28.098358>,  <34.763660, 31.290781, 28.042582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777275, 31.057749, 28.098358>,  <34.799969, 30.669363, 28.191319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777275, 31.057749, 28.098358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750580, -0.194969, -0.631361,
		-0.658340, 0.138618, 0.739847,
		-0.056729, 0.970964, -0.232399,
		34.760258, 31.349039, 28.028639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056530, 30.886330, 28.115267>,  <34.799969, 30.669363, 28.191319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056530, 30.886330, 28.115267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232128, 31.202188, 27.943806>,  <34.337486, 31.391705, 27.840929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232128, 31.202188, 27.943806>,  <34.056530, 30.886330, 28.115267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232128, 31.202188, 27.943806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712965, 0.015817, -0.701021,
		-0.546779, 0.613358, 0.569934,
		0.438992, 0.789646, -0.428654,
		34.363827, 31.439083, 27.815210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551811, 31.294966, 27.995625>,  <34.056530, 30.886330, 28.115267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551811, 31.294966, 27.995625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811348, 31.419130, 27.717731>,  <33.967068, 31.493629, 27.550995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811348, 31.419130, 27.717731>,  <33.551811, 31.294966, 27.995625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811348, 31.419130, 27.717731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736405, 0.026239, -0.676032,
		-0.191620, 0.950239, 0.245615,
		0.648837, 0.310413, -0.694733,
		34.006001, 31.512255, 27.509312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230675, 31.831814, 27.573759>,  <33.551811, 31.294966, 27.995625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230675, 31.831814, 27.573759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533276, 31.692774, 27.352171>,  <33.714836, 31.609350, 27.219219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533276, 31.692774, 27.352171>,  <33.230675, 31.831814, 27.573759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533276, 31.692774, 27.352171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557375, 0.100422, -0.824166,
		0.342109, 0.932250, -0.117773,
		0.756501, -0.347599, -0.553968,
		33.760227, 31.588493, 27.185980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134781, 32.181507, 26.992710>,  <33.230675, 31.831814, 27.573759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134781, 32.181507, 26.992710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369522, 31.873108, 26.893785>,  <33.510368, 31.688068, 26.834431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369522, 31.873108, 26.893785>,  <33.134781, 32.181507, 26.992710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369522, 31.873108, 26.893785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406449, -0.016346, -0.913527,
		0.700286, 0.636627, -0.322964,
		0.586856, -0.770998, -0.247310,
		33.545578, 31.641808, 26.819593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340412, 32.330597, 26.379259>,  <33.134781, 32.181507, 26.992710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340412, 32.330597, 26.379259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389038, 31.935844, 26.421751>,  <33.418213, 31.698992, 26.447247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389038, 31.935844, 26.421751>,  <33.340412, 32.330597, 26.379259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389038, 31.935844, 26.421751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269989, -0.135865, -0.953230,
		0.955159, 0.087196, -0.282964,
		0.121563, -0.986883, 0.106231,
		33.425507, 31.639780, 26.453621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905678, 32.039555, 25.916893>,  <33.340412, 32.330597, 26.379259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905678, 32.039555, 25.916893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646496, 31.744156, 25.991482>,  <33.490986, 31.566916, 26.036234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646496, 31.744156, 25.991482>,  <33.905678, 32.039555, 25.916893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646496, 31.744156, 25.991482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133726, -0.130715, -0.982360,
		0.749846, -0.661463, -0.014059,
		-0.647957, -0.738499, 0.186471,
		33.452110, 31.522606, 26.047422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915863, 31.661640, 25.335390>,  <33.905678, 32.039555, 25.916893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915863, 31.661640, 25.335390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605202, 31.494604, 25.524042>,  <33.418804, 31.394382, 25.637234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605202, 31.494604, 25.524042>,  <33.915863, 31.661640, 25.335390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605202, 31.494604, 25.524042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446016, -0.164181, -0.879838,
		0.444844, -0.893680, -0.058741,
		-0.776649, -0.417590, 0.471631,
		33.372208, 31.369328, 25.665531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964024, 31.037111, 25.147638>,  <33.915863, 31.661640, 25.335390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964024, 31.037111, 25.147638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594246, 31.127903, 25.270201>,  <33.372379, 31.182377, 25.343739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594246, 31.127903, 25.270201>,  <33.964024, 31.037111, 25.147638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594246, 31.127903, 25.270201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371600, -0.355974, -0.857436,
		-0.085544, -0.906512, 0.413422,
		-0.924443, 0.226976, 0.306408,
		33.316914, 31.195995, 25.362123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531425, 30.443562, 24.878229>,  <33.964024, 31.037111, 25.147638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531425, 30.443562, 24.878229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288719, 30.751266, 24.958296>,  <33.143093, 30.935890, 25.006336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288719, 30.751266, 24.958296>,  <33.531425, 30.443562, 24.878229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288719, 30.751266, 24.958296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459359, -0.133840, -0.878109,
		-0.648706, -0.624758, 0.434578,
		-0.606770, 0.769262, 0.200165,
		33.106689, 30.982044, 25.018345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800854, 30.192722, 24.717197>,  <33.531425, 30.443562, 24.878229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800854, 30.192722, 24.717197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800098, 30.592541, 24.705177>,  <32.799644, 30.832432, 24.697966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800098, 30.592541, 24.705177>,  <32.800854, 30.192722, 24.717197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800098, 30.592541, 24.705177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509001, -0.026831, -0.860348,
		-0.860764, 0.013669, 0.508821,
		-0.001892, 0.999547, -0.030052,
		32.799530, 30.892405, 24.696161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074211, 30.426128, 24.591665>,  <32.800854, 30.192722, 24.717197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074211, 30.426128, 24.591665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326054, 30.708475, 24.461838>,  <32.477161, 30.877884, 24.383942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326054, 30.708475, 24.461838>,  <32.074211, 30.426128, 24.591665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326054, 30.708475, 24.461838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446748, -0.012849, -0.894568,
		-0.635615, 0.708229, 0.307254,
		0.629611, 0.705866, -0.324567,
		32.514938, 30.920235, 24.364468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679623, 30.814524, 24.221504>,  <32.074211, 30.426128, 24.591665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679623, 30.814524, 24.221504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026112, 30.949110, 24.073750>,  <32.234005, 31.029861, 23.985098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026112, 30.949110, 24.073750>,  <31.679623, 30.814524, 24.221504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026112, 30.949110, 24.073750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438296, 0.156730, -0.885061,
		-0.239900, 0.928561, 0.283236,
		0.866224, 0.336467, -0.369385,
		32.285980, 31.050051, 23.962934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410599, 31.054399, 23.686834>,  <31.679623, 30.814524, 24.221504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410599, 31.054399, 23.686834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796959, 31.101065, 23.594378>,  <32.028774, 31.129065, 23.538904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796959, 31.101065, 23.594378>,  <31.410599, 31.054399, 23.686834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796959, 31.101065, 23.594378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253105, 0.237427, -0.937852,
		-0.054533, 0.964375, 0.258859,
		0.965901, 0.116662, -0.231140,
		32.086731, 31.136063, 23.525036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456974, 31.727697, 23.431250>,  <31.410599, 31.054399, 23.686834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456974, 31.727697, 23.431250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731123, 31.478113, 23.281082>,  <31.895613, 31.328363, 23.190981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731123, 31.478113, 23.281082>,  <31.456974, 31.727697, 23.431250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731123, 31.478113, 23.281082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429981, 0.069310, -0.900173,
		0.587694, 0.778376, -0.220789,
		0.685370, -0.623961, -0.375420,
		31.936733, 31.290924, 23.168455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689682, 31.987141, 22.686941>,  <31.456974, 31.727697, 23.431250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689682, 31.987141, 22.686941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802284, 31.604185, 22.712740>,  <31.869846, 31.374413, 22.728220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802284, 31.604185, 22.712740>,  <31.689682, 31.987141, 22.686941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802284, 31.604185, 22.712740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167479, -0.115207, -0.979121,
		0.944831, 0.264826, -0.192774,
		0.281506, -0.957390, 0.064498,
		31.886736, 31.316969, 22.732090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163357, 31.958450, 22.162237>,  <31.689682, 31.987141, 22.686941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163357, 31.958450, 22.162237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021053, 31.596521, 22.255814>,  <31.935671, 31.379364, 22.311958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021053, 31.596521, 22.255814>,  <32.163357, 31.958450, 22.162237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021053, 31.596521, 22.255814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398139, -0.079731, -0.913853,
		0.845528, -0.418256, -0.331880,
		-0.355763, -0.904823, 0.233939,
		31.914324, 31.325075, 22.325994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244133, 31.594212, 21.533558>,  <32.163357, 31.958450, 22.162237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244133, 31.594212, 21.533558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957098, 31.395327, 21.728640>,  <31.784878, 31.275995, 21.845688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957098, 31.395327, 21.728640>,  <32.244133, 31.594212, 21.533558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957098, 31.395327, 21.728640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499599, -0.120415, -0.857847,
		0.485259, -0.859232, -0.161999,
		-0.717583, -0.497212, 0.487704,
		31.741823, 31.246162, 21.874950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090446, 30.953630, 21.166702>,  <32.244133, 31.594212, 21.533558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090446, 30.953630, 21.166702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762932, 31.047323, 21.376358>,  <31.566423, 31.103539, 21.502151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762932, 31.047323, 21.376358>,  <32.090446, 30.953630, 21.166702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762932, 31.047323, 21.376358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555366, -0.091850, -0.826518,
		-0.145460, -0.967831, 0.205293,
		-0.818786, 0.234238, 0.524140,
		31.517296, 31.117594, 21.533600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629177, 30.345953, 21.052032>,  <32.090446, 30.953630, 21.166702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629177, 30.345953, 21.052032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396593, 30.656248, 21.150124>,  <31.257044, 30.842424, 21.208979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396593, 30.656248, 21.150124>,  <31.629177, 30.345953, 21.052032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396593, 30.656248, 21.150124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570797, -0.174187, -0.802402,
		-0.579739, -0.606538, 0.544071,
		-0.581458, 0.775739, 0.245227,
		31.222157, 30.888969, 21.223692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964098, 30.046432, 20.832531>,  <31.629177, 30.345953, 21.052032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964098, 30.046432, 20.832531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901167, 30.435194, 20.902561>,  <30.863409, 30.668451, 20.944580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901167, 30.435194, 20.902561>,  <30.964098, 30.046432, 20.832531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901167, 30.435194, 20.902561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583125, 0.051650, -0.810739,
		-0.797003, -0.229641, 0.558616,
		-0.157326, 0.971904, 0.175075,
		30.853970, 30.726765, 20.955084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271547, 30.086096, 20.800972>,  <30.964098, 30.046432, 20.832531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271547, 30.086096, 20.800972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423491, 30.448706, 20.727301>,  <30.514656, 30.666271, 20.683098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423491, 30.448706, 20.727301>,  <30.271547, 30.086096, 20.800972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423491, 30.448706, 20.727301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572477, 0.073981, -0.816576,
		-0.726621, 0.415620, 0.547067,
		0.379858, 0.906525, -0.184177,
		30.537447, 30.720663, 20.672047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716175, 30.601801, 20.798487>,  <30.271547, 30.086096, 20.800972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716175, 30.601801, 20.798487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021730, 30.747805, 20.585604>,  <30.205063, 30.835407, 20.457874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021730, 30.747805, 20.585604>,  <29.716175, 30.601801, 20.798487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021730, 30.747805, 20.585604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611148, 0.144245, -0.778262,
		-0.207304, 0.919762, 0.333261,
		0.763887, 0.365008, -0.532208,
		30.250896, 30.857307, 20.425941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524179, 31.262236, 20.552982>,  <29.716175, 30.601801, 20.798487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524179, 31.262236, 20.552982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803337, 31.115400, 20.306993>,  <29.970833, 31.027300, 20.159401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803337, 31.115400, 20.306993>,  <29.524179, 31.262236, 20.552982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803337, 31.115400, 20.306993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532196, 0.308807, -0.788293,
		0.479280, 0.877430, 0.020152,
		0.697896, -0.367089, -0.614970,
		30.012705, 31.005274, 20.122503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815756, 31.517637, 20.907007>,  <29.524179, 31.262236, 20.552982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815756, 31.517637, 20.907007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506704, 31.711983, 21.070459>,  <28.321274, 31.828590, 21.168530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506704, 31.711983, 21.070459>,  <28.815756, 31.517637, 20.907007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506704, 31.711983, 21.070459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336343, -0.232632, 0.912555,
		0.538439, 0.842506, 0.016321,
		-0.772630, 0.485866, 0.408629,
		28.274916, 31.857742, 21.193048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063599, 32.082745, 21.304873>,  <28.815756, 31.517637, 20.907007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063599, 32.082745, 21.304873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730616, 31.897501, 21.426558>,  <28.530827, 31.786354, 21.499569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730616, 31.897501, 21.426558>,  <29.063599, 32.082745, 21.304873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730616, 31.897501, 21.426558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427857, -0.188402, 0.883992,
		-0.352070, 0.866046, 0.354981,
		-0.832457, -0.463109, 0.304213,
		28.480879, 31.758568, 21.517822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830872, 32.379707, 21.865618>,  <29.063599, 32.082745, 21.304873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830872, 32.379707, 21.865618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726479, 31.993584, 21.862562>,  <28.663843, 31.761908, 21.860729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726479, 31.993584, 21.862562>,  <28.830872, 32.379707, 21.865618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726479, 31.993584, 21.862562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410966, -0.118262, 0.903948,
		-0.873496, 0.232773, 0.427575,
		-0.260981, -0.965314, -0.007639,
		28.648184, 31.703989, 21.860270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376934, 32.321568, 22.367914>,  <28.830872, 32.379707, 21.865618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376934, 32.321568, 22.367914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.474817, 31.937229, 22.315912>,  <28.533548, 31.706627, 22.284712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.474817, 31.937229, 22.315912>,  <28.376934, 32.321568, 22.367914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474817, 31.937229, 22.315912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365232, -0.032858, 0.930337,
		-0.898178, -0.275144, 0.342889,
		0.244710, -0.960841, -0.130004,
		28.548231, 31.648977, 22.276911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055159, 31.968699, 22.880711>,  <28.376934, 32.321568, 22.367914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055159, 31.968699, 22.880711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335001, 31.694780, 22.799122>,  <28.502907, 31.530430, 22.750170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335001, 31.694780, 22.799122>,  <28.055159, 31.968699, 22.880711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335001, 31.694780, 22.799122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155287, -0.132922, 0.978886,
		-0.697451, -0.716508, 0.013348,
		0.699606, -0.684797, -0.203971,
		28.544884, 31.489342, 22.737930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989365, 31.420364, 23.472599>,  <28.055159, 31.968699, 22.880711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989365, 31.420364, 23.472599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354990, 31.388182, 23.313597>,  <28.574366, 31.368872, 23.218195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354990, 31.388182, 23.313597>,  <27.989365, 31.420364, 23.472599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354990, 31.388182, 23.313597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371962, -0.224340, 0.900731,
		-0.161645, -0.971184, -0.175135,
		0.914065, -0.080455, -0.397507,
		28.629210, 31.364044, 23.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304071, 30.943602, 23.799700>,  <27.989365, 31.420364, 23.472599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304071, 30.943602, 23.799700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.644775, 31.103777, 23.664551>,  <28.849197, 31.199883, 23.583462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.644775, 31.103777, 23.664551>,  <28.304071, 30.943602, 23.799700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644775, 31.103777, 23.664551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414954, -0.121869, 0.901643,
		0.319875, -0.908184, -0.269966,
		0.851759, 0.400437, -0.337872,
		28.900303, 31.223907, 23.563189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889326, 30.521437, 23.974051>,  <28.304071, 30.943602, 23.799700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889326, 30.521437, 23.974051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062141, 30.878078, 23.919811>,  <29.165831, 31.092064, 23.887268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062141, 30.878078, 23.919811>,  <28.889326, 30.521437, 23.974051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062141, 30.878078, 23.919811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502349, -0.113045, 0.857243,
		0.748993, -0.438478, -0.496736,
		0.432036, 0.891604, -0.135599,
		29.191751, 31.145559, 23.879131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590574, 30.409687, 24.049706>,  <28.889326, 30.521437, 23.974051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590574, 30.409687, 24.049706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525290, 30.798740, 24.115856>,  <29.486118, 31.032171, 24.155546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525290, 30.798740, 24.115856>,  <29.590574, 30.409687, 24.049706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525290, 30.798740, 24.115856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660154, -0.016908, 0.750940,
		0.733184, 0.231737, -0.639327,
		-0.163210, 0.972632, 0.165379,
		29.476326, 31.090530, 24.165470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272039, 30.757038, 24.147734>,  <29.590574, 30.409687, 24.049706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272039, 30.757038, 24.147734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994350, 30.995178, 24.309532>,  <29.827738, 31.138062, 24.406610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994350, 30.995178, 24.309532>,  <30.272039, 30.757038, 24.147734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994350, 30.995178, 24.309532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558965, 0.091889, 0.824084,
		0.453450, 0.798195, -0.396571,
		-0.694220, 0.595350, 0.404496,
		29.786085, 31.173782, 24.430882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664209, 31.358200, 24.379272>,  <30.272039, 30.757038, 24.147734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664209, 31.358200, 24.379272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322197, 31.375973, 24.585941>,  <30.116989, 31.386637, 24.709942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322197, 31.375973, 24.585941>,  <30.664209, 31.358200, 24.379272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322197, 31.375973, 24.585941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517278, 0.002580, 0.855814,
		0.036692, 0.999009, -0.025189,
		-0.855031, 0.044431, 0.516670,
		30.065687, 31.389301, 24.740942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889280, 31.716568, 24.990938>,  <30.664209, 31.358200, 24.379272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889280, 31.716568, 24.990938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536154, 31.559177, 25.093554>,  <30.324278, 31.464743, 25.155123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536154, 31.559177, 25.093554>,  <30.889280, 31.716568, 24.990938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536154, 31.559177, 25.093554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359870, -0.215572, 0.907757,
		-0.301878, 0.893703, 0.331910,
		-0.882816, -0.393476, 0.256540,
		30.271309, 31.441133, 25.170515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771894, 31.997505, 25.615580>,  <30.889280, 31.716568, 24.990938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771894, 31.997505, 25.615580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527918, 31.680986, 25.598516>,  <30.381533, 31.491076, 25.588278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527918, 31.680986, 25.598516>,  <30.771894, 31.997505, 25.615580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527918, 31.680986, 25.598516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259260, -0.250131, 0.932855,
		-0.748837, 0.557926, 0.357717,
		-0.609940, -0.791298, -0.042660,
		30.344936, 31.443598, 25.585718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378817, 31.993164, 26.199017>,  <30.771894, 31.997505, 25.615580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378817, 31.993164, 26.199017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394686, 31.616964, 26.064026>,  <30.404207, 31.391245, 25.983032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394686, 31.616964, 26.064026>,  <30.378817, 31.993164, 26.199017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394686, 31.616964, 26.064026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391647, -0.296081, 0.871177,
		-0.919260, -0.166733, 0.356597,
		0.039672, -0.940498, -0.337476,
		30.406588, 31.334814, 25.962784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079029, 31.679148, 26.738737>,  <30.378817, 31.993164, 26.199017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079029, 31.679148, 26.738737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276846, 31.400005, 26.531498>,  <30.395536, 31.232519, 26.407154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276846, 31.400005, 26.531498>,  <30.079029, 31.679148, 26.738737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276846, 31.400005, 26.531498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361629, -0.376835, 0.852772,
		-0.790349, -0.609091, 0.066004,
		0.494542, -0.697857, -0.518097,
		30.425209, 31.190649, 26.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020250, 31.052570, 27.145105>,  <30.079029, 31.679148, 26.738737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020250, 31.052570, 27.145105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318712, 30.981167, 26.888548>,  <30.497789, 30.938326, 26.734613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318712, 30.981167, 26.888548>,  <30.020250, 31.052570, 27.145105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318712, 30.981167, 26.888548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593632, -0.257770, 0.762335,
		-0.301413, -0.949574, -0.086371,
		0.746157, -0.178505, -0.641393,
		30.542559, 30.927614, 26.696131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249008, 30.302752, 27.166519>,  <30.020250, 31.052570, 27.145105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249008, 30.302752, 27.166519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552670, 30.529379, 27.038340>,  <30.734865, 30.665356, 26.961432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552670, 30.529379, 27.038340>,  <30.249008, 30.302752, 27.166519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552670, 30.529379, 27.038340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552473, -0.300530, 0.777467,
		0.344184, -0.767255, -0.541162,
		0.759151, 0.566569, -0.320450,
		30.780415, 30.699350, 26.942204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915644, 29.857183, 27.020929>,  <30.249008, 30.302752, 27.166519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915644, 29.857183, 27.020929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.052885, 30.229271, 27.073034>,  <31.135231, 30.452524, 27.104298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.052885, 30.229271, 27.073034>,  <30.915644, 29.857183, 27.020929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052885, 30.229271, 27.073034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610816, -0.326315, 0.721403,
		0.713570, -0.167952, -0.680154,
		0.343106, 0.930221, 0.130261,
		31.155817, 30.508337, 27.112112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631691, 29.817661, 26.930496>,  <30.915644, 29.857183, 27.020929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631691, 29.817661, 26.930496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562836, 30.149471, 27.143007>,  <31.521523, 30.348557, 27.270514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562836, 30.149471, 27.143007>,  <31.631691, 29.817661, 26.930496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562836, 30.149471, 27.143007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734853, -0.251033, 0.630058,
		0.656017, 0.498869, -0.566367,
		-0.172139, 0.829525, 0.531278,
		31.511194, 30.398329, 27.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179577, 29.849049, 27.286310>,  <31.631691, 29.817661, 26.930496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179577, 29.849049, 27.286310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960102, 30.122154, 27.479298>,  <31.828417, 30.286018, 27.595091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960102, 30.122154, 27.479298>,  <32.179577, 29.849049, 27.286310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960102, 30.122154, 27.479298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433442, -0.261160, 0.862510,
		0.714893, 0.682369, -0.152644,
		-0.548685, 0.682765, 0.482469,
		31.795496, 30.326984, 27.624039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.321411, 31.617201, 29.726545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004185, 31.798803, 29.888990>,  <36.813850, 31.907764, 29.986458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004185, 31.798803, 29.888990>,  <37.321411, 31.617201, 29.726545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004185, 31.798803, 29.888990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573938, 0.333583, 0.747876,
		0.204070, 0.826196, -0.525125,
		-0.793064, 0.454008, 0.406110,
		36.766266, 31.935005, 30.010824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555374, 32.363194, 29.890676>,  <37.321411, 31.617201, 29.726545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555374, 32.363194, 29.890676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222282, 32.278164, 30.095177>,  <37.022427, 32.227146, 30.217876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222282, 32.278164, 30.095177>,  <37.555374, 32.363194, 29.890676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222282, 32.278164, 30.095177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395779, 0.417199, 0.818110,
		-0.387200, 0.883605, -0.263282,
		-0.832727, -0.212571, 0.511252,
		36.972466, 32.214394, 30.248552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704933, 32.805107, 30.417709>,  <37.555374, 32.363194, 29.890676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704933, 32.805107, 30.417709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.394135, 32.588360, 30.545864>,  <37.207653, 32.458313, 30.622757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.394135, 32.588360, 30.545864>,  <37.704933, 32.805107, 30.417709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394135, 32.588360, 30.545864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076292, 0.424143, 0.902376,
		-0.624860, 0.725589, -0.288219,
		-0.777001, -0.541870, 0.320386,
		37.161034, 32.425800, 30.641979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155388, 33.326782, 30.587654>,  <37.704933, 32.805107, 30.417709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155388, 33.326782, 30.587654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131340, 32.988865, 30.800335>,  <37.116909, 32.786114, 30.927944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131340, 32.988865, 30.800335>,  <37.155388, 33.326782, 30.587654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131340, 32.988865, 30.800335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013308, 0.531942, 0.846676,
		-0.998102, 0.057980, -0.020739,
		-0.060123, -0.844793, 0.531704,
		37.113304, 32.735428, 30.959846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691788, 33.402962, 31.142445>,  <37.155388, 33.326782, 30.587654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691788, 33.402962, 31.142445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907467, 33.096481, 31.282272>,  <37.036873, 32.912594, 31.366169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907467, 33.096481, 31.282272>,  <36.691788, 33.402962, 31.142445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907467, 33.096481, 31.282272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090718, 0.465505, 0.880384,
		-0.837280, -0.442988, 0.320507,
		0.539197, -0.766203, 0.349571,
		37.069225, 32.866619, 31.387144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510113, 33.291489, 31.832747>,  <36.691788, 33.402962, 31.142445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510113, 33.291489, 31.832747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854874, 33.089550, 31.813749>,  <37.061729, 32.968388, 31.802351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854874, 33.089550, 31.813749>,  <36.510113, 33.291489, 31.832747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854874, 33.089550, 31.813749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202830, 0.257407, 0.944776,
		-0.464742, -0.823937, 0.324258,
		0.861902, -0.504847, -0.047491,
		37.113445, 32.938095, 31.799501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493469, 32.931297, 32.427769>,  <36.510113, 33.291489, 31.832747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493469, 32.931297, 32.427769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875698, 32.931080, 32.309872>,  <37.105038, 32.930950, 32.239132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875698, 32.931080, 32.309872>,  <36.493469, 32.931297, 32.427769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875698, 32.931080, 32.309872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288938, 0.199264, 0.936381,
		0.058222, -0.979946, 0.190569,
		0.955576, -0.000544, -0.294745,
		37.162373, 32.930916, 32.221447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831799, 32.612301, 32.966743>,  <36.493469, 32.931297, 32.427769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831799, 32.612301, 32.966743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135269, 32.800915, 32.786938>,  <37.317352, 32.914085, 32.679054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135269, 32.800915, 32.786938>,  <36.831799, 32.612301, 32.966743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135269, 32.800915, 32.786938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422483, 0.169112, 0.890454,
		0.495901, -0.865479, -0.070915,
		0.758677, 0.471537, -0.449513,
		37.362873, 32.942375, 32.652084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424328, 32.505219, 33.385372>,  <36.831799, 32.612301, 32.966743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424328, 32.505219, 33.385372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511200, 32.811920, 33.143738>,  <37.563324, 32.995941, 32.998756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511200, 32.811920, 33.143738>,  <37.424328, 32.505219, 33.385372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511200, 32.811920, 33.143738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482003, 0.453911, 0.749425,
		0.848825, -0.453937, -0.270994,
		0.217184, 0.766750, -0.604090,
		37.576355, 33.041946, 32.962509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123478, 32.704952, 33.613255>,  <37.424328, 32.505219, 33.385372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123478, 32.704952, 33.613255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002556, 33.028915, 33.412193>,  <37.930000, 33.223293, 33.291557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002556, 33.028915, 33.412193>,  <38.123478, 32.704952, 33.613255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002556, 33.028915, 33.412193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375089, 0.585856, 0.718387,
		0.876309, 0.028636, -0.480898,
		-0.302309, 0.809909, -0.502650,
		37.911865, 33.271889, 33.261398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694519, 33.129360, 33.538815>,  <38.123478, 32.704952, 33.613255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694519, 33.129360, 33.538815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390862, 33.373817, 33.449192>,  <38.208668, 33.520493, 33.395420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390862, 33.373817, 33.449192>,  <38.694519, 33.129360, 33.538815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390862, 33.373817, 33.449192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426246, 0.726887, 0.538470,
		0.491944, 0.313276, -0.812311,
		-0.759148, 0.611141, -0.224055,
		38.163116, 33.557159, 33.381977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990021, 33.903278, 33.343372>,  <38.694519, 33.129360, 33.538815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990021, 33.903278, 33.343372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615265, 33.932369, 33.480167>,  <38.390411, 33.949825, 33.562244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615265, 33.932369, 33.480167>,  <38.990021, 33.903278, 33.343372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615265, 33.932369, 33.480167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291030, 0.704305, 0.647500,
		-0.193770, 0.706162, -0.681020,
		-0.936885, 0.072731, 0.341988,
		38.334198, 33.954189, 33.582764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668468, 34.600147, 33.276897>,  <38.990021, 33.903278, 33.343372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668468, 34.600147, 33.276897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528870, 34.381672, 33.581493>,  <38.445110, 34.250587, 33.764252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528870, 34.381672, 33.581493>,  <38.668468, 34.600147, 33.276897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528870, 34.381672, 33.581493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248800, 0.729421, 0.637216,
		-0.903492, 0.411848, -0.118675,
		-0.349000, -0.546193, 0.761494,
		38.424171, 34.217815, 33.809940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117580, 35.013844, 33.443668>,  <38.668468, 34.600147, 33.276897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117580, 35.013844, 33.443668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.942474, 34.876831, 33.776184>,  <37.837410, 34.794624, 33.975693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.942474, 34.876831, 33.776184>,  <38.117580, 35.013844, 33.443668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942474, 34.876831, 33.776184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328695, -0.921556, -0.206627,
		0.836851, 0.182785, 0.516013,
		-0.437767, -0.342527, 0.831285,
		37.811146, 34.774075, 34.025570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013302, 35.506863, 34.027096>,  <38.117580, 35.013844, 33.443668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013302, 35.506863, 34.027096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.958298, 35.902966, 34.035942>,  <37.925297, 36.140625, 34.041248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.958298, 35.902966, 34.035942>,  <38.013302, 35.506863, 34.027096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958298, 35.902966, 34.035942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397307, -0.034693, -0.917030,
		-0.907325, -0.134885, 0.398205,
		-0.137509, 0.990254, 0.022113,
		37.917046, 36.200043, 34.042576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279213, 35.632797, 33.994831>,  <38.013302, 35.506863, 34.027096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279213, 35.632797, 33.994831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435028, 35.978710, 33.868088>,  <37.528519, 36.186260, 33.792042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435028, 35.978710, 33.868088>,  <37.279213, 35.632797, 33.994831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435028, 35.978710, 33.868088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619637, -0.008455, -0.784843,
		-0.681400, 0.502069, 0.532560,
		0.389543, 0.864786, -0.316862,
		37.551891, 36.238148, 33.773029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734989, 36.055759, 33.938129>,  <37.279213, 35.632797, 33.994831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734989, 36.055759, 33.938129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017113, 36.209576, 33.699913>,  <37.186386, 36.301865, 33.556984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017113, 36.209576, 33.699913>,  <36.734989, 36.055759, 33.938129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017113, 36.209576, 33.699913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692998, 0.197099, -0.693474,
		-0.149286, 0.901822, 0.405499,
		0.705314, 0.384536, -0.595537,
		37.228706, 36.324936, 33.521252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388824, 36.589317, 33.631824>,  <36.734989, 36.055759, 33.938129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388824, 36.589317, 33.631824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716881, 36.524612, 33.412296>,  <36.913715, 36.485790, 33.280579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716881, 36.524612, 33.412296>,  <36.388824, 36.589317, 33.631824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716881, 36.524612, 33.412296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528330, 0.154087, -0.834940,
		0.219627, 0.974726, 0.040910,
		0.820141, -0.161761, -0.548819,
		36.962925, 36.476086, 33.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312019, 37.074013, 32.990299>,  <36.388824, 36.589317, 33.631824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312019, 37.074013, 32.990299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572674, 36.804150, 32.851620>,  <36.729069, 36.642231, 32.768414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572674, 36.804150, 32.851620>,  <36.312019, 37.074013, 32.990299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572674, 36.804150, 32.851620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355296, 0.132343, -0.925338,
		0.670172, 0.726167, -0.153464,
		0.651640, -0.674661, -0.346697,
		36.768166, 36.601753, 32.747612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771103, 37.396656, 32.422813>,  <36.312019, 37.074013, 32.990299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771103, 37.396656, 32.422813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782295, 36.999630, 32.375443>,  <36.789013, 36.761414, 32.347019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782295, 36.999630, 32.375443>,  <36.771103, 37.396656, 32.422813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782295, 36.999630, 32.375443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205994, 0.110206, -0.972327,
		0.978153, 0.051607, -0.201379,
		0.027985, -0.992568, -0.118429,
		36.790691, 36.701859, 32.339912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177906, 37.365505, 31.917152>,  <36.771103, 37.396656, 32.422813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177906, 37.365505, 31.917152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010143, 37.003357, 31.890596>,  <36.909485, 36.786068, 31.874662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010143, 37.003357, 31.890596>,  <37.177906, 37.365505, 31.917152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010143, 37.003357, 31.890596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054338, 0.098041, -0.993698,
		0.906169, -0.413159, -0.090315,
		-0.419409, -0.905366, -0.066392,
		36.884319, 36.731747, 31.870680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464733, 37.083206, 31.326496>,  <37.177906, 37.365505, 31.917152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464733, 37.083206, 31.326496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121925, 36.889854, 31.397896>,  <36.916241, 36.773842, 31.440735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121925, 36.889854, 31.397896>,  <37.464733, 37.083206, 31.326496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121925, 36.889854, 31.397896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161634, -0.076740, -0.983863,
		0.489281, -0.872038, -0.012364,
		-0.857017, -0.483384, 0.178499,
		36.864819, 36.744839, 31.451445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376869, 36.711254, 30.760868>,  <37.464733, 37.083206, 31.326496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376869, 36.711254, 30.760868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012276, 36.639839, 30.909098>,  <36.793522, 36.596989, 30.998035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012276, 36.639839, 30.909098>,  <37.376869, 36.711254, 30.760868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012276, 36.639839, 30.909098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289421, -0.361809, -0.886189,
		0.292295, -0.914997, 0.278109,
		-0.911482, -0.178538, 0.370574,
		36.738831, 36.586277, 31.020269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121601, 35.975647, 30.613333>,  <37.376869, 36.711254, 30.760868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121601, 35.975647, 30.613333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787174, 36.182945, 30.685356>,  <36.586517, 36.307323, 30.728569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787174, 36.182945, 30.685356>,  <37.121601, 35.975647, 30.613333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787174, 36.182945, 30.685356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398329, -0.347716, -0.848780,
		-0.377268, -0.781355, 0.497145,
		-0.836063, 0.518245, 0.180054,
		36.536354, 36.338417, 30.739372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632401, 35.514950, 30.437357>,  <37.121601, 35.975647, 30.613333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632401, 35.514950, 30.437357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454338, 35.872795, 30.452822>,  <36.347500, 36.087502, 30.462101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454338, 35.872795, 30.452822>,  <36.632401, 35.514950, 30.437357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454338, 35.872795, 30.452822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393572, -0.156693, -0.905841,
		-0.804323, -0.418459, 0.421849,
		-0.445158, 0.894617, 0.038662,
		36.320789, 36.141182, 30.464420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920155, 35.422642, 30.487749>,  <36.632401, 35.514950, 30.437357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920155, 35.422642, 30.487749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953583, 35.788792, 30.330215>,  <35.973640, 36.008480, 30.235695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953583, 35.788792, 30.330215>,  <35.920155, 35.422642, 30.487749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953583, 35.788792, 30.330215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548799, -0.287605, -0.784922,
		-0.831766, 0.281735, 0.478320,
		0.083573, 0.915374, -0.393836,
		35.978653, 36.063404, 30.212065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363247, 35.443573, 30.156393>,  <35.920155, 35.422642, 30.487749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363247, 35.443573, 30.156393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584602, 35.730652, 29.987312>,  <35.717415, 35.902897, 29.885864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584602, 35.730652, 29.987312>,  <35.363247, 35.443573, 30.156393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584602, 35.730652, 29.987312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419444, -0.198321, -0.885853,
		-0.719602, 0.667521, 0.191283,
		0.553390, 0.717694, -0.422700,
		35.750618, 35.945961, 29.860502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867035, 35.904366, 29.698896>,  <35.363247, 35.443573, 30.156393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867035, 35.904366, 29.698896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.252350, 35.930683, 29.594788>,  <35.483540, 35.946472, 29.532322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.252350, 35.930683, 29.594788>,  <34.867035, 35.904366, 29.698896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252350, 35.930683, 29.594788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244875, -0.182002, -0.952319,
		-0.110023, 0.981095, -0.159211,
		0.963292, 0.065790, -0.260270,
		35.541336, 35.950420, 29.516706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406914, 36.590042, 29.836126>,  <34.867035, 35.904366, 29.698896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406914, 36.590042, 29.836126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060921, 36.790668, 29.842323>,  <33.853325, 36.911045, 29.846041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060921, 36.790668, 29.842323>,  <34.406914, 36.590042, 29.836126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060921, 36.790668, 29.842323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136804, 0.206000, 0.968942,
		0.482800, 0.840234, -0.246802,
		-0.864979, 0.501568, 0.015491,
		33.801426, 36.941139, 29.846972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571556, 37.261250, 30.032463>,  <34.406914, 36.590042, 29.836126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571556, 37.261250, 30.032463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188175, 37.198689, 30.127886>,  <33.958145, 37.161152, 30.185139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188175, 37.198689, 30.127886>,  <34.571556, 37.261250, 30.032463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188175, 37.198689, 30.127886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240105, 0.009189, 0.970703,
		-0.154015, 0.987650, 0.028746,
		-0.958451, -0.156405, 0.238555,
		33.900639, 37.151768, 30.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356262, 37.772739, 30.407846>,  <34.571556, 37.261250, 30.032463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356262, 37.772739, 30.407846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063526, 37.517002, 30.502209>,  <33.887886, 37.363560, 30.558826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063526, 37.517002, 30.502209>,  <34.356262, 37.772739, 30.407846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063526, 37.517002, 30.502209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136043, 0.202139, 0.969862,
		-0.667760, 0.741877, -0.060956,
		-0.731840, -0.639342, 0.235908,
		33.843975, 37.325199, 30.572981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071907, 38.071037, 31.002634>,  <34.356262, 37.772739, 30.407846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071907, 38.071037, 31.002634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949921, 37.690735, 31.024733>,  <33.876728, 37.462551, 31.037992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949921, 37.690735, 31.024733>,  <34.071907, 38.071037, 31.002634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949921, 37.690735, 31.024733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065949, 0.036790, 0.997145,
		-0.950078, 0.307735, 0.051482,
		-0.304963, -0.950760, 0.055249,
		33.858433, 37.405506, 31.041307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488544, 37.983494, 31.486597>,  <34.071907, 38.071037, 31.002634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488544, 37.983494, 31.486597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.649624, 37.618267, 31.460882>,  <33.746273, 37.399132, 31.445454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.649624, 37.618267, 31.460882>,  <33.488544, 37.983494, 31.486597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649624, 37.618267, 31.460882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014817, -0.076725, 0.996942,
		-0.915211, -0.400519, -0.044426,
		0.402703, -0.913071, -0.064285,
		33.770435, 37.344345, 31.441597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017181, 37.590904, 31.864841>,  <33.488544, 37.983494, 31.486597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017181, 37.590904, 31.864841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.372513, 37.407230, 31.866495>,  <33.585712, 37.297024, 31.867487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.372513, 37.407230, 31.866495>,  <33.017181, 37.590904, 31.864841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372513, 37.407230, 31.866495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071595, -0.129600, 0.988978,
		-0.453593, -0.878834, -0.148003,
		0.888329, -0.459190, 0.004135,
		33.639011, 37.269474, 31.867735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035625, 36.961590, 32.394211>,  <33.017181, 37.590904, 31.864841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035625, 36.961590, 32.394211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.429501, 37.018024, 32.353264>,  <33.665825, 37.051888, 32.328697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.429501, 37.018024, 32.353264>,  <33.035625, 36.961590, 32.394211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429501, 37.018024, 32.353264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121165, -0.131831, 0.983839,
		0.125316, -0.981180, -0.146908,
		0.984690, 0.141091, -0.102364,
		33.724907, 37.060352, 32.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339596, 36.495029, 32.837250>,  <33.035625, 36.961590, 32.394211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339596, 36.495029, 32.837250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657215, 36.731052, 32.778847>,  <33.847786, 36.872665, 32.743805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657215, 36.731052, 32.778847>,  <33.339596, 36.495029, 32.837250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657215, 36.731052, 32.778847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284141, -0.147970, 0.947295,
		0.537350, -0.793689, -0.285154,
		0.794052, 0.590053, -0.146008,
		33.895432, 36.908070, 32.735043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888351, 36.131908, 33.105900>,  <33.339596, 36.495029, 32.837250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888351, 36.131908, 33.105900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.029655, 36.505913, 33.093487>,  <34.114437, 36.730316, 33.086040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.029655, 36.505913, 33.093487>,  <33.888351, 36.131908, 33.105900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029655, 36.505913, 33.093487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316097, -0.088071, 0.944630,
		0.880507, -0.343505, -0.326666,
		0.353255, 0.935012, -0.031034,
		34.135632, 36.786415, 33.084175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644051, 36.104275, 33.424953>,  <33.888351, 36.131908, 33.105900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644051, 36.104275, 33.424953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490005, 36.470020, 33.474964>,  <34.397575, 36.689468, 33.504971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490005, 36.470020, 33.474964>,  <34.644051, 36.104275, 33.424953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490005, 36.470020, 33.474964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310347, 0.000733, 0.950623,
		0.869120, 0.404902, -0.284051,
		-0.385118, 0.914360, 0.125023,
		34.374470, 36.744328, 33.512470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197689, 36.500412, 33.634048>,  <34.644051, 36.104275, 33.424953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197689, 36.500412, 33.634048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862144, 36.683952, 33.751194>,  <34.660820, 36.794079, 33.821480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862144, 36.683952, 33.751194>,  <35.197689, 36.500412, 33.634048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862144, 36.683952, 33.751194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328061, -0.003169, 0.944651,
		0.434386, 0.888505, -0.147875,
		-0.838859, 0.458855, 0.292861,
		34.610485, 36.821609, 33.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393970, 37.074375, 33.975842>,  <35.197689, 36.500412, 33.634048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393970, 37.074375, 33.975842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.018337, 37.023983, 34.103745>,  <34.792957, 36.993748, 34.180489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.018337, 37.023983, 34.103745>,  <35.393970, 37.074375, 33.975842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018337, 37.023983, 34.103745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276299, 0.276577, 0.920415,
		-0.204394, 0.952698, -0.224921,
		-0.939086, -0.125982, 0.319760,
		34.736610, 36.986187, 34.199673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.166866, 37.444485, 26.313942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802685, 37.324894, 26.428265>,  <32.584175, 37.253139, 26.496859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802685, 37.324894, 26.428265>,  <33.166866, 37.444485, 26.313942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802685, 37.324894, 26.428265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157614, 0.388073, 0.908051,
		-0.382399, 0.871787, -0.306200,
		-0.910455, -0.298977, 0.285805,
		32.529549, 37.235203, 26.514006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766098, 38.079910, 26.636257>,  <33.166866, 37.444485, 26.313942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766098, 38.079910, 26.636257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620701, 37.734390, 26.775812>,  <32.533463, 37.527077, 26.859545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620701, 37.734390, 26.775812>,  <32.766098, 38.079910, 26.636257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620701, 37.734390, 26.775812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187875, 0.298838, 0.935627,
		-0.912457, 0.405638, 0.053662,
		-0.363489, -0.863802, 0.348886,
		32.511654, 37.475250, 26.880478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534615, 38.319851, 27.326040>,  <32.766098, 38.079910, 26.636257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534615, 38.319851, 27.326040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527027, 37.919933, 27.323128>,  <32.522472, 37.679981, 27.321381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527027, 37.919933, 27.323128>,  <32.534615, 38.319851, 27.326040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527027, 37.919933, 27.323128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239226, -0.011612, 0.970895,
		-0.970779, 0.016678, 0.239396,
		-0.018973, -0.999793, -0.007283,
		32.521336, 37.619995, 27.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298923, 38.115131, 27.964113>,  <32.534615, 38.319851, 27.326040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298923, 38.115131, 27.964113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453522, 37.763084, 27.853828>,  <32.546280, 37.551857, 27.787659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453522, 37.763084, 27.853828>,  <32.298923, 38.115131, 27.964113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453522, 37.763084, 27.853828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295198, -0.165165, 0.941052,
		-0.873772, -0.445104, 0.195972,
		0.386498, -0.880115, -0.275710,
		32.569469, 37.499050, 27.771114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081379, 37.666485, 28.449522>,  <32.298923, 38.115131, 27.964113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081379, 37.666485, 28.449522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421745, 37.536743, 28.284241>,  <32.625965, 37.458897, 28.185072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421745, 37.536743, 28.284241>,  <32.081379, 37.666485, 28.449522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421745, 37.536743, 28.284241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410950, -0.078929, 0.908235,
		-0.327207, -0.942636, 0.066133,
		0.850914, -0.324358, -0.413202,
		32.677021, 37.439438, 28.160280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229015, 37.099411, 28.861607>,  <32.081379, 37.666485, 28.449522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229015, 37.099411, 28.861607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585400, 37.175304, 28.696587>,  <32.799229, 37.220840, 28.597574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585400, 37.175304, 28.696587>,  <32.229015, 37.099411, 28.861607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585400, 37.175304, 28.696587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442546, -0.159281, 0.882487,
		0.101725, -0.968830, -0.225877,
		0.890957, 0.189732, -0.412549,
		32.852688, 37.232224, 28.572823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729324, 36.447239, 28.938124>,  <32.229015, 37.099411, 28.861607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729324, 36.447239, 28.938124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918865, 36.796818, 28.894899>,  <33.032589, 37.006565, 28.868965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918865, 36.796818, 28.894899>,  <32.729324, 36.447239, 28.938124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918865, 36.796818, 28.894899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522131, -0.180023, 0.833650,
		0.709114, -0.451449, -0.541620,
		0.473854, 0.873948, -0.108058,
		33.061020, 37.059002, 28.862482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407047, 36.254307, 29.083170>,  <32.729324, 36.447239, 28.938124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407047, 36.254307, 29.083170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428364, 36.652359, 29.116346>,  <33.441154, 36.891190, 29.136253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428364, 36.652359, 29.116346>,  <33.407047, 36.254307, 29.083170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428364, 36.652359, 29.116346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576926, -0.098480, 0.810838,
		0.815056, 0.004639, -0.579364,
		0.053294, 0.995128, 0.082943,
		33.444351, 36.950897, 29.141230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093014, 36.348442, 29.248886>,  <33.407047, 36.254307, 29.083170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093014, 36.348442, 29.248886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867599, 36.665947, 29.340429>,  <33.732349, 36.856449, 29.395355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867599, 36.665947, 29.340429>,  <34.093014, 36.348442, 29.248886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867599, 36.665947, 29.340429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376714, 0.000369, 0.926329,
		0.735197, 0.608234, -0.299228,
		-0.563535, 0.793758, 0.228859,
		33.698540, 36.904076, 29.409086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854706, 36.287449, 29.063391>,  <34.093014, 36.348442, 29.248886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854706, 36.287449, 29.063391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209484, 36.105217, 29.093775>,  <35.422352, 35.995876, 29.112005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209484, 36.105217, 29.093775>,  <34.854706, 36.287449, 29.063391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209484, 36.105217, 29.093775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013051, -0.139678, -0.990111,
		0.461684, 0.879169, -0.117941,
		0.886948, -0.455579, 0.075962,
		35.475567, 35.968544, 29.116564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308945, 36.478073, 28.381491>,  <34.854706, 36.287449, 29.063391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308945, 36.478073, 28.381491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454735, 36.128708, 28.510675>,  <35.542210, 35.919086, 28.588186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454735, 36.128708, 28.510675>,  <35.308945, 36.478073, 28.381491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454735, 36.128708, 28.510675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028611, -0.336153, -0.941373,
		0.930775, 0.352344, -0.097529,
		0.364471, -0.873416, 0.322963,
		35.564075, 35.866684, 28.607565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951218, 36.274132, 27.915314>,  <35.308945, 36.478073, 28.381491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951218, 36.274132, 27.915314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812763, 35.952202, 28.108164>,  <35.729691, 35.759045, 28.223873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812763, 35.952202, 28.108164>,  <35.951218, 36.274132, 27.915314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812763, 35.952202, 28.108164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103670, -0.477933, -0.872257,
		0.932439, -0.351902, 0.081993,
		-0.346136, -0.804826, 0.482125,
		35.708923, 35.710754, 28.252802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429317, 35.784100, 27.670288>,  <35.951218, 36.274132, 27.915314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429317, 35.784100, 27.670288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120277, 35.576874, 27.817095>,  <35.934853, 35.452538, 27.905180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120277, 35.576874, 27.817095>,  <36.429317, 35.784100, 27.670288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120277, 35.576874, 27.817095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029896, -0.547749, -0.836108,
		0.634193, -0.656947, 0.407701,
		-0.772597, -0.518065, 0.367018,
		35.888496, 35.421455, 27.927200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518574, 35.172798, 27.429029>,  <36.429317, 35.784100, 27.670288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518574, 35.172798, 27.429029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126198, 35.183376, 27.506035>,  <35.890774, 35.189724, 27.552238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126198, 35.183376, 27.506035>,  <36.518574, 35.172798, 27.429029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126198, 35.183376, 27.506035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186266, -0.410258, -0.892745,
		0.055370, -0.911586, 0.407363,
		-0.980938, 0.026446, 0.192513,
		35.831917, 35.191311, 27.563789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398506, 34.532906, 27.078335>,  <36.518574, 35.172798, 27.429029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398506, 34.532906, 27.078335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050396, 34.723251, 27.129208>,  <35.841530, 34.837460, 27.159731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050396, 34.723251, 27.129208>,  <36.398506, 34.532906, 27.078335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050396, 34.723251, 27.129208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300708, -0.308780, -0.902347,
		-0.390124, -0.823534, 0.411820,
		-0.870275, 0.475864, 0.127181,
		35.789314, 34.866013, 27.167362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945385, 34.129898, 26.655695>,  <36.398506, 34.532906, 27.078335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945385, 34.129898, 26.655695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729107, 34.461407, 26.713360>,  <35.599342, 34.660313, 26.747959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729107, 34.461407, 26.713360>,  <35.945385, 34.129898, 26.655695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729107, 34.461407, 26.713360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384505, -0.091057, -0.918621,
		-0.748204, -0.552122, 0.367902,
		-0.540691, 0.828776, 0.144164,
		35.566898, 34.710041, 26.756609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275463, 33.921997, 26.545275>,  <35.945385, 34.129898, 26.655695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275463, 33.921997, 26.545275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269096, 34.316765, 26.481113>,  <35.265278, 34.553627, 26.442617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269096, 34.316765, 26.481113>,  <35.275463, 33.921997, 26.545275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269096, 34.316765, 26.481113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490107, -0.147530, -0.859087,
		-0.871517, 0.064943, 0.486045,
		-0.015914, 0.986923, -0.160404,
		35.264320, 34.612843, 26.432993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682137, 33.964157, 26.127750>,  <35.275463, 33.921997, 26.545275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682137, 33.964157, 26.127750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879089, 34.307888, 26.072451>,  <34.997261, 34.514126, 26.039270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879089, 34.307888, 26.072451>,  <34.682137, 33.964157, 26.127750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879089, 34.307888, 26.072451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382908, 0.071224, -0.921037,
		-0.781626, 0.506441, 0.364113,
		0.492385, 0.859328, -0.138250,
		35.026806, 34.565685, 26.030975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185387, 34.480209, 25.864679>,  <34.682137, 33.964157, 26.127750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185387, 34.480209, 25.864679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563999, 34.561699, 25.764622>,  <34.791168, 34.610592, 25.704588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563999, 34.561699, 25.764622>,  <34.185387, 34.480209, 25.864679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563999, 34.561699, 25.764622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278843, 0.126694, -0.951943,
		-0.162245, 0.970795, 0.176728,
		0.946532, 0.203727, -0.250144,
		34.847958, 34.622818, 25.689579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057434, 34.939224, 25.391413>,  <34.185387, 34.480209, 25.864679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057434, 34.939224, 25.391413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435310, 34.823574, 25.329493>,  <34.662037, 34.754185, 25.292339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435310, 34.823574, 25.329493>,  <34.057434, 34.939224, 25.391413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435310, 34.823574, 25.329493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151219, 0.034834, -0.987886,
		0.291013, 0.956658, -0.010814,
		0.944693, -0.289123, -0.154802,
		34.718719, 34.736835, 25.283052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346886, 35.391041, 24.935064>,  <34.057434, 34.939224, 25.391413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346886, 35.391041, 24.935064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580265, 35.067192, 24.909454>,  <34.720291, 34.872883, 24.894089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580265, 35.067192, 24.909454>,  <34.346886, 35.391041, 24.935064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580265, 35.067192, 24.909454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147908, -0.028413, -0.988593,
		0.798569, 0.586261, -0.136327,
		0.583447, -0.809623, -0.064023,
		34.755299, 34.824306, 24.890247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632069, 35.492039, 24.215286>,  <34.346886, 35.391041, 24.935064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632069, 35.492039, 24.215286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691238, 35.108826, 24.313509>,  <34.726742, 34.878899, 24.372442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691238, 35.108826, 24.313509>,  <34.632069, 35.492039, 24.215286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691238, 35.108826, 24.313509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228009, -0.274634, -0.934124,
		0.962356, 0.082192, -0.259065,
		0.147926, -0.958029, 0.245555,
		34.735615, 34.821419, 24.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165203, 35.155811, 23.756945>,  <34.632069, 35.492039, 24.215286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165203, 35.155811, 23.756945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909225, 34.874081, 23.879839>,  <34.755638, 34.705044, 23.953575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909225, 34.874081, 23.879839>,  <35.165203, 35.155811, 23.756945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909225, 34.874081, 23.879839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123172, -0.300637, -0.945752,
		0.758482, -0.643075, 0.105638,
		-0.639948, -0.704324, 0.307237,
		34.717239, 34.662785, 23.972010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.333879, 32.479561, 27.992090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662352, 32.666664, 27.861328>,  <28.859434, 32.778927, 27.782871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662352, 32.666664, 27.861328>,  <28.333879, 32.479561, 27.992090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662352, 32.666664, 27.861328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433205, -0.138057, 0.890659,
		0.371482, -0.873008, -0.316005,
		0.821179, 0.467759, -0.326906,
		28.908705, 32.806992, 27.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891716, 32.012848, 28.182037>,  <28.333879, 32.479561, 27.992090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891716, 32.012848, 28.182037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044930, 32.373295, 28.100780>,  <29.136858, 32.589565, 28.052027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044930, 32.373295, 28.100780>,  <28.891716, 32.012848, 28.182037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044930, 32.373295, 28.100780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545053, -0.042924, 0.837302,
		0.745791, -0.431438, -0.507600,
		0.383032, 0.901121, -0.203144,
		29.159840, 32.643631, 28.039837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637251, 31.991732, 28.070971>,  <28.891716, 32.012848, 28.182037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637251, 31.991732, 28.070971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.581026, 32.379078, 28.153442>,  <29.547291, 32.611485, 28.202925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.581026, 32.379078, 28.153442>,  <29.637251, 31.991732, 28.070971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581026, 32.379078, 28.153442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701909, -0.049402, 0.710551,
		0.698260, 0.244594, -0.672761,
		-0.140560, 0.968366, 0.206178,
		29.538858, 32.669586, 28.215296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298412, 32.240677, 28.158892>,  <29.637251, 31.991732, 28.070971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298412, 32.240677, 28.158892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.034643, 32.466404, 28.357573>,  <29.876383, 32.601841, 28.476782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.034643, 32.466404, 28.357573>,  <30.298412, 32.240677, 28.158892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034643, 32.466404, 28.357573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679579, 0.164938, 0.714820,
		0.321458, 0.808916, -0.492259,
		-0.659422, 0.564314, 0.496702,
		29.836817, 32.635696, 28.506582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725800, 32.818687, 28.274263>,  <30.298412, 32.240677, 28.158892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725800, 32.818687, 28.274263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.407656, 32.820736, 28.516710>,  <30.216770, 32.821964, 28.662178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.407656, 32.820736, 28.516710>,  <30.725800, 32.818687, 28.274263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407656, 32.820736, 28.516710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584024, 0.274114, 0.764053,
		-0.162236, 0.961683, -0.221007,
		-0.795358, 0.005116, 0.606118,
		30.169048, 32.822269, 28.698545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959133, 33.322033, 28.717234>,  <30.725800, 32.818687, 28.274263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959133, 33.322033, 28.717234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.675436, 33.119629, 28.913572>,  <30.505219, 32.998188, 29.031376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.675436, 33.119629, 28.913572>,  <30.959133, 33.322033, 28.717234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675436, 33.119629, 28.913572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503870, 0.123097, 0.854963,
		-0.493043, 0.853698, 0.167659,
		-0.709242, -0.506011, 0.490845,
		30.462664, 32.967827, 29.060825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766346, 33.777012, 29.184032>,  <30.959133, 33.322033, 28.717234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766346, 33.777012, 29.184032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642931, 33.422993, 29.323460>,  <30.568882, 33.210583, 29.407116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642931, 33.422993, 29.323460>,  <30.766346, 33.777012, 29.184032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642931, 33.422993, 29.323460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290891, 0.261098, 0.920440,
		-0.905642, 0.385384, 0.176893,
		-0.308537, -0.885046, 0.348566,
		30.550369, 33.157478, 29.428030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382748, 33.814678, 29.831829>,  <30.766346, 33.777012, 29.184032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382748, 33.814678, 29.831829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.478798, 33.426544, 29.843027>,  <30.536428, 33.193665, 29.849745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.478798, 33.426544, 29.843027>,  <30.382748, 33.814678, 29.831829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478798, 33.426544, 29.843027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346392, 0.112587, 0.931309,
		-0.906837, -0.213935, 0.363152,
		0.240126, -0.970338, 0.027993,
		30.550837, 33.135445, 29.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138607, 33.592583, 30.511795>,  <30.382748, 33.814678, 29.831829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138607, 33.592583, 30.511795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.397055, 33.317154, 30.380102>,  <30.552124, 33.151897, 30.301086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.397055, 33.317154, 30.380102>,  <30.138607, 33.592583, 30.511795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397055, 33.317154, 30.380102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399152, -0.062824, 0.914730,
		-0.650543, -0.722439, 0.234253,
		0.646120, -0.688574, -0.329233,
		30.590891, 33.110580, 30.281332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917307, 32.961739, 30.815865>,  <30.138607, 33.592583, 30.511795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917307, 32.961739, 30.815865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.294012, 32.878281, 30.710377>,  <30.520035, 32.828205, 30.647083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.294012, 32.878281, 30.710377>,  <29.917307, 32.961739, 30.815865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294012, 32.878281, 30.710377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261195, -0.040075, 0.964454,
		-0.211798, -0.977170, 0.016757,
		0.941764, -0.208646, -0.263720,
		30.576542, 32.815685, 30.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101818, 32.303562, 31.047749>,  <29.917307, 32.961739, 30.815865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101818, 32.303562, 31.047749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455435, 32.483902, 30.998423>,  <30.667604, 32.592106, 30.968828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455435, 32.483902, 30.998423>,  <30.101818, 32.303562, 31.047749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455435, 32.483902, 30.998423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227007, -0.183523, 0.956445,
		0.408580, -0.873531, -0.264588,
		0.884042, 0.450847, -0.123314,
		30.720648, 32.619156, 30.961428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653946, 31.882223, 31.236370>,  <30.101818, 32.303562, 31.047749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653946, 31.882223, 31.236370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.841137, 32.234974, 31.259325>,  <30.953451, 32.446625, 31.273098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.841137, 32.234974, 31.259325>,  <30.653946, 31.882223, 31.236370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841137, 32.234974, 31.259325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271720, -0.205374, 0.940207,
		0.840931, -0.424403, -0.335734,
		0.467978, 0.881875, 0.057386,
		30.981531, 32.499535, 31.276541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219238, 31.701115, 31.547249>,  <30.653946, 31.882223, 31.236370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219238, 31.701115, 31.547249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.158609, 32.087723, 31.630068>,  <31.122232, 32.319687, 31.679760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.158609, 32.087723, 31.630068>,  <31.219238, 31.701115, 31.547249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158609, 32.087723, 31.630068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218694, -0.171485, 0.960607,
		0.963949, 0.190883, -0.185379,
		-0.151574, 0.966518, 0.207047,
		31.113138, 32.377678, 31.692183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826399, 31.944777, 31.902925>,  <31.219238, 31.701115, 31.547249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826399, 31.944777, 31.902925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.524761, 32.188904, 31.999960>,  <31.343779, 32.335381, 32.058182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.524761, 32.188904, 31.999960>,  <31.826399, 31.944777, 31.902925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524761, 32.188904, 31.999960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221476, -0.111417, 0.968780,
		0.618293, 0.784281, -0.051152,
		-0.754096, 0.610319, 0.242588,
		31.298532, 32.371998, 32.072735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333591, 32.068508, 31.445141>,  <31.826399, 31.944777, 31.902925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333591, 32.068508, 31.445141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.671307, 31.854515, 31.457548>,  <32.873936, 31.726118, 31.464993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.671307, 31.854515, 31.457548>,  <32.333591, 32.068508, 31.445141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671307, 31.854515, 31.457548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180270, -0.338050, -0.923702,
		0.504653, 0.774282, -0.381855,
		0.844291, -0.534986, 0.031019,
		32.924595, 31.694019, 31.466854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644920, 32.216324, 30.872496>,  <32.333591, 32.068508, 31.445141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644920, 32.216324, 30.872496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829590, 31.870667, 30.952608>,  <32.940392, 31.663271, 31.000675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829590, 31.870667, 30.952608>,  <32.644920, 32.216324, 30.872496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829590, 31.870667, 30.952608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053184, -0.252341, -0.966176,
		0.885454, 0.435406, -0.162458,
		0.461674, -0.864144, 0.200280,
		32.968090, 31.611423, 31.012691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099510, 32.102894, 30.284847>,  <32.644920, 32.216324, 30.872496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099510, 32.102894, 30.284847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010727, 31.754889, 30.460941>,  <32.957455, 31.546085, 30.566597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010727, 31.754889, 30.460941>,  <33.099510, 32.102894, 30.284847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010727, 31.754889, 30.460941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332831, -0.356774, -0.872889,
		0.916491, -0.340272, -0.210378,
		-0.221962, -0.870016, 0.440234,
		32.944138, 31.493883, 30.593012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471287, 31.618238, 29.794596>,  <33.099510, 32.102894, 30.284847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471287, 31.618238, 29.794596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.188328, 31.420813, 29.996977>,  <33.018555, 31.302357, 30.118406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.188328, 31.420813, 29.996977>,  <33.471287, 31.618238, 29.794596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188328, 31.420813, 29.996977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273615, -0.468792, -0.839863,
		0.651713, -0.732550, 0.196574,
		-0.707393, -0.493564, 0.505955,
		32.976109, 31.272743, 30.148764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431828, 30.959396, 29.408857>,  <33.471287, 31.618238, 29.794596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431828, 30.959396, 29.408857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.100990, 30.971827, 29.633341>,  <32.902489, 30.979284, 29.768030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.100990, 30.971827, 29.633341>,  <33.431828, 30.959396, 29.408857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100990, 30.971827, 29.633341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517471, -0.431868, -0.738724,
		0.219413, -0.901401, 0.373274,
		-0.827092, 0.031073, 0.561207,
		32.852863, 30.981148, 29.801702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192337, 30.236532, 29.409922>,  <33.431828, 30.959396, 29.408857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192337, 30.236532, 29.409922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879959, 30.473938, 29.487761>,  <32.692532, 30.616381, 29.534464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879959, 30.473938, 29.487761>,  <33.192337, 30.236532, 29.409922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879959, 30.473938, 29.487761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502818, -0.412566, -0.759581,
		-0.370533, -0.691041, 0.620619,
		-0.780948, 0.593508, 0.194598,
		32.645676, 30.651993, 29.546139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601234, 29.807510, 29.504662>,  <33.192337, 30.236532, 29.409922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601234, 29.807510, 29.504662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479099, 30.179020, 29.420616>,  <32.405819, 30.401926, 29.370188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479099, 30.179020, 29.420616>,  <32.601234, 29.807510, 29.504662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479099, 30.179020, 29.420616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559237, -0.353493, -0.749865,
		-0.770728, -0.111460, 0.627339,
		-0.305340, 0.928773, -0.210115,
		32.387497, 30.457651, 29.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840639, 29.822184, 29.404051>,  <32.601234, 29.807510, 29.504662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840639, 29.822184, 29.404051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.965544, 30.165211, 29.240553>,  <32.040485, 30.371027, 29.142454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.965544, 30.165211, 29.240553>,  <31.840639, 29.822184, 29.404051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965544, 30.165211, 29.240553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408082, -0.267455, -0.872890,
		-0.857882, 0.439372, 0.266441,
		0.312263, 0.857566, -0.408745,
		32.059223, 30.422482, 29.117929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335823, 29.994574, 28.851425>,  <31.840639, 29.822184, 29.404051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335823, 29.994574, 28.851425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.598322, 30.283194, 28.763147>,  <31.755821, 30.456366, 28.710180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.598322, 30.283194, 28.763147>,  <31.335823, 29.994574, 28.851425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598322, 30.283194, 28.763147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403780, 0.088736, -0.910542,
		-0.637419, 0.686652, 0.349581,
		0.656246, 0.721550, -0.220695,
		31.795197, 30.499659, 28.696939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972874, 30.548496, 28.578211>,  <31.335823, 29.994574, 28.851425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972874, 30.548496, 28.578211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.341158, 30.602165, 28.431629>,  <31.562128, 30.634367, 28.343679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.341158, 30.602165, 28.431629>,  <30.972874, 30.548496, 28.578211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341158, 30.602165, 28.431629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366062, -0.028478, -0.930154,
		-0.135238, 0.990549, 0.022895,
		0.920711, 0.134173, -0.366454,
		31.617371, 30.642418, 28.321693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054728, 31.229353, 28.185125>,  <30.972874, 30.548496, 28.578211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054728, 31.229353, 28.185125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304815, 30.955271, 28.035675>,  <31.454868, 30.790821, 27.946005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304815, 30.955271, 28.035675>,  <31.054728, 31.229353, 28.185125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304815, 30.955271, 28.035675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287033, 0.243301, -0.926508,
		0.725751, 0.686513, -0.044560,
		0.625219, -0.685204, -0.373627,
		31.492380, 30.749710, 27.923586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532154, 31.584791, 27.837160>,  <31.054728, 31.229353, 28.185125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532154, 31.584791, 27.837160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.531887, 31.224909, 27.662561>,  <31.531727, 31.008980, 27.557802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.531887, 31.224909, 27.662561>,  <31.532154, 31.584791, 27.837160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531887, 31.224909, 27.662561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255180, 0.422197, -0.869846,
		0.966893, 0.110806, -0.229868,
		-0.000666, -0.899706, -0.436495,
		31.531687, 30.954996, 27.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774712, 31.664516, 27.156218>,  <31.532154, 31.584791, 27.837160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774712, 31.664516, 27.156218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.582254, 31.315870, 27.118725>,  <31.466780, 31.106682, 27.096230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.582254, 31.315870, 27.118725>,  <31.774712, 31.664516, 27.156218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582254, 31.315870, 27.118725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267961, 0.248031, -0.930955,
		0.834685, -0.422805, -0.352898,
		-0.481142, -0.871617, -0.093732,
		31.437912, 31.054384, 27.090605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824398, 31.367151, 26.538721>,  <31.774712, 31.664516, 27.156218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824398, 31.367151, 26.538721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.499041, 31.166359, 26.656300>,  <31.303825, 31.045883, 26.726847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.499041, 31.166359, 26.656300>,  <31.824398, 31.367151, 26.538721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499041, 31.166359, 26.656300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415186, 0.147039, -0.897775,
		0.407446, -0.852287, -0.328017,
		-0.813393, -0.501983, 0.293947,
		31.255022, 31.015764, 26.744484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318516, 30.820917, 26.256828>,  <31.824398, 31.367151, 26.538721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318516, 30.820917, 26.256828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.643890, 30.970415, 26.078554>,  <32.839115, 31.060114, 25.971590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.643890, 30.970415, 26.078554>,  <32.318516, 30.820917, 26.256828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643890, 30.970415, 26.078554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497036, -0.048651, 0.866365,
		0.302116, -0.926255, -0.225339,
		0.813438, 0.373744, -0.445684,
		32.887920, 31.082539, 25.944849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890221, 30.393757, 26.411085>,  <32.318516, 30.820917, 26.256828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890221, 30.393757, 26.411085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.039726, 30.750412, 26.308886>,  <33.129429, 30.964405, 26.247566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.039726, 30.750412, 26.308886>,  <32.890221, 30.393757, 26.411085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039726, 30.750412, 26.308886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592557, -0.017623, 0.805336,
		0.713566, -0.452405, -0.534934,
		0.373765, 0.891639, -0.255500,
		33.151855, 31.017904, 26.232235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548374, 30.373154, 26.513792>,  <32.890221, 30.393757, 26.411085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548374, 30.373154, 26.513792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507549, 30.770905, 26.502499>,  <33.483055, 31.009556, 26.495722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507549, 30.770905, 26.502499>,  <33.548374, 30.373154, 26.513792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507549, 30.770905, 26.502499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657477, 0.088730, 0.748231,
		0.746529, 0.057806, -0.662837,
		-0.102066, 0.994377, -0.028233,
		33.476929, 31.069218, 26.494028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213493, 30.515642, 26.532497>,  <33.548374, 30.373154, 26.513792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213493, 30.515642, 26.532497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015812, 30.848183, 26.634182>,  <33.897205, 31.047707, 26.695192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015812, 30.848183, 26.634182>,  <34.213493, 30.515642, 26.532497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015812, 30.848183, 26.634182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775691, 0.289657, 0.560716,
		0.392517, 0.474296, -0.788019,
		-0.494201, 0.831350, 0.254212,
		33.867550, 31.097588, 26.710445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723072, 30.937832, 26.577848>,  <34.213493, 30.515642, 26.532497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723072, 30.937832, 26.577848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427921, 31.141449, 26.755123>,  <34.250832, 31.263620, 26.861488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427921, 31.141449, 26.755123>,  <34.723072, 30.937832, 26.577848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427921, 31.141449, 26.755123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670757, 0.480076, 0.565342,
		0.075020, 0.714423, -0.695681,
		-0.737873, 0.509044, 0.443189,
		34.206558, 31.294163, 26.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930908, 31.602137, 26.658634>,  <34.723072, 30.937832, 26.577848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930908, 31.602137, 26.658634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642323, 31.580124, 26.934738>,  <34.469170, 31.566916, 27.100401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642323, 31.580124, 26.934738>,  <34.930908, 31.602137, 26.658634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642323, 31.580124, 26.934738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575940, 0.505711, 0.642300,
		-0.384419, 0.860946, -0.333158,
		-0.721467, -0.055033, 0.690259,
		34.425884, 31.563614, 27.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858849, 32.285400, 27.043390>,  <34.930908, 31.602137, 26.658634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858849, 32.285400, 27.043390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716412, 32.027233, 27.313690>,  <34.630947, 31.872334, 27.475870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716412, 32.027233, 27.313690>,  <34.858849, 32.285400, 27.043390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716412, 32.027233, 27.313690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711307, 0.281753, 0.643939,
		-0.606001, 0.709970, 0.358756,
		-0.356097, -0.645414, 0.675749,
		34.609581, 31.833609, 27.516415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718185, 32.641430, 27.651815>,  <34.858849, 32.285400, 27.043390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718185, 32.641430, 27.651815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739765, 32.258133, 27.764147>,  <34.752712, 32.028156, 27.831545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739765, 32.258133, 27.764147>,  <34.718185, 32.641430, 27.651815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739765, 32.258133, 27.764147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380800, 0.279726, 0.881332,
		-0.923083, 0.059392, 0.379988,
		0.053948, -0.958241, 0.280827,
		34.755951, 31.970661, 27.848394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608021, 32.582169, 28.328119>,  <34.718185, 32.641430, 27.651815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608021, 32.582169, 28.328119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.767193, 32.216499, 28.297300>,  <34.862694, 31.997097, 28.278809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.767193, 32.216499, 28.297300>,  <34.608021, 32.582169, 28.328119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767193, 32.216499, 28.297300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453965, 0.123229, 0.882457,
		-0.797227, -0.386129, 0.464040,
		0.397926, -0.914176, -0.077047,
		34.886570, 31.942245, 28.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554207, 32.266068, 28.988951>,  <34.608021, 32.582169, 28.328119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554207, 32.266068, 28.988951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855930, 32.086636, 28.797201>,  <35.036964, 31.978977, 28.682152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855930, 32.086636, 28.797201>,  <34.554207, 32.266068, 28.988951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855930, 32.086636, 28.797201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531455, -0.011487, 0.847009,
		-0.385457, -0.893669, 0.229735,
		0.754307, -0.448579, -0.479373,
		35.082222, 31.952063, 28.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882973, 31.901234, 29.552776>,  <34.554207, 32.266068, 28.988951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882973, 31.901234, 29.552776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.143417, 31.876144, 29.250221>,  <35.299683, 31.861092, 29.068689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.143417, 31.876144, 29.250221>,  <34.882973, 31.901234, 29.552776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143417, 31.876144, 29.250221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751570, -0.085666, 0.654068,
		-0.105825, -0.994347, -0.008633,
		0.651110, -0.062729, -0.756387,
		35.338749, 31.857328, 29.023306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342793, 31.321390, 29.767040>,  <34.882973, 31.901234, 29.552776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342793, 31.321390, 29.767040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.542133, 31.553881, 29.509724>,  <35.661736, 31.693375, 29.355333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.542133, 31.553881, 29.509724>,  <35.342793, 31.321390, 29.767040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542133, 31.553881, 29.509724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835494, -0.123828, 0.535366,
		0.231512, -0.804265, -0.547321,
		0.498350, 0.581227, -0.643291,
		35.691639, 31.728249, 29.316736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907677, 31.002380, 29.733908>,  <35.342793, 31.321390, 29.767040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907677, 31.002380, 29.733908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002903, 31.367107, 29.600090>,  <36.060040, 31.585943, 29.519800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002903, 31.367107, 29.600090>,  <35.907677, 31.002380, 29.733908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002903, 31.367107, 29.600090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759796, 0.039726, 0.648947,
		0.605010, -0.408674, -0.683336,
		0.238061, 0.911815, -0.334544,
		36.074322, 31.640652, 29.499727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648945, 31.036110, 29.693804>,  <35.907677, 31.002380, 29.733908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648945, 31.036110, 29.693804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508041, 31.410126, 29.709896>,  <36.423500, 31.634535, 29.719551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508041, 31.410126, 29.709896>,  <36.648945, 31.036110, 29.693804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508041, 31.410126, 29.709896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612647, 0.197881, 0.765184,
		0.707516, 0.294187, -0.642553,
		-0.352256, 0.935039, 0.040229,
		36.402363, 31.690638, 29.721964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.272568, 34.594925, 23.327108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909576, 34.533062, 23.483345>,  <34.691780, 34.495945, 23.577087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909576, 34.533062, 23.483345>,  <35.272568, 34.594925, 23.327108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909576, 34.533062, 23.483345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316212, -0.360648, -0.877464,
		0.276571, -0.919791, 0.278377,
		-0.907479, -0.154655, 0.390594,
		34.637333, 34.486664, 23.600523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037437, 33.816456, 23.136671>,  <35.272568, 34.594925, 23.327108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037437, 33.816456, 23.136671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697823, 34.004528, 23.233061>,  <34.494053, 34.117371, 23.290894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697823, 34.004528, 23.233061>,  <35.037437, 33.816456, 23.136671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697823, 34.004528, 23.233061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413196, -0.306687, -0.857445,
		-0.329268, -0.827561, 0.454670,
		-0.849030, 0.470197, 0.240963,
		34.443111, 34.145584, 23.305353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492493, 33.320404, 23.178524>,  <35.037437, 33.816456, 23.136671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492493, 33.320404, 23.178524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323936, 33.672611, 23.091705>,  <34.222801, 33.883938, 23.039614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323936, 33.672611, 23.091705>,  <34.492493, 33.320404, 23.178524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323936, 33.672611, 23.091705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436244, -0.406639, -0.802705,
		-0.795058, -0.243570, 0.555478,
		-0.421395, 0.880522, -0.217046,
		34.197517, 33.936768, 23.026592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845371, 33.129757, 22.875887>,  <34.492493, 33.320404, 23.178524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845371, 33.129757, 22.875887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844601, 33.521545, 22.795259>,  <33.844139, 33.756618, 22.746883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844601, 33.521545, 22.795259>,  <33.845371, 33.129757, 22.875887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844601, 33.521545, 22.795259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624980, -0.158533, -0.764374,
		-0.780638, 0.124501, 0.612457,
		-0.001929, 0.979473, -0.201567,
		33.844021, 33.815388, 22.734789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128197, 33.336880, 22.917578>,  <33.845371, 33.129757, 22.875887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128197, 33.336880, 22.917578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306747, 33.624363, 22.704336>,  <33.413876, 33.796852, 22.576391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306747, 33.624363, 22.704336>,  <33.128197, 33.336880, 22.917578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306747, 33.624363, 22.704336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621298, -0.179831, -0.762659,
		-0.644002, 0.671649, 0.366263,
		0.446374, 0.718713, -0.533106,
		33.440659, 33.839977, 22.544405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626949, 33.727211, 22.699656>,  <33.128197, 33.336880, 22.917578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626949, 33.727211, 22.699656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923859, 33.783257, 22.437542>,  <33.102005, 33.816883, 22.280273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923859, 33.783257, 22.437542>,  <32.626949, 33.727211, 22.699656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923859, 33.783257, 22.437542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630575, -0.184826, -0.753800,
		-0.226731, 0.972732, -0.048839,
		0.742272, 0.140113, -0.655286,
		33.146542, 33.825291, 22.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302662, 34.124676, 22.149673>,  <32.626949, 33.727211, 22.699656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302662, 34.124676, 22.149673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.637215, 33.976837, 21.987749>,  <32.837944, 33.888134, 21.890594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.637215, 33.976837, 21.987749>,  <32.302662, 34.124676, 22.149673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637215, 33.976837, 21.987749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465375, -0.088542, -0.880674,
		0.289650, 0.924965, -0.246055,
		0.836379, -0.369595, -0.404809,
		32.888126, 33.865959, 21.866306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353207, 34.499985, 21.558125>,  <32.302662, 34.124676, 22.149673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353207, 34.499985, 21.558125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597050, 34.189026, 21.496120>,  <32.743355, 34.002449, 21.458918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597050, 34.189026, 21.496120>,  <32.353207, 34.499985, 21.558125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597050, 34.189026, 21.496120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365364, -0.102012, -0.925258,
		0.703480, 0.620682, -0.346221,
		0.609610, -0.777398, -0.155011,
		32.779934, 33.955807, 21.449617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412228, 34.518879, 20.853996>,  <32.353207, 34.499985, 21.558125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412228, 34.518879, 20.853996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542854, 34.156536, 20.961906>,  <32.621231, 33.939129, 21.026653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542854, 34.156536, 20.961906>,  <32.412228, 34.518879, 20.853996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542854, 34.156536, 20.961906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534054, -0.412341, -0.738080,
		0.779834, 0.096956, -0.618432,
		0.326567, -0.905856, 0.269777,
		32.640823, 33.884781, 21.042839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798912, 34.213528, 20.288593>,  <32.412228, 34.518879, 20.853996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798912, 34.213528, 20.288593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702564, 33.892883, 20.507467>,  <32.644756, 33.700497, 20.638792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702564, 33.892883, 20.507467>,  <32.798912, 34.213528, 20.288593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702564, 33.892883, 20.507467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574103, -0.336897, -0.746262,
		0.782553, -0.493890, -0.379057,
		-0.240868, -0.801606, 0.547183,
		32.630302, 33.652401, 20.671621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880379, 33.607777, 19.875284>,  <32.798912, 34.213528, 20.288593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880379, 33.607777, 19.875284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623100, 33.498806, 20.161522>,  <32.468735, 33.433422, 20.333265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623100, 33.498806, 20.161522>,  <32.880379, 33.607777, 19.875284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623100, 33.498806, 20.161522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596952, -0.406867, -0.691453,
		0.479526, -0.871918, 0.099067,
		-0.643197, -0.272431, 0.715597,
		32.430141, 33.417076, 20.376202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761364, 32.937263, 19.767801>,  <32.880379, 33.607777, 19.875284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761364, 32.937263, 19.767801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442974, 33.080269, 19.963192>,  <32.251942, 33.166073, 20.080427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442974, 33.080269, 19.963192>,  <32.761364, 32.937263, 19.767801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442974, 33.080269, 19.963192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599595, -0.354833, -0.717342,
		-0.083128, -0.863876, 0.496799,
		-0.795975, 0.357509, 0.488478,
		32.204182, 33.187523, 20.109735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196381, 32.375599, 19.887648>,  <32.761364, 32.937263, 19.767801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196381, 32.375599, 19.887648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007061, 32.727913, 19.881956>,  <31.893471, 32.939301, 19.878540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007061, 32.727913, 19.881956>,  <32.196381, 32.375599, 19.887648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007061, 32.727913, 19.881956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664908, -0.367793, -0.650097,
		-0.577832, -0.298225, 0.759718,
		-0.473294, 0.880790, -0.014230,
		31.865072, 32.992149, 19.877687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447691, 32.322769, 20.052938>,  <32.196381, 32.375599, 19.887648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447691, 32.322769, 20.052938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523670, 32.635300, 19.815130>,  <31.569258, 32.822819, 19.672445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523670, 32.635300, 19.815130>,  <31.447691, 32.322769, 20.052938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523670, 32.635300, 19.815130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613938, -0.378020, -0.692951,
		-0.766159, 0.496623, 0.407880,
		0.189949, 0.781323, -0.594519,
		31.580654, 32.869698, 19.636774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003452, 31.967419, 20.414242>,  <31.447691, 32.322769, 20.052938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003452, 31.967419, 20.414242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856894, 31.607597, 20.509369>,  <30.768957, 31.391705, 20.566446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856894, 31.607597, 20.509369>,  <31.003452, 31.967419, 20.414242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856894, 31.607597, 20.509369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435379, 0.060136, 0.898236,
		-0.822312, 0.432653, 0.369613,
		-0.366398, -0.899553, 0.237819,
		30.746975, 31.337732, 20.580715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707464, 32.012829, 21.069798>,  <31.003452, 31.967419, 20.414242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707464, 32.012829, 21.069798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745234, 31.615034, 21.051523>,  <30.767895, 31.376358, 21.040558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745234, 31.615034, 21.051523>,  <30.707464, 32.012829, 21.069798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745234, 31.615034, 21.051523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441839, 0.000740, 0.897094,
		-0.892111, -0.104892, 0.439471,
		0.094423, -0.994483, -0.045685,
		30.773560, 31.316689, 21.037817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463829, 31.813066, 21.671024>,  <30.707464, 32.012829, 21.069798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463829, 31.813066, 21.671024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698475, 31.520494, 21.531944>,  <30.839262, 31.344952, 21.448496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698475, 31.520494, 21.531944>,  <30.463829, 31.813066, 21.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698475, 31.520494, 21.531944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317318, -0.187422, 0.929614,
		-0.745113, -0.655656, 0.122151,
		0.586613, -0.731429, -0.347702,
		30.874458, 31.301065, 21.427633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543991, 31.269312, 22.342251>,  <30.463829, 31.813066, 21.671024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543991, 31.269312, 22.342251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840872, 31.200935, 22.083048>,  <31.019001, 31.159910, 21.927526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840872, 31.200935, 22.083048>,  <30.543991, 31.269312, 22.342251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840872, 31.200935, 22.083048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607399, -0.237014, 0.758215,
		-0.283197, -0.956349, -0.072083,
		0.742203, -0.170941, -0.648007,
		31.063534, 31.149654, 21.888645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873241, 30.600468, 22.598110>,  <30.543991, 31.269312, 22.342251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873241, 30.600468, 22.598110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148275, 30.777142, 22.367582>,  <31.313295, 30.883146, 22.229265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148275, 30.777142, 22.367582>,  <30.873241, 30.600468, 22.598110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148275, 30.777142, 22.367582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682724, -0.123032, 0.720243,
		0.247214, -0.888695, -0.386143,
		0.687584, 0.441684, -0.576318,
		31.354551, 30.909647, 22.194687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435349, 30.133829, 22.599976>,  <30.873241, 30.600468, 22.598110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435349, 30.133829, 22.599976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571276, 30.501722, 22.521376>,  <31.652832, 30.722458, 22.474216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571276, 30.501722, 22.521376>,  <31.435349, 30.133829, 22.599976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571276, 30.501722, 22.521376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559668, -0.029843, 0.828180,
		0.755842, -0.391404, -0.524887,
		0.339817, 0.919735, -0.196500,
		31.673222, 30.777643, 22.462425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122959, 30.027700, 22.778620>,  <31.435349, 30.133829, 22.599976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122959, 30.027700, 22.778620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063709, 30.423029, 22.764299>,  <32.028160, 30.660225, 22.755707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063709, 30.423029, 22.764299>,  <32.122959, 30.027700, 22.778620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063709, 30.423029, 22.764299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481414, 0.103680, 0.870340,
		0.863886, 0.111687, -0.491149,
		-0.148128, 0.988320, -0.035800,
		32.019272, 30.719524, 22.753559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818535, 30.326548, 22.821978>,  <32.122959, 30.027700, 22.778620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818535, 30.326548, 22.821978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549603, 30.600033, 22.935474>,  <32.388245, 30.764124, 23.003572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549603, 30.600033, 22.935474>,  <32.818535, 30.326548, 22.821978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549603, 30.600033, 22.935474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573699, 0.239032, 0.783411,
		0.467803, 0.689495, -0.552953,
		-0.672331, 0.683711, 0.283742,
		32.347904, 30.805145, 23.020597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242035, 30.966856, 23.045719>,  <32.818535, 30.326548, 22.821978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242035, 30.966856, 23.045719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877323, 31.003872, 23.205769>,  <32.658497, 31.026081, 23.301798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877323, 31.003872, 23.205769>,  <33.242035, 30.966856, 23.045719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877323, 31.003872, 23.205769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409930, 0.146051, 0.900348,
		0.024880, 0.984939, -0.171101,
		-0.911777, 0.092540, 0.400123,
		32.603790, 31.031633, 23.325806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285583, 31.578865, 23.362173>,  <33.242035, 30.966856, 23.045719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285583, 31.578865, 23.362173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986385, 31.393778, 23.552500>,  <32.806866, 31.282726, 23.666697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986385, 31.393778, 23.552500>,  <33.285583, 31.578865, 23.362173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986385, 31.393778, 23.552500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398222, 0.260643, 0.879480,
		-0.530970, 0.847324, -0.010694,
		-0.747991, -0.462718, 0.475816,
		32.761990, 31.254963, 23.695244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312557, 31.853157, 24.122845>,  <33.285583, 31.578865, 23.362173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312557, 31.853157, 24.122845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033714, 31.571960, 24.179186>,  <32.866409, 31.403242, 24.212990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033714, 31.571960, 24.179186>,  <33.312557, 31.853157, 24.122845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033714, 31.571960, 24.179186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245846, -0.049832, 0.968027,
		-0.673498, 0.709449, 0.207566,
		-0.697109, -0.702993, 0.140853,
		32.824581, 31.361063, 24.221441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899029, 32.209473, 24.681227>,  <33.312557, 31.853157, 24.122845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899029, 32.209473, 24.681227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863201, 31.811361, 24.666229>,  <32.841705, 31.572495, 24.657230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863201, 31.811361, 24.666229>,  <32.899029, 32.209473, 24.681227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863201, 31.811361, 24.666229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260623, -0.059757, 0.963589,
		-0.961277, 0.076535, 0.264744,
		-0.089568, -0.995274, -0.037496,
		32.836330, 31.512779, 24.654980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349270, 32.078159, 25.177286>,  <32.899029, 32.209473, 24.681227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349270, 32.078159, 25.177286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606453, 31.774197, 25.139038>,  <32.760765, 31.591820, 25.116089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606453, 31.774197, 25.139038>,  <32.349270, 32.078159, 25.177286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606453, 31.774197, 25.139038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183709, 0.031810, 0.982466,
		-0.743540, -0.649254, 0.160055,
		0.642961, -0.759906, -0.095622,
		32.799343, 31.546225, 25.110352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087013, 31.462370, 25.664921>,  <32.349270, 32.078159, 25.177286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087013, 31.462370, 25.664921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472225, 31.412699, 25.569288>,  <32.703350, 31.382896, 25.511908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472225, 31.412699, 25.569288>,  <32.087013, 31.462370, 25.664921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472225, 31.412699, 25.569288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234612, -0.049683, 0.970819,
		-0.132432, -0.991015, -0.018713,
		0.963026, -0.124177, -0.239083,
		32.761131, 31.375446, 25.497562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603453, 30.824423, 25.943695>,  <32.087013, 31.462370, 25.664921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603453, 30.824423, 25.943695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278915, 30.849577, 26.176167>,  <31.084192, 30.864670, 26.315649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278915, 30.849577, 26.176167>,  <31.603453, 30.824423, 25.943695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278915, 30.849577, 26.176167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583679, -0.032267, -0.811343,
		-0.032267, -0.997499, 0.062884,
		0.811343, -0.062884, -0.581178,
		31.035513, 30.868443, 26.350519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072632, 30.255283, 25.784489>,  <31.603453, 30.824423, 25.943695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072632, 30.255283, 25.784489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854631, 30.538706, 25.963787>,  <30.723831, 30.708759, 26.071365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854631, 30.538706, 25.963787>,  <31.072632, 30.255283, 25.784489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854631, 30.538706, 25.963787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544453, 0.107481, -0.831877,
		-0.637609, -0.697422, 0.327198,
		-0.545001, 0.708556, 0.448244,
		30.691132, 30.751272, 26.098261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331749, 30.074335, 25.601753>,  <31.072632, 30.255283, 25.784489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331749, 30.074335, 25.601753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368608, 30.453913, 25.722429>,  <30.390724, 30.681660, 25.794836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368608, 30.453913, 25.722429>,  <30.331749, 30.074335, 25.601753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368608, 30.453913, 25.722429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595545, 0.295340, -0.747061,
		-0.798019, -0.110831, 0.592352,
		0.092148, 0.948942, 0.301692,
		30.396254, 30.738596, 25.812937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606190, 30.355644, 25.614727>,  <30.331749, 30.074335, 25.601753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606190, 30.355644, 25.614727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838217, 30.681036, 25.597914>,  <29.977434, 30.876272, 25.587826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838217, 30.681036, 25.597914>,  <29.606190, 30.355644, 25.614727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838217, 30.681036, 25.597914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510264, 0.322661, -0.797195,
		-0.634941, 0.483877, 0.602256,
		0.580069, 0.813482, -0.042035,
		30.012238, 30.925081, 25.585302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138741, 30.948309, 25.579184>,  <29.606190, 30.355644, 25.614727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138741, 30.948309, 25.579184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490343, 31.082335, 25.443489>,  <29.701305, 31.162750, 25.362072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490343, 31.082335, 25.443489>,  <29.138741, 30.948309, 25.579184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490343, 31.082335, 25.443489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470236, 0.491436, -0.733054,
		-0.078906, 0.803880, 0.589534,
		0.879006, 0.335063, -0.339236,
		29.754045, 31.182854, 25.341719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950323, 31.554550, 25.416195>,  <29.138741, 30.948309, 25.579184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950323, 31.554550, 25.416195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287930, 31.487938, 25.212273>,  <29.490494, 31.447971, 25.089920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287930, 31.487938, 25.212273>,  <28.950323, 31.554550, 25.416195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287930, 31.487938, 25.212273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484730, 0.169900, -0.858004,
		0.229499, 0.971289, 0.062677,
		0.844018, -0.166530, -0.509805,
		29.541136, 31.437979, 25.059332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063257, 32.146996, 24.914158>,  <28.950323, 31.554550, 25.416195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063257, 32.146996, 24.914158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259853, 31.832823, 24.763678>,  <29.377811, 31.644318, 24.673389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259853, 31.832823, 24.763678>,  <29.063257, 32.146996, 24.914158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259853, 31.832823, 24.763678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591200, 0.016278, -0.806360,
		0.639469, 0.618729, -0.456349,
		0.491489, -0.785436, -0.376202,
		29.407301, 31.597193, 24.650816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308859, 32.875809, 24.913496>,  <29.063257, 32.146996, 24.914158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308859, 32.875809, 24.913496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.960852, 33.072834, 24.921940>,  <28.752047, 33.191051, 24.927006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.960852, 33.072834, 24.921940>,  <29.308859, 32.875809, 24.913496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960852, 33.072834, 24.921940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016854, -0.013080, 0.999772,
		0.492731, 0.870176, 0.003078,
		-0.870018, 0.492567, 0.021111,
		28.699846, 33.220604, 24.928272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404022, 33.604416, 25.153229>,  <29.308859, 32.875809, 24.913496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404022, 33.604416, 25.153229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.031694, 33.478252, 25.227085>,  <28.808298, 33.402554, 25.271399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.031694, 33.478252, 25.227085>,  <29.404022, 33.604416, 25.153229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031694, 33.478252, 25.227085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141499, 0.154806, 0.977759,
		-0.336975, 0.936245, -0.099467,
		-0.930820, -0.315406, 0.184643,
		28.752449, 33.383629, 25.282478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210350, 34.048187, 25.612608>,  <29.404022, 33.604416, 25.153229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210350, 34.048187, 25.612608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950823, 33.747303, 25.658585>,  <28.795107, 33.566772, 25.686171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950823, 33.747303, 25.658585>,  <29.210350, 34.048187, 25.612608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950823, 33.747303, 25.658585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077571, 0.084884, 0.993367,
		-0.756979, 0.653431, 0.003276,
		-0.648818, -0.752212, 0.114943,
		28.756178, 33.521641, 25.693068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790081, 34.245640, 26.138758>,  <29.210350, 34.048187, 25.612608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790081, 34.245640, 26.138758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.760851, 33.846905, 26.151234>,  <28.743313, 33.607662, 26.158718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.760851, 33.846905, 26.151234>,  <28.790081, 34.245640, 26.138758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760851, 33.846905, 26.151234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111670, 0.022897, 0.993481,
		-0.991055, 0.076083, 0.109644,
		-0.073077, -0.996838, 0.031189,
		28.738928, 33.547852, 26.160591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659290, 34.100235, 26.761906>,  <28.790081, 34.245640, 26.138758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659290, 34.100235, 26.761906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.699633, 33.721859, 26.638605>,  <28.723837, 33.494831, 26.564625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.699633, 33.721859, 26.638605>,  <28.659290, 34.100235, 26.761906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699633, 33.721859, 26.638605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204197, -0.283555, 0.936963,
		-0.973721, -0.157440, 0.164561,
		0.100854, -0.945943, -0.308252,
		28.729889, 33.438076, 26.546129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295475, 33.787388, 27.223026>,  <28.659290, 34.100235, 26.761906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295475, 33.787388, 27.223026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529211, 33.489403, 27.094292>,  <28.669453, 33.310612, 27.017052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529211, 33.489403, 27.094292>,  <28.295475, 33.787388, 27.223026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529211, 33.489403, 27.094292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267130, -0.197907, 0.943119,
		-0.766281, -0.637076, 0.083355,
		0.584342, -0.744961, -0.321834,
		28.704514, 33.265915, 26.997742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016167, 33.163807, 27.519978>,  <28.295475, 33.787388, 27.223026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016167, 33.163807, 27.519978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.399191, 33.095699, 27.426950>,  <28.629005, 33.054832, 27.371134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.399191, 33.095699, 27.426950>,  <28.016167, 33.163807, 27.519978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399191, 33.095699, 27.426950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203687, -0.171168, 0.963957,
		-0.203944, -0.970417, -0.129221,
		0.957559, -0.170273, -0.232570,
		28.686459, 33.044617, 27.357180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.058687, 35.061867, 20.582893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427351, 34.907078, 20.594162>,  <29.648550, 34.814205, 20.600924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427351, 34.907078, 20.594162>,  <29.058687, 35.061867, 20.582893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427351, 34.907078, 20.594162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189066, 0.511330, 0.838329,
		-0.338813, -0.767329, 0.544436,
		0.921661, -0.386971, 0.028170,
		29.703850, 34.790985, 20.602613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133415, 34.731014, 21.258728>,  <29.058687, 35.061867, 20.582893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133415, 34.731014, 21.258728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499983, 34.802517, 21.115496>,  <29.719923, 34.845421, 21.029556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499983, 34.802517, 21.115496>,  <29.133415, 34.731014, 21.258728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499983, 34.802517, 21.115496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296663, 0.297149, 0.907576,
		0.268635, -0.937949, 0.219284,
		0.916420, 0.178754, -0.358079,
		29.774908, 34.856144, 21.008072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615433, 34.290997, 21.688599>,  <29.133415, 34.731014, 21.258728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615433, 34.290997, 21.688599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818043, 34.601246, 21.537952>,  <29.939608, 34.787395, 21.447565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818043, 34.601246, 21.537952>,  <29.615433, 34.290997, 21.688599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818043, 34.601246, 21.537952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531578, 0.062991, 0.844664,
		0.678865, -0.628043, -0.380398,
		0.506524, 0.775625, -0.376617,
		29.969999, 34.833935, 21.424967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271952, 34.211571, 21.914814>,  <29.615433, 34.290997, 21.688599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271952, 34.211571, 21.914814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292065, 34.596878, 21.809305>,  <30.304132, 34.828064, 21.745998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292065, 34.596878, 21.809305>,  <30.271952, 34.211571, 21.914814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292065, 34.596878, 21.809305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572342, 0.188647, 0.798020,
		0.818471, -0.191096, -0.541836,
		0.050283, 0.963273, -0.263774,
		30.307150, 34.885860, 21.730173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005831, 34.498596, 21.987059>,  <30.271952, 34.211571, 21.914814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005831, 34.498596, 21.987059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773170, 34.823833, 21.996538>,  <30.633574, 35.018974, 22.002226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773170, 34.823833, 21.996538>,  <31.005831, 34.498596, 21.987059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773170, 34.823833, 21.996538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457089, 0.302604, 0.836362,
		0.672867, 0.497305, -0.547666,
		-0.581653, 0.813092, 0.023700,
		30.598675, 35.067760, 22.003649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487110, 35.024441, 22.312668>,  <31.005831, 34.498596, 21.987059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487110, 35.024441, 22.312668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132822, 35.209438, 22.328648>,  <30.920250, 35.320438, 22.338236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132822, 35.209438, 22.328648>,  <31.487110, 35.024441, 22.312668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132822, 35.209438, 22.328648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197699, 0.297941, 0.933888,
		0.420018, 0.835061, -0.355327,
		-0.885720, 0.462498, 0.039950,
		30.867105, 35.348186, 22.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559347, 35.680733, 22.445560>,  <31.487110, 35.024441, 22.312668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559347, 35.680733, 22.445560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177410, 35.653530, 22.561249>,  <30.948248, 35.637207, 22.630661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177410, 35.653530, 22.561249>,  <31.559347, 35.680733, 22.445560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177410, 35.653530, 22.561249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227962, 0.456599, 0.859971,
		-0.190540, 0.887070, -0.420478,
		-0.954844, -0.068006, 0.289219,
		30.890957, 35.633129, 22.648014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348997, 36.338707, 22.746540>,  <31.559347, 35.680733, 22.445560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348997, 36.338707, 22.746540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095490, 36.073986, 22.906719>,  <30.943384, 35.915154, 23.002827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095490, 36.073986, 22.906719>,  <31.348997, 36.338707, 22.746540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095490, 36.073986, 22.906719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244248, 0.319990, 0.915396,
		-0.733948, 0.677958, -0.041157,
		-0.633769, -0.661800, 0.400446,
		30.905359, 35.875446, 23.026854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842712, 36.701141, 23.166132>,  <31.348997, 36.338707, 22.746540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842712, 36.701141, 23.166132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872652, 36.329750, 23.311636>,  <30.890615, 36.106915, 23.398939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872652, 36.329750, 23.311636>,  <30.842712, 36.701141, 23.166132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872652, 36.329750, 23.311636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314916, 0.368125, 0.874821,
		-0.946163, 0.049075, 0.319947,
		0.074849, -0.928480, 0.363761,
		30.895107, 36.051205, 23.420765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577230, 36.784344, 23.736101>,  <30.842712, 36.701141, 23.166132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577230, 36.784344, 23.736101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780663, 36.443520, 23.785633>,  <30.902721, 36.239025, 23.815353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780663, 36.443520, 23.785633>,  <30.577230, 36.784344, 23.736101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780663, 36.443520, 23.785633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215763, 0.265353, 0.939699,
		-0.833542, -0.451194, 0.318797,
		0.508581, -0.852063, 0.123832,
		30.933237, 36.187901, 23.822783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436001, 36.679230, 24.495031>,  <30.577230, 36.784344, 23.736101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436001, 36.679230, 24.495031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702295, 36.393265, 24.409523>,  <30.862072, 36.221687, 24.358219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702295, 36.393265, 24.409523>,  <30.436001, 36.679230, 24.495031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702295, 36.393265, 24.409523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362678, 0.059647, 0.930004,
		-0.652118, -0.696668, 0.298992,
		0.665738, -0.714910, -0.213769,
		30.902016, 36.178791, 24.345392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390335, 36.237751, 24.927584>,  <30.436001, 36.679230, 24.495031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390335, 36.237751, 24.927584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757189, 36.186237, 24.776707>,  <30.977301, 36.155331, 24.686180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757189, 36.186237, 24.776707>,  <30.390335, 36.237751, 24.927584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757189, 36.186237, 24.776707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373605, -0.051915, 0.926134,
		-0.138855, -0.990312, 0.000502,
		0.917136, -0.128786, -0.377194,
		31.032330, 36.147602, 24.663549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901104, 35.837696, 25.201696>,  <30.390335, 36.237751, 24.927584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901104, 35.837696, 25.201696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581043, 35.964382, 25.405439>,  <29.389006, 36.040394, 25.527685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581043, 35.964382, 25.405439>,  <29.901104, 35.837696, 25.201696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581043, 35.964382, 25.405439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546445, -0.034804, -0.836772,
		-0.247291, -0.947882, 0.200916,
		-0.800153, 0.316715, 0.509358,
		29.340998, 36.059395, 25.558247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379307, 35.432789, 24.943665>,  <29.901104, 35.837696, 25.201696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379307, 35.432789, 24.943665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200920, 35.749744, 25.110151>,  <29.093889, 35.939919, 25.210043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200920, 35.749744, 25.110151>,  <29.379307, 35.432789, 24.943665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200920, 35.749744, 25.110151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690680, -0.008898, -0.723106,
		-0.569278, -0.609951, 0.551255,
		-0.445964, 0.792389, 0.416216,
		29.067131, 35.987461, 25.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726294, 35.164906, 24.937859>,  <29.379307, 35.432789, 24.943665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726294, 35.164906, 24.937859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.756104, 35.563187, 24.959846>,  <28.773989, 35.802155, 24.973040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.756104, 35.563187, 24.959846>,  <28.726294, 35.164906, 24.937859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756104, 35.563187, 24.959846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704309, 0.091578, -0.703962,
		-0.705971, 0.013749, 0.708108,
		0.074525, 0.995703, 0.054968,
		28.778461, 35.861897, 24.976337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032621, 35.444271, 24.938690>,  <28.726294, 35.164906, 24.937859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032621, 35.444271, 24.938690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285915, 35.730961, 24.821850>,  <28.437891, 35.902973, 24.751745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285915, 35.730961, 24.821850>,  <28.032621, 35.444271, 24.938690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285915, 35.730961, 24.821850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527400, 0.123371, -0.840612,
		-0.566450, 0.686358, 0.456122,
		0.633233, 0.716724, -0.292101,
		28.475885, 35.945976, 24.734219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605543, 36.001026, 24.613636>,  <28.032621, 35.444271, 24.938690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605543, 36.001026, 24.613636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978882, 36.061962, 24.483616>,  <28.202885, 36.098522, 24.405603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978882, 36.061962, 24.483616>,  <27.605543, 36.001026, 24.613636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978882, 36.061962, 24.483616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358122, 0.332673, -0.872397,
		-0.024767, 0.930656, 0.365056,
		0.933346, 0.152341, -0.325049,
		28.258886, 36.107666, 24.386101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583366, 36.642109, 24.308064>,  <27.605543, 36.001026, 24.613636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583366, 36.642109, 24.308064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914257, 36.488007, 24.144464>,  <28.112791, 36.395546, 24.046305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914257, 36.488007, 24.144464>,  <27.583366, 36.642109, 24.308064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914257, 36.488007, 24.144464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263473, 0.376956, -0.887968,
		0.496264, 0.842309, 0.210324,
		0.827226, -0.385252, -0.408996,
		28.162424, 36.372433, 24.021767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902693, 37.125477, 23.943903>,  <27.583366, 36.642109, 24.308064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902693, 37.125477, 23.943903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035744, 36.789207, 23.772964>,  <28.115574, 36.587444, 23.670403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035744, 36.789207, 23.772964>,  <27.902693, 37.125477, 23.943903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035744, 36.789207, 23.772964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316986, 0.327115, -0.890233,
		0.888188, 0.431579, -0.157674,
		0.332629, -0.840675, -0.427344,
		28.135532, 36.537006, 23.644762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078899, 37.316589, 23.292700>,  <27.902693, 37.125477, 23.943903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078899, 37.316589, 23.292700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.053024, 36.921104, 23.238638>,  <28.037498, 36.683815, 23.206202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.053024, 36.921104, 23.238638>,  <28.078899, 37.316589, 23.292700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053024, 36.921104, 23.238638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275807, 0.147877, -0.949770,
		0.959034, -0.024161, -0.282259,
		-0.064688, -0.988711, -0.135155,
		28.033619, 36.624493, 23.198092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297321, 37.170498, 22.635984>,  <28.078899, 37.316589, 23.292700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297321, 37.170498, 22.635984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.053978, 36.865093, 22.722662>,  <27.907972, 36.681850, 22.774668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.053978, 36.865093, 22.722662>,  <28.297321, 37.170498, 22.635984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053978, 36.865093, 22.722662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413691, 0.072050, -0.907562,
		0.677318, -0.641767, -0.359688,
		-0.608359, -0.763507, 0.216692,
		27.871469, 36.636040, 22.787670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215700, 36.789623, 21.939646>,  <28.297321, 37.170498, 22.635984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215700, 36.789623, 21.939646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936008, 36.633823, 22.179434>,  <27.768194, 36.540344, 22.323307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936008, 36.633823, 22.179434>,  <28.215700, 36.789623, 21.939646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936008, 36.633823, 22.179434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625682, -0.072222, -0.776728,
		0.345832, -0.918190, -0.193205,
		-0.699230, -0.389502, 0.599471,
		27.726240, 36.516972, 22.359276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042820, 36.191608, 21.629988>,  <28.215700, 36.789623, 21.939646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042820, 36.191608, 21.629988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712702, 36.239056, 21.850828>,  <27.514631, 36.267525, 21.983332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712702, 36.239056, 21.850828>,  <28.042820, 36.191608, 21.629988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712702, 36.239056, 21.850828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563757, -0.116640, -0.817663,
		-0.032591, -0.986066, 0.163134,
		-0.825297, 0.118617, 0.552100,
		27.465113, 36.274643, 22.016459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749174, 35.626381, 21.537132>,  <28.042820, 36.191608, 21.629988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749174, 35.626381, 21.537132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444323, 35.856865, 21.655214>,  <27.261412, 35.995155, 21.726063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444323, 35.856865, 21.655214>,  <27.749174, 35.626381, 21.537132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444323, 35.856865, 21.655214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515016, -0.263260, -0.815753,
		-0.392330, -0.773741, 0.497395,
		-0.762126, 0.576211, 0.295204,
		27.215685, 36.029728, 21.743776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207382, 35.232834, 21.415134>,  <27.749174, 35.626381, 21.537132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207382, 35.232834, 21.415134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043463, 35.596947, 21.438620>,  <26.945112, 35.815414, 21.452711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043463, 35.596947, 21.438620>,  <27.207382, 35.232834, 21.415134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043463, 35.596947, 21.438620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620801, -0.231158, -0.749114,
		-0.668336, -0.343433, 0.659834,
		-0.409796, 0.910286, 0.058712,
		26.920525, 35.870033, 21.456234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567951, 35.154121, 22.100061>,  <27.207382, 35.232834, 21.415134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567951, 35.154121, 22.100061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448116, 34.772537, 22.094360>,  <27.376215, 34.543587, 22.090940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448116, 34.772537, 22.094360>,  <27.567951, 35.154121, 22.100061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448116, 34.772537, 22.094360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462274, -0.158209, 0.872509,
		-0.834596, 0.254804, 0.488390,
		-0.299587, -0.953963, -0.014252,
		27.358240, 34.486347, 22.090084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395710, 35.005894, 22.738981>,  <27.567951, 35.154121, 22.100061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395710, 35.005894, 22.738981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411816, 34.632893, 22.595419>,  <27.421478, 34.409092, 22.509281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411816, 34.632893, 22.595419>,  <27.395710, 35.005894, 22.738981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411816, 34.632893, 22.595419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363562, -0.320905, 0.874553,
		-0.930700, -0.165696, 0.326103,
		0.040262, -0.932505, -0.358907,
		27.423895, 34.353142, 22.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200083, 34.623501, 23.279451>,  <27.395710, 35.005894, 22.738981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200083, 34.623501, 23.279451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393465, 34.346214, 23.065638>,  <27.509495, 34.179844, 22.937349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393465, 34.346214, 23.065638>,  <27.200083, 34.623501, 23.279451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393465, 34.346214, 23.065638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340434, -0.413673, 0.844381,
		-0.806459, -0.590193, 0.036002,
		0.483454, -0.693215, -0.534532,
		27.538502, 34.138248, 22.905277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933964, 33.974052, 23.543812>,  <27.200083, 34.623501, 23.279451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933964, 33.974052, 23.543812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283127, 33.929165, 23.353889>,  <27.492624, 33.902233, 23.239937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283127, 33.929165, 23.353889>,  <26.933964, 33.974052, 23.543812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283127, 33.929165, 23.353889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410435, -0.357252, 0.838996,
		-0.263772, -0.927243, -0.265791,
		0.872908, -0.112213, -0.474806,
		27.544998, 33.895500, 23.211447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160965, 33.376038, 23.883430>,  <26.933964, 33.974052, 23.543812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160965, 33.376038, 23.883430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472353, 33.530430, 23.685438>,  <27.659185, 33.623066, 23.566643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472353, 33.530430, 23.685438>,  <27.160965, 33.376038, 23.883430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472353, 33.530430, 23.685438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589337, -0.178052, 0.788023,
		0.216032, -0.905159, -0.366083,
		0.778468, 0.385984, -0.494979,
		27.705893, 33.646225, 23.536945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623278, 32.915314, 23.918568>,  <27.160965, 33.376038, 23.883430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623278, 32.915314, 23.918568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830381, 33.253567, 23.866669>,  <27.954643, 33.456516, 23.835529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830381, 33.253567, 23.866669>,  <27.623278, 32.915314, 23.918568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830381, 33.253567, 23.866669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601005, -0.251584, 0.758617,
		0.608866, -0.470761, -0.638487,
		0.517760, 0.845630, -0.129749,
		27.985710, 33.507256, 23.827744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317923, 32.724022, 23.867851>,  <27.623278, 32.915314, 23.918568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317923, 32.724022, 23.867851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322018, 33.096123, 24.014561>,  <28.324474, 33.319386, 24.102587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322018, 33.096123, 24.014561>,  <28.317923, 32.724022, 23.867851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322018, 33.096123, 24.014561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537437, -0.314430, 0.782493,
		0.843242, 0.189107, -0.503171,
		0.010237, 0.930254, 0.366773,
		28.325089, 33.375198, 24.124592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010756, 32.828938, 24.220470>,  <28.317923, 32.724022, 23.867851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010756, 32.828938, 24.220470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735682, 33.082260, 24.362465>,  <28.570637, 33.234253, 24.447662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735682, 33.082260, 24.362465>,  <29.010756, 32.828938, 24.220470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735682, 33.082260, 24.362465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393365, -0.085945, 0.915356,
		0.610209, 0.769115, -0.190017,
		-0.687684, 0.633305, 0.354988,
		28.529377, 33.272251, 24.468962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469549, 32.386570, 24.182941>,  <29.010756, 32.828938, 24.220470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469549, 32.386570, 24.182941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486485, 31.987066, 24.172464>,  <29.496645, 31.747364, 24.166178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486485, 31.987066, 24.172464>,  <29.469549, 32.386570, 24.182941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486485, 31.987066, 24.172464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477978, 0.002775, -0.878367,
		0.877351, 0.049710, -0.477268,
		0.042339, -0.998760, -0.026195,
		29.499186, 31.687439, 24.164606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645815, 32.332577, 23.559498>,  <29.469549, 32.386570, 24.182941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645815, 32.332577, 23.559498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518145, 31.967506, 23.661591>,  <29.441544, 31.748463, 23.722845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518145, 31.967506, 23.661591>,  <29.645815, 32.332577, 23.559498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518145, 31.967506, 23.661591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455908, -0.088233, -0.885642,
		0.830828, -0.399036, -0.387937,
		-0.319175, -0.912680, 0.255231,
		29.422392, 31.693703, 23.738159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938673, 31.823616, 23.085152>,  <29.645815, 32.332577, 23.559498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938673, 31.823616, 23.085152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606506, 31.647978, 23.222324>,  <29.407206, 31.542595, 23.304628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606506, 31.647978, 23.222324>,  <29.938673, 31.823616, 23.085152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606506, 31.647978, 23.222324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343106, -0.081909, -0.935718,
		0.438960, -0.894698, -0.082638,
		-0.830417, -0.439097, 0.342932,
		29.357382, 31.516249, 23.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825109, 31.289801, 22.591612>,  <29.938673, 31.823616, 23.085152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825109, 31.289801, 22.591612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469694, 31.329813, 22.770718>,  <29.256445, 31.353821, 22.878181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469694, 31.329813, 22.770718>,  <29.825109, 31.289801, 22.591612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469694, 31.329813, 22.770718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458497, -0.229132, -0.858649,
		0.016705, -0.968242, 0.249457,
		-0.888539, 0.100031, 0.447764,
		29.203133, 31.359823, 22.905046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452192, 30.673155, 22.353868>,  <29.825109, 31.289801, 22.591612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452192, 30.673155, 22.353868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176111, 30.939478, 22.467232>,  <29.010462, 31.099272, 22.535250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176111, 30.939478, 22.467232>,  <29.452192, 30.673155, 22.353868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176111, 30.939478, 22.467232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457965, -0.098684, -0.883476,
		-0.560257, -0.739568, 0.373028,
		-0.690203, 0.665808, 0.283408,
		28.969049, 31.139221, 22.552254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879242, 30.436577, 21.998055>,  <29.452192, 30.673155, 22.353868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879242, 30.436577, 21.998055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788614, 30.816578, 22.083994>,  <28.734238, 31.044579, 22.135557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788614, 30.816578, 22.083994>,  <28.879242, 30.436577, 21.998055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788614, 30.816578, 22.083994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494458, 0.077861, -0.865707,
		-0.839153, -0.302376, 0.452096,
		-0.226568, 0.950003, 0.214850,
		28.720644, 31.101580, 22.148449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264671, 30.429388, 21.771545>,  <28.879242, 30.436577, 21.998055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264671, 30.429388, 21.771545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369656, 30.813562, 21.808813>,  <28.432646, 31.044067, 21.831173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369656, 30.813562, 21.808813>,  <28.264671, 30.429388, 21.771545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369656, 30.813562, 21.808813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362367, 0.187586, -0.912963,
		-0.894319, 0.205854, 0.397263,
		0.262459, 0.960435, 0.093167,
		28.448393, 31.101692, 21.836763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822884, 30.816641, 21.416485>,  <28.264671, 30.429388, 21.771545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822884, 30.816641, 21.416485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133944, 31.068064, 21.421759>,  <28.320580, 31.218918, 21.424923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133944, 31.068064, 21.421759>,  <27.822884, 30.816641, 21.416485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133944, 31.068064, 21.421759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185959, 0.250002, -0.950220,
		-0.600566, 0.736487, 0.311300,
		0.777650, 0.628559, 0.013186,
		28.367239, 31.256632, 21.425714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532465, 31.427511, 21.205404>,  <27.822884, 30.816641, 21.416485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532465, 31.427511, 21.205404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928478, 31.442739, 21.151165>,  <28.166086, 31.451878, 21.118622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928478, 31.442739, 21.151165>,  <27.532465, 31.427511, 21.205404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928478, 31.442739, 21.151165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140762, 0.235009, -0.961747,
		-0.004749, 0.971247, 0.238026,
		0.990032, 0.038072, -0.135599,
		28.225489, 31.454161, 21.110485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.299339, 33.335827, 34.867493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639050, 33.402096, 34.666977>,  <35.842876, 33.441856, 34.546669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639050, 33.402096, 34.666977>,  <35.299339, 33.335827, 34.867493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639050, 33.402096, 34.666977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430253, -0.333088, -0.839008,
		-0.305977, 0.928226, -0.211600,
		0.849271, 0.165675, -0.501289,
		35.893829, 33.451797, 34.516590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268730, 33.985775, 34.494156>,  <35.299339, 33.335827, 34.867493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268730, 33.985775, 34.494156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524624, 33.730152, 34.323345>,  <35.678158, 33.576778, 34.220860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524624, 33.730152, 34.323345>,  <35.268730, 33.985775, 34.494156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524624, 33.730152, 34.323345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583681, -0.042462, -0.810872,
		0.500060, 0.767988, -0.400168,
		0.639732, -0.639055, -0.427026,
		35.716545, 33.538437, 34.195236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127644, 34.104485, 33.808453>,  <35.268730, 33.985775, 34.494156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127644, 34.104485, 33.808453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358994, 33.778805, 33.788242>,  <35.497803, 33.583397, 33.776115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358994, 33.778805, 33.788242>,  <35.127644, 34.104485, 33.808453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358994, 33.778805, 33.788242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590434, -0.375069, -0.714640,
		0.562911, 0.443165, -0.697665,
		0.578376, -0.814204, -0.050529,
		35.532505, 33.534542, 33.773083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244148, 34.103413, 33.207695>,  <35.127644, 34.104485, 33.808453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244148, 34.103413, 33.207695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288052, 33.720230, 33.313728>,  <35.314392, 33.490322, 33.377350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288052, 33.720230, 33.313728>,  <35.244148, 34.103413, 33.207695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288052, 33.720230, 33.313728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557955, -0.280097, -0.781173,
		0.822581, -0.062166, -0.565240,
		0.109760, -0.957957, 0.265088,
		35.320980, 33.432842, 33.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182220, 33.594715, 32.584740>,  <35.244148, 34.103413, 33.207695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182220, 33.594715, 32.584740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138191, 33.337578, 32.887959>,  <35.111774, 33.183296, 33.069889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138191, 33.337578, 32.887959>,  <35.182220, 33.594715, 32.584740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138191, 33.337578, 32.887959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699735, -0.491530, -0.518430,
		0.705872, -0.587499, -0.395714,
		-0.110072, -0.642840, 0.758050,
		35.105171, 33.144726, 33.115376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343079, 32.962009, 32.316151>,  <35.182220, 33.594715, 32.584740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343079, 32.962009, 32.316151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117527, 32.879566, 32.636040>,  <34.982197, 32.830101, 32.827972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117527, 32.879566, 32.636040>,  <35.343079, 32.962009, 32.316151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117527, 32.879566, 32.636040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637435, -0.507075, -0.580130,
		0.525091, -0.836896, 0.154548,
		-0.563876, -0.206107, 0.799727,
		34.948364, 32.817734, 32.875957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143509, 32.341297, 32.278545>,  <35.343079, 32.962009, 32.316151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143509, 32.341297, 32.278545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870033, 32.469955, 32.540573>,  <34.705948, 32.547150, 32.697792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870033, 32.469955, 32.540573>,  <35.143509, 32.341297, 32.278545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870033, 32.469955, 32.540573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704579, -0.524764, -0.477693,
		0.190111, -0.788142, 0.585397,
		-0.683686, 0.321644, 0.655072,
		34.664928, 32.566448, 32.737095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762627, 31.811743, 32.423820>,  <35.143509, 32.341297, 32.278545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762627, 31.811743, 32.423820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523956, 32.115585, 32.527340>,  <34.380753, 32.297890, 32.589451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523956, 32.115585, 32.527340>,  <34.762627, 31.811743, 32.423820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523956, 32.115585, 32.527340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768646, -0.448325, -0.456275,
		-0.230566, -0.471170, 0.851374,
		-0.596676, 0.759607, 0.258794,
		34.344955, 32.343468, 32.604977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346378, 31.451496, 32.830681>,  <34.762627, 31.811743, 32.423820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346378, 31.451496, 32.830681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169346, 31.794783, 32.726692>,  <34.063126, 32.000755, 32.664299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169346, 31.794783, 32.726692>,  <34.346378, 31.451496, 32.830681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169346, 31.794783, 32.726692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708397, -0.512371, -0.485438,
		-0.549814, -0.030681, 0.834723,
		-0.442581, 0.858216, -0.259974,
		34.036572, 32.052246, 32.648701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610531, 31.416798, 33.083767>,  <34.346378, 31.451496, 32.830681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610531, 31.416798, 33.083767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655128, 31.683081, 32.788631>,  <33.681889, 31.842850, 32.611549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655128, 31.683081, 32.788631>,  <33.610531, 31.416798, 33.083767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655128, 31.683081, 32.788631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661974, -0.504008, -0.554766,
		-0.741187, 0.550283, 0.384486,
		0.111495, 0.665706, -0.737838,
		33.688576, 31.882792, 32.567280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898449, 31.515694, 32.797676>,  <33.610531, 31.416798, 33.083767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898449, 31.515694, 32.797676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157738, 31.642893, 32.520927>,  <33.313309, 31.719212, 32.354877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157738, 31.642893, 32.520927>,  <32.898449, 31.515694, 32.797676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157738, 31.642893, 32.520927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521933, -0.476039, -0.707795,
		-0.554435, 0.819918, -0.142604,
		0.648219, 0.317996, -0.691875,
		33.352203, 31.738291, 32.313366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468536, 31.743828, 32.251484>,  <32.898449, 31.515694, 32.797676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468536, 31.743828, 32.251484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830616, 31.674322, 32.096348>,  <33.047863, 31.632618, 32.003265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830616, 31.674322, 32.096348>,  <32.468536, 31.743828, 32.251484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830616, 31.674322, 32.096348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424674, -0.404791, -0.809812,
		-0.016275, 0.897747, -0.440211,
		0.905200, -0.173766, -0.387838,
		33.102177, 31.622192, 31.979996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169960, 32.465614, 32.465759>,  <32.468536, 31.743828, 32.251484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169960, 32.465614, 32.465759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776041, 32.531418, 32.488091>,  <31.539690, 32.570900, 32.501488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776041, 32.531418, 32.488091>,  <32.169960, 32.465614, 32.465759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776041, 32.531418, 32.488091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089210, 0.203160, 0.975073,
		0.149063, 0.965227, -0.214746,
		-0.984795, 0.164505, 0.055825,
		31.480602, 32.580769, 32.504837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070820, 33.073132, 32.872517>,  <32.169960, 32.465614, 32.465759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070820, 33.073132, 32.872517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701851, 32.918663, 32.871670>,  <31.480469, 32.825981, 32.871162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701851, 32.918663, 32.871670>,  <32.070820, 33.073132, 32.872517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701851, 32.918663, 32.871670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082945, 0.192770, 0.977732,
		-0.377167, 0.902059, -0.209847,
		-0.922424, -0.386174, -0.002115,
		31.425123, 32.802811, 32.871037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627705, 33.568489, 33.239067>,  <32.070820, 33.073132, 32.872517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627705, 33.568489, 33.239067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431255, 33.220860, 33.262764>,  <31.313385, 33.012283, 33.276981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431255, 33.220860, 33.262764>,  <31.627705, 33.568489, 33.239067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431255, 33.220860, 33.262764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017591, 0.058101, 0.998156,
		-0.870913, 0.491259, -0.013247,
		-0.491122, -0.869074, 0.059242,
		31.283918, 32.960136, 33.280537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098434, 33.722267, 33.644531>,  <31.627705, 33.568489, 33.239067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098434, 33.722267, 33.644531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159750, 33.328094, 33.674015>,  <31.196539, 33.091591, 33.691708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159750, 33.328094, 33.674015>,  <31.098434, 33.722267, 33.644531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159750, 33.328094, 33.674015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138618, 0.095301, 0.985750,
		-0.978411, -0.140886, 0.151207,
		0.153288, -0.985428, 0.073714,
		31.205736, 33.032467, 33.696129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680637, 33.554596, 34.155674>,  <31.098434, 33.722267, 33.644531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680637, 33.554596, 34.155674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935463, 33.246964, 34.135036>,  <31.088358, 33.062386, 34.122654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935463, 33.246964, 34.135036>,  <30.680637, 33.554596, 34.155674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935463, 33.246964, 34.135036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180610, 0.083873, 0.979972,
		-0.749351, -0.633624, 0.192337,
		0.637066, -0.769081, -0.051589,
		31.126583, 33.016239, 34.119560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379358, 33.125904, 34.615345>,  <30.680637, 33.554596, 34.155674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379358, 33.125904, 34.615345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762512, 33.023174, 34.563976>,  <30.992405, 32.961536, 34.533154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762512, 33.023174, 34.563976>,  <30.379358, 33.125904, 34.615345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762512, 33.023174, 34.563976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179776, 0.187638, 0.965646,
		-0.223908, -0.948067, 0.225907,
		0.957886, -0.256829, -0.128426,
		31.049877, 32.946125, 34.525448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588091, 32.556801, 35.100704>,  <30.379358, 33.125904, 34.615345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588091, 32.556801, 35.100704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902349, 32.775173, 34.984276>,  <31.090904, 32.906197, 34.914421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902349, 32.775173, 34.984276>,  <30.588091, 32.556801, 35.100704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902349, 32.775173, 34.984276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151902, 0.285852, 0.946158,
		0.599737, -0.787560, 0.141652,
		0.785647, 0.545929, -0.291068,
		31.138044, 32.938953, 34.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079191, 32.470585, 35.629917>,  <30.588091, 32.556801, 35.100704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079191, 32.470585, 35.629917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.259115, 32.780899, 35.452908>,  <31.367069, 32.967087, 35.346703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.259115, 32.780899, 35.452908>,  <31.079191, 32.470585, 35.629917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259115, 32.780899, 35.452908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451684, 0.229849, 0.862062,
		0.770489, -0.587645, -0.247021,
		0.449809, 0.775785, -0.442526,
		31.394058, 33.013634, 35.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710745, 32.531689, 36.027573>,  <31.079191, 32.470585, 35.629917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710745, 32.531689, 36.027573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691774, 32.876827, 35.826279>,  <31.680391, 33.083912, 35.705502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691774, 32.876827, 35.826279>,  <31.710745, 32.531689, 36.027573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691774, 32.876827, 35.826279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283913, 0.494666, 0.821401,
		0.957676, -0.103918, -0.268435,
		-0.047428, 0.862848, -0.503233,
		31.677546, 33.135681, 35.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306068, 32.909477, 36.134998>,  <31.710745, 32.531689, 36.027573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306068, 32.909477, 36.134998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030998, 33.187859, 36.052296>,  <31.865955, 33.354885, 36.002674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030998, 33.187859, 36.052296>,  <32.306068, 32.909477, 36.134998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030998, 33.187859, 36.052296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439958, 0.626009, 0.643856,
		0.577525, 0.351802, -0.736682,
		-0.687679, 0.695952, -0.206758,
		31.824694, 33.396645, 35.990269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679501, 33.471638, 36.031120>,  <32.306068, 32.909477, 36.134998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679501, 33.471638, 36.031120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313198, 33.608875, 36.114719>,  <32.093418, 33.691216, 36.164879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313198, 33.608875, 36.114719>,  <32.679501, 33.471638, 36.031120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313198, 33.608875, 36.114719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399314, 0.720367, 0.567115,
		0.044018, 0.602794, -0.796682,
		-0.915757, 0.343090, 0.208995,
		32.038471, 33.711803, 36.177418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773987, 34.153229, 36.001282>,  <32.679501, 33.471638, 36.031120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773987, 34.153229, 36.001282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437294, 34.106636, 36.212151>,  <32.235279, 34.078682, 36.338673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437294, 34.106636, 36.212151>,  <32.773987, 34.153229, 36.001282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437294, 34.106636, 36.212151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351473, 0.622971, 0.698837,
		-0.409814, 0.773524, -0.483438,
		-0.841736, -0.116478, 0.527175,
		32.184772, 34.071693, 36.370304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552616, 34.832535, 36.155537>,  <32.773987, 34.153229, 36.001282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552616, 34.832535, 36.155537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384945, 34.585258, 36.421509>,  <32.284340, 34.436893, 36.581093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384945, 34.585258, 36.421509>,  <32.552616, 34.832535, 36.155537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384945, 34.585258, 36.421509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260606, 0.619629, 0.740367,
		-0.869696, 0.483632, -0.098632,
		-0.419181, -0.618191, 0.664927,
		32.259190, 34.399803, 36.620987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347858, 35.269859, 36.595901>,  <32.552616, 34.832535, 36.155537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347858, 35.269859, 36.595901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315079, 34.930595, 36.805248>,  <32.295410, 34.727036, 36.930855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315079, 34.930595, 36.805248>,  <32.347858, 35.269859, 36.595901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315079, 34.930595, 36.805248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232592, 0.494352, 0.837566,
		-0.969116, 0.190365, 0.156766,
		-0.081945, -0.848161, 0.523362,
		32.290497, 34.676147, 36.962257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488926, 35.756840, 36.134995>,  <32.347858, 35.269859, 36.595901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488926, 35.756840, 36.134995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200752, 36.033794, 36.119106>,  <32.027847, 36.199966, 36.109573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200752, 36.033794, 36.119106>,  <32.488926, 35.756840, 36.134995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200752, 36.033794, 36.119106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053813, -0.112910, -0.992147,
		-0.691433, -0.712639, 0.118604,
		-0.720434, 0.692385, -0.039720,
		31.984621, 36.241508, 36.107189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829346, 35.472897, 35.850544>,  <32.488926, 35.756840, 36.134995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829346, 35.472897, 35.850544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927185, 35.848106, 35.752331>,  <31.985889, 36.073231, 35.693405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927185, 35.848106, 35.752331>,  <31.829346, 35.472897, 35.850544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927185, 35.848106, 35.752331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121909, -0.280963, -0.951944,
		-0.961930, 0.202912, -0.183077,
		0.244598, 0.938023, -0.245530,
		32.000565, 36.129513, 35.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471478, 35.662598, 35.251438>,  <31.829346, 35.472897, 35.850544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471478, 35.662598, 35.251438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829441, 35.841064, 35.254826>,  <32.044220, 35.948143, 35.256859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829441, 35.841064, 35.254826>,  <31.471478, 35.662598, 35.251438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829441, 35.841064, 35.254826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044564, -0.070476, -0.996518,
		-0.444015, 0.892171, -0.082952,
		0.894911, 0.446165, 0.008467,
		32.097916, 35.974915, 35.257366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405218, 36.406094, 34.981308>,  <31.471478, 35.662598, 35.251438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405218, 36.406094, 34.981308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744658, 36.206291, 34.911598>,  <31.948320, 36.086411, 34.869774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744658, 36.206291, 34.911598>,  <31.405218, 36.406094, 34.981308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744658, 36.206291, 34.911598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140977, 0.103991, -0.984536,
		0.509907, 0.860045, 0.017827,
		0.848599, -0.499508, -0.174273,
		31.999237, 36.056438, 34.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491037, 36.477310, 34.249012>,  <31.405218, 36.406094, 34.981308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491037, 36.477310, 34.249012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787212, 36.217957, 34.319843>,  <31.964916, 36.062344, 34.362343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787212, 36.217957, 34.319843>,  <31.491037, 36.477310, 34.249012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787212, 36.217957, 34.319843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140312, -0.108539, -0.984140,
		0.657318, 0.753539, 0.010609,
		0.740436, -0.648381, 0.177075,
		32.009342, 36.023441, 34.372967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101734, 36.718498, 33.871639>,  <31.491037, 36.477310, 34.249012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101734, 36.718498, 33.871639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139809, 36.323074, 33.918430>,  <32.162655, 36.085819, 33.946507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139809, 36.323074, 33.918430>,  <32.101734, 36.718498, 33.871639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139809, 36.323074, 33.918430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349923, -0.076784, -0.933626,
		0.931930, 0.129803, 0.338612,
		0.095188, -0.988562, 0.116978,
		32.168365, 36.026505, 33.953526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656384, 36.586781, 33.401382>,  <32.101734, 36.718498, 33.871639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656384, 36.586781, 33.401382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482056, 36.239651, 33.496830>,  <32.377460, 36.031372, 33.554100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482056, 36.239651, 33.496830>,  <32.656384, 36.586781, 33.401382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482056, 36.239651, 33.496830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018129, -0.256605, -0.966346,
		0.899853, -0.425476, 0.096100,
		-0.435817, -0.867827, 0.238620,
		32.351311, 35.979301, 33.568417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882637, 35.938274, 32.882191>,  <32.656384, 36.586781, 33.401382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882637, 35.938274, 32.882191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524529, 35.825485, 33.020168>,  <32.309666, 35.757812, 33.102955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524529, 35.825485, 33.020168>,  <32.882637, 35.938274, 32.882191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524529, 35.825485, 33.020168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256395, -0.307090, -0.916492,
		0.364357, -0.908947, 0.202631,
		-0.895268, -0.281976, 0.344940,
		32.255947, 35.740894, 33.123650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670662, 35.280136, 32.540485>,  <32.882637, 35.938274, 32.882191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670662, 35.280136, 32.540485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332092, 35.441204, 32.679867>,  <32.128952, 35.537846, 32.763496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332092, 35.441204, 32.679867>,  <32.670662, 35.280136, 32.540485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332092, 35.441204, 32.679867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438259, -0.155059, -0.885373,
		-0.302483, -0.902116, 0.307720,
		-0.846424, 0.402671, 0.348457,
		32.078163, 35.562004, 32.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269260, 34.801765, 32.298061>,  <32.670662, 35.280136, 32.540485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269260, 34.801765, 32.298061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021030, 35.100719, 32.392979>,  <31.872093, 35.280090, 32.449928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021030, 35.100719, 32.392979>,  <32.269260, 34.801765, 32.298061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021030, 35.100719, 32.392979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576953, -0.230249, -0.783652,
		-0.531050, -0.623223, 0.574090,
		-0.620573, 0.747381, 0.237296,
		31.834858, 35.324936, 32.464169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504395, 34.552853, 32.403301>,  <32.269260, 34.801765, 32.298061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504395, 34.552853, 32.403301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526321, 34.934082, 32.284214>,  <31.539478, 35.162819, 32.212761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526321, 34.934082, 32.284214>,  <31.504395, 34.552853, 32.403301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526321, 34.934082, 32.284214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530128, -0.224893, -0.817550,
		-0.846144, 0.202647, 0.492925,
		0.054819, 0.953078, -0.297721,
		31.542767, 35.220005, 32.194897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840282, 34.689396, 32.236412>,  <31.504395, 34.552853, 32.403301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840282, 34.689396, 32.236412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.035208, 34.991741, 32.061504>,  <31.152163, 35.173149, 31.956560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.035208, 34.991741, 32.061504>,  <30.840282, 34.689396, 32.236412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035208, 34.991741, 32.061504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667964, 0.000127, -0.744194,
		-0.562452, 0.654732, 0.504950,
		0.487311, 0.755861, -0.437266,
		31.181400, 35.218498, 31.930325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268408, 35.003689, 31.910263>,  <30.840282, 34.689396, 32.236412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268408, 35.003689, 31.910263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589741, 35.165611, 31.735548>,  <30.782541, 35.262764, 31.630718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589741, 35.165611, 31.735548>,  <30.268408, 35.003689, 31.910263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589741, 35.165611, 31.735548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531518, 0.156570, -0.832451,
		-0.268594, 0.900898, 0.340940,
		0.803335, 0.404807, -0.436790,
		30.830742, 35.287052, 31.604511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204792, 35.763638, 31.787123>,  <30.268408, 35.003689, 31.910263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204792, 35.763638, 31.787123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472353, 35.622608, 31.525356>,  <30.632889, 35.537991, 31.368296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472353, 35.622608, 31.525356>,  <30.204792, 35.763638, 31.787123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472353, 35.622608, 31.525356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650596, 0.148176, -0.744828,
		0.359577, 0.923978, -0.130269,
		0.668901, -0.352575, -0.654417,
		30.673023, 35.516834, 31.329031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181271, 36.226215, 31.221891>,  <30.204792, 35.763638, 31.787123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181271, 36.226215, 31.221891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356720, 35.895695, 31.080566>,  <30.461990, 35.697380, 30.995771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356720, 35.895695, 31.080566>,  <30.181271, 36.226215, 31.221891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356720, 35.895695, 31.080566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482352, 0.115249, -0.868363,
		0.758252, 0.551304, -0.348020,
		0.438623, -0.826306, -0.353310,
		30.488306, 35.647804, 30.974573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429426, 36.494789, 30.653311>,  <30.181271, 36.226215, 31.221891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429426, 36.494789, 30.653311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414680, 36.096394, 30.620708>,  <30.405832, 35.857357, 30.601147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414680, 36.096394, 30.620708>,  <30.429426, 36.494789, 30.653311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414680, 36.096394, 30.620708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295448, 0.088778, -0.951225,
		0.954647, -0.010985, -0.297537,
		-0.036864, -0.995990, -0.081506,
		30.403622, 35.797596, 30.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840956, 36.319603, 29.988285>,  <30.429426, 36.494789, 30.653311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840956, 36.319603, 29.988285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648550, 35.977489, 30.065344>,  <30.533106, 35.772221, 30.111578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648550, 35.977489, 30.065344>,  <30.840956, 36.319603, 29.988285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648550, 35.977489, 30.065344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332342, -0.025451, -0.942815,
		0.811279, -0.517532, -0.272005,
		-0.481014, -0.855285, 0.192645,
		30.504246, 35.720905, 30.123138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047735, 35.831951, 29.452629>,  <30.840956, 36.319603, 29.988285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047735, 35.831951, 29.452629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698626, 35.709396, 29.604622>,  <30.489159, 35.635864, 29.695818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698626, 35.709396, 29.604622>,  <31.047735, 35.831951, 29.452629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698626, 35.709396, 29.604622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400208, 0.003484, -0.916418,
		0.279459, -0.951899, -0.125662,
		-0.872775, -0.306392, 0.379984,
		30.436792, 35.617477, 29.718616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892536, 35.292957, 29.045000>,  <31.047735, 35.831951, 29.452629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892536, 35.292957, 29.045000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555592, 35.449078, 29.193644>,  <30.353424, 35.542747, 29.282829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555592, 35.449078, 29.193644>,  <30.892536, 35.292957, 29.045000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555592, 35.449078, 29.193644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394719, 0.022632, -0.918523,
		-0.366908, -0.920410, 0.134994,
		-0.842363, 0.390298, 0.371607,
		30.302883, 35.566166, 29.305126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450745, 35.052612, 28.635328>,  <30.892536, 35.292957, 29.045000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450745, 35.052612, 28.635328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218842, 35.326046, 28.812687>,  <30.079700, 35.490105, 28.919102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218842, 35.326046, 28.812687>,  <30.450745, 35.052612, 28.635328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218842, 35.326046, 28.812687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578136, 0.038339, -0.815039,
		-0.574145, -0.728866, 0.372977,
		-0.579755, 0.683582, 0.443396,
		30.044914, 35.531120, 28.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696550, 34.824005, 28.626125>,  <30.450745, 35.052612, 28.635328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696550, 34.824005, 28.626125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.698851, 35.220634, 28.677885>,  <29.700232, 35.458614, 28.708941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.698851, 35.220634, 28.677885>,  <29.696550, 34.824005, 28.626125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698851, 35.220634, 28.677885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494794, 0.115274, -0.861331,
		-0.868991, -0.059072, 0.491289,
		0.005753, 0.991576, 0.129401,
		29.700577, 35.518108, 28.716705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044168, 35.089249, 28.387154>,  <29.696550, 34.824005, 28.626125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044168, 35.089249, 28.387154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245213, 35.434883, 28.376303>,  <29.365839, 35.642265, 28.369791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245213, 35.434883, 28.376303>,  <29.044168, 35.089249, 28.387154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245213, 35.434883, 28.376303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263760, 0.123385, -0.956664,
		-0.823295, 0.487983, 0.289926,
		0.502609, 0.864088, -0.027128,
		29.395996, 35.694111, 28.368164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670660, 35.464886, 27.932110>,  <29.044168, 35.089249, 28.387154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670660, 35.464886, 27.932110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.024269, 35.651543, 27.943039>,  <29.236435, 35.763538, 27.949596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.024269, 35.651543, 27.943039>,  <28.670660, 35.464886, 27.932110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024269, 35.651543, 27.943039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061848, 0.174706, -0.982676,
		-0.463335, 0.867018, 0.183305,
		0.884022, 0.466645, 0.027324,
		29.289476, 35.791534, 27.951237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666815, 36.226307, 27.662437>,  <28.670660, 35.464886, 27.932110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666815, 36.226307, 27.662437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.040073, 36.088612, 27.620993>,  <29.264029, 36.005993, 27.596127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.040073, 36.088612, 27.620993>,  <28.666815, 36.226307, 27.662437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040073, 36.088612, 27.620993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027523, 0.218958, -0.975346,
		0.358437, 0.912994, 0.194845,
		0.933148, -0.344238, -0.103611,
		29.320017, 35.985340, 27.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133617, 36.834850, 27.258190>,  <28.666815, 36.226307, 27.662437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133617, 36.834850, 27.258190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329964, 36.489582, 27.210888>,  <29.447771, 36.282421, 27.182507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329964, 36.489582, 27.210888>,  <29.133617, 36.834850, 27.258190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329964, 36.489582, 27.210888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186759, 0.236828, -0.953432,
		0.850983, 0.445921, 0.277456,
		0.490865, -0.863173, -0.118257,
		29.477222, 36.230629, 27.175411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659657, 36.961113, 26.763309>,  <29.133617, 36.834850, 27.258190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659657, 36.961113, 26.763309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630875, 36.562244, 26.754696>,  <29.613605, 36.322922, 26.749529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630875, 36.562244, 26.754696>,  <29.659657, 36.961113, 26.763309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630875, 36.562244, 26.754696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125563, 0.030472, -0.991617,
		0.989473, -0.068646, -0.127401,
		-0.071953, -0.997175, -0.021532,
		29.609289, 36.263092, 26.748236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902706, 36.839283, 26.115372>,  <29.659657, 36.961113, 26.763309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902706, 36.839283, 26.115372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725800, 36.502724, 26.239595>,  <29.619656, 36.300789, 26.314129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725800, 36.502724, 26.239595>,  <29.902706, 36.839283, 26.115372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725800, 36.502724, 26.239595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359291, -0.151054, -0.920920,
		0.821773, -0.518873, -0.235501,
		-0.442267, -0.841400, 0.310558,
		29.593119, 36.250305, 26.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143085, 36.299011, 25.699856>,  <29.902706, 36.839283, 26.115372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143085, 36.299011, 25.699856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773663, 36.211861, 25.826077>,  <29.552010, 36.159573, 25.901810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773663, 36.211861, 25.826077>,  <30.143085, 36.299011, 25.699856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773663, 36.211861, 25.826077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312037, -0.051290, -0.948685,
		0.222878, -0.974628, -0.020616,
		-0.923557, -0.217874, 0.315551,
		29.496595, 36.146500, 25.920742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731897, 35.874489, 25.495079>,  <30.143085, 36.299011, 25.699856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731897, 35.874489, 25.495079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012238, 36.040775, 25.263222>,  <31.180441, 36.140549, 25.124107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012238, 36.040775, 25.263222>,  <30.731897, 35.874489, 25.495079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012238, 36.040775, 25.263222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552679, 0.197254, 0.809714,
		0.450949, -0.887846, -0.091513,
		0.700850, 0.415717, -0.579645,
		31.222492, 36.165489, 25.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339975, 35.569801, 25.647955>,  <30.731897, 35.874489, 25.495079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339975, 35.569801, 25.647955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439545, 35.927212, 25.498478>,  <31.499287, 36.141659, 25.408791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439545, 35.927212, 25.498478>,  <31.339975, 35.569801, 25.647955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439545, 35.927212, 25.498478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535894, 0.194327, 0.821617,
		0.806755, -0.404780, -0.430464,
		0.248923, 0.893527, -0.373693,
		31.514221, 36.195271, 25.386370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070496, 35.621971, 25.845093>,  <31.339975, 35.569801, 25.647955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070496, 35.621971, 25.845093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974865, 35.994816, 25.736275>,  <31.917488, 36.218525, 25.670984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974865, 35.994816, 25.736275>,  <32.070496, 35.621971, 25.845093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974865, 35.994816, 25.736275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598945, 0.362082, 0.714256,
		0.764270, 0.007820, -0.644849,
		-0.239074, 0.932113, -0.272045,
		31.903143, 36.274448, 25.654661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719837, 36.061035, 25.861139>,  <32.070496, 35.621971, 25.845093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719837, 36.061035, 25.861139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443943, 36.350410, 25.873194>,  <32.278408, 36.524036, 25.880426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443943, 36.350410, 25.873194>,  <32.719837, 36.061035, 25.861139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443943, 36.350410, 25.873194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565926, 0.512666, 0.645679,
		0.451656, 0.462403, -0.763014,
		-0.689736, 0.723434, 0.030137,
		32.237022, 36.567440, 25.882235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051399, 36.743301, 25.987150>,  <32.719837, 36.061035, 25.861139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051399, 36.743301, 25.987150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682354, 36.864403, 26.082760>,  <32.460926, 36.937061, 26.140125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682354, 36.864403, 26.082760>,  <33.051399, 36.743301, 25.987150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682354, 36.864403, 26.082760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378546, 0.591556, 0.711873,
		0.074124, 0.747263, -0.660381,
		-0.922610, 0.302751, 0.239025,
		32.405571, 36.955227, 26.154467>
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
