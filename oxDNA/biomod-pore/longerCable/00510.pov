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
	<24.059937, 34.559093, 34.735226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.003054, 34.902840, 34.931705>,  <23.968924, 35.109085, 35.049595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.003054, 34.902840, 34.931705>,  <24.059937, 34.559093, 34.735226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.003054, 34.902840, 34.931705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000924, -0.496357, 0.868118,
		0.989836, 0.123000, 0.071380,
		-0.142209, 0.859361, 0.491198,
		23.960392, 35.160648, 35.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605507, 34.756077, 35.064480>,  <24.059937, 34.559093, 34.735226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605507, 34.756077, 35.064480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240932, 34.832226, 35.210381>,  <24.022188, 34.877914, 35.297920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240932, 34.832226, 35.210381>,  <24.605507, 34.756077, 35.064480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240932, 34.832226, 35.210381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251107, -0.444893, 0.859660,
		0.325928, 0.875117, 0.357689,
		-0.911436, 0.190369, 0.364751,
		23.967501, 34.889336, 35.319805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100697, 34.912273, 34.479763>,  <24.605507, 34.756077, 35.064480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100697, 34.912273, 34.479763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184975, 34.996086, 34.097832>,  <25.235542, 35.046375, 33.868671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184975, 34.996086, 34.097832>,  <25.100697, 34.912273, 34.479763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184975, 34.996086, 34.097832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483911, -0.871041, -0.084362,
		-0.849374, -0.444279, -0.284920,
		0.210697, 0.209531, -0.954832,
		25.248184, 35.058945, 33.811382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750458, 34.480198, 33.956001>,  <25.100697, 34.912273, 34.479763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750458, 34.480198, 33.956001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103777, 34.618244, 33.829079>,  <25.315767, 34.701073, 33.752926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103777, 34.618244, 33.829079>,  <24.750458, 34.480198, 33.956001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103777, 34.618244, 33.829079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433631, -0.858684, 0.273177,
		-0.178191, -0.378891, -0.908124,
		0.883296, 0.345113, -0.317309,
		25.368765, 34.721779, 33.733887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196648, 33.974705, 33.549858>,  <24.750458, 34.480198, 33.956001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196648, 33.974705, 33.549858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439016, 34.227638, 33.742943>,  <25.584438, 34.379398, 33.858795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439016, 34.227638, 33.742943>,  <25.196648, 33.974705, 33.549858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439016, 34.227638, 33.742943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478760, -0.774450, 0.413542,
		0.635333, -0.019472, -0.771993,
		0.605922, 0.632336, 0.482711,
		25.620792, 34.417339, 33.887756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915340, 33.966457, 33.402554>,  <25.196648, 33.974705, 33.549858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915340, 33.966457, 33.402554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823524, 34.038609, 33.785130>,  <25.768435, 34.081898, 34.014675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823524, 34.038609, 33.785130>,  <25.915340, 33.966457, 33.402554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823524, 34.038609, 33.785130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531914, -0.799699, 0.278475,
		0.815094, 0.572665, 0.087618,
		-0.229541, 0.180378, 0.956438,
		25.754662, 34.092724, 34.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023315, 34.065231, 32.600746>,  <25.915340, 33.966457, 33.402554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023315, 34.065231, 32.600746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406969, 33.978413, 32.673355>,  <26.637161, 33.926323, 32.716919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406969, 33.978413, 32.673355>,  <26.023315, 34.065231, 32.600746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406969, 33.978413, 32.673355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282842, -0.718039, 0.635941,
		-0.007686, -0.661296, -0.750086,
		0.959136, -0.217044, 0.181524,
		26.694710, 33.913300, 32.727814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125366, 33.270565, 32.652683>,  <26.023315, 34.065231, 32.600746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125366, 33.270565, 32.652683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421871, 33.457035, 32.845848>,  <26.599775, 33.568916, 32.961746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421871, 33.457035, 32.845848>,  <26.125366, 33.270565, 32.652683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421871, 33.457035, 32.845848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001352, -0.718427, 0.695601,
		0.671212, -0.516277, -0.531914,
		0.741265, 0.466177, 0.482914,
		26.644251, 33.596889, 32.990723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641184, 32.823971, 32.791080>,  <26.125366, 33.270565, 32.652683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641184, 32.823971, 32.791080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677261, 33.102531, 33.075863>,  <26.698908, 33.269669, 33.246735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677261, 33.102531, 33.075863>,  <26.641184, 32.823971, 32.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677261, 33.102531, 33.075863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032168, -0.716536, 0.696808,
		0.995405, -0.039945, -0.087029,
		0.090193, 0.696406, 0.711958,
		26.704319, 33.311455, 33.289452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201338, 32.625114, 33.167480>,  <26.641184, 32.823971, 32.791080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201338, 32.625114, 33.167480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971283, 32.850872, 33.404354>,  <26.833250, 32.986324, 33.546478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971283, 32.850872, 33.404354>,  <27.201338, 32.625114, 33.167480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971283, 32.850872, 33.404354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059045, -0.693361, 0.718167,
		0.815925, 0.448008, 0.365452,
		-0.575135, 0.564392, 0.592183,
		26.798742, 33.020191, 33.582008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495283, 32.506435, 33.873276>,  <27.201338, 32.625114, 33.167480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495283, 32.506435, 33.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147486, 32.681107, 33.965611>,  <26.938807, 32.785912, 34.021011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147486, 32.681107, 33.965611>,  <27.495283, 32.506435, 33.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147486, 32.681107, 33.965611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081829, -0.588231, 0.804542,
		0.487115, 0.680657, 0.547197,
		-0.869496, 0.436682, 0.230838,
		26.886637, 32.812111, 34.034863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403055, 32.740738, 34.689434>,  <27.495283, 32.506435, 33.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403055, 32.740738, 34.689434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067781, 32.639755, 34.496059>,  <26.866617, 32.579166, 34.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067781, 32.639755, 34.496059>,  <27.403055, 32.740738, 34.689434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067781, 32.639755, 34.496059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224737, -0.647781, 0.727924,
		-0.496931, 0.718781, 0.486224,
		-0.838184, -0.252455, -0.483439,
		26.816326, 32.564018, 34.351028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860798, 32.717026, 35.152431>,  <27.403055, 32.740738, 34.689434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860798, 32.717026, 35.152431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702967, 32.489853, 34.863499>,  <26.608269, 32.353550, 34.690140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702967, 32.489853, 34.863499>,  <26.860798, 32.717026, 35.152431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702967, 32.489853, 34.863499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384616, -0.611850, 0.691166,
		-0.834493, 0.550539, 0.022986,
		-0.394578, -0.567932, -0.722330,
		26.584593, 32.319473, 34.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304588, 32.082951, 35.289227>,  <26.860798, 32.717026, 35.152431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304588, 32.082951, 35.289227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140604, 32.447510, 35.303535>,  <26.042213, 32.666245, 35.312119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140604, 32.447510, 35.303535>,  <26.304588, 32.082951, 35.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140604, 32.447510, 35.303535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224729, 0.138939, -0.964465,
		-0.883985, -0.387354, -0.261778,
		-0.409960, 0.911402, 0.035770,
		26.017616, 32.720932, 35.314266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856592, 32.116234, 34.728928>,  <26.304588, 32.082951, 35.289227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856592, 32.116234, 34.728928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011261, 32.466549, 34.844494>,  <26.104063, 32.676739, 34.913834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011261, 32.466549, 34.844494>,  <25.856592, 32.116234, 34.728928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011261, 32.466549, 34.844494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294633, 0.179551, -0.938591,
		-0.873886, 0.448052, -0.188609,
		0.386672, 0.875792, 0.288917,
		26.127262, 32.729286, 34.931168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843771, 32.594494, 34.209080>,  <25.856592, 32.116234, 34.728928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843771, 32.594494, 34.209080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156626, 32.747627, 34.405731>,  <26.344339, 32.839508, 34.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156626, 32.747627, 34.405731>,  <25.843771, 32.594494, 34.209080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156626, 32.747627, 34.405731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201221, 0.591544, -0.780759,
		-0.589721, 0.709588, 0.385635,
		0.782138, 0.382832, 0.491630,
		26.391268, 32.862476, 34.553219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739384, 33.395821, 34.277084>,  <25.843771, 32.594494, 34.209080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739384, 33.395821, 34.277084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109709, 33.248104, 34.244843>,  <26.331903, 33.159473, 34.225498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109709, 33.248104, 34.244843>,  <25.739384, 33.395821, 34.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109709, 33.248104, 34.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175618, 0.609088, -0.773415,
		0.334708, 0.701882, 0.628755,
		0.925813, -0.369289, -0.080604,
		26.387453, 33.137318, 34.220661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283548, 33.903008, 34.374226>,  <25.739384, 33.395821, 34.277084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283548, 33.903008, 34.374226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439335, 33.620842, 34.137344>,  <26.532806, 33.451542, 33.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439335, 33.620842, 34.137344>,  <26.283548, 33.903008, 34.374226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439335, 33.620842, 34.137344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174933, 0.687924, -0.704386,
		0.904275, 0.170739, 0.391325,
		0.389468, -0.705414, -0.592204,
		26.556175, 33.409218, 33.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002691, 34.111217, 34.287334>,  <26.283548, 33.903008, 34.374226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002691, 34.111217, 34.287334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900166, 33.878647, 33.978466>,  <26.838650, 33.739105, 33.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900166, 33.878647, 33.978466>,  <27.002691, 34.111217, 34.287334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900166, 33.878647, 33.978466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202430, 0.748856, -0.631060,
		0.945159, -0.318059, -0.074244,
		-0.256313, -0.581423, -0.772173,
		26.823271, 33.704220, 33.746815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454180, 34.256371, 33.725853>,  <27.002691, 34.111217, 34.287334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454180, 34.256371, 33.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213285, 34.043217, 33.488079>,  <27.068748, 33.915325, 33.345417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213285, 34.043217, 33.488079>,  <27.454180, 34.256371, 33.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213285, 34.043217, 33.488079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125966, 0.671845, -0.729902,
		0.788318, -0.514450, -0.337484,
		-0.602235, -0.532883, -0.594431,
		27.032616, 33.883350, 33.309750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812206, 34.301487, 33.116112>,  <27.454180, 34.256371, 33.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812206, 34.301487, 33.116112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433004, 34.228832, 33.011581>,  <27.205482, 34.185238, 32.948864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433004, 34.228832, 33.011581>,  <27.812206, 34.301487, 33.116112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433004, 34.228832, 33.011581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107409, 0.590337, -0.799979,
		0.299576, -0.786454, -0.540134,
		-0.948007, -0.181639, -0.261322,
		27.148602, 34.174339, 32.933186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926210, 34.378189, 32.481102>,  <27.812206, 34.301487, 33.116112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926210, 34.378189, 32.481102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562906, 34.427502, 32.641033>,  <27.344923, 34.457088, 32.736992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562906, 34.427502, 32.641033>,  <27.926210, 34.378189, 32.481102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562906, 34.427502, 32.641033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158994, 0.782226, -0.602364,
		-0.387019, -0.610674, -0.690864,
		-0.908261, 0.123283, 0.399829,
		27.290428, 34.464485, 32.760983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428047, 34.527138, 32.017578>,  <27.926210, 34.378189, 32.481102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428047, 34.527138, 32.017578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240055, 34.669178, 32.340816>,  <27.127260, 34.754402, 32.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240055, 34.669178, 32.340816>,  <27.428047, 34.527138, 32.017578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240055, 34.669178, 32.340816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461797, 0.681298, -0.567958,
		-0.752238, -0.640106, -0.156212,
		-0.469981, 0.355101, 0.808097,
		27.099060, 34.775707, 32.583244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757845, 34.386692, 31.916254>,  <27.428047, 34.527138, 32.017578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757845, 34.386692, 31.916254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813194, 34.718975, 32.131947>,  <26.846405, 34.918346, 32.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813194, 34.718975, 32.131947>,  <26.757845, 34.386692, 31.916254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813194, 34.718975, 32.131947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649651, 0.487098, -0.583686,
		-0.747533, -0.269545, 0.607075,
		0.138376, 0.830711, 0.539232,
		26.854708, 34.968189, 32.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150896, 34.666031, 31.884888>,  <26.757845, 34.386692, 31.916254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150896, 34.666031, 31.884888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381195, 34.958046, 32.032166>,  <26.519375, 35.133255, 32.120533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381195, 34.958046, 32.032166>,  <26.150896, 34.666031, 31.884888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381195, 34.958046, 32.032166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557844, 0.679960, -0.475883,
		-0.597768, 0.068592, 0.798729,
		0.575745, 0.730034, 0.368194,
		26.553919, 35.177055, 32.142624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786673, 35.178402, 32.148609>,  <26.150896, 34.666031, 31.884888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786673, 35.178402, 32.148609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115402, 35.343487, 31.991497>,  <26.312641, 35.442535, 31.897230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115402, 35.343487, 31.991497>,  <25.786673, 35.178402, 32.148609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115402, 35.343487, 31.991497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562229, 0.699042, -0.441859,
		0.092211, 0.583963, 0.806526,
		0.821825, 0.412708, -0.392780,
		26.361950, 35.467300, 31.873663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589800, 35.873756, 32.082218>,  <25.786673, 35.178402, 32.148609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589800, 35.873756, 32.082218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899729, 35.795315, 31.841822>,  <26.085686, 35.748249, 31.697584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899729, 35.795315, 31.841822>,  <25.589800, 35.873756, 32.082218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899729, 35.795315, 31.841822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269891, 0.757070, -0.594982,
		0.571671, 0.623209, 0.533669,
		0.774823, -0.196101, -0.600994,
		26.132175, 35.736485, 31.661524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102859, 36.434013, 32.039845>,  <25.589800, 35.873756, 32.082218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102859, 36.434013, 32.039845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054241, 36.198097, 31.720499>,  <26.025070, 36.056549, 31.528893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054241, 36.198097, 31.720499>,  <26.102859, 36.434013, 32.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054241, 36.198097, 31.720499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191883, 0.803113, -0.564084,
		0.973862, 0.084629, -0.210785,
		-0.121546, -0.589786, -0.798360,
		26.017776, 36.021160, 31.480991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534126, 36.631222, 31.495800>,  <26.102859, 36.434013, 32.039845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534126, 36.631222, 31.495800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201429, 36.458294, 31.356483>,  <26.001812, 36.354538, 31.272894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201429, 36.458294, 31.356483>,  <26.534126, 36.631222, 31.495800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201429, 36.458294, 31.356483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197380, 0.816658, -0.542320,
		0.518891, -0.382324, -0.764579,
		-0.831741, -0.432318, -0.348293,
		25.951906, 36.328598, 31.251995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352205, 36.736164, 30.627275>,  <26.534126, 36.631222, 31.495800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352205, 36.736164, 30.627275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018915, 36.711895, 30.847115>,  <25.818941, 36.697334, 30.979017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018915, 36.711895, 30.847115>,  <26.352205, 36.736164, 30.627275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018915, 36.711895, 30.847115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362155, 0.810977, -0.459522,
		-0.417831, -0.581924, -0.697697,
		-0.833223, -0.060672, 0.549598,
		25.768948, 36.693695, 31.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788881, 36.783878, 30.194246>,  <26.352205, 36.736164, 30.627275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788881, 36.783878, 30.194246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711761, 36.963093, 30.543438>,  <25.665489, 37.070621, 30.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711761, 36.963093, 30.543438>,  <25.788881, 36.783878, 30.194246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711761, 36.963093, 30.543438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227034, 0.845163, -0.483896,
		-0.954612, -0.291492, -0.061229,
		-0.192800, 0.448032, 0.872981,
		25.653921, 37.097504, 30.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152088, 37.113022, 30.126665>,  <25.788881, 36.783878, 30.194246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152088, 37.113022, 30.126665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342800, 37.288010, 30.431637>,  <25.457228, 37.393002, 30.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342800, 37.288010, 30.431637>,  <25.152088, 37.113022, 30.126665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342800, 37.288010, 30.431637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325956, 0.893512, -0.308850,
		-0.816353, -0.101265, 0.568606,
		0.476780, 0.437471, 0.762430,
		25.485834, 37.419250, 30.660366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732883, 37.769829, 30.274408>,  <25.152088, 37.113022, 30.126665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732883, 37.769829, 30.274408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087755, 37.837994, 30.445929>,  <25.300678, 37.878891, 30.548841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087755, 37.837994, 30.445929>,  <24.732883, 37.769829, 30.274408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087755, 37.837994, 30.445929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029196, 0.948171, -0.316416,
		-0.460497, 0.268199, 0.846175,
		0.887181, 0.170413, 0.428800,
		25.353909, 37.889118, 30.574568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676868, 38.337185, 30.725622>,  <24.732883, 37.769829, 30.274408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676868, 38.337185, 30.725622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067831, 38.313286, 30.644524>,  <25.302408, 38.298946, 30.595863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067831, 38.313286, 30.644524>,  <24.676868, 38.337185, 30.725622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067831, 38.313286, 30.644524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025992, 0.985908, -0.165254,
		0.209765, 0.156251, 0.965186,
		0.977406, -0.059751, -0.202748,
		25.361053, 38.295361, 30.583700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022457, 38.970753, 31.048452>,  <24.676868, 38.337185, 30.725622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022457, 38.970753, 31.048452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219334, 38.817249, 30.735920>,  <25.337460, 38.725147, 30.548401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219334, 38.817249, 30.735920>,  <25.022457, 38.970753, 31.048452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219334, 38.817249, 30.735920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246811, 0.922266, -0.297507,
		0.834766, -0.046410, 0.548646,
		0.492190, -0.383761, -0.781330,
		25.366991, 38.702122, 30.501520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740610, 39.173531, 31.073883>,  <25.022457, 38.970753, 31.048452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740610, 39.173531, 31.073883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649010, 39.117401, 30.688580>,  <25.594049, 39.083725, 30.457397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649010, 39.117401, 30.688580>,  <25.740610, 39.173531, 31.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649010, 39.117401, 30.688580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296484, 0.932485, -0.206324,
		0.927175, -0.332839, -0.171939,
		-0.229004, -0.140322, -0.963259,
		25.580309, 39.075306, 30.399601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202080, 39.587738, 30.667915>,  <25.740610, 39.173531, 31.073883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202080, 39.587738, 30.667915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900940, 39.572735, 30.405067>,  <25.720255, 39.563732, 30.247358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900940, 39.572735, 30.405067>,  <26.202080, 39.587738, 30.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900940, 39.572735, 30.405067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362651, 0.809523, -0.461690,
		0.549271, -0.585889, -0.595848,
		-0.752851, -0.037508, -0.657121,
		25.675085, 39.561481, 30.207932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539267, 39.828617, 30.096313>,  <26.202080, 39.587738, 30.667915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539267, 39.828617, 30.096313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143124, 39.880516, 30.076895>,  <25.905437, 39.911655, 30.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143124, 39.880516, 30.076895>,  <26.539267, 39.828617, 30.096313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143124, 39.880516, 30.076895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135734, 0.838731, -0.527358,
		-0.027705, -0.528863, -0.848255,
		-0.990358, 0.129748, -0.048547,
		25.846016, 39.919441, 30.062330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375536, 40.198944, 29.520281>,  <26.539267, 39.828617, 30.096313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375536, 40.198944, 29.520281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040518, 40.233414, 29.736094>,  <25.839508, 40.254093, 29.865582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040518, 40.233414, 29.736094>,  <26.375536, 40.198944, 29.520281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040518, 40.233414, 29.736094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023936, 0.992324, -0.121329,
		-0.545847, -0.088704, -0.833177,
		-0.837543, 0.086170, 0.539533,
		25.789255, 40.259266, 29.897953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353128, 40.876904, 28.955719>,  <26.375536, 40.198944, 29.520281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353128, 40.876904, 28.955719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454613, 40.521896, 28.801863>,  <26.515503, 40.308891, 28.709549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454613, 40.521896, 28.801863>,  <26.353128, 40.876904, 28.955719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454613, 40.521896, 28.801863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876352, -0.379228, 0.296973,
		-0.409434, 0.261736, -0.873990,
		0.253713, -0.887514, -0.384642,
		26.530727, 40.255642, 28.686470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877790, 40.566353, 28.533829>,  <26.353128, 40.876904, 28.955719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877790, 40.566353, 28.533829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081509, 40.265022, 28.700254>,  <26.203739, 40.084225, 28.800110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081509, 40.265022, 28.700254>,  <25.877790, 40.566353, 28.533829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081509, 40.265022, 28.700254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844024, -0.342834, 0.412418,
		-0.168045, -0.561213, -0.810432,
		0.509297, -0.753329, 0.416066,
		26.234299, 40.039024, 28.825073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415102, 40.325924, 29.054953>,  <25.877790, 40.566353, 28.533829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415102, 40.325924, 29.054953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727604, 40.087196, 29.128111>,  <25.915106, 39.943962, 29.172007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727604, 40.087196, 29.128111>,  <25.415102, 40.325924, 29.054953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727604, 40.087196, 29.128111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566036, -0.553829, 0.610636,
		-0.263144, -0.580589, -0.770501,
		0.781255, -0.596817, 0.182897,
		25.961981, 39.908150, 29.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256203, 39.943974, 29.525331>,  <25.415102, 40.325924, 29.054953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256203, 39.943974, 29.525331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602156, 39.748749, 29.478390>,  <25.809727, 39.631615, 29.450224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602156, 39.748749, 29.478390>,  <25.256203, 39.943974, 29.525331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602156, 39.748749, 29.478390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268704, -0.647607, 0.713024,
		-0.424002, -0.585148, -0.691248,
		0.864882, -0.488065, -0.117355,
		25.861620, 39.602329, 29.443184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080992, 39.094418, 29.491348>,  <25.256203, 39.943974, 29.525331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080992, 39.094418, 29.491348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440351, 39.221222, 29.612928>,  <25.655968, 39.297306, 29.685877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440351, 39.221222, 29.612928>,  <25.080992, 39.094418, 29.491348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440351, 39.221222, 29.612928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038723, -0.632204, 0.773834,
		0.437473, -0.706980, -0.555694,
		0.898397, 0.317013, 0.303949,
		25.709871, 39.316326, 29.704113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553701, 38.598846, 29.369854>,  <25.080992, 39.094418, 29.491348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553701, 38.598846, 29.369854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655010, 38.789429, 29.706625>,  <25.715796, 38.903778, 29.908688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655010, 38.789429, 29.706625>,  <25.553701, 38.598846, 29.369854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655010, 38.789429, 29.706625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027889, -0.866346, 0.498665,
		0.966993, -0.149779, -0.206134,
		0.253273, 0.476457, 0.841927,
		25.730991, 38.932365, 29.959204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078127, 38.061802, 29.690020>,  <25.553701, 38.598846, 29.369854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078127, 38.061802, 29.690020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920162, 38.324070, 29.947435>,  <25.825384, 38.481430, 30.101885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920162, 38.324070, 29.947435>,  <26.078127, 38.061802, 29.690020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920162, 38.324070, 29.947435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266066, -0.752078, 0.602982,
		0.879348, 0.066901, 0.471456,
		-0.394912, 0.655670, 0.643538,
		25.801689, 38.520771, 30.140497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572290, 38.197121, 30.153830>,  <26.078127, 38.061802, 29.690020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572290, 38.197121, 30.153830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203188, 38.227322, 30.304996>,  <25.981726, 38.245441, 30.395697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203188, 38.227322, 30.304996>,  <26.572290, 38.197121, 30.153830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203188, 38.227322, 30.304996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157415, -0.821242, 0.548436,
		0.351770, 0.565562, 0.745921,
		-0.922756, 0.075504, 0.377916,
		25.926361, 38.249973, 30.418371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591364, 38.118439, 30.884583>,  <26.572290, 38.197121, 30.153830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591364, 38.118439, 30.884583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211868, 38.028671, 30.795559>,  <25.984171, 37.974812, 30.742146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211868, 38.028671, 30.795559>,  <26.591364, 38.118439, 30.884583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211868, 38.028671, 30.795559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042973, -0.789206, 0.612623,
		-0.313132, 0.571654, 0.758393,
		-0.948737, -0.224422, -0.222560,
		25.927248, 37.961346, 30.728790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251781, 38.109394, 31.474758>,  <26.591364, 38.118439, 30.884583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251781, 38.109394, 31.474758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046352, 37.873505, 31.225449>,  <25.923096, 37.731972, 31.075863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046352, 37.873505, 31.225449>,  <26.251781, 38.109394, 31.474758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046352, 37.873505, 31.225449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037821, -0.741240, 0.670174,
		-0.857213, 0.320609, 0.402983,
		-0.513571, -0.589723, -0.623275,
		25.892281, 37.696587, 31.038465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867306, 37.842659, 31.800373>,  <26.251781, 38.109394, 31.474758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867306, 37.842659, 31.800373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010429, 37.663971, 32.128376>,  <27.096304, 37.556759, 32.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010429, 37.663971, 32.128376>,  <26.867306, 37.842659, 31.800373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010429, 37.663971, 32.128376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911916, -0.021810, -0.409796,
		0.200950, 0.894406, 0.399571,
		0.357809, -0.446724, 0.820007,
		27.117773, 37.529953, 32.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401011, 38.211540, 32.083958>,  <26.867306, 37.842659, 31.800373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401011, 38.211540, 32.083958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465824, 37.827183, 32.173782>,  <27.504711, 37.596569, 32.227676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465824, 37.827183, 32.173782>,  <27.401011, 38.211540, 32.083958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465824, 37.827183, 32.173782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912183, 0.059052, -0.405507,
		0.376389, 0.270545, 0.886080,
		0.162032, -0.960895, 0.224560,
		27.514433, 37.538914, 32.241150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138653, 38.156906, 32.510231>,  <27.401011, 38.211540, 32.083958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138653, 38.156906, 32.510231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023165, 37.850204, 32.280891>,  <27.953871, 37.666183, 32.143288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023165, 37.850204, 32.280891>,  <28.138653, 38.156906, 32.510231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023165, 37.850204, 32.280891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839113, 0.085702, -0.537164,
		0.461009, -0.636195, 0.618649,
		-0.288722, -0.766754, -0.573349,
		27.936548, 37.620178, 32.108887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710537, 37.736874, 32.492611>,  <28.138653, 38.156906, 32.510231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710537, 37.736874, 32.492611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486244, 37.677414, 32.166794>,  <28.351667, 37.641739, 31.971304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486244, 37.677414, 32.166794>,  <28.710537, 37.736874, 32.492611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486244, 37.677414, 32.166794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827328, -0.061055, -0.558391,
		0.033273, -0.987004, 0.157218,
		-0.560733, -0.148650, -0.814544,
		28.318024, 37.632820, 31.922430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802395, 37.060162, 32.158451>,  <28.710537, 37.736874, 32.492611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802395, 37.060162, 32.158451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731554, 37.298477, 31.845100>,  <28.689051, 37.441467, 31.657091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731554, 37.298477, 31.845100>,  <28.802395, 37.060162, 32.158451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731554, 37.298477, 31.845100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896139, -0.231462, -0.378630,
		-0.406903, -0.769068, -0.492914,
		-0.177101, 0.595785, -0.783374,
		28.678423, 37.477211, 31.610088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825884, 36.778938, 31.444403>,  <28.802395, 37.060162, 32.158451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825884, 36.778938, 31.444403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936398, 37.162041, 31.412458>,  <29.002705, 37.391903, 31.393291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936398, 37.162041, 31.412458>,  <28.825884, 36.778938, 31.444403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936398, 37.162041, 31.412458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710394, -0.259477, -0.654227,
		-0.647309, 0.124020, -0.752070,
		0.276282, 0.957753, -0.079859,
		29.019281, 37.449368, 31.388500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756079, 37.003960, 30.715899>,  <28.825884, 36.778938, 31.444403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756079, 37.003960, 30.715899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029400, 37.190033, 30.941004>,  <29.193392, 37.301678, 31.076067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029400, 37.190033, 30.941004>,  <28.756079, 37.003960, 30.715899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029400, 37.190033, 30.941004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704702, -0.218522, -0.675013,
		-0.191026, 0.857820, -0.477130,
		0.683303, 0.465180, 0.562765,
		29.234390, 37.329586, 31.109833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098928, 37.575687, 30.350571>,  <28.756079, 37.003960, 30.715899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098928, 37.575687, 30.350571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321947, 37.398014, 30.631096>,  <29.455759, 37.291409, 30.799412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321947, 37.398014, 30.631096>,  <29.098928, 37.575687, 30.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321947, 37.398014, 30.631096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761203, -0.063524, -0.645394,
		0.331226, 0.893679, 0.302699,
		0.557547, -0.444187, 0.701313,
		29.489212, 37.264759, 30.841490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723358, 37.912994, 30.433605>,  <29.098928, 37.575687, 30.350571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723358, 37.912994, 30.433605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733435, 37.514164, 30.462465>,  <29.739481, 37.274864, 30.479782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733435, 37.514164, 30.462465>,  <29.723358, 37.912994, 30.433605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733435, 37.514164, 30.462465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577884, -0.044367, -0.814912,
		0.815730, 0.062224, 0.575077,
		0.025192, -0.997076, 0.072150,
		29.740992, 37.215042, 30.484110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376869, 37.658619, 30.280464>,  <29.723358, 37.912994, 30.433605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376869, 37.658619, 30.280464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143187, 37.338673, 30.225452>,  <30.002977, 37.146706, 30.192446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143187, 37.338673, 30.225452>,  <30.376869, 37.658619, 30.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143187, 37.338673, 30.225452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477613, -0.201815, -0.855077,
		0.656192, -0.565228, 0.499929,
		-0.584207, -0.799867, -0.137531,
		29.967924, 37.098713, 30.184193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731012, 36.972420, 30.125227>,  <30.376869, 37.658619, 30.280464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731012, 36.972420, 30.125227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357845, 36.934471, 29.986279>,  <30.133945, 36.911701, 29.902908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357845, 36.934471, 29.986279>,  <30.731012, 36.972420, 30.125227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357845, 36.934471, 29.986279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360083, -0.253591, -0.897793,
		-0.002913, -0.962648, 0.270741,
		-0.932915, -0.094874, -0.347372,
		30.077971, 36.906010, 29.882067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458399, 36.215839, 29.823572>,  <30.731012, 36.972420, 30.125227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458399, 36.215839, 29.823572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327162, 36.552021, 29.651066>,  <30.248419, 36.753731, 29.547562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327162, 36.552021, 29.651066>,  <30.458399, 36.215839, 29.823572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327162, 36.552021, 29.651066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120496, -0.415574, -0.901542,
		-0.936929, -0.347756, 0.035075,
		-0.328093, 0.840455, -0.431266,
		30.228733, 36.804157, 29.521687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832830, 36.017693, 29.470709>,  <30.458399, 36.215839, 29.823572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832830, 36.017693, 29.470709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000921, 36.343555, 29.310839>,  <30.101776, 36.539074, 29.214916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000921, 36.343555, 29.310839>,  <29.832830, 36.017693, 29.470709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000921, 36.343555, 29.310839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017585, -0.447682, -0.894020,
		-0.907249, 0.368663, -0.202454,
		0.420227, 0.814658, -0.399676,
		30.126989, 36.587952, 29.190935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426807, 36.282852, 28.934454>,  <29.832830, 36.017693, 29.470709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426807, 36.282852, 28.934454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811880, 36.377377, 28.881687>,  <30.042923, 36.434090, 28.850027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811880, 36.377377, 28.881687>,  <29.426807, 36.282852, 28.934454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811880, 36.377377, 28.881687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065496, -0.269511, -0.960767,
		-0.262592, 0.933553, -0.243976,
		0.962682, 0.236310, -0.131915,
		30.100685, 36.448269, 28.842113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553616, 36.784210, 28.373266>,  <29.426807, 36.282852, 28.934454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553616, 36.784210, 28.373266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884230, 36.562622, 28.413177>,  <30.082598, 36.429668, 28.437124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884230, 36.562622, 28.413177>,  <29.553616, 36.784210, 28.373266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884230, 36.562622, 28.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047488, -0.108004, -0.993016,
		0.560879, 0.825500, -0.062962,
		0.826535, -0.553972, 0.099778,
		30.132191, 36.396431, 28.443111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182568, 37.114624, 27.927999>,  <29.553616, 36.784210, 28.373266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182568, 37.114624, 27.927999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200344, 36.716396, 27.961153>,  <30.211010, 36.477459, 27.981045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200344, 36.716396, 27.961153>,  <30.182568, 37.114624, 27.927999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200344, 36.716396, 27.961153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114547, -0.077340, -0.990403,
		0.992423, 0.053509, 0.110602,
		0.044442, -0.995568, 0.082883,
		30.213676, 36.417725, 27.986017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822033, 36.654510, 27.763945>,  <30.182568, 37.114624, 27.927999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822033, 36.654510, 27.763945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467489, 36.514137, 27.643139>,  <30.254763, 36.429913, 27.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467489, 36.514137, 27.643139>,  <30.822033, 36.654510, 27.763945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467489, 36.514137, 27.643139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234021, 0.223270, -0.946248,
		0.399498, -0.909395, -0.115773,
		-0.886361, -0.350930, -0.302013,
		30.201580, 36.408859, 27.552534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994020, 36.219849, 27.164871>,  <30.822033, 36.654510, 27.763945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994020, 36.219849, 27.164871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626366, 36.377117, 27.155037>,  <30.405773, 36.471478, 27.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626366, 36.377117, 27.155037>,  <30.994020, 36.219849, 27.164871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626366, 36.377117, 27.155037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219846, 0.460159, -0.860187,
		-0.326885, -0.796036, -0.509386,
		-0.919138, 0.393168, -0.024586,
		30.350624, 36.495068, 27.147661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612007, 35.874790, 27.108648>,  <30.994020, 36.219849, 27.164871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612007, 35.874790, 27.108648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695374, 36.209633, 26.906334>,  <31.745394, 36.410538, 26.784946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695374, 36.209633, 26.906334>,  <31.612007, 35.874790, 27.108648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695374, 36.209633, 26.906334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105002, -0.533303, -0.839382,
		-0.972387, 0.121834, -0.199048,
		0.208418, 0.837105, -0.505784,
		31.757898, 36.460766, 26.754599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291780, 35.826679, 26.502974>,  <31.612007, 35.874790, 27.108648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291780, 35.826679, 26.502974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570526, 36.096970, 26.406832>,  <31.737774, 36.259144, 26.349146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570526, 36.096970, 26.406832>,  <31.291780, 35.826679, 26.502974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570526, 36.096970, 26.406832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171358, -0.482296, -0.859085,
		-0.696430, 0.557480, -0.451887,
		0.696866, 0.675727, -0.240357,
		31.779587, 36.299686, 26.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219902, 35.993202, 25.737967>,  <31.291780, 35.826679, 26.502974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219902, 35.993202, 25.737967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589991, 36.118382, 25.823786>,  <31.812044, 36.193489, 25.875277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589991, 36.118382, 25.823786>,  <31.219902, 35.993202, 25.737967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589991, 36.118382, 25.823786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328951, -0.379772, -0.864618,
		-0.189102, 0.870538, -0.454318,
		0.925220, 0.312949, 0.214549,
		31.867558, 36.212265, 25.888151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445210, 36.409733, 25.185091>,  <31.219902, 35.993202, 25.737967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445210, 36.409733, 25.185091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772312, 36.296066, 25.385300>,  <31.968575, 36.227867, 25.505424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772312, 36.296066, 25.385300>,  <31.445210, 36.409733, 25.185091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772312, 36.296066, 25.385300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498267, -0.085775, -0.862770,
		0.288104, 0.954930, 0.071448,
		0.817757, -0.284168, 0.500522,
		32.017639, 36.210815, 25.535456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984859, 36.847061, 24.981987>,  <31.445210, 36.409733, 25.185091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984859, 36.847061, 24.981987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190655, 36.537037, 25.128729>,  <32.314133, 36.351021, 25.216774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190655, 36.537037, 25.128729>,  <31.984859, 36.847061, 24.981987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190655, 36.537037, 25.128729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465803, -0.106586, -0.878446,
		0.719950, 0.622832, 0.306189,
		0.514489, -0.775061, 0.366854,
		32.345001, 36.304520, 25.238785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720188, 36.959888, 24.763918>,  <31.984859, 36.847061, 24.981987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720188, 36.959888, 24.763918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641708, 36.577690, 24.852037>,  <32.594620, 36.348370, 24.904909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641708, 36.577690, 24.852037>,  <32.720188, 36.959888, 24.763918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641708, 36.577690, 24.852037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399072, -0.283026, -0.872146,
		0.895683, -0.083199, 0.436841,
		-0.196199, -0.955497, 0.220299,
		32.582848, 36.291042, 24.918127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341213, 36.645336, 24.614212>,  <32.720188, 36.959888, 24.763918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341213, 36.645336, 24.614212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079479, 36.342899, 24.619429>,  <32.922440, 36.161438, 24.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079479, 36.342899, 24.619429>,  <33.341213, 36.645336, 24.614212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079479, 36.342899, 24.619429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432973, -0.388730, -0.813280,
		0.619986, -0.526508, 0.581727,
		-0.654333, -0.756094, 0.013044,
		32.883179, 36.116070, 24.623343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693230, 36.007927, 24.485592>,  <33.341213, 36.645336, 24.614212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693230, 36.007927, 24.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317383, 35.935890, 24.369183>,  <33.091877, 35.892670, 24.299337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317383, 35.935890, 24.369183>,  <33.693230, 36.007927, 24.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317383, 35.935890, 24.369183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341402, -0.433870, -0.833788,
		0.023889, -0.882794, 0.469152,
		-0.939614, -0.180088, -0.291023,
		33.035500, 35.881863, 24.281876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675278, 35.489548, 24.112144>,  <33.693230, 36.007927, 24.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675278, 35.489548, 24.112144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316631, 35.621719, 23.994238>,  <33.101444, 35.701023, 23.923494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316631, 35.621719, 23.994238>,  <33.675278, 35.489548, 24.112144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316631, 35.621719, 23.994238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194239, -0.304715, -0.932427,
		-0.397926, -0.893287, 0.209030,
		-0.896619, 0.330435, -0.294765,
		33.047646, 35.720848, 23.905807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359745, 35.063412, 23.616838>,  <33.675278, 35.489548, 24.112144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359745, 35.063412, 23.616838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157017, 35.403309, 23.558784>,  <33.035378, 35.607246, 23.523952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157017, 35.403309, 23.558784>,  <33.359745, 35.063412, 23.616838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157017, 35.403309, 23.558784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196215, -0.050230, -0.979273,
		-0.839423, -0.524796, -0.141275,
		-0.506822, 0.849745, -0.145137,
		33.004971, 35.658234, 23.515244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216213, 35.015980, 22.960779>,  <33.359745, 35.063412, 23.616838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216213, 35.015980, 22.960779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075851, 35.388195, 23.002684>,  <32.991634, 35.611523, 23.027826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075851, 35.388195, 23.002684>,  <33.216213, 35.015980, 22.960779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075851, 35.388195, 23.002684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031876, 0.123682, -0.991810,
		-0.935870, -0.344688, -0.073062,
		-0.350901, 0.930534, 0.104763,
		32.970581, 35.667355, 23.034113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619690, 35.139465, 22.438377>,  <33.216213, 35.015980, 22.960779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619690, 35.139465, 22.438377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777378, 35.500549, 22.507317>,  <32.871990, 35.717201, 22.548679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777378, 35.500549, 22.507317>,  <32.619690, 35.139465, 22.438377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777378, 35.500549, 22.507317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035751, 0.172329, -0.984390,
		-0.918321, 0.394226, 0.035662,
		0.394218, 0.902712, 0.172348,
		32.895645, 35.771362, 22.559021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314758, 35.617970, 21.894720>,  <32.619690, 35.139465, 22.438377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314758, 35.617970, 21.894720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634457, 35.824215, 22.018234>,  <32.826275, 35.947964, 22.092342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634457, 35.824215, 22.018234>,  <32.314758, 35.617970, 21.894720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634457, 35.824215, 22.018234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200756, 0.255224, -0.945811,
		-0.566482, 0.817926, 0.100475,
		0.799247, 0.515613, 0.308783,
		32.874229, 35.978897, 22.110868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257378, 36.241379, 21.720167>,  <32.314758, 35.617970, 21.894720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257378, 36.241379, 21.720167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650223, 36.173183, 21.752157>,  <32.885929, 36.132267, 21.771351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650223, 36.173183, 21.752157>,  <32.257378, 36.241379, 21.720167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650223, 36.173183, 21.752157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152607, 0.471732, -0.868436,
		0.110331, 0.865103, 0.489309,
		0.982109, -0.170487, 0.079974,
		32.944855, 36.122036, 21.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574741, 36.954464, 21.664921>,  <32.257378, 36.241379, 21.720167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574741, 36.954464, 21.664921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864895, 36.686813, 21.600304>,  <33.038986, 36.526222, 21.561533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864895, 36.686813, 21.600304>,  <32.574741, 36.954464, 21.664921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864895, 36.686813, 21.600304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248394, 0.473315, -0.845147,
		0.641967, 0.572929, 0.509540,
		0.725382, -0.669123, -0.161541,
		33.082508, 36.486076, 21.551842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179207, 37.366589, 21.439812>,  <32.574741, 36.954464, 21.664921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179207, 37.366589, 21.439812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211830, 36.987076, 21.317724>,  <33.231403, 36.759369, 21.244473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211830, 36.987076, 21.317724>,  <33.179207, 37.366589, 21.439812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211830, 36.987076, 21.317724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304122, 0.315322, -0.898934,
		0.949135, -0.019509, 0.314263,
		0.081557, -0.948784, -0.305216,
		33.236298, 36.702442, 21.226160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739193, 37.381733, 21.126228>,  <33.179207, 37.366589, 21.439812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739193, 37.381733, 21.126228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538376, 37.066036, 20.984777>,  <33.417885, 36.876617, 20.899908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538376, 37.066036, 20.984777>,  <33.739193, 37.381733, 21.126228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538376, 37.066036, 20.984777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283211, 0.236312, -0.929488,
		0.817159, -0.566789, 0.104885,
		-0.502038, -0.789244, -0.353626,
		33.387764, 36.829262, 20.878689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201717, 37.189537, 20.516762>,  <33.739193, 37.381733, 21.126228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201717, 37.189537, 20.516762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852222, 37.007206, 20.448868>,  <33.642525, 36.897808, 20.408131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852222, 37.007206, 20.448868>,  <34.201717, 37.189537, 20.516762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852222, 37.007206, 20.448868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053636, 0.256544, -0.965043,
		0.483437, -0.852295, -0.199703,
		-0.873734, -0.455826, -0.169737,
		33.590103, 36.870457, 20.397947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317886, 36.930336, 19.944504>,  <34.201717, 37.189537, 20.516762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317886, 36.930336, 19.944504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919689, 36.894993, 19.930693>,  <33.680771, 36.873787, 19.922407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919689, 36.894993, 19.930693>,  <34.317886, 36.930336, 19.944504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919689, 36.894993, 19.930693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008912, 0.275251, -0.961331,
		0.094440, -0.957304, -0.273222,
		-0.995491, -0.088353, -0.034526,
		33.621040, 36.868488, 19.920334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098797, 36.437508, 19.370886>,  <34.317886, 36.930336, 19.944504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098797, 36.437508, 19.370886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797512, 36.690151, 19.444365>,  <33.616741, 36.841736, 19.488453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797512, 36.690151, 19.444365>,  <34.098797, 36.437508, 19.370886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797512, 36.690151, 19.444365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047688, 0.226101, -0.972936,
		-0.656049, -0.741586, -0.140181,
		-0.753210, 0.631609, 0.183698,
		33.571548, 36.879635, 19.499474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696308, 36.459850, 18.759663>,  <34.098797, 36.437508, 19.370886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696308, 36.459850, 18.759663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575653, 36.784958, 18.959030>,  <33.503262, 36.980022, 19.078651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575653, 36.784958, 18.959030>,  <33.696308, 36.459850, 18.759663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575653, 36.784958, 18.959030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223256, 0.448024, -0.865697,
		-0.926916, -0.372400, 0.046315,
		-0.301635, 0.812769, 0.498421,
		33.485161, 37.028790, 19.108557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048378, 36.610992, 18.427143>,  <33.696308, 36.459850, 18.759663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048378, 36.610992, 18.427143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154556, 36.945671, 18.618761>,  <33.218262, 37.146477, 18.733732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154556, 36.945671, 18.618761>,  <33.048378, 36.610992, 18.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154556, 36.945671, 18.618761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310315, 0.544572, -0.779196,
		-0.912822, 0.058180, 0.404193,
		0.265446, 0.836694, 0.479043,
		33.234192, 37.196678, 18.762474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452644, 37.041477, 18.352680>,  <33.048378, 36.610992, 18.427143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452644, 37.041477, 18.352680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788982, 37.253498, 18.396532>,  <32.990784, 37.380711, 18.422844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788982, 37.253498, 18.396532>,  <32.452644, 37.041477, 18.352680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788982, 37.253498, 18.396532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172321, 0.454150, -0.874101,
		-0.513111, 0.716093, 0.473210,
		0.840847, 0.530055, 0.109632,
		33.041237, 37.412514, 18.429422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156620, 37.676964, 18.246500>,  <32.452644, 37.041477, 18.352680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156620, 37.676964, 18.246500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549721, 37.733738, 18.199093>,  <32.785583, 37.767803, 18.170649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549721, 37.733738, 18.199093>,  <32.156620, 37.676964, 18.246500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549721, 37.733738, 18.199093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154031, 0.273761, -0.949384,
		-0.102310, 0.951267, 0.290903,
		0.982755, 0.141940, -0.118516,
		32.844547, 37.776321, 18.163538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187534, 38.261520, 17.917906>,  <32.156620, 37.676964, 18.246500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187534, 38.261520, 17.917906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545959, 38.109482, 17.826164>,  <32.761013, 38.018257, 17.771120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545959, 38.109482, 17.826164>,  <32.187534, 38.261520, 17.917906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545959, 38.109482, 17.826164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035412, 0.453794, -0.890403,
		0.442518, 0.805976, 0.393167,
		0.896060, -0.380096, -0.229354,
		32.814777, 37.995453, 17.757359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506294, 38.751755, 17.499752>,  <32.187534, 38.261520, 17.917906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506294, 38.751755, 17.499752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696747, 38.410313, 17.415226>,  <32.811016, 38.205448, 17.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696747, 38.410313, 17.415226>,  <32.506294, 38.751755, 17.499752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696747, 38.410313, 17.415226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054768, 0.211051, -0.975940,
		0.877668, 0.476247, 0.053737,
		0.476130, -0.853608, -0.211315,
		32.839584, 38.154232, 17.351831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830559, 38.987518, 17.046627>,  <32.506294, 38.751755, 17.499752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830559, 38.987518, 17.046627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889103, 38.594151, 17.003799>,  <32.924229, 38.358131, 16.978102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889103, 38.594151, 17.003799>,  <32.830559, 38.987518, 17.046627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889103, 38.594151, 17.003799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008805, 0.109528, -0.993945,
		0.989192, 0.144530, 0.024690,
		0.146359, -0.983420, -0.107071,
		32.933010, 38.299126, 16.971678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336403, 38.963074, 16.541086>,  <32.830559, 38.987518, 17.046627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336403, 38.963074, 16.541086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155006, 38.606823, 16.527626>,  <33.046169, 38.393074, 16.519550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155006, 38.606823, 16.527626>,  <33.336403, 38.963074, 16.541086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155006, 38.606823, 16.527626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070509, 0.073490, -0.994800,
		0.888466, -0.448763, -0.096124,
		-0.453493, -0.890624, -0.033652,
		33.018959, 38.339634, 16.517530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725677, 38.636406, 16.165352>,  <33.336403, 38.963074, 16.541086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725677, 38.636406, 16.165352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379005, 38.438911, 16.136797>,  <33.171001, 38.320415, 16.119665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379005, 38.438911, 16.136797>,  <33.725677, 38.636406, 16.165352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379005, 38.438911, 16.136797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016203, 0.115161, -0.993215,
		0.498609, -0.861951, -0.091808,
		-0.866675, -0.493738, -0.071386,
		33.119003, 38.290791, 16.115381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820793, 38.034122, 15.786201>,  <33.725677, 38.636406, 16.165352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820793, 38.034122, 15.786201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432701, 38.127277, 15.759585>,  <33.199848, 38.183170, 15.743616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432701, 38.127277, 15.759585>,  <33.820793, 38.034122, 15.786201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432701, 38.127277, 15.759585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080198, 0.049683, -0.995540,
		-0.228539, -0.971235, -0.066880,
		-0.970226, 0.232884, -0.066537,
		33.141632, 38.197144, 15.739624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552368, 37.735832, 15.128645>,  <33.820793, 38.034122, 15.786201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552368, 37.735832, 15.128645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256306, 37.992897, 15.207787>,  <33.078667, 38.147137, 15.255272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256306, 37.992897, 15.207787>,  <33.552368, 37.735832, 15.128645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256306, 37.992897, 15.207787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178833, 0.095510, -0.979232,
		-0.648215, -0.760171, 0.044238,
		-0.740159, 0.642664, 0.197855,
		33.034256, 38.185696, 15.267143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038723, 37.521610, 14.753454>,  <33.552368, 37.735832, 15.128645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038723, 37.521610, 14.753454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939362, 37.898457, 14.843527>,  <32.879745, 38.124565, 14.897571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939362, 37.898457, 14.843527>,  <33.038723, 37.521610, 14.753454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939362, 37.898457, 14.843527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009969, 0.229968, -0.973147,
		-0.968606, -0.243978, -0.047733,
		-0.248403, 0.942120, 0.225181,
		32.864841, 38.181091, 14.911081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546387, 37.679821, 14.235227>,  <33.038723, 37.521610, 14.753454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546387, 37.679821, 14.235227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672836, 38.039276, 14.356891>,  <32.748707, 38.254951, 14.429889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672836, 38.039276, 14.356891>,  <32.546387, 37.679821, 14.235227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672836, 38.039276, 14.356891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027206, 0.311882, -0.949731,
		-0.948329, 0.308504, 0.074143,
		0.316120, 0.898641, 0.304160,
		32.767673, 38.308868, 14.448138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182930, 38.154732, 13.894878>,  <32.546387, 37.679821, 14.235227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182930, 38.154732, 13.894878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505878, 38.361374, 14.008902>,  <32.699650, 38.485359, 14.077315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505878, 38.361374, 14.008902>,  <32.182930, 38.154732, 13.894878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505878, 38.361374, 14.008902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019780, 0.459150, -0.888139,
		-0.589706, 0.722700, 0.360488,
		0.807376, 0.516610, 0.285059,
		32.748093, 38.516357, 14.094419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977882, 38.823078, 13.802606>,  <32.182930, 38.154732, 13.894878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977882, 38.823078, 13.802606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377472, 38.816517, 13.785715>,  <32.617226, 38.812580, 13.775580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377472, 38.816517, 13.785715>,  <31.977882, 38.823078, 13.802606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377472, 38.816517, 13.785715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027519, 0.520729, -0.853279,
		0.035984, 0.853565, 0.519743,
		0.998973, -0.016402, -0.042227,
		32.677162, 38.811596, 13.773047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094250, 39.559132, 13.637766>,  <31.977882, 38.823078, 13.802606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094250, 39.559132, 13.637766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412228, 39.332890, 13.549990>,  <32.603016, 39.197144, 13.497324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412228, 39.332890, 13.549990>,  <32.094250, 39.559132, 13.637766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412228, 39.332890, 13.549990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166743, 0.551470, -0.817360,
		0.583315, 0.613168, 0.532699,
		0.794947, -0.565603, -0.219439,
		32.650711, 39.163208, 13.484158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462551, 40.018559, 13.237898>,  <32.094250, 39.559132, 13.637766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462551, 40.018559, 13.237898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632904, 39.663433, 13.168134>,  <32.735115, 39.450359, 13.126275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632904, 39.663433, 13.168134>,  <32.462551, 40.018559, 13.237898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632904, 39.663433, 13.168134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364241, 0.344686, -0.865170,
		0.828224, 0.304931, 0.470172,
		0.425879, -0.887811, -0.174409,
		32.760666, 39.397091, 13.115811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157898, 40.064713, 13.043672>,  <32.462551, 40.018559, 13.237898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157898, 40.064713, 13.043672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047962, 39.722641, 12.867880>,  <32.982002, 39.517399, 12.762404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047962, 39.722641, 12.867880>,  <33.157898, 40.064713, 13.043672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047962, 39.722641, 12.867880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334703, 0.343399, -0.877525,
		0.901354, -0.388271, 0.191851,
		-0.274836, -0.855174, -0.439480,
		32.965511, 39.466087, 12.736036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621269, 40.002491, 12.487977>,  <33.157898, 40.064713, 13.043672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621269, 40.002491, 12.487977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330669, 39.740448, 12.404996>,  <33.156311, 39.583221, 12.355207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330669, 39.740448, 12.404996>,  <33.621269, 40.002491, 12.487977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330669, 39.740448, 12.404996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036480, 0.264698, -0.963641,
		0.686202, -0.707649, -0.168404,
		-0.726495, -0.655109, -0.207452,
		33.112720, 39.543915, 12.342760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870903, 39.600010, 11.960639>,  <33.621269, 40.002491, 12.487977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870903, 39.600010, 11.960639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472637, 39.575569, 11.932582>,  <33.233677, 39.560905, 11.915748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472637, 39.575569, 11.932582>,  <33.870903, 39.600010, 11.960639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472637, 39.575569, 11.932582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060352, 0.149502, -0.986918,
		0.070786, -0.986872, -0.145166,
		-0.995664, -0.061099, -0.070142,
		33.173939, 39.557240, 11.911539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736618, 39.196617, 11.341496>,  <33.870903, 39.600010, 11.960639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736618, 39.196617, 11.341496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396049, 39.390171, 11.422433>,  <33.191708, 39.506302, 11.470995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396049, 39.390171, 11.422433>,  <33.736618, 39.196617, 11.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396049, 39.390171, 11.422433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112020, 0.209123, -0.971452,
		-0.512387, -0.849778, -0.123846,
		-0.851417, 0.483886, 0.202343,
		33.140625, 39.535336, 11.483136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209763, 38.977829, 10.800514>,  <33.736618, 39.196617, 11.341496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209763, 38.977829, 10.800514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091015, 39.331593, 10.944564>,  <33.019768, 39.543850, 11.030993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091015, 39.331593, 10.944564>,  <33.209763, 38.977829, 10.800514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091015, 39.331593, 10.944564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238276, 0.296591, -0.924802,
		-0.924714, -0.360351, 0.122686,
		-0.296866, 0.884410, 0.360125,
		33.001957, 39.596916, 11.052601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514874, 39.273060, 10.402308>,  <33.209763, 38.977829, 10.800514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514874, 39.273060, 10.402308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748791, 39.559723, 10.554318>,  <32.889141, 39.731720, 10.645524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748791, 39.559723, 10.554318>,  <32.514874, 39.273060, 10.402308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748791, 39.559723, 10.554318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064666, 0.425806, -0.902501,
		-0.808600, 0.552352, 0.202666,
		0.584795, 0.716657, 0.380025,
		32.924229, 39.774719, 10.668325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221130, 39.944519, 10.417894>,  <32.514874, 39.273060, 10.402308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221130, 39.944519, 10.417894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619907, 39.946236, 10.386682>,  <32.859173, 39.947266, 10.367954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619907, 39.946236, 10.386682>,  <32.221130, 39.944519, 10.417894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619907, 39.946236, 10.386682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075596, 0.306116, -0.948988,
		0.019813, 0.951985, 0.305504,
		0.996942, 0.004292, -0.078031,
		32.918991, 39.947525, 10.363272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389328, 40.499012, 9.994167>,  <32.221130, 39.944519, 10.417894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389328, 40.499012, 9.994167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710384, 40.260761, 9.981510>,  <32.903019, 40.117813, 9.973916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710384, 40.260761, 9.981510>,  <32.389328, 40.499012, 9.994167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710384, 40.260761, 9.981510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013517, 0.034873, -0.999300,
		0.596312, 0.802505, 0.019939,
		0.802639, -0.595625, -0.031643,
		32.951176, 40.082073, 9.972017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847054, 40.697254, 9.489691>,  <32.389328, 40.499012, 9.994167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847054, 40.697254, 9.489691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883972, 40.299179, 9.502812>,  <32.906124, 40.060333, 9.510685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883972, 40.299179, 9.502812>,  <32.847054, 40.697254, 9.489691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883972, 40.299179, 9.502812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050546, -0.028219, -0.998323,
		0.994448, 0.093797, 0.047698,
		0.092293, -0.995191, 0.032804,
		32.911659, 40.000622, 9.512653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438557, 40.520096, 9.182152>,  <32.847054, 40.697254, 9.489691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438557, 40.520096, 9.182152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196465, 40.201809, 9.172954>,  <33.051208, 40.010838, 9.167435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196465, 40.201809, 9.172954>,  <33.438557, 40.520096, 9.182152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196465, 40.201809, 9.172954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067119, -0.022224, -0.997497,
		0.793216, -0.605259, 0.066858,
		-0.605230, -0.795719, -0.022996,
		33.014896, 39.963093, 9.166055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644264, 41.175316, 8.977054>,  <33.438557, 40.520096, 9.182152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644264, 41.175316, 8.977054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726429, 41.359612, 9.322430>,  <33.775730, 41.470188, 9.529655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726429, 41.359612, 9.322430>,  <33.644264, 41.175316, 8.977054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726429, 41.359612, 9.322430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057307, 0.875077, -0.480579,
		-0.976996, 0.148199, 0.153350,
		0.205414, 0.460736, 0.863439,
		33.788052, 41.497833, 9.581462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144875, 41.809029, 9.252012>,  <33.644264, 41.175316, 8.977054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144875, 41.809029, 9.252012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529171, 41.851273, 9.354631>,  <33.759750, 41.876617, 9.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529171, 41.851273, 9.354631>,  <33.144875, 41.809029, 9.252012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529171, 41.851273, 9.354631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009139, 0.912167, -0.409718,
		-0.277285, 0.395979, 0.875394,
		0.960744, 0.105608, 0.256549,
		33.817394, 41.882954, 9.431596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258530, 42.372581, 9.717387>,  <33.144875, 41.809029, 9.252012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258530, 42.372581, 9.717387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548779, 42.310413, 9.449264>,  <33.722927, 42.273113, 9.288389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548779, 42.310413, 9.449264>,  <33.258530, 42.372581, 9.717387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548779, 42.310413, 9.449264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092284, 0.943375, -0.318633,
		0.681874, 0.293067, 0.670194,
		0.725625, -0.155419, -0.670308,
		33.766464, 42.263786, 9.248171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287651, 42.279633, 10.407993>,  <33.258530, 42.372581, 9.717387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287651, 42.279633, 10.407993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007416, 42.001709, 10.473001>,  <32.839275, 41.834953, 10.512005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007416, 42.001709, 10.473001>,  <33.287651, 42.279633, 10.407993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007416, 42.001709, 10.473001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201887, 0.411457, 0.888788,
		-0.684409, 0.589866, -0.428536,
		-0.700590, -0.694810, 0.162518,
		32.797237, 41.793266, 10.521756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708260, 42.621819, 10.538072>,  <33.287651, 42.279633, 10.407993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708260, 42.621819, 10.538072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710491, 42.261299, 10.711340>,  <32.711830, 42.044987, 10.815301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710491, 42.261299, 10.711340>,  <32.708260, 42.621819, 10.538072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710491, 42.261299, 10.711340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335119, 0.406444, 0.849999,
		-0.942159, -0.149903, -0.299775,
		0.005575, -0.901295, 0.433170,
		32.712162, 41.990910, 10.841291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638435, 42.606396, 11.351830>,  <32.708260, 42.621819, 10.538072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638435, 42.606396, 11.351830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565033, 42.217480, 11.293893>,  <32.520992, 41.984131, 11.259131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565033, 42.217480, 11.293893>,  <32.638435, 42.606396, 11.351830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565033, 42.217480, 11.293893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186957, -0.110135, 0.976175,
		-0.965077, 0.206209, -0.161566,
		-0.183502, -0.972290, -0.144841,
		32.509983, 41.925793, 11.250441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004757, 42.488003, 11.550335>,  <32.638435, 42.606396, 11.351830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004757, 42.488003, 11.550335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217381, 42.153076, 11.601489>,  <32.344955, 41.952122, 11.632181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217381, 42.153076, 11.601489>,  <32.004757, 42.488003, 11.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217381, 42.153076, 11.601489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148454, 0.056548, 0.987301,
		-0.833911, -0.543792, -0.094244,
		0.531558, -0.837312, 0.127884,
		32.376846, 41.901882, 11.639854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734156, 42.015366, 11.968013>,  <32.004757, 42.488003, 11.550335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734156, 42.015366, 11.968013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120789, 41.918613, 12.001984>,  <32.352768, 41.860561, 12.022367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120789, 41.918613, 12.001984>,  <31.734156, 42.015366, 11.968013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120789, 41.918613, 12.001984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076938, 0.042307, 0.996138,
		-0.244537, -0.969384, 0.022284,
		0.966583, -0.241878, 0.084928,
		32.410763, 41.846050, 12.027462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780638, 41.410496, 12.392791>,  <31.734156, 42.015366, 11.968013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780638, 41.410496, 12.392791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129395, 41.604382, 12.420655>,  <32.338650, 41.720715, 12.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129395, 41.604382, 12.420655>,  <31.780638, 41.410496, 12.392791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129395, 41.604382, 12.420655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005037, -0.151121, 0.988502,
		0.489672, -0.861516, -0.134203,
		0.871892, 0.484718, 0.069660,
		32.390961, 41.749798, 12.441553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345192, 41.019230, 12.878910>,  <31.780638, 41.410496, 12.392791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345192, 41.019230, 12.878910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469807, 41.399036, 12.893715>,  <32.544575, 41.626919, 12.902597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469807, 41.399036, 12.893715>,  <32.345192, 41.019230, 12.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469807, 41.399036, 12.893715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268446, -0.125308, 0.955110,
		0.911527, -0.287617, -0.293931,
		0.311538, 0.949513, 0.037012,
		32.563267, 41.683891, 12.904819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903633, 41.037796, 13.240573>,  <32.345192, 41.019230, 12.878910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903633, 41.037796, 13.240573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854359, 41.434685, 13.247691>,  <32.824795, 41.672817, 13.251962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854359, 41.434685, 13.247691>,  <32.903633, 41.037796, 13.240573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854359, 41.434685, 13.247691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303279, 0.020567, 0.952680,
		0.944906, 0.122752, -0.303455,
		-0.123185, 0.992224, 0.017795,
		32.817402, 41.732353, 13.253030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579491, 41.351448, 13.472893>,  <32.903633, 41.037796, 13.240573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579491, 41.351448, 13.472893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294899, 41.623669, 13.542916>,  <33.124142, 41.786999, 13.584930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294899, 41.623669, 13.542916>,  <33.579491, 41.351448, 13.472893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294899, 41.623669, 13.542916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253697, 0.016448, 0.967144,
		0.655309, 0.732518, -0.184355,
		-0.711483, 0.680548, 0.175059,
		33.081455, 41.827835, 13.595434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895134, 41.989174, 13.861506>,  <33.579491, 41.351448, 13.472893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895134, 41.989174, 13.861506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503094, 41.982910, 13.940664>,  <33.267872, 41.979153, 13.988159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503094, 41.982910, 13.940664>,  <33.895134, 41.989174, 13.861506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503094, 41.982910, 13.940664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191668, 0.184865, 0.963892,
		-0.051677, 0.982639, -0.178184,
		-0.980098, -0.015659, 0.197893,
		33.209064, 41.978214, 14.000032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898472, 42.414452, 14.479406>,  <33.895134, 41.989174, 13.861506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898472, 42.414452, 14.479406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531410, 42.255764, 14.470276>,  <33.311172, 42.160549, 14.464797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531410, 42.255764, 14.470276>,  <33.898472, 42.414452, 14.479406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531410, 42.255764, 14.470276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060498, -0.196249, 0.978686,
		-0.392747, 0.896715, 0.204090,
		-0.917654, -0.396723, -0.022827,
		33.256115, 42.136745, 14.463428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472176, 42.758896, 14.925540>,  <33.898472, 42.414452, 14.479406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472176, 42.758896, 14.925540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233746, 42.438801, 14.899257>,  <33.090687, 42.246746, 14.883487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233746, 42.438801, 14.899257>,  <33.472176, 42.758896, 14.925540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233746, 42.438801, 14.899257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075450, -0.025649, 0.996820,
		-0.799376, 0.599137, -0.045090,
		-0.596075, -0.800235, -0.065708,
		33.054924, 42.198730, 14.879544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050243, 42.905312, 15.465193>,  <33.472176, 42.758896, 14.925540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050243, 42.905312, 15.465193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985775, 42.520737, 15.376054>,  <32.947094, 42.289993, 15.322571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985775, 42.520737, 15.376054>,  <33.050243, 42.905312, 15.465193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985775, 42.520737, 15.376054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060935, -0.215674, 0.974562,
		-0.985043, 0.170652, -0.023825,
		-0.161173, -0.961438, -0.222847,
		32.937424, 42.232304, 15.309199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598766, 42.626617, 15.973090>,  <33.050243, 42.905312, 15.465193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598766, 42.626617, 15.973090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772461, 42.297028, 15.827487>,  <32.876678, 42.099274, 15.740126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772461, 42.297028, 15.827487>,  <32.598766, 42.626617, 15.973090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772461, 42.297028, 15.827487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128159, -0.343472, 0.930378,
		-0.891637, -0.450651, -0.043546,
		0.434233, -0.823978, -0.364007,
		32.902729, 42.049835, 15.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222908, 42.123497, 16.238802>,  <32.598766, 42.626617, 15.973090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222908, 42.123497, 16.238802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568859, 41.938255, 16.161320>,  <32.776428, 41.827110, 16.114830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568859, 41.938255, 16.161320>,  <32.222908, 42.123497, 16.238802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568859, 41.938255, 16.161320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014173, -0.363199, 0.931604,
		-0.501788, -0.808466, -0.307558,
		0.864875, -0.463108, -0.193707,
		32.828323, 41.799324, 16.103209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160603, 41.436104, 16.419125>,  <32.222908, 42.123497, 16.238802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160603, 41.436104, 16.419125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557373, 41.478752, 16.391674>,  <32.795437, 41.504341, 16.375204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557373, 41.478752, 16.391674>,  <32.160603, 41.436104, 16.419125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557373, 41.478752, 16.391674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096562, -0.284439, 0.953819,
		0.082176, -0.952747, -0.292439,
		0.991929, 0.106620, -0.068625,
		32.854950, 41.510738, 16.371086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485214, 40.770073, 16.445189>,  <32.160603, 41.436104, 16.419125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485214, 40.770073, 16.445189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741989, 41.046921, 16.577183>,  <32.896053, 41.213028, 16.656380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741989, 41.046921, 16.577183>,  <32.485214, 40.770073, 16.445189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741989, 41.046921, 16.577183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015110, -0.441703, 0.897034,
		0.766607, -0.570855, -0.294004,
		0.641939, 0.692115, 0.329987,
		32.934570, 41.254555, 16.676178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695736, 40.532021, 17.002914>,  <32.485214, 40.770073, 16.445189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695736, 40.532021, 17.002914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879498, 40.880775, 17.070747>,  <32.989754, 41.090031, 17.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879498, 40.880775, 17.070747>,  <32.695736, 40.532021, 17.002914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879498, 40.880775, 17.070747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144717, -0.261841, 0.954199,
		0.876361, -0.413818, -0.246467,
		0.459400, 0.871891, 0.169581,
		33.017319, 41.142342, 17.121622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186928, 40.244095, 17.420004>,  <32.695736, 40.532021, 17.002914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186928, 40.244095, 17.420004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098080, 40.631763, 17.462646>,  <33.044773, 40.864365, 17.488232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098080, 40.631763, 17.462646>,  <33.186928, 40.244095, 17.420004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098080, 40.631763, 17.462646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033376, -0.101716, 0.994254,
		0.974448, 0.224400, -0.009754,
		-0.222118, 0.969174, 0.106606,
		33.031445, 40.922516, 17.494629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482647, 40.359276, 18.019844>,  <33.186928, 40.244095, 17.420004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482647, 40.359276, 18.019844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244389, 40.676991, 17.971972>,  <33.101433, 40.867619, 17.943249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244389, 40.676991, 17.971972>,  <33.482647, 40.359276, 18.019844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244389, 40.676991, 17.971972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164407, 0.025288, 0.986068,
		0.786243, 0.607022, 0.115524,
		-0.595644, 0.794283, -0.119681,
		33.065697, 40.915276, 17.936068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673344, 40.897099, 18.494217>,  <33.482647, 40.359276, 18.019844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673344, 40.897099, 18.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295860, 40.993652, 18.403748>,  <33.069370, 41.051586, 18.349466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295860, 40.993652, 18.403748>,  <33.673344, 40.897099, 18.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295860, 40.993652, 18.403748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249205, -0.069169, 0.965977,
		0.217526, 0.967962, 0.125429,
		-0.943705, 0.241383, -0.226175,
		33.012749, 41.066067, 18.335896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561920, 41.444305, 18.882637>,  <33.673344, 40.897099, 18.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561920, 41.444305, 18.882637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190460, 41.328938, 18.789320>,  <32.967587, 41.259716, 18.733330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190460, 41.328938, 18.789320>,  <33.561920, 41.444305, 18.882637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190460, 41.328938, 18.789320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259402, 0.055319, 0.964184,
		-0.265187, 0.955904, -0.126190,
		-0.928648, -0.288422, -0.233293,
		32.911865, 41.242413, 18.719332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054779, 41.961655, 19.247200>,  <33.561920, 41.444305, 18.882637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054779, 41.961655, 19.247200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867573, 41.618507, 19.162325>,  <32.755249, 41.412621, 19.111401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867573, 41.618507, 19.162325>,  <33.054779, 41.961655, 19.247200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867573, 41.618507, 19.162325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360475, -0.033899, 0.932153,
		-0.806855, 0.512754, -0.293374,
		-0.468020, -0.857866, -0.212187,
		32.727165, 41.361149, 19.098669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481129, 42.026318, 19.564146>,  <33.054779, 41.961655, 19.247200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481129, 42.026318, 19.564146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515057, 41.632652, 19.501877>,  <32.535412, 41.396454, 19.464516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515057, 41.632652, 19.501877>,  <32.481129, 42.026318, 19.564146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515057, 41.632652, 19.501877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339067, -0.175420, 0.924263,
		-0.936931, -0.025614, -0.348575,
		0.084821, -0.984160, -0.155672,
		32.540504, 41.337402, 19.455175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799086, 41.812893, 19.741379>,  <32.481129, 42.026318, 19.564146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799086, 41.812893, 19.741379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035038, 41.491276, 19.771173>,  <32.176609, 41.298306, 19.789051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035038, 41.491276, 19.771173>,  <31.799086, 41.812893, 19.741379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035038, 41.491276, 19.771173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372639, -0.189222, 0.908480,
		-0.716366, -0.563652, -0.411237,
		0.589882, -0.804047, 0.074487,
		32.212002, 41.250061, 19.793520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408918, 41.382767, 20.068657>,  <31.799086, 41.812893, 19.741379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408918, 41.382767, 20.068657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774555, 41.228333, 20.118250>,  <31.993937, 41.135674, 20.148006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774555, 41.228333, 20.118250>,  <31.408918, 41.382767, 20.068657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774555, 41.228333, 20.118250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232841, -0.249412, 0.939989,
		-0.331998, -0.888103, -0.317883,
		0.914091, -0.386091, 0.123983,
		32.048782, 41.112507, 20.155445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319269, 40.729183, 20.532589>,  <31.408918, 41.382767, 20.068657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319269, 40.729183, 20.532589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716856, 40.769661, 20.549488>,  <31.955408, 40.793949, 20.559628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716856, 40.769661, 20.549488>,  <31.319269, 40.729183, 20.532589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716856, 40.769661, 20.549488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002955, -0.360382, 0.932800,
		0.109624, -0.927299, -0.357909,
		0.993969, 0.101200, 0.042247,
		32.015045, 40.800022, 20.562162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620287, 40.129246, 20.786057>,  <31.319269, 40.729183, 20.532589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620287, 40.129246, 20.786057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886467, 40.413761, 20.876598>,  <32.046177, 40.584473, 20.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886467, 40.413761, 20.876598>,  <31.620287, 40.129246, 20.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886467, 40.413761, 20.876598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010253, -0.311928, 0.950050,
		0.746370, -0.629892, -0.214866,
		0.665452, 0.711292, 0.226356,
		32.086102, 40.627148, 20.944506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183662, 39.767498, 21.131205>,  <31.620287, 40.129246, 20.786057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183662, 39.767498, 21.131205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185345, 40.155506, 21.228405>,  <32.186352, 40.388309, 21.286726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185345, 40.155506, 21.228405>,  <32.183662, 39.767498, 21.131205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185345, 40.155506, 21.228405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197836, -0.239009, 0.950650,
		0.980226, 0.044078, -0.192909,
		0.004204, 0.970016, 0.243003,
		32.186607, 40.446510, 21.301306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838593, 39.949646, 21.400404>,  <32.183662, 39.767498, 21.131205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838593, 39.949646, 21.400404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641136, 40.275745, 21.521524>,  <32.522663, 40.471405, 21.594196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641136, 40.275745, 21.521524>,  <32.838593, 39.949646, 21.400404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641136, 40.275745, 21.521524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401928, -0.094900, 0.910740,
		0.771216, 0.571282, -0.280825,
		-0.493639, 0.815249, 0.302802,
		32.493046, 40.520321, 21.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368549, 40.417683, 21.784750>,  <32.838593, 39.949646, 21.400404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368549, 40.417683, 21.784750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995441, 40.482265, 21.913666>,  <32.771576, 40.521015, 21.991014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995441, 40.482265, 21.913666>,  <33.368549, 40.417683, 21.784750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995441, 40.482265, 21.913666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303481, -0.130735, 0.943826,
		0.194520, 0.978182, 0.072948,
		-0.932771, 0.161455, 0.322290,
		32.715611, 40.530701, 22.010353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378815, 40.615116, 22.458164>,  <33.368549, 40.417683, 21.784750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378815, 40.615116, 22.458164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986195, 40.538784, 22.463024>,  <32.750622, 40.492985, 22.465940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986195, 40.538784, 22.463024>,  <33.378815, 40.615116, 22.458164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986195, 40.538784, 22.463024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008534, 0.019762, 0.999768,
		-0.191030, 0.981423, -0.017768,
		-0.981547, -0.190834, 0.012151,
		32.691730, 40.481533, 22.466669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121849, 40.988617, 23.052713>,  <33.378815, 40.615116, 22.458164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121849, 40.988617, 23.052713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823166, 40.735985, 22.969254>,  <32.643955, 40.584404, 22.919178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823166, 40.735985, 22.969254>,  <33.121849, 40.988617, 23.052713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823166, 40.735985, 22.969254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196860, -0.089789, 0.976312,
		-0.635357, 0.770091, -0.057288,
		-0.746705, -0.631584, -0.208648,
		32.599155, 40.546509, 22.906660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532196, 41.202599, 23.477570>,  <33.121849, 40.988617, 23.052713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532196, 41.202599, 23.477570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497784, 40.814762, 23.385931>,  <32.477139, 40.582058, 23.330948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497784, 40.814762, 23.385931>,  <32.532196, 41.202599, 23.477570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497784, 40.814762, 23.385931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418762, -0.173461, 0.891375,
		-0.904012, 0.172620, -0.391107,
		-0.086027, -0.969595, -0.229097,
		32.471977, 40.523884, 23.317202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969431, 40.921932, 23.830685>,  <32.532196, 41.202599, 23.477570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969431, 40.921932, 23.830685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174412, 40.584385, 23.767082>,  <32.297401, 40.381855, 23.728922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174412, 40.584385, 23.767082>,  <31.969431, 40.921932, 23.830685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174412, 40.584385, 23.767082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423917, -0.409633, 0.807772,
		-0.746786, -0.346537, -0.567646,
		0.512449, -0.843868, -0.159005,
		32.328148, 40.331226, 23.719381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573732, 40.425240, 24.098743>,  <31.969431, 40.921932, 23.830685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573732, 40.425240, 24.098743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907822, 40.205276, 24.098534>,  <32.108276, 40.073299, 24.098408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907822, 40.205276, 24.098534>,  <31.573732, 40.425240, 24.098743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907822, 40.205276, 24.098534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319290, -0.485728, 0.813709,
		-0.447716, -0.679465, -0.581272,
		0.835227, -0.549905, -0.000522,
		32.158390, 40.040302, 24.098375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293648, 39.758915, 24.055239>,  <31.573732, 40.425240, 24.098743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293648, 39.758915, 24.055239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668352, 39.721592, 24.190161>,  <31.893175, 39.699200, 24.271114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668352, 39.721592, 24.190161>,  <31.293648, 39.758915, 24.055239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668352, 39.721592, 24.190161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339854, -0.472626, 0.813095,
		0.083552, -0.876310, -0.474448,
		0.936760, -0.093307, 0.337306,
		31.949381, 39.693600, 24.291353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410183, 39.024517, 24.108562>,  <31.293648, 39.758915, 24.055239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410183, 39.024517, 24.108562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686001, 39.164200, 24.362362>,  <31.851492, 39.248009, 24.514641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686001, 39.164200, 24.362362>,  <31.410183, 39.024517, 24.108562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686001, 39.164200, 24.362362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308855, -0.650641, 0.693740,
		0.655088, -0.674331, -0.340791,
		0.689542, 0.349205, 0.634497,
		31.892864, 39.268963, 24.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746674, 38.452763, 24.459448>,  <31.410183, 39.024517, 24.108562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746674, 38.452763, 24.459448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824697, 38.766819, 24.694567>,  <31.871511, 38.955254, 24.835638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824697, 38.766819, 24.694567>,  <31.746674, 38.452763, 24.459448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824697, 38.766819, 24.694567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119431, -0.575837, 0.808794,
		0.973493, -0.227964, -0.018552,
		0.195059, 0.785139, 0.587799,
		31.883215, 39.002361, 24.870907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165073, 38.153145, 24.956324>,  <31.746674, 38.452763, 24.459448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165073, 38.153145, 24.956324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120274, 38.514931, 25.120956>,  <32.093395, 38.732002, 25.219736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120274, 38.514931, 25.120956>,  <32.165073, 38.153145, 24.956324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120274, 38.514931, 25.120956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033434, -0.410522, 0.911238,
		0.993146, 0.115816, 0.015737,
		-0.111997, 0.904466, 0.411580,
		32.086674, 38.786270, 25.244431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714771, 38.267208, 25.423574>,  <32.165073, 38.153145, 24.956324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714771, 38.267208, 25.423574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413273, 38.506004, 25.533459>,  <32.232372, 38.649281, 25.599390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413273, 38.506004, 25.533459>,  <32.714771, 38.267208, 25.423574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413273, 38.506004, 25.533459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069713, -0.343029, 0.936734,
		0.653453, 0.725214, 0.216940,
		-0.753750, 0.596988, 0.274711,
		32.187149, 38.685101, 25.615871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983707, 38.686844, 26.054604>,  <32.714771, 38.267208, 25.423574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983707, 38.686844, 26.054604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584328, 38.682461, 26.076416>,  <32.344700, 38.679832, 26.089502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584328, 38.682461, 26.076416>,  <32.983707, 38.686844, 26.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584328, 38.682461, 26.076416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054644, -0.376054, 0.924985,
		0.010371, 0.926533, 0.376070,
		-0.998452, -0.010957, 0.054530,
		32.284794, 38.679173, 26.092775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756409, 38.901073, 26.134476>,  <32.983707, 38.686844, 26.054604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756409, 38.901073, 26.134476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966911, 39.098431, 26.411491>,  <34.093212, 39.216846, 26.577702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966911, 39.098431, 26.411491>,  <33.756409, 38.901073, 26.134476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966911, 39.098431, 26.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424512, 0.553241, -0.716739,
		-0.736778, 0.671181, 0.081695,
		0.526258, 0.493397, 0.692540,
		34.124790, 39.246449, 26.619253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642216, 39.564495, 25.959368>,  <33.756409, 38.901073, 26.134476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642216, 39.564495, 25.959368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990654, 39.543404, 26.154678>,  <34.199718, 39.530750, 26.271864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990654, 39.543404, 26.154678>,  <33.642216, 39.564495, 25.959368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990654, 39.543404, 26.154678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425462, 0.577626, -0.696656,
		-0.245308, 0.814597, 0.525601,
		0.871095, -0.052728, 0.488276,
		34.251984, 39.527584, 26.301161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986320, 40.247177, 26.080452>,  <33.642216, 39.564495, 25.959368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986320, 40.247177, 26.080452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282639, 39.978813, 26.093685>,  <34.460430, 39.817795, 26.101625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282639, 39.978813, 26.093685>,  <33.986320, 40.247177, 26.080452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282639, 39.978813, 26.093685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466156, 0.478008, -0.744451,
		0.483648, 0.566910, 0.666857,
		0.740800, -0.670911, 0.033081,
		34.504879, 39.777538, 26.103609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631256, 40.617558, 26.187769>,  <33.986320, 40.247177, 26.080452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631256, 40.617558, 26.187769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704979, 40.274902, 25.995024>,  <34.749214, 40.069309, 25.879375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704979, 40.274902, 25.995024>,  <34.631256, 40.617558, 26.187769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704979, 40.274902, 25.995024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431682, 0.511000, -0.743323,
		0.882995, -0.071011, 0.463979,
		0.184310, -0.856643, -0.481865,
		34.760273, 40.017910, 25.850464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378170, 40.712025, 25.866255>,  <34.631256, 40.617558, 26.187769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378170, 40.712025, 25.866255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179195, 40.428082, 25.666794>,  <35.059811, 40.257713, 25.547117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179195, 40.428082, 25.666794>,  <35.378170, 40.712025, 25.866255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179195, 40.428082, 25.666794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238530, 0.440739, -0.865363,
		0.834064, -0.549405, -0.049915,
		-0.497434, -0.709861, -0.498654,
		35.029964, 40.215122, 25.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827591, 40.506660, 25.347664>,  <35.378170, 40.712025, 25.866255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827591, 40.506660, 25.347664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475319, 40.371895, 25.214464>,  <35.263954, 40.291035, 25.134544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475319, 40.371895, 25.214464>,  <35.827591, 40.506660, 25.347664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475319, 40.371895, 25.214464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166342, 0.438249, -0.883328,
		0.443579, -0.833309, -0.329901,
		-0.880664, -0.336949, -0.333012,
		35.211113, 40.270821, 25.114565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912563, 40.107208, 24.684845>,  <35.827591, 40.506660, 25.347664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912563, 40.107208, 24.684845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519737, 40.172226, 24.646645>,  <35.284042, 40.211235, 24.623724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519737, 40.172226, 24.646645>,  <35.912563, 40.107208, 24.684845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519737, 40.172226, 24.646645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142257, 0.306537, -0.941168,
		-0.123704, -0.937878, -0.324163,
		-0.982069, 0.162541, -0.095500,
		35.225117, 40.220989, 24.617994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695480, 39.752880, 24.090254>,  <35.912563, 40.107208, 24.684845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695480, 39.752880, 24.090254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423622, 40.037727, 24.160658>,  <35.260509, 40.208633, 24.202900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423622, 40.037727, 24.160658>,  <35.695480, 39.752880, 24.090254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423622, 40.037727, 24.160658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053924, 0.287796, -0.956172,
		-0.731559, -0.640364, -0.233999,
		-0.679642, 0.712114, 0.176009,
		35.219730, 40.251362, 24.213461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162731, 39.485649, 23.692055>,  <35.695480, 39.752880, 24.090254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162731, 39.485649, 23.692055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125504, 39.879993, 23.747793>,  <35.103168, 40.116600, 23.781237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125504, 39.879993, 23.747793>,  <35.162731, 39.485649, 23.692055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125504, 39.879993, 23.747793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000394, 0.139989, -0.990153,
		-0.995660, -0.092095, -0.013417,
		-0.093067, 0.985861, 0.139345,
		35.097584, 40.175751, 23.789597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718235, 39.750698, 23.284945>,  <35.162731, 39.485649, 23.692055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718235, 39.750698, 23.284945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899284, 40.098373, 23.364592>,  <35.007915, 40.306976, 23.412380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899284, 40.098373, 23.364592>,  <34.718235, 39.750698, 23.284945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899284, 40.098373, 23.364592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028236, 0.237158, -0.971061,
		-0.891252, 0.433907, 0.131886,
		0.452628, 0.869184, 0.199116,
		35.035072, 40.359127, 23.424326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403473, 40.303249, 22.851843>,  <34.718235, 39.750698, 23.284945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403473, 40.303249, 22.851843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758915, 40.458988, 22.948824>,  <34.972179, 40.552433, 23.007013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758915, 40.458988, 22.948824>,  <34.403473, 40.303249, 22.851843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758915, 40.458988, 22.948824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080945, 0.387188, -0.918441,
		-0.451472, 0.835757, 0.312542,
		0.888606, 0.389352, 0.242455,
		35.025497, 40.575794, 23.021561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381306, 40.950375, 22.587141>,  <34.403473, 40.303249, 22.851843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381306, 40.950375, 22.587141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775379, 40.889172, 22.618137>,  <35.011822, 40.852451, 22.636736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775379, 40.889172, 22.618137>,  <34.381306, 40.950375, 22.587141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775379, 40.889172, 22.618137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152742, 0.577201, -0.802190,
		0.078015, 0.802139, 0.592019,
		0.985182, -0.153009, 0.077491,
		35.070934, 40.843269, 22.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722752, 41.610092, 22.484917>,  <34.381306, 40.950375, 22.587141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722752, 41.610092, 22.484917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000233, 41.332390, 22.408192>,  <35.166721, 41.165768, 22.362158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000233, 41.332390, 22.408192>,  <34.722752, 41.610092, 22.484917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000233, 41.332390, 22.408192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172689, 0.418855, -0.891482,
		0.699254, 0.585299, 0.410450,
		0.693702, -0.694252, -0.191811,
		35.208344, 41.124115, 22.350649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270000, 42.010078, 22.233974>,  <34.722752, 41.610092, 22.484917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270000, 42.010078, 22.233974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351357, 41.633476, 22.126492>,  <35.400169, 41.407516, 22.062002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351357, 41.633476, 22.126492>,  <35.270000, 42.010078, 22.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351357, 41.633476, 22.126492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053156, 0.284656, -0.957155,
		0.977654, 0.180392, 0.107943,
		0.203390, -0.941504, -0.268706,
		35.412373, 41.351025, 22.045879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710899, 42.132862, 21.705151>,  <35.270000, 42.010078, 22.233974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710899, 42.132862, 21.705151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588974, 41.755554, 21.652485>,  <35.515820, 41.529171, 21.620886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588974, 41.755554, 21.652485>,  <35.710899, 42.132862, 21.705151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588974, 41.755554, 21.652485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053578, 0.155008, -0.986459,
		0.950903, -0.293633, -0.097788,
		-0.304815, -0.943267, -0.131666,
		35.497528, 41.472572, 21.612986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132595, 41.893341, 21.163589>,  <35.710899, 42.132862, 21.705151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132595, 41.893341, 21.163589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818302, 41.646027, 21.171068>,  <35.629726, 41.497639, 21.175554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818302, 41.646027, 21.171068>,  <36.132595, 41.893341, 21.163589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818302, 41.646027, 21.171068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132567, 0.138795, -0.981408,
		0.604193, -0.773603, -0.191019,
		-0.785733, -0.618283, 0.018695,
		35.582581, 41.460541, 21.176676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268517, 41.409725, 20.598562>,  <36.132595, 41.893341, 21.163589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268517, 41.409725, 20.598562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877113, 41.379070, 20.675137>,  <35.642273, 41.360680, 20.721081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877113, 41.379070, 20.675137>,  <36.268517, 41.409725, 20.598562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877113, 41.379070, 20.675137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203078, 0.197031, -0.959134,
		0.035784, -0.977398, -0.208359,
		-0.978509, -0.076635, 0.191438,
		35.583561, 41.356079, 20.732569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874935, 40.796402, 20.222967>,  <36.268517, 41.409725, 20.598562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874935, 40.796402, 20.222967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622097, 41.093147, 20.312490>,  <35.470394, 41.271194, 20.366205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622097, 41.093147, 20.312490>,  <35.874935, 40.796402, 20.222967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622097, 41.093147, 20.312490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154345, 0.162501, -0.974562,
		-0.759361, -0.650563, 0.011786,
		-0.632099, 0.741863, 0.223808,
		35.432468, 41.315704, 20.379633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425766, 40.803413, 19.659101>,  <35.874935, 40.796402, 20.222967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425766, 40.803413, 19.659101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291878, 41.143192, 19.822271>,  <35.211544, 41.347057, 19.920174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291878, 41.143192, 19.822271>,  <35.425766, 40.803413, 19.659101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291878, 41.143192, 19.822271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218199, 0.351263, -0.910496,
		-0.916706, -0.393774, 0.067771,
		-0.334724, 0.849445, 0.407926,
		35.191460, 41.398026, 19.944649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826454, 41.035492, 19.211950>,  <35.425766, 40.803413, 19.659101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826454, 41.035492, 19.211950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954880, 41.354836, 19.415733>,  <35.031937, 41.546440, 19.538004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954880, 41.354836, 19.415733>,  <34.826454, 41.035492, 19.211950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954880, 41.354836, 19.415733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053619, 0.552398, -0.831854,
		-0.945538, 0.239764, 0.220163,
		0.321067, 0.798354, 0.509457,
		35.051201, 41.594341, 19.568571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303493, 41.550137, 19.045071>,  <34.826454, 41.035492, 19.211950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303493, 41.550137, 19.045071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654335, 41.709991, 19.151634>,  <34.864841, 41.805904, 19.215572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654335, 41.709991, 19.151634>,  <34.303493, 41.550137, 19.045071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654335, 41.709991, 19.151634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022332, 0.588012, -0.808544,
		-0.479773, 0.703231, 0.524674,
		0.877108, 0.399635, 0.266408,
		34.917469, 41.829884, 19.231556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165787, 42.266827, 18.732401>,  <34.303493, 41.550137, 19.045071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165787, 42.266827, 18.732401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560825, 42.248894, 18.792593>,  <34.797848, 42.238136, 18.828709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560825, 42.248894, 18.792593>,  <34.165787, 42.266827, 18.732401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560825, 42.248894, 18.792593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154897, 0.435049, -0.886984,
		-0.025705, 0.899290, 0.436596,
		0.987596, -0.044828, 0.150480,
		34.857105, 42.235447, 18.837736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493099, 42.919647, 18.520306>,  <34.165787, 42.266827, 18.732401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493099, 42.919647, 18.520306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774818, 42.636566, 18.497950>,  <34.943851, 42.466717, 18.484535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774818, 42.636566, 18.497950>,  <34.493099, 42.919647, 18.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774818, 42.636566, 18.497950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279634, 0.348929, -0.894457,
		0.652511, 0.614334, 0.443647,
		0.704297, -0.707702, -0.055891,
		34.986107, 42.424255, 18.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016830, 43.357513, 18.178984>,  <34.493099, 42.919647, 18.520306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016830, 43.357513, 18.178984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136314, 42.975956, 18.167223>,  <35.208004, 42.747021, 18.160166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136314, 42.975956, 18.167223>,  <35.016830, 43.357513, 18.178984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136314, 42.975956, 18.167223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419450, 0.158903, -0.893763,
		0.857224, 0.254646, 0.447575,
		0.298714, -0.953890, -0.029404,
		35.225929, 42.689789, 18.158401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667469, 43.413391, 17.835476>,  <35.016830, 43.357513, 18.178984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667469, 43.413391, 17.835476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545311, 43.034145, 17.800121>,  <35.472015, 42.806599, 17.778910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545311, 43.034145, 17.800121>,  <35.667469, 43.413391, 17.835476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545311, 43.034145, 17.800121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364626, -0.030693, -0.930648,
		0.879648, -0.316443, 0.355081,
		-0.305396, -0.948115, -0.088384,
		35.453693, 42.749710, 17.773605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191769, 43.135326, 17.474682>,  <35.667469, 43.413391, 17.835476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191769, 43.135326, 17.474682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888176, 42.884304, 17.405266>,  <35.706020, 42.733688, 17.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888176, 42.884304, 17.405266>,  <36.191769, 43.135326, 17.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888176, 42.884304, 17.405266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257691, -0.044754, -0.965190,
		0.597948, -0.777281, 0.195684,
		-0.758981, -0.627560, -0.173538,
		35.660480, 42.696037, 17.353205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473358, 42.706608, 17.065052>,  <36.191769, 43.135326, 17.474682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473358, 42.706608, 17.065052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079830, 42.666054, 17.005962>,  <35.843712, 42.641724, 16.970509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079830, 42.666054, 17.005962>,  <36.473358, 42.706608, 17.065052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079830, 42.666054, 17.005962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151102, -0.026438, -0.988164,
		0.096278, -0.994496, 0.041330,
		-0.983818, -0.101383, -0.147725,
		35.784683, 42.635639, 16.961645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579678, 42.281887, 16.504068>,  <36.473358, 42.706608, 17.065052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579678, 42.281887, 16.504068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202057, 42.413456, 16.513741>,  <35.975487, 42.492397, 16.519545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202057, 42.413456, 16.513741>,  <36.579678, 42.281887, 16.504068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202057, 42.413456, 16.513741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043330, -0.051009, -0.997758,
		-0.326950, -0.942979, 0.062407,
		-0.944048, 0.328920, 0.024182,
		35.918842, 42.512131, 16.520996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160984, 41.807690, 16.073208>,  <36.579678, 42.281887, 16.504068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160984, 41.807690, 16.073208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938816, 42.138798, 16.104961>,  <35.805515, 42.337463, 16.124014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938816, 42.138798, 16.104961>,  <36.160984, 41.807690, 16.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938816, 42.138798, 16.104961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278710, -0.095366, -0.955629,
		-0.783474, -0.552898, 0.283677,
		-0.555418, 0.827774, 0.079382,
		35.772190, 42.387131, 16.128777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467457, 41.645008, 15.778977>,  <36.160984, 41.807690, 16.073208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467457, 41.645008, 15.778977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527981, 42.039738, 15.756087>,  <35.564297, 42.276577, 15.742353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527981, 42.039738, 15.756087>,  <35.467457, 41.645008, 15.778977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527981, 42.039738, 15.756087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100305, -0.042264, -0.994059,
		-0.983384, 0.156153, 0.092589,
		0.151312, 0.986828, -0.057225,
		35.573376, 42.335785, 15.738920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962036, 41.863338, 15.314018>,  <35.467457, 41.645008, 15.778977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962036, 41.863338, 15.314018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205681, 42.180141, 15.330576>,  <35.351868, 42.370224, 15.340510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205681, 42.180141, 15.330576>,  <34.962036, 41.863338, 15.314018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205681, 42.180141, 15.330576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030257, 0.075364, -0.996697,
		-0.792506, 0.605848, 0.069869,
		0.609112, 0.792003, 0.041395,
		35.388416, 42.417744, 15.342995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666225, 42.360752, 14.923556>,  <34.962036, 41.863338, 15.314018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666225, 42.360752, 14.923556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046047, 42.485901, 14.914938>,  <35.273941, 42.560989, 14.909767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046047, 42.485901, 14.914938>,  <34.666225, 42.360752, 14.923556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046047, 42.485901, 14.914938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053551, 0.094062, -0.994125,
		-0.309003, 0.945127, 0.106071,
		0.949552, 0.312868, -0.021547,
		35.330914, 42.579762, 14.908474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626457, 42.754650, 14.396934>,  <34.666225, 42.360752, 14.923556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626457, 42.754650, 14.396934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010937, 42.666286, 14.463024>,  <35.241623, 42.613270, 14.502678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010937, 42.666286, 14.463024>,  <34.626457, 42.754650, 14.396934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010937, 42.666286, 14.463024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175099, 0.025746, -0.984214,
		0.213167, 0.974955, 0.063428,
		0.961197, -0.220908, 0.165226,
		35.299297, 42.600014, 14.512592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955513, 43.266735, 14.103735>,  <34.626457, 42.754650, 14.396934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955513, 43.266735, 14.103735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228043, 42.974915, 14.127591>,  <35.391560, 42.799824, 14.141905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228043, 42.974915, 14.127591>,  <34.955513, 43.266735, 14.103735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228043, 42.974915, 14.127591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066467, -0.019481, -0.997599,
		0.728958, 0.683652, 0.035218,
		0.681324, -0.729549, 0.059641,
		35.432438, 42.756050, 14.145483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469418, 43.398476, 13.598225>,  <34.955513, 43.266735, 14.103735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469418, 43.398476, 13.598225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483070, 43.002575, 13.653687>,  <35.491264, 42.765034, 13.686965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483070, 43.002575, 13.653687>,  <35.469418, 43.398476, 13.598225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483070, 43.002575, 13.653687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285243, -0.123319, -0.950489,
		0.957847, 0.071998, 0.278110,
		0.034137, -0.989752, 0.138657,
		35.493313, 42.705650, 13.695285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778683, 43.221378, 13.039548>,  <35.469418, 43.398476, 13.598225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778683, 43.221378, 13.039548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679581, 42.865589, 13.193144>,  <35.620117, 42.652115, 13.285301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679581, 42.865589, 13.193144>,  <35.778683, 43.221378, 13.039548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679581, 42.865589, 13.193144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189732, -0.433218, -0.881092,
		0.950062, -0.145443, 0.276096,
		-0.247758, -0.889477, 0.383989,
		35.605255, 42.598747, 13.308340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357395, 42.778316, 12.859117>,  <35.778683, 43.221378, 13.039548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357395, 42.778316, 12.859117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048222, 42.534412, 12.929266>,  <35.862717, 42.388069, 12.971355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048222, 42.534412, 12.929266>,  <36.357395, 42.778316, 12.859117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048222, 42.534412, 12.929266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017093, -0.296315, -0.954937,
		0.634253, -0.735108, 0.239455,
		-0.772937, -0.609765, 0.175373,
		35.816341, 42.351482, 12.981878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581810, 42.067551, 12.544835>,  <36.357395, 42.778316, 12.859117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581810, 42.067551, 12.544835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182678, 42.089176, 12.559838>,  <35.943199, 42.102154, 12.568840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182678, 42.089176, 12.559838>,  <36.581810, 42.067551, 12.544835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182678, 42.089176, 12.559838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051689, -0.291248, -0.955250,
		-0.040721, -0.955118, 0.293411,
		-0.997832, 0.054065, 0.037509,
		35.883327, 42.105396, 12.571091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905029, 41.635075, 13.042128>,  <36.581810, 42.067551, 12.544835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905029, 41.635075, 13.042128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155239, 41.337555, 12.947908>,  <37.305367, 41.159042, 12.891376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155239, 41.337555, 12.947908>,  <36.905029, 41.635075, 13.042128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155239, 41.337555, 12.947908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161372, -0.418719, 0.893663,
		-0.763334, -0.520996, -0.381947,
		0.625524, -0.743799, -0.235548,
		37.342896, 41.114414, 12.877244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632248, 41.161503, 13.373814>,  <36.905029, 41.635075, 13.042128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632248, 41.161503, 13.373814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012886, 41.044670, 13.335532>,  <37.241268, 40.974571, 13.312564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012886, 41.044670, 13.335532>,  <36.632248, 41.161503, 13.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012886, 41.044670, 13.335532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074661, -0.521702, 0.849854,
		-0.298156, -0.801570, -0.518255,
		0.951593, -0.292082, -0.095702,
		37.298363, 40.957047, 13.306822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608665, 40.494572, 13.634033>,  <36.632248, 41.161503, 13.373814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608665, 40.494572, 13.634033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001461, 40.568901, 13.647644>,  <37.237141, 40.613499, 13.655810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001461, 40.568901, 13.647644>,  <36.608665, 40.494572, 13.634033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001461, 40.568901, 13.647644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080975, -0.576763, 0.812888,
		0.170682, -0.795495, -0.581425,
		0.981993, 0.185826, 0.034027,
		37.296059, 40.624649, 13.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930229, 39.811035, 13.779381>,  <36.608665, 40.494572, 13.634033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930229, 39.811035, 13.779381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175179, 40.100906, 13.905777>,  <37.322147, 40.274830, 13.981615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175179, 40.100906, 13.905777>,  <36.930229, 39.811035, 13.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175179, 40.100906, 13.905777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042662, -0.429407, 0.902103,
		0.789419, -0.538940, -0.293872,
		0.612370, 0.724675, 0.315990,
		37.358891, 40.318310, 14.000574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550098, 39.502411, 14.075141>,  <36.930229, 39.811035, 13.779381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550098, 39.502411, 14.075141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503468, 39.864773, 14.237988>,  <37.475487, 40.082191, 14.335697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503468, 39.864773, 14.237988>,  <37.550098, 39.502411, 14.075141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503468, 39.864773, 14.237988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049523, -0.404102, 0.913373,
		0.991946, 0.126643, 0.002247,
		-0.116580, 0.905905, 0.407119,
		37.468494, 40.136543, 14.360124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998428, 39.457199, 14.573099>,  <37.550098, 39.502411, 14.075141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998428, 39.457199, 14.573099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776287, 39.769459, 14.687759>,  <37.643002, 39.956814, 14.756556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776287, 39.769459, 14.687759>,  <37.998428, 39.457199, 14.573099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776287, 39.769459, 14.687759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128612, -0.421169, 0.897817,
		0.821609, 0.461740, 0.334299,
		-0.555354, 0.780649, 0.286651,
		37.609680, 40.003654, 14.773755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023079, 39.498219, 15.330145>,  <37.998428, 39.457199, 14.573099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023079, 39.498219, 15.330145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717693, 39.740715, 15.241057>,  <37.534462, 39.886211, 15.187605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717693, 39.740715, 15.241057>,  <38.023079, 39.498219, 15.330145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717693, 39.740715, 15.241057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440976, -0.237352, 0.865566,
		0.471875, 0.759039, 0.448545,
		-0.763462, 0.606237, -0.222718,
		37.488655, 39.922585, 15.174242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953747, 39.894829, 15.947315>,  <38.023079, 39.498219, 15.330145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953747, 39.894829, 15.947315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603298, 39.927540, 15.757275>,  <37.393028, 39.947166, 15.643250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603298, 39.927540, 15.757275>,  <37.953747, 39.894829, 15.947315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603298, 39.927540, 15.757275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476453, 0.003372, 0.879193,
		0.073503, 0.996645, 0.036010,
		-0.876122, 0.081781, -0.475102,
		37.340462, 39.952072, 15.614744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502247, 40.470734, 16.338196>,  <37.953747, 39.894829, 15.947315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502247, 40.470734, 16.338196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246895, 40.237267, 16.137478>,  <37.093681, 40.097187, 16.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246895, 40.237267, 16.137478>,  <37.502247, 40.470734, 16.338196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246895, 40.237267, 16.137478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513347, -0.162913, 0.842576,
		-0.573535, 0.795480, -0.195625,
		-0.638382, -0.583671, -0.501793,
		37.055382, 40.062164, 15.986940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866570, 40.706558, 16.476061>,  <37.502247, 40.470734, 16.338196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866570, 40.706558, 16.476061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795952, 40.330975, 16.357948>,  <36.753582, 40.105625, 16.287081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795952, 40.330975, 16.357948>,  <36.866570, 40.706558, 16.476061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795952, 40.330975, 16.357948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548040, -0.155423, 0.821886,
		-0.817609, 0.306926, -0.487147,
		-0.176544, -0.938957, -0.295283,
		36.742989, 40.049286, 16.269363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161472, 40.512531, 16.584637>,  <36.866570, 40.706558, 16.476061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161472, 40.512531, 16.584637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344067, 40.157494, 16.609293>,  <36.453625, 39.944469, 16.624086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344067, 40.157494, 16.609293>,  <36.161472, 40.512531, 16.584637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344067, 40.157494, 16.609293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256818, -0.065113, 0.964264,
		-0.851860, -0.456003, -0.257673,
		0.456485, -0.887593, 0.061642,
		36.481010, 39.891216, 16.627787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735626, 40.040077, 17.014244>,  <36.161472, 40.512531, 16.584637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735626, 40.040077, 17.014244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106277, 39.890480, 16.998774>,  <36.328667, 39.800724, 16.989492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106277, 39.890480, 16.998774>,  <35.735626, 40.040077, 17.014244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106277, 39.890480, 16.998774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047302, -0.218004, 0.974801,
		-0.372998, -0.901446, -0.219699,
		0.926626, -0.373991, -0.038675,
		36.384266, 39.778282, 16.987171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692699, 39.566338, 17.464273>,  <35.735626, 40.040077, 17.014244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692699, 39.566338, 17.464273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090065, 39.587059, 17.423380>,  <36.328484, 39.599491, 17.398844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090065, 39.587059, 17.423380>,  <35.692699, 39.566338, 17.464273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090065, 39.587059, 17.423380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110591, -0.199130, 0.973713,
		0.030083, -0.978603, -0.203547,
		0.993410, 0.051803, -0.102234,
		36.388088, 39.602600, 17.392710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949471, 38.962425, 17.884550>,  <35.692699, 39.566338, 17.464273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949471, 38.962425, 17.884550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256821, 39.215225, 17.844215>,  <36.441231, 39.366905, 17.820015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256821, 39.215225, 17.844215>,  <35.949471, 38.962425, 17.884550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256821, 39.215225, 17.844215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255850, -0.158916, 0.953565,
		0.586629, -0.758499, -0.283805,
		0.768379, 0.632001, -0.100838,
		36.487335, 39.404827, 17.813965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576241, 38.512478, 18.004616>,  <35.949471, 38.962425, 17.884550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576241, 38.512478, 18.004616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656979, 38.901062, 18.054464>,  <36.705421, 39.134212, 18.084373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656979, 38.901062, 18.054464>,  <36.576241, 38.512478, 18.004616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656979, 38.901062, 18.054464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561321, -0.219014, 0.798093,
		0.802606, -0.091139, -0.589506,
		0.201847, 0.971456, 0.124623,
		36.717533, 39.192497, 18.091852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274872, 38.605492, 18.193314>,  <36.576241, 38.512478, 18.004616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274872, 38.605492, 18.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105980, 38.943645, 18.324188>,  <37.004642, 39.146538, 18.402712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105980, 38.943645, 18.324188>,  <37.274872, 38.605492, 18.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105980, 38.943645, 18.324188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489979, -0.090824, 0.866990,
		0.762653, 0.526386, -0.375870,
		-0.422234, 0.845381, 0.327186,
		36.979309, 39.197258, 18.422344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853142, 38.941071, 18.678030>,  <37.274872, 38.605492, 18.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853142, 38.941071, 18.678030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500633, 39.112892, 18.756866>,  <37.289127, 39.215984, 18.804169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500633, 39.112892, 18.756866>,  <37.853142, 38.941071, 18.678030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500633, 39.112892, 18.756866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199471, -0.040003, 0.979087,
		0.428457, 0.902154, -0.050431,
		-0.881269, 0.429556, 0.197093,
		37.236252, 39.241760, 18.815994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991730, 39.381271, 19.175760>,  <37.853142, 38.941071, 18.678030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991730, 39.381271, 19.175760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599304, 39.317715, 19.220074>,  <37.363850, 39.279583, 19.246662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599304, 39.317715, 19.220074>,  <37.991730, 39.381271, 19.175760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599304, 39.317715, 19.220074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110870, 0.008338, 0.993800,
		-0.158826, 0.987262, 0.009436,
		-0.981062, -0.158887, 0.110782,
		37.304985, 39.270050, 19.253307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805752, 39.894161, 19.642992>,  <37.991730, 39.381271, 19.175760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805752, 39.894161, 19.642992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520702, 39.613567, 19.639099>,  <37.349674, 39.445210, 19.636765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520702, 39.613567, 19.639099>,  <37.805752, 39.894161, 19.642992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520702, 39.613567, 19.639099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066132, 0.053361, 0.996383,
		-0.698427, 0.710685, -0.084417,
		-0.712619, -0.701484, -0.009730,
		37.306915, 39.403122, 19.636181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297199, 40.182205, 20.097923>,  <37.805752, 39.894161, 19.642992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297199, 40.182205, 20.097923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204063, 39.795456, 20.056063>,  <37.148182, 39.563408, 20.030947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204063, 39.795456, 20.056063>,  <37.297199, 40.182205, 20.097923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204063, 39.795456, 20.056063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135058, -0.074421, 0.988039,
		-0.963092, 0.244185, -0.113256,
		-0.232835, -0.966869, -0.104653,
		37.134212, 39.505394, 20.024668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688194, 40.149193, 20.315378>,  <37.297199, 40.182205, 20.097923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688194, 40.149193, 20.315378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847137, 39.783089, 20.341932>,  <36.942505, 39.563427, 20.357864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847137, 39.783089, 20.341932>,  <36.688194, 40.149193, 20.315378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847137, 39.783089, 20.341932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160538, 0.001892, 0.987028,
		-0.903511, -0.402862, -0.146182,
		0.397360, -0.915259, 0.066384,
		36.966347, 39.508511, 20.361847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209553, 39.853878, 20.819248>,  <36.688194, 40.149193, 20.315378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209553, 39.853878, 20.819248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556458, 39.654903, 20.811174>,  <36.764603, 39.535519, 20.806330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556458, 39.654903, 20.811174>,  <36.209553, 39.853878, 20.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556458, 39.654903, 20.811174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038755, 0.027037, 0.998883,
		-0.496335, -0.867079, 0.042726,
		0.867266, -0.497436, -0.020184,
		36.816639, 39.505672, 20.805119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170521, 39.487282, 21.492544>,  <36.209553, 39.853878, 20.819248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170521, 39.487282, 21.492544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557713, 39.449356, 21.399572>,  <36.790028, 39.426601, 21.343788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557713, 39.449356, 21.399572>,  <36.170521, 39.487282, 21.492544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557713, 39.449356, 21.399572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226307, -0.071066, 0.971460,
		-0.108624, -0.992955, -0.047334,
		0.967981, -0.094812, -0.232432,
		36.848106, 39.420914, 21.329844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388233, 38.824818, 21.863117>,  <36.170521, 39.487282, 21.492544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388233, 38.824818, 21.863117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709709, 39.055054, 21.802744>,  <36.902596, 39.193195, 21.766520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709709, 39.055054, 21.802744>,  <36.388233, 38.824818, 21.863117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709709, 39.055054, 21.802744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234200, -0.072795, 0.969459,
		0.547026, -0.814490, -0.193308,
		0.803687, 0.575592, -0.150932,
		36.950817, 39.227730, 21.757463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925560, 38.437645, 22.280130>,  <36.388233, 38.824818, 21.863117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925560, 38.437645, 22.280130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006474, 38.824425, 22.218046>,  <37.055023, 39.056492, 22.180796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006474, 38.824425, 22.218046>,  <36.925560, 38.437645, 22.280130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006474, 38.824425, 22.218046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441874, 0.051317, 0.895608,
		0.873972, -0.249752, -0.416889,
		0.202286, 0.966949, -0.155208,
		37.067158, 39.114510, 22.171484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599461, 38.500008, 22.420986>,  <36.925560, 38.437645, 22.280130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599461, 38.500008, 22.420986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457607, 38.873936, 22.428379>,  <37.372498, 39.098293, 22.432816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457607, 38.873936, 22.428379>,  <37.599461, 38.500008, 22.420986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457607, 38.873936, 22.428379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529868, 0.184642, 0.827736,
		0.770375, 0.303333, -0.560813,
		-0.354630, 0.934824, 0.018483,
		37.351219, 39.154385, 22.433924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188515, 38.926407, 22.404459>,  <37.599461, 38.500008, 22.420986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188515, 38.926407, 22.404459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877087, 39.108482, 22.577261>,  <37.690228, 39.217728, 22.680943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877087, 39.108482, 22.577261>,  <38.188515, 38.926407, 22.404459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877087, 39.108482, 22.577261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481102, -0.009071, 0.876617,
		0.402945, 0.890349, -0.211930,
		-0.778573, 0.455189, 0.432004,
		37.643517, 39.245041, 22.706861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495136, 39.395863, 22.847254>,  <38.188515, 38.926407, 22.404459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495136, 39.395863, 22.847254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113918, 39.386566, 22.968025>,  <37.885185, 39.380989, 23.040487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113918, 39.386566, 22.968025>,  <38.495136, 39.395863, 22.847254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113918, 39.386566, 22.968025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302698, -0.101607, 0.947655,
		0.008653, 0.994553, 0.103872,
		-0.953047, -0.023242, 0.301928,
		37.828003, 39.379593, 23.058603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481453, 39.820572, 23.385393>,  <38.495136, 39.395863, 22.847254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481453, 39.820572, 23.385393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139072, 39.622501, 23.444931>,  <37.933643, 39.503658, 23.480654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139072, 39.622501, 23.444931>,  <38.481453, 39.820572, 23.385393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139072, 39.622501, 23.444931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179498, -0.014601, 0.983650,
		-0.484904, 0.868672, 0.101381,
		-0.855949, -0.495173, 0.148845,
		37.882286, 39.473949, 23.489584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203175, 40.071716, 24.024298>,  <38.481453, 39.820572, 23.385393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203175, 40.071716, 24.024298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050358, 39.705723, 23.972378>,  <37.958668, 39.486126, 23.941225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050358, 39.705723, 23.972378>,  <38.203175, 40.071716, 24.024298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050358, 39.705723, 23.972378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169604, -0.207488, 0.963422,
		-0.908448, 0.346053, 0.234454,
		-0.382042, -0.914984, -0.129801,
		37.935745, 39.431229, 23.933437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046959, 39.781696, 24.770140>,  <38.203175, 40.071716, 24.024298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046959, 39.781696, 24.770140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995583, 39.447090, 24.557070>,  <37.964756, 39.246326, 24.429228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995583, 39.447090, 24.557070>,  <38.046959, 39.781696, 24.770140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995583, 39.447090, 24.557070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114079, -0.546022, 0.829968,
		-0.985134, 0.045833, 0.165559,
		-0.128438, -0.836517, -0.532676,
		37.957050, 39.196136, 24.397266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683716, 39.366859, 25.310509>,  <38.046959, 39.781696, 24.770140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683716, 39.366859, 25.310509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807533, 39.133286, 25.010321>,  <37.881824, 38.993141, 24.830208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807533, 39.133286, 25.010321>,  <37.683716, 39.366859, 25.310509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807533, 39.133286, 25.010321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405364, -0.632892, 0.659642,
		-0.860153, -0.508401, 0.040799,
		0.309541, -0.583931, -0.750472,
		37.900394, 38.958107, 24.785179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368202, 38.707214, 25.406448>,  <37.683716, 39.366859, 25.310509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368202, 38.707214, 25.406448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706760, 38.664673, 25.197716>,  <37.909893, 38.639149, 25.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706760, 38.664673, 25.197716>,  <37.368202, 38.707214, 25.406448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706760, 38.664673, 25.197716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311036, -0.696653, 0.646476,
		-0.432292, -0.709480, -0.556562,
		0.846392, -0.106356, -0.521831,
		37.960678, 38.632767, 25.041166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465118, 37.934124, 25.435360>,  <37.368202, 38.707214, 25.406448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465118, 37.934124, 25.435360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819916, 38.087875, 25.332989>,  <38.032795, 38.180126, 25.271566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819916, 38.087875, 25.332989>,  <37.465118, 37.934124, 25.435360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819916, 38.087875, 25.332989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456735, -0.648460, 0.609009,
		0.068132, -0.657077, -0.750739,
		0.886990, 0.384381, -0.255929,
		38.086014, 38.203190, 25.256210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872246, 37.429054, 25.357435>,  <37.465118, 37.934124, 25.435360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872246, 37.429054, 25.357435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132900, 37.724247, 25.427589>,  <38.289291, 37.901363, 25.469683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132900, 37.724247, 25.427589>,  <37.872246, 37.429054, 25.357435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132900, 37.724247, 25.427589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545309, -0.616487, 0.567963,
		0.527270, -0.274463, -0.804150,
		0.651633, 0.737980, 0.175388,
		38.328388, 37.945641, 25.480206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565987, 37.148479, 25.458178>,  <37.872246, 37.429054, 25.357435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565987, 37.148479, 25.458178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600098, 37.509071, 25.627914>,  <38.620564, 37.725426, 25.729757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600098, 37.509071, 25.627914>,  <38.565987, 37.148479, 25.458178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600098, 37.509071, 25.627914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710816, -0.353490, 0.608100,
		0.698189, 0.249770, -0.670930,
		0.085282, 0.901477, 0.424343,
		38.625683, 37.779514, 25.755217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241199, 37.197777, 25.433435>,  <38.565987, 37.148479, 25.458178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241199, 37.197777, 25.433435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101376, 37.452938, 25.707920>,  <39.017483, 37.606033, 25.872610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101376, 37.452938, 25.707920>,  <39.241199, 37.197777, 25.433435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101376, 37.452938, 25.707920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568217, -0.438004, 0.696622,
		0.744941, 0.633429, -0.209359,
		-0.349560, 0.637903, 0.686212,
		38.996506, 37.644310, 25.913784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818340, 37.307293, 25.827559>,  <39.241199, 37.197777, 25.433435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818340, 37.307293, 25.827559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515625, 37.431339, 26.057726>,  <39.333996, 37.505768, 26.195826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515625, 37.431339, 26.057726>,  <39.818340, 37.307293, 25.827559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515625, 37.431339, 26.057726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509784, -0.270983, 0.816510,
		0.409144, 0.911259, 0.046982,
		-0.756784, 0.310120, 0.575416,
		39.288589, 37.524376, 26.230350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142574, 37.715019, 26.259647>,  <39.818340, 37.307293, 25.827559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142574, 37.715019, 26.259647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808498, 37.615108, 26.455637>,  <39.608055, 37.555161, 26.573231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808498, 37.615108, 26.455637>,  <40.142574, 37.715019, 26.259647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808498, 37.615108, 26.455637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549940, -0.370398, 0.748580,
		-0.005493, 0.894660, 0.446714,
		-0.835186, -0.249778, 0.489975,
		39.557941, 37.540176, 26.602629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098888, 38.034752, 26.950178>,  <40.142574, 37.715019, 26.259647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098888, 38.034752, 26.950178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882595, 37.698288, 26.953360>,  <39.752819, 37.496410, 26.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882595, 37.698288, 26.953360>,  <40.098888, 38.034752, 26.950178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882595, 37.698288, 26.953360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603454, -0.381308, 0.700320,
		-0.586045, 0.383487, 0.713785,
		-0.540735, -0.841155, 0.007953,
		39.720375, 37.445942, 26.955746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924278, 37.880795, 27.600061>,  <40.098888, 38.034752, 26.950178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924278, 37.880795, 27.600061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922913, 37.524452, 27.418354>,  <39.922092, 37.310646, 27.309330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922913, 37.524452, 27.418354>,  <39.924278, 37.880795, 27.600061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922913, 37.524452, 27.418354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417839, -0.413985, 0.808719,
		-0.908515, -0.187048, 0.373650,
		-0.003416, -0.890859, -0.454268,
		39.921886, 37.257195, 27.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674095, 37.318184, 28.153910>,  <39.924278, 37.880795, 27.600061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674095, 37.318184, 28.153910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878227, 37.139576, 27.859922>,  <40.000706, 37.032410, 27.683531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878227, 37.139576, 27.859922>,  <39.674095, 37.318184, 28.153910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878227, 37.139576, 27.859922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410246, -0.624716, 0.664400,
		-0.755816, -0.640583, -0.135629,
		0.510333, -0.446523, -0.734968,
		40.031326, 37.005619, 27.639433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489811, 37.336514, 27.994267>,  <39.674095, 37.318184, 28.153910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489811, 37.336514, 27.994267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623055, 37.323757, 28.371206>,  <40.703003, 37.316105, 28.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623055, 37.323757, 28.371206>,  <40.489811, 37.336514, 27.994267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623055, 37.323757, 28.371206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847414, -0.428100, -0.314038,
		0.413433, 0.903169, -0.115583,
		0.333111, -0.031887, 0.942348,
		40.722988, 37.314190, 28.653912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222939, 37.579540, 28.026377>,  <40.489811, 37.336514, 27.994267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222939, 37.579540, 28.026377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142006, 37.313004, 28.313444>,  <41.093449, 37.153080, 28.485685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142006, 37.313004, 28.313444>,  <41.222939, 37.579540, 28.026377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142006, 37.313004, 28.313444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721987, -0.596617, -0.350403,
		0.661663, 0.447253, 0.601803,
		-0.202327, -0.666343, 0.717670,
		41.081306, 37.113102, 28.528746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913944, 37.523041, 28.499992>,  <41.222939, 37.579540, 28.026377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913944, 37.523041, 28.499992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654015, 37.226570, 28.432606>,  <41.498058, 37.048687, 28.392174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654015, 37.226570, 28.432606>,  <41.913944, 37.523041, 28.499992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654015, 37.226570, 28.432606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614320, -0.381622, -0.690635,
		0.447592, -0.552285, 0.703308,
		-0.649825, -0.741179, -0.168468,
		41.459068, 37.004215, 28.382065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251488, 36.867462, 28.598417>,  <41.913944, 37.523041, 28.499992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251488, 36.867462, 28.598417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930923, 36.823009, 28.363338>,  <41.738583, 36.796337, 28.222292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930923, 36.823009, 28.363338>,  <42.251488, 36.867462, 28.598417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930923, 36.823009, 28.363338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565722, -0.459795, -0.684505,
		-0.194152, -0.881045, 0.431353,
		-0.801413, -0.111128, -0.587697,
		41.690498, 36.789673, 28.187029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980259, 36.107246, 28.482119>,  <42.251488, 36.867462, 28.598417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980259, 36.107246, 28.482119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929256, 36.368088, 28.183186>,  <41.898655, 36.524593, 28.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929256, 36.368088, 28.183186>,  <41.980259, 36.107246, 28.482119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929256, 36.368088, 28.183186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687777, -0.484768, -0.540336,
		-0.714636, -0.582895, -0.386688,
		-0.127505, 0.652099, -0.747335,
		41.891006, 36.563717, 27.958984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746620, 35.796734, 27.667149>,  <41.980259, 36.107246, 28.482119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746620, 35.796734, 27.667149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981140, 36.120674, 27.659149>,  <42.121853, 36.315037, 27.654348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981140, 36.120674, 27.659149>,  <41.746620, 35.796734, 27.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981140, 36.120674, 27.659149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754640, -0.554976, -0.350028,
		-0.294569, 0.190128, -0.936526,
		0.586299, 0.809848, -0.020000,
		42.157028, 36.363628, 27.653149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026291, 35.818825, 27.025263>,  <41.746620, 35.796734, 27.667149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026291, 35.818825, 27.025263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254208, 36.040779, 27.267731>,  <42.390957, 36.173950, 27.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254208, 36.040779, 27.267731>,  <42.026291, 35.818825, 27.025263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254208, 36.040779, 27.267731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820136, -0.337169, -0.462270,
		-0.052123, 0.760540, -0.647195,
		0.569789, 0.554883, 0.606172,
		42.425144, 36.207245, 27.449583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375011, 36.349117, 26.680201>,  <42.026291, 35.818825, 27.025263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375011, 36.349117, 26.680201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563683, 36.140762, 26.964790>,  <42.676884, 36.015751, 27.135544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563683, 36.140762, 26.964790>,  <42.375011, 36.349117, 26.680201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563683, 36.140762, 26.964790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686959, -0.288789, -0.666850,
		0.552820, 0.803292, 0.221614,
		0.471675, -0.520887, 0.711477,
		42.705185, 35.984497, 27.178234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203449, 37.176186, 26.739122>,  <42.375011, 36.349117, 26.680201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203449, 37.176186, 26.739122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448410, 36.947281, 26.520956>,  <42.595387, 36.809937, 26.390057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448410, 36.947281, 26.520956>,  <42.203449, 37.176186, 26.739122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448410, 36.947281, 26.520956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544347, 0.805560, -0.234009,
		0.573280, -0.153588, 0.804836,
		0.612402, -0.572263, -0.545416,
		42.632130, 36.775600, 26.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910278, 37.500317, 26.888338>,  <42.203449, 37.176186, 26.739122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910278, 37.500317, 26.888338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286091, 37.450996, 27.016132>,  <43.511578, 37.421406, 27.092808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286091, 37.450996, 27.016132>,  <42.910278, 37.500317, 26.888338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286091, 37.450996, 27.016132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337140, 0.169357, -0.926097,
		0.060081, 0.977811, 0.200687,
		0.939536, -0.123300, 0.319484,
		43.567951, 37.414005, 27.111977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272511, 37.914845, 26.447990>,  <42.910278, 37.500317, 26.888338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272511, 37.914845, 26.447990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566807, 37.669308, 26.562449>,  <43.743385, 37.521984, 26.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566807, 37.669308, 26.562449>,  <43.272511, 37.914845, 26.447990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566807, 37.669308, 26.562449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513442, 0.230029, -0.826719,
		0.441652, 0.755173, 0.484414,
		0.735745, -0.613841, 0.286145,
		43.787529, 37.485157, 26.648293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926872, 38.221531, 26.587397>,  <43.272511, 37.914845, 26.447990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926872, 38.221531, 26.587397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965267, 37.853096, 26.436459>,  <43.988304, 37.632034, 26.345896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965267, 37.853096, 26.436459>,  <43.926872, 38.221531, 26.587397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965267, 37.853096, 26.436459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365425, 0.385233, -0.847384,
		0.925879, -0.056555, 0.373564,
		0.095986, -0.921085, -0.377345,
		43.994064, 37.576771, 26.323256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593533, 38.145931, 26.395838>,  <43.926872, 38.221531, 26.587397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593533, 38.145931, 26.395838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381760, 37.879108, 26.186178>,  <44.254696, 37.719013, 26.060383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381760, 37.879108, 26.186178>,  <44.593533, 38.145931, 26.395838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381760, 37.879108, 26.186178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542094, 0.209240, -0.813850,
		0.652558, -0.715020, 0.250829,
		-0.529436, -0.667057, -0.524149,
		44.222927, 37.678993, 26.028933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045231, 37.669449, 26.041130>,  <44.593533, 38.145931, 26.395838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045231, 37.669449, 26.041130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735298, 37.607452, 25.795980>,  <44.549339, 37.570255, 25.648891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735298, 37.607452, 25.795980>,  <45.045231, 37.669449, 26.041130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735298, 37.607452, 25.795980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578773, 0.216026, -0.786355,
		0.254283, -0.964006, -0.077673,
		-0.774830, -0.155001, -0.612873,
		44.502850, 37.560955, 25.612120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216106, 37.287613, 25.342333>,  <45.045231, 37.669449, 26.041130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216106, 37.287613, 25.342333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863125, 37.443352, 25.236744>,  <44.651337, 37.536797, 25.173391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863125, 37.443352, 25.236744>,  <45.216106, 37.287613, 25.342333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863125, 37.443352, 25.236744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323226, 0.094184, -0.941623,
		-0.341761, -0.916261, -0.208962,
		-0.882454, 0.389351, -0.263971,
		44.598389, 37.560158, 25.157553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046585, 37.002571, 24.718449>,  <45.216106, 37.287613, 25.342333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046585, 37.002571, 24.718449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776798, 37.297894, 24.719231>,  <44.614925, 37.475086, 24.719700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776798, 37.297894, 24.719231>,  <45.046585, 37.002571, 24.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776798, 37.297894, 24.719231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203733, 0.188664, -0.960676,
		-0.709639, -0.647545, -0.277665,
		-0.674467, 0.738303, 0.001957,
		44.574459, 37.519386, 24.719818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552399, 36.924725, 24.150286>,  <45.046585, 37.002571, 24.718449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552399, 36.924725, 24.150286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586082, 37.314320, 24.234432>,  <44.606293, 37.548077, 24.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586082, 37.314320, 24.234432>,  <44.552399, 36.924725, 24.150286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586082, 37.314320, 24.234432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310707, 0.174923, -0.934271,
		-0.946768, 0.144037, -0.287895,
		0.084210, 0.973989, 0.210365,
		44.611347, 37.606518, 24.297543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378609, 37.354244, 23.492218>,  <44.552399, 36.924725, 24.150286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378609, 37.354244, 23.492218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594513, 37.593197, 23.729467>,  <44.724056, 37.736568, 23.871817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594513, 37.593197, 23.729467>,  <44.378609, 37.354244, 23.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594513, 37.593197, 23.729467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576647, 0.250939, -0.777501,
		-0.613304, 0.761685, -0.209032,
		0.539756, 0.597382, 0.593125,
		44.756439, 37.772411, 23.907406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550949, 37.990784, 23.063692>,  <44.378609, 37.354244, 23.492218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550949, 37.990784, 23.063692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791340, 37.977898, 23.383139>,  <44.935574, 37.970165, 23.574806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791340, 37.977898, 23.383139>,  <44.550949, 37.990784, 23.063692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791340, 37.977898, 23.383139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770848, 0.287440, -0.568481,
		-0.211238, 0.957257, 0.197581,
		0.600975, -0.032220, 0.798618,
		44.971634, 37.968231, 23.622725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972351, 38.536400, 23.062727>,  <44.550949, 37.990784, 23.063692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972351, 38.536400, 23.062727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162189, 38.276829, 23.300602>,  <45.276093, 38.121086, 23.443327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162189, 38.276829, 23.300602>,  <44.972351, 38.536400, 23.062727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162189, 38.276829, 23.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802635, 0.041729, -0.595009,
		0.361302, 0.759705, 0.540656,
		0.474592, -0.648927, 0.594689,
		45.304565, 38.082150, 23.479010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711349, 38.719017, 23.234024>,  <44.972351, 38.536400, 23.062727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711349, 38.719017, 23.234024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717400, 38.320274, 23.265139>,  <45.721027, 38.081028, 23.283808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717400, 38.320274, 23.265139>,  <45.711349, 38.719017, 23.234024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717400, 38.320274, 23.265139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844381, -0.028935, -0.534962,
		0.535530, 0.073772, 0.841288,
		0.015123, -0.996855, 0.077787,
		45.721935, 38.021217, 23.288475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861500, 39.045860, 23.887556>,  <45.711349, 38.719017, 23.234024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861500, 39.045860, 23.887556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039005, 38.803982, 24.152107>,  <46.145508, 38.658855, 24.310837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039005, 38.803982, 24.152107>,  <45.861500, 39.045860, 23.887556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039005, 38.803982, 24.152107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834495, 0.009832, -0.550928,
		0.326642, 0.796395, 0.508979,
		0.443761, -0.604697, 0.661376,
		46.172134, 38.622574, 24.350519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785900, 38.286076, 24.164381>,  <45.861500, 39.045860, 23.887556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785900, 38.286076, 24.164381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442162, 38.296150, 23.960075>,  <45.235916, 38.302197, 23.837492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442162, 38.296150, 23.960075>,  <45.785900, 38.286076, 24.164381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442162, 38.296150, 23.960075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507929, -0.158003, 0.846784,
		-0.059372, 0.987117, 0.148575,
		-0.859351, 0.025191, -0.510766,
		45.184357, 38.303707, 23.806845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194550, 38.664097, 24.555792>,  <45.785900, 38.286076, 24.164381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194550, 38.664097, 24.555792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959377, 38.450432, 24.312807>,  <44.818272, 38.322235, 24.167017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959377, 38.450432, 24.312807>,  <45.194550, 38.664097, 24.555792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959377, 38.450432, 24.312807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565063, -0.266158, 0.780937,
		-0.578825, 0.802393, -0.145350,
		-0.587933, -0.534158, -0.607462,
		44.782997, 38.290184, 24.130569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416313, 38.844090, 24.602077>,  <45.194550, 38.664097, 24.555792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416313, 38.844090, 24.602077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477531, 38.461689, 24.501968>,  <44.514263, 38.232250, 24.441902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477531, 38.461689, 24.501968>,  <44.416313, 38.844090, 24.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477531, 38.461689, 24.501968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529354, -0.293169, 0.796138,
		-0.834482, 0.010636, -0.550932,
		0.153049, -0.956002, -0.250274,
		44.523445, 38.174889, 24.426886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825718, 38.580070, 24.719011>,  <44.416313, 38.844090, 24.602077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825718, 38.580070, 24.719011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064976, 38.259533, 24.722288>,  <44.208530, 38.067211, 24.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064976, 38.259533, 24.722288>,  <43.825718, 38.580070, 24.719011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064976, 38.259533, 24.722288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338839, -0.243628, 0.908754,
		-0.726232, -0.546340, -0.417252,
		0.598143, -0.801348, 0.008190,
		44.244419, 38.019127, 24.724745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435814, 38.102570, 24.876945>,  <43.825718, 38.580070, 24.719011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435814, 38.102570, 24.876945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790142, 37.936836, 24.960510>,  <44.002739, 37.837395, 25.010649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790142, 37.936836, 24.960510>,  <43.435814, 38.102570, 24.876945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790142, 37.936836, 24.960510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352563, -0.308273, 0.883554,
		-0.301704, -0.856318, -0.419159,
		0.885818, -0.414352, 0.208899,
		44.055889, 37.812534, 25.023184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278126, 37.522682, 25.200720>,  <43.435814, 38.102570, 24.876945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278126, 37.522682, 25.200720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662853, 37.511646, 25.309639>,  <43.893688, 37.505024, 25.374990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662853, 37.511646, 25.309639>,  <43.278126, 37.522682, 25.200720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662853, 37.511646, 25.309639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257683, -0.426575, 0.866968,
		0.092237, -0.904031, -0.417396,
		0.961817, -0.027589, 0.272300,
		43.951397, 37.503368, 25.391329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379169, 36.943092, 25.344259>,  <43.278126, 37.522682, 25.200720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379169, 36.943092, 25.344259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655819, 37.148518, 25.547398>,  <43.821808, 37.271770, 25.669281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655819, 37.148518, 25.547398>,  <43.379169, 36.943092, 25.344259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655819, 37.148518, 25.547398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251791, -0.487585, 0.835980,
		0.676944, -0.706057, -0.207917,
		0.691627, 0.513560, 0.507846,
		43.863308, 37.302586, 25.699751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937748, 36.498760, 25.755281>,  <43.379169, 36.943092, 25.344259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937748, 36.498760, 25.755281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898830, 36.850880, 25.941019>,  <43.875481, 37.062149, 26.052462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898830, 36.850880, 25.941019>,  <43.937748, 36.498760, 25.755281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898830, 36.850880, 25.941019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026445, -0.468678, 0.882973,
		0.994905, 0.073625, 0.068877,
		-0.097290, 0.880296, 0.464343,
		43.869644, 37.114967, 26.080322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392902, 36.436020, 26.357796>,  <43.937748, 36.498760, 25.755281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392902, 36.436020, 26.357796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097198, 36.690193, 26.446980>,  <43.919777, 36.842697, 26.500490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097198, 36.690193, 26.446980>,  <44.392902, 36.436020, 26.357796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097198, 36.690193, 26.446980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106123, -0.436881, 0.893237,
		0.665001, 0.636677, 0.390405,
		-0.739264, 0.635435, 0.222960,
		43.875420, 36.880825, 26.513868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472565, 35.761120, 26.068083>,  <44.392902, 36.436020, 26.357796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472565, 35.761120, 26.068083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831875, 35.782631, 25.893633>,  <45.047462, 35.795540, 25.788963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831875, 35.782631, 25.893633>,  <44.472565, 35.761120, 26.068083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831875, 35.782631, 25.893633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319018, -0.762355, 0.563065,
		-0.302199, -0.644920, -0.701964,
		0.898278, 0.053781, -0.436124,
		45.101357, 35.798767, 25.762796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864010, 35.150589, 25.648691>,  <44.472565, 35.761120, 26.068083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864010, 35.150589, 25.648691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090004, 35.359886, 25.903881>,  <45.225601, 35.485466, 26.056995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090004, 35.359886, 25.903881>,  <44.864010, 35.150589, 25.648691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090004, 35.359886, 25.903881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042749, -0.790732, 0.610668,
		0.823995, -0.317743, -0.469117,
		0.564981, 0.523242, 0.637977,
		45.259499, 35.516857, 26.095274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473186, 34.781387, 25.806406>,  <44.864010, 35.150589, 25.648691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473186, 34.781387, 25.806406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364475, 35.000668, 26.122787>,  <45.299248, 35.132236, 26.312616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364475, 35.000668, 26.122787>,  <45.473186, 34.781387, 25.806406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364475, 35.000668, 26.122787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087806, -0.832589, 0.546887,
		0.958346, 0.079181, 0.274416,
		-0.271779, 0.548202, 0.790956,
		45.282940, 35.165127, 26.360075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384056, 34.329620, 26.459539>,  <45.473186, 34.781387, 25.806406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384056, 34.329620, 26.459539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614876, 34.036713, 26.604208>,  <45.753368, 33.860970, 26.691010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614876, 34.036713, 26.604208>,  <45.384056, 34.329620, 26.459539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614876, 34.036713, 26.604208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253244, 0.260581, 0.931647,
		-0.776457, -0.629193, -0.035075,
		0.577046, -0.732266, 0.361669,
		45.787991, 33.817032, 26.712709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938862, 33.744232, 26.807613>,  <45.384056, 34.329620, 26.459539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938862, 33.744232, 26.807613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306267, 33.802811, 26.954521>,  <45.526711, 33.837959, 27.042665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306267, 33.802811, 26.954521>,  <44.938862, 33.744232, 26.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306267, 33.802811, 26.954521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395271, 0.317409, 0.861981,
		0.009659, -0.936913, 0.349431,
		0.918514, 0.146446, 0.367269,
		45.581821, 33.846745, 27.064701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614681, 33.220287, 27.092306>,  <44.938862, 33.744232, 26.807613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614681, 33.220287, 27.092306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873741, 32.964005, 27.257254>,  <45.029175, 32.810234, 27.356222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873741, 32.964005, 27.257254>,  <44.614681, 33.220287, 27.092306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873741, 32.964005, 27.257254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288048, 0.706929, 0.645972,
		-0.705395, -0.299580, 0.642394,
		0.647647, -0.640706, 0.412371,
		45.068035, 32.771793, 27.380964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089958, 33.395973, 27.596838>,  <44.614681, 33.220287, 27.092306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089958, 33.395973, 27.596838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290901, 33.734100, 27.524099>,  <45.411469, 33.936977, 27.480455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290901, 33.734100, 27.524099>,  <45.089958, 33.395973, 27.596838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290901, 33.734100, 27.524099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270436, 0.353367, 0.895543,
		0.821280, -0.400705, 0.406122,
		0.502358, 0.845321, -0.181848,
		45.441608, 33.987698, 27.469545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728188, 33.509109, 28.132566>,  <45.089958, 33.395973, 27.596838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728188, 33.509109, 28.132566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571079, 33.850830, 27.996397>,  <45.476814, 34.055862, 27.914696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571079, 33.850830, 27.996397>,  <45.728188, 33.509109, 28.132566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571079, 33.850830, 27.996397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176418, 0.293304, 0.939601,
		0.902555, 0.429108, 0.035513,
		-0.392774, 0.854306, -0.340425,
		45.453247, 34.107121, 27.894270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046535, 33.978477, 28.515705>,  <45.728188, 33.509109, 28.132566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046535, 33.978477, 28.515705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701118, 34.154724, 28.417603>,  <45.493870, 34.260471, 28.358742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701118, 34.154724, 28.417603>,  <46.046535, 33.978477, 28.515705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701118, 34.154724, 28.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063416, 0.577375, 0.814013,
		0.500275, 0.687381, -0.526529,
		-0.863541, 0.440620, -0.245255,
		45.442055, 34.286911, 28.344027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048470, 34.620140, 28.623182>,  <46.046535, 33.978477, 28.515705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048470, 34.620140, 28.623182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662979, 34.528835, 28.678505>,  <45.431686, 34.474052, 28.711699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662979, 34.528835, 28.678505>,  <46.048470, 34.620140, 28.623182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662979, 34.528835, 28.678505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018755, 0.459014, 0.888231,
		-0.266231, 0.858606, -0.438083,
		-0.963727, -0.228258, 0.138307,
		45.373859, 34.460358, 28.719997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995525, 34.906010, 29.181690>,  <46.048470, 34.620140, 28.623182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995525, 34.906010, 29.181690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635677, 34.733437, 29.154722>,  <45.419769, 34.629890, 29.138542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635677, 34.733437, 29.154722>,  <45.995525, 34.906010, 29.181690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635677, 34.733437, 29.154722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222460, 0.319957, 0.920945,
		-0.375756, 0.843500, -0.383817,
		-0.899622, -0.431435, -0.067419,
		45.365791, 34.604008, 29.134497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466843, 35.383789, 29.334026>,  <45.995525, 34.906010, 29.181690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466843, 35.383789, 29.334026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351387, 35.013622, 29.432249>,  <45.282112, 34.791523, 29.491182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351387, 35.013622, 29.432249>,  <45.466843, 35.383789, 29.334026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351387, 35.013622, 29.432249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379617, 0.346068, 0.857979,
		-0.878965, 0.154427, -0.451191,
		-0.288638, -0.925413, 0.245558,
		45.264797, 34.736000, 29.505917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283344, 35.543892, 29.937990>,  <45.466843, 35.383789, 29.334026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283344, 35.543892, 29.937990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240257, 35.146610, 29.955582>,  <45.214405, 34.908241, 29.966137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240257, 35.146610, 29.955582>,  <45.283344, 35.543892, 29.937990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240257, 35.146610, 29.955582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269328, 0.071733, 0.960373,
		-0.957005, 0.091609, -0.275226,
		-0.107721, -0.993208, 0.043977,
		45.207939, 34.848648, 29.968775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597046, 35.323627, 30.256565>,  <45.283344, 35.543892, 29.937990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597046, 35.323627, 30.256565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856934, 35.034611, 30.351051>,  <45.012867, 34.861202, 30.407743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856934, 35.034611, 30.351051>,  <44.597046, 35.323627, 30.256565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856934, 35.034611, 30.351051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292501, 0.049191, 0.954999,
		-0.701647, -0.689575, -0.179383,
		0.649720, -0.722542, 0.236216,
		45.051849, 34.817848, 30.421917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479424, 35.161076, 31.052223>,  <44.597046, 35.323627, 30.256565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479424, 35.161076, 31.052223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807049, 34.949802, 30.962639>,  <45.003624, 34.823040, 30.908888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807049, 34.949802, 30.962639>,  <44.479424, 35.161076, 31.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807049, 34.949802, 30.962639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224727, -0.063802, 0.972331,
		-0.527857, -0.846731, 0.066439,
		0.819063, -0.528182, -0.223961,
		45.052769, 34.791348, 30.895451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456173, 34.502239, 31.340155>,  <44.479424, 35.161076, 31.052223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456173, 34.502239, 31.340155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838249, 34.612995, 31.298311>,  <45.067493, 34.679451, 31.273205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838249, 34.612995, 31.298311>,  <44.456173, 34.502239, 31.340155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838249, 34.612995, 31.298311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112556, -0.012920, 0.993561,
		0.273760, -0.960814, -0.043507,
		0.955189, 0.276894, -0.104608,
		45.124805, 34.696064, 31.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963745, 34.016350, 31.719263>,  <44.456173, 34.502239, 31.340155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963745, 34.016350, 31.719263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118557, 34.383186, 31.681017>,  <45.211445, 34.603291, 31.658070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118557, 34.383186, 31.681017>,  <44.963745, 34.016350, 31.719263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118557, 34.383186, 31.681017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383634, -0.065865, 0.921134,
		0.838469, -0.393190, -0.377320,
		0.387033, 0.917095, -0.095615,
		45.234665, 34.658314, 31.652332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721424, 34.002228, 31.671152>,  <44.963745, 34.016350, 31.719263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721424, 34.002228, 31.671152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578175, 34.343140, 31.823662>,  <45.492226, 34.547688, 31.915167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578175, 34.343140, 31.823662>,  <45.721424, 34.002228, 31.671152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578175, 34.343140, 31.823662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458341, -0.195293, 0.867055,
		0.813433, 0.485265, -0.320696,
		-0.358122, 0.852279, 0.381274,
		45.470737, 34.598824, 31.938044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.241119, 34.377453, 31.956722>,  <45.721424, 34.002228, 31.671152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.241119, 34.377453, 31.956722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919327, 34.473278, 32.174129>,  <45.726250, 34.530773, 32.304573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919327, 34.473278, 32.174129>,  <46.241119, 34.377453, 31.956722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919327, 34.473278, 32.174129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512582, -0.182325, 0.839058,
		0.300105, 0.953607, 0.023881,
		-0.804485, 0.239564, 0.543518,
		45.677982, 34.545147, 32.337185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500603, 34.727280, 32.494431>,  <46.241119, 34.377453, 31.956722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500603, 34.727280, 32.494431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152100, 34.583241, 32.627838>,  <45.942997, 34.496819, 32.707882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152100, 34.583241, 32.627838>,  <46.500603, 34.727280, 32.494431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152100, 34.583241, 32.627838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430758, -0.235271, 0.871261,
		-0.235271, 0.902761, 0.360097,
		-0.871261, -0.360097, 0.333519,
		45.890720, 34.475212, 32.727894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366726, 35.073059, 33.134815>,  <46.500603, 34.727280, 32.494431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366726, 35.073059, 33.134815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197914, 34.710453, 33.130363>,  <46.096626, 34.492889, 33.127693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197914, 34.710453, 33.130363>,  <46.366726, 35.073059, 33.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197914, 34.710453, 33.130363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377501, -0.186881, 0.906956,
		-0.824247, 0.378564, 0.421079,
		-0.422032, -0.906513, -0.011128,
		46.071304, 34.438499, 33.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238747, 34.930618, 33.858627>,  <46.366726, 35.073059, 33.134815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238747, 34.930618, 33.858627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250935, 34.569168, 33.687729>,  <46.258247, 34.352299, 33.585190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250935, 34.569168, 33.687729>,  <46.238747, 34.930618, 33.858627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250935, 34.569168, 33.687729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740064, -0.266913, 0.617303,
		-0.671846, -0.335000, 0.660605,
		0.030473, -0.903622, -0.427246,
		46.260075, 34.298080, 33.559555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058060, 34.422497, 34.423454>,  <46.238747, 34.930618, 33.858627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058060, 34.422497, 34.423454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284809, 34.257740, 34.138077>,  <46.420856, 34.158886, 33.966850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284809, 34.257740, 34.138077>,  <46.058060, 34.422497, 34.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284809, 34.257740, 34.138077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674784, -0.264639, 0.688936,
		-0.472572, -0.871959, 0.127921,
		0.566871, -0.411891, -0.713445,
		46.454872, 34.134174, 33.924042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194630, 33.677162, 34.498684>,  <46.058060, 34.422497, 34.423454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194630, 33.677162, 34.498684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509533, 33.855682, 34.328484>,  <46.698475, 33.962795, 34.226364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509533, 33.855682, 34.328484>,  <46.194630, 33.677162, 34.498684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509533, 33.855682, 34.328484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552581, -0.204382, 0.808011,
		0.273651, -0.871232, -0.407517,
		0.787254, 0.446299, -0.425497,
		46.745708, 33.989571, 34.200836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693768, 33.213821, 34.293232>,  <46.194630, 33.677162, 34.498684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693768, 33.213821, 34.293232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849792, 33.570927, 34.383415>,  <46.943405, 33.785191, 34.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849792, 33.570927, 34.383415>,  <46.693768, 33.213821, 34.293232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849792, 33.570927, 34.383415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594703, -0.431189, 0.678531,
		0.702981, -0.130588, -0.699117,
		0.390060, 0.892761, 0.225457,
		46.966812, 33.838757, 34.451054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433487, 33.170506, 34.251282>,  <46.693768, 33.213821, 34.293232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433487, 33.170506, 34.251282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322594, 33.455158, 34.509495>,  <47.256058, 33.625950, 34.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322594, 33.455158, 34.509495>,  <47.433487, 33.170506, 34.251282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322594, 33.455158, 34.509495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476746, -0.481438, 0.735480,
		0.834179, 0.511658, -0.205797,
		-0.277235, 0.711634, 0.645536,
		47.239422, 33.668648, 34.703156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.051003, 33.498886, 34.612526>,  <47.433487, 33.170506, 34.251282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.051003, 33.498886, 34.612526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717098, 33.540630, 34.828781>,  <47.516758, 33.565678, 34.958534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717098, 33.540630, 34.828781>,  <48.051003, 33.498886, 34.612526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717098, 33.540630, 34.828781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505492, -0.244042, 0.827600,
		0.218303, 0.964133, 0.150965,
		-0.834758, 0.104357, 0.540637,
		47.466671, 33.571938, 34.990971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.080822, 34.006119, 35.238213>,  <48.051003, 33.498886, 34.612526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.080822, 34.006119, 35.238213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821888, 33.704063, 35.279636>,  <47.666527, 33.522831, 35.304489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821888, 33.704063, 35.279636>,  <48.080822, 34.006119, 35.238213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821888, 33.704063, 35.279636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478423, -0.296786, 0.826456,
		-0.593352, 0.584540, 0.553395,
		-0.647337, -0.755136, 0.103559,
		47.627686, 33.477524, 35.310703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.925709, 33.949032, 35.894264>,  <48.080822, 34.006119, 35.238213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.925709, 33.949032, 35.894264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.824230, 33.586086, 35.760201>,  <47.763344, 33.368320, 35.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.824230, 33.586086, 35.760201>,  <47.925709, 33.949032, 35.894264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.824230, 33.586086, 35.760201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412407, -0.414885, 0.811043,
		-0.874962, 0.067538, 0.479458,
		-0.253697, -0.907364, -0.335156,
		47.748119, 33.313877, 35.659653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738220, 33.751122, 36.612309>,  <47.925709, 33.949032, 35.894264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738220, 33.751122, 36.612309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753056, 33.428787, 36.375919>,  <47.761955, 33.235386, 36.234085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753056, 33.428787, 36.375919>,  <47.738220, 33.751122, 36.612309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753056, 33.428787, 36.375919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097398, -0.585653, 0.804689,
		-0.994554, -0.087402, 0.056767,
		0.037086, -0.805836, -0.590977,
		47.764183, 33.187035, 36.198627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170444, 33.872433, 36.122860>,  <47.738220, 33.751122, 36.612309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170444, 33.872433, 36.122860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371868, 34.212315, 36.185387>,  <47.492722, 34.416245, 36.222904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371868, 34.212315, 36.185387>,  <47.170444, 33.872433, 36.122860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371868, 34.212315, 36.185387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012295, 0.187962, -0.982099,
		-0.863872, 0.492625, 0.105097,
		0.503561, 0.849701, 0.156318,
		47.522938, 34.467224, 36.232281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962906, 34.418606, 35.696693>,  <47.170444, 33.872433, 36.122860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962906, 34.418606, 35.696693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350925, 34.500935, 35.748291>,  <47.583736, 34.550331, 35.779251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350925, 34.500935, 35.748291>,  <46.962906, 34.418606, 35.696693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350925, 34.500935, 35.748291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125573, 0.029650, -0.991641,
		-0.207924, 0.978141, 0.002917,
		0.970051, 0.205820, 0.128993,
		47.641941, 34.562679, 35.786987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106472, 34.902416, 35.161888>,  <46.962906, 34.418606, 35.696693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106472, 34.902416, 35.161888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451435, 34.742035, 35.285488>,  <47.658413, 34.645805, 35.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451435, 34.742035, 35.285488>,  <47.106472, 34.902416, 35.161888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451435, 34.742035, 35.285488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277538, -0.135973, -0.951044,
		0.423341, 0.905950, -0.005985,
		0.862412, -0.400955, 0.308999,
		47.710159, 34.621750, 35.378189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645794, 35.285355, 34.799603>,  <47.106472, 34.902416, 35.161888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645794, 35.285355, 34.799603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725834, 34.912819, 34.921303>,  <47.773857, 34.689297, 34.994324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725834, 34.912819, 34.921303>,  <47.645794, 35.285355, 34.799603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725834, 34.912819, 34.921303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220159, -0.259853, -0.940216,
		0.954720, 0.255121, 0.153045,
		0.200100, -0.931337, 0.304254,
		47.785862, 34.633419, 35.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.074440, 35.453907, 17.625624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695293, 35.554161, 17.704336>,  <35.467804, 35.614315, 17.751564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695293, 35.554161, 17.704336>,  <36.074440, 35.453907, 17.625624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695293, 35.554161, 17.704336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148778, -0.198009, 0.968843,
		0.281794, 0.947614, 0.150397,
		-0.947870, 0.250638, 0.196782,
		35.410931, 35.629353, 17.763371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133980, 35.963226, 18.229975>,  <36.074440, 35.453907, 17.625624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133980, 35.963226, 18.229975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762726, 35.814449, 18.224031>,  <35.539974, 35.725182, 18.220465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762726, 35.814449, 18.224031>,  <36.133980, 35.963226, 18.229975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762726, 35.814449, 18.224031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056783, -0.180919, 0.981857,
		-0.367882, 0.910455, 0.189037,
		-0.928137, -0.371941, -0.014859,
		35.484283, 35.702866, 18.219574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794506, 36.237492, 18.748161>,  <36.133980, 35.963226, 18.229975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794506, 36.237492, 18.748161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529102, 35.947937, 18.672543>,  <35.369858, 35.774204, 18.627172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529102, 35.947937, 18.672543>,  <35.794506, 36.237492, 18.748161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529102, 35.947937, 18.672543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002045, -0.250923, 0.968005,
		-0.748164, 0.642668, 0.165010,
		-0.663511, -0.723889, -0.189046,
		35.330048, 35.730770, 18.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445618, 36.251232, 19.318043>,  <35.794506, 36.237492, 18.748161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445618, 36.251232, 19.318043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359459, 35.895161, 19.157450>,  <35.307762, 35.681519, 19.061094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359459, 35.895161, 19.157450>,  <35.445618, 36.251232, 19.318043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359459, 35.895161, 19.157450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182780, -0.367114, 0.912041,
		-0.959268, 0.269835, -0.083630,
		-0.215399, -0.890178, -0.401481,
		35.294838, 35.628109, 19.037004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821819, 36.013157, 19.689949>,  <35.445618, 36.251232, 19.318043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821819, 36.013157, 19.689949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978458, 35.684292, 19.524689>,  <35.072441, 35.486973, 19.425531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978458, 35.684292, 19.524689>,  <34.821819, 36.013157, 19.689949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978458, 35.684292, 19.524689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122228, -0.491512, 0.862251,
		-0.911984, -0.287153, -0.292966,
		0.391594, -0.822167, -0.413153,
		35.095936, 35.437641, 19.400743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285530, 35.490318, 19.838032>,  <34.821819, 36.013157, 19.689949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285530, 35.490318, 19.838032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.349228, 19.775782>,  <34.876053, 35.264572, 19.738432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.349228, 19.775782>,  <34.285530, 35.490318, 19.838032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654606, 35.349228, 19.775782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018038, -0.442719, 0.896479,
		-0.385110, -0.824369, -0.414857,
		0.922694, -0.352726, -0.155625,
		34.931416, 35.243408, 19.729094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259548, 34.804905, 19.939148>,  <34.285530, 35.490318, 19.838032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259548, 34.804905, 19.939148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641994, 34.909622, 19.991785>,  <34.871460, 34.972454, 20.023367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641994, 34.909622, 19.991785>,  <34.259548, 34.804905, 19.939148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641994, 34.909622, 19.991785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016391, -0.400617, 0.916099,
		0.292545, -0.878049, -0.378743,
		0.956111, 0.261793, 0.131591,
		34.928829, 34.988159, 20.031261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504688, 34.237259, 20.418667>,  <34.259548, 34.804905, 19.939148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504688, 34.237259, 20.418667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789570, 34.516853, 20.444515>,  <34.960499, 34.684612, 20.460024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789570, 34.516853, 20.444515>,  <34.504688, 34.237259, 20.418667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789570, 34.516853, 20.444515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013601, -0.078299, 0.996837,
		0.701837, -0.710834, -0.046258,
		0.712207, 0.698988, 0.064622,
		35.003231, 34.726551, 20.463902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021381, 33.918858, 20.912817>,  <34.504688, 34.237259, 20.418667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021381, 33.918858, 20.912817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120304, 34.306431, 20.911707>,  <35.179657, 34.538975, 20.911041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120304, 34.306431, 20.911707>,  <35.021381, 33.918858, 20.912817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120304, 34.306431, 20.911707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329554, -0.081420, 0.940619,
		0.911172, -0.233536, -0.339452,
		0.247306, 0.968933, -0.002775,
		35.194496, 34.597111, 20.910875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716717, 33.989841, 21.362129>,  <35.021381, 33.918858, 20.912817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716717, 33.989841, 21.362129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536888, 34.346874, 21.348373>,  <35.428989, 34.561092, 21.340120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536888, 34.346874, 21.348373>,  <35.716717, 33.989841, 21.362129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536888, 34.346874, 21.348373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378265, 0.225119, 0.897907,
		0.809196, 0.390669, -0.438840,
		-0.449575, 0.892580, -0.034389,
		35.402016, 34.614647, 21.338057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219276, 34.446430, 21.718996>,  <35.716717, 33.989841, 21.362129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219276, 34.446430, 21.718996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876965, 34.650757, 21.751751>,  <35.671577, 34.773354, 21.771404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876965, 34.650757, 21.751751>,  <36.219276, 34.446430, 21.718996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876965, 34.650757, 21.751751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310793, 0.381088, 0.870735,
		0.413580, 0.770608, -0.484886,
		-0.855780, 0.510818, 0.081889,
		35.620232, 34.804001, 21.776318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350605, 35.039349, 22.109585>,  <36.219276, 34.446430, 21.718996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350605, 35.039349, 22.109585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951000, 35.031910, 22.125700>,  <35.711235, 35.027447, 22.135370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951000, 35.031910, 22.125700>,  <36.350605, 35.039349, 22.109585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951000, 35.031910, 22.125700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027682, 0.448474, 0.893367,
		-0.034682, 0.893602, -0.447518,
		-0.999015, -0.018596, 0.040290,
		35.651295, 35.026333, 22.137787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060505, 35.730743, 22.468390>,  <36.350605, 35.039349, 22.109585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060505, 35.730743, 22.468390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768436, 35.460281, 22.507710>,  <35.593197, 35.298004, 22.531301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768436, 35.460281, 22.507710>,  <36.060505, 35.730743, 22.468390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768436, 35.460281, 22.507710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150628, 0.299622, 0.942092,
		-0.666453, 0.673083, -0.320624,
		-0.730173, -0.676155, 0.098299,
		35.549385, 35.257435, 22.537199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459667, 36.163837, 22.794680>,  <36.060505, 35.730743, 22.468390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459667, 36.163837, 22.794680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446480, 35.774395, 22.885012>,  <35.438568, 35.540730, 22.939211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446480, 35.774395, 22.885012>,  <35.459667, 36.163837, 22.794680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446480, 35.774395, 22.885012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024580, 0.225096, 0.974026,
		-0.999154, 0.037659, 0.016511,
		-0.032964, -0.973608, 0.225832,
		35.436592, 35.482311, 22.952761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189659, 36.164478, 23.382252>,  <35.459667, 36.163837, 22.794680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189659, 36.164478, 23.382252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353657, 35.799667, 23.378023>,  <35.452053, 35.580780, 23.375486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353657, 35.799667, 23.378023>,  <35.189659, 36.164478, 23.382252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353657, 35.799667, 23.378023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205161, 0.080924, 0.975377,
		-0.888716, -0.402066, 0.220291,
		0.409992, -0.912028, -0.010570,
		35.476654, 35.526058, 23.374851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830235, 35.856712, 23.913507>,  <35.189659, 36.164478, 23.382252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830235, 35.856712, 23.913507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162518, 35.638771, 23.867785>,  <35.361889, 35.508007, 23.840351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162518, 35.638771, 23.867785>,  <34.830235, 35.856712, 23.913507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162518, 35.638771, 23.867785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167145, 0.048243, 0.984751,
		-0.531026, -0.837145, 0.131145,
		0.830707, -0.544849, -0.114307,
		35.411728, 35.475315, 23.833492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861431, 35.344845, 24.443604>,  <34.830235, 35.856712, 23.913507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861431, 35.344845, 24.443604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246391, 35.368774, 24.337620>,  <35.477367, 35.383133, 24.274029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246391, 35.368774, 24.337620>,  <34.861431, 35.344845, 24.443604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246391, 35.368774, 24.337620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257515, 0.109403, 0.960061,
		0.086413, -0.992196, 0.089887,
		0.962403, 0.059815, -0.264959,
		35.535110, 35.386723, 24.258131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224178, 34.778484, 24.813459>,  <34.861431, 35.344845, 24.443604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224178, 34.778484, 24.813459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517689, 35.035786, 24.726011>,  <35.693794, 35.190166, 24.673542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517689, 35.035786, 24.726011>,  <35.224178, 34.778484, 24.813459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517689, 35.035786, 24.726011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368621, -0.106646, 0.923442,
		0.570695, -0.758187, -0.315372,
		0.733775, 0.643257, -0.218621,
		35.737820, 35.228764, 24.660425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764942, 34.505310, 25.109516>,  <35.224178, 34.778484, 24.813459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764942, 34.505310, 25.109516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874508, 34.887070, 25.062037>,  <35.940247, 35.116127, 25.033548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874508, 34.887070, 25.062037>,  <35.764942, 34.505310, 25.109516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874508, 34.887070, 25.062037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477024, -0.027654, 0.878455,
		0.835116, -0.297242, -0.462847,
		0.273914, 0.954402, -0.118697,
		35.956680, 35.173389, 25.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438179, 34.485577, 25.338594>,  <35.764942, 34.505310, 25.109516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438179, 34.485577, 25.338594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339428, 34.873028, 25.349957>,  <36.280178, 35.105499, 25.356773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339428, 34.873028, 25.349957>,  <36.438179, 34.485577, 25.338594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339428, 34.873028, 25.349957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588373, 0.126538, 0.798627,
		0.769980, 0.213877, -0.601155,
		-0.246877, 0.968630, 0.028407,
		36.265366, 35.163616, 25.358479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093876, 34.847107, 25.376719>,  <36.438179, 34.485577, 25.338594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093876, 34.847107, 25.376719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811306, 35.098774, 25.506401>,  <36.641766, 35.249775, 25.584211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811306, 35.098774, 25.506401>,  <37.093876, 34.847107, 25.376719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811306, 35.098774, 25.506401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583502, 0.258423, 0.769898,
		0.400614, 0.733050, -0.549678,
		-0.706424, 0.629170, 0.324209,
		36.599380, 35.287525, 25.603664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593262, 35.424149, 25.683498>,  <37.093876, 34.847107, 25.376719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593262, 35.424149, 25.683498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217705, 35.466362, 25.814548>,  <36.992371, 35.491692, 25.893179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217705, 35.466362, 25.814548>,  <37.593262, 35.424149, 25.683498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217705, 35.466362, 25.814548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343364, 0.353495, 0.870140,
		-0.023985, 0.929464, -0.368131,
		-0.938896, 0.105532, 0.327623,
		36.936035, 35.498020, 25.912836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368359, 35.332466, 25.968079>,  <37.593262, 35.424149, 25.683498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368359, 35.332466, 25.968079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763874, 35.392185, 25.967207>,  <39.001183, 35.428017, 25.966684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763874, 35.392185, 25.967207>,  <38.368359, 35.332466, 25.968079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763874, 35.392185, 25.967207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045811, 0.289434, -0.956101,
		-0.142116, 0.945482, 0.293029,
		0.988789, 0.149302, -0.002180,
		39.060513, 35.436977, 25.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566929, 35.976830, 25.626360>,  <38.368359, 35.332466, 25.968079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566929, 35.976830, 25.626360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894882, 35.752575, 25.579920>,  <39.091656, 35.618023, 25.552055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894882, 35.752575, 25.579920>,  <38.566929, 35.976830, 25.626360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894882, 35.752575, 25.579920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012393, 0.185358, -0.982593,
		0.572393, 0.807052, 0.145025,
		0.819885, -0.560632, -0.116100,
		39.140846, 35.584385, 25.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057877, 36.393967, 25.239792>,  <38.566929, 35.976830, 25.626360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057877, 36.393967, 25.239792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162434, 36.009712, 25.202169>,  <39.225166, 35.779160, 25.179596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162434, 36.009712, 25.202169>,  <39.057877, 36.393967, 25.239792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162434, 36.009712, 25.202169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228600, 0.156284, -0.960894,
		0.937772, 0.229669, 0.260454,
		0.261392, -0.960639, -0.094056,
		39.240852, 35.721519, 25.173952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693798, 36.349251, 24.834742>,  <39.057877, 36.393967, 25.239792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693798, 36.349251, 24.834742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.571266, 35.969139, 24.812334>,  <39.497746, 35.741074, 24.798889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.571266, 35.969139, 24.812334>,  <39.693798, 36.349251, 24.834742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571266, 35.969139, 24.812334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150286, 0.009830, -0.988594,
		0.939987, -0.311257, 0.139801,
		-0.306332, -0.950275, -0.056018,
		39.479366, 35.684055, 24.795528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217979, 36.062038, 24.495596>,  <39.693798, 36.349251, 24.834742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217979, 36.062038, 24.495596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.930584, 35.789017, 24.442080>,  <39.758148, 35.625202, 24.409969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.930584, 35.789017, 24.442080>,  <40.217979, 36.062038, 24.495596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930584, 35.789017, 24.442080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250197, -0.074142, -0.965352,
		0.648985, -0.727065, 0.224042,
		-0.718484, -0.682554, -0.133792,
		39.715038, 35.584251, 24.401941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522781, 35.493256, 24.028214>,  <40.217979, 36.062038, 24.495596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522781, 35.493256, 24.028214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.125500, 35.456013, 24.000299>,  <39.887131, 35.433666, 23.983551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.125500, 35.456013, 24.000299>,  <40.522781, 35.493256, 24.028214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125500, 35.456013, 24.000299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077057, -0.076944, -0.994053,
		0.087186, -0.992678, 0.083596,
		-0.993207, -0.093109, -0.069784,
		39.827538, 35.428082, 23.979364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343456, 34.861328, 23.506813>,  <40.522781, 35.493256, 24.028214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343456, 34.861328, 23.506813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007599, 35.075455, 23.543560>,  <39.806084, 35.203930, 23.565609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007599, 35.075455, 23.543560>,  <40.343456, 34.861328, 23.506813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007599, 35.075455, 23.543560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211127, -0.165834, -0.963288,
		-0.500430, -0.828212, 0.252260,
		-0.839640, 0.535318, 0.091870,
		39.755707, 35.236050, 23.571121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960712, 34.506638, 23.076292>,  <40.343456, 34.861328, 23.506813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960712, 34.506638, 23.076292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782555, 34.860706, 23.130093>,  <39.675659, 35.073147, 23.162373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782555, 34.860706, 23.130093>,  <39.960712, 34.506638, 23.076292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782555, 34.860706, 23.130093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380739, -0.051286, -0.923259,
		-0.810349, -0.462421, 0.359864,
		-0.445391, 0.885176, 0.134502,
		39.648937, 35.126259, 23.170443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309364, 34.420792, 22.909405>,  <39.960712, 34.506638, 23.076292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309364, 34.420792, 22.909405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327213, 34.818645, 22.872053>,  <39.337921, 35.057358, 22.849642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327213, 34.818645, 22.872053>,  <39.309364, 34.420792, 22.909405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327213, 34.818645, 22.872053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382615, -0.069330, -0.921303,
		-0.922830, 0.076834, 0.377467,
		0.044618, 0.994631, -0.093378,
		39.340599, 35.117035, 22.844040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711758, 34.718155, 22.731194>,  <39.309364, 34.420792, 22.909405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711758, 34.718155, 22.731194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957767, 35.008640, 22.608324>,  <39.105373, 35.182930, 22.534603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957767, 35.008640, 22.608324>,  <38.711758, 34.718155, 22.731194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957767, 35.008640, 22.608324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413358, -0.034801, -0.909904,
		-0.671474, 0.686588, 0.278782,
		0.615027, 0.726213, -0.307175,
		39.142277, 35.226505, 22.516172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238312, 35.120136, 22.297192>,  <38.711758, 34.718155, 22.731194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238312, 35.120136, 22.297192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582378, 35.295574, 22.193085>,  <38.788818, 35.400837, 22.130621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582378, 35.295574, 22.193085>,  <38.238312, 35.120136, 22.297192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582378, 35.295574, 22.193085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388343, 0.232461, -0.891713,
		-0.330600, 0.868099, 0.370282,
		0.860171, 0.438596, -0.260269,
		38.840431, 35.427155, 22.115004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096008, 35.763206, 22.030592>,  <38.238312, 35.120136, 22.297192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096008, 35.763206, 22.030592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449093, 35.659866, 21.873577>,  <38.660942, 35.597862, 21.779369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449093, 35.659866, 21.873577>,  <38.096008, 35.763206, 22.030592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449093, 35.659866, 21.873577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311555, 0.303602, -0.900422,
		0.351797, 0.917105, 0.187502,
		0.882707, -0.258348, -0.392535,
		38.713905, 35.582363, 21.755817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332836, 36.354801, 21.584000>,  <38.096008, 35.763206, 22.030592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332836, 36.354801, 21.584000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537060, 36.036346, 21.454081>,  <38.659595, 35.845272, 21.376129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537060, 36.036346, 21.454081>,  <38.332836, 36.354801, 21.584000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537060, 36.036346, 21.454081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273648, 0.207649, -0.939148,
		0.815134, 0.568373, -0.111845,
		0.510562, -0.796137, -0.324796,
		38.690228, 35.797504, 21.356642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780430, 36.651146, 21.109137>,  <38.332836, 36.354801, 21.584000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780430, 36.651146, 21.109137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711582, 36.264397, 21.033739>,  <38.670273, 36.032349, 20.988501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711582, 36.264397, 21.033739>,  <38.780430, 36.651146, 21.109137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711582, 36.264397, 21.033739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069033, 0.202719, -0.976800,
		0.982654, -0.155114, -0.101638,
		-0.172119, -0.966873, -0.188495,
		38.659946, 35.974335, 20.977190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001614, 36.645412, 20.465578>,  <38.780430, 36.651146, 21.109137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001614, 36.645412, 20.465578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880577, 36.265213, 20.493830>,  <38.807957, 36.037094, 20.510780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880577, 36.265213, 20.493830>,  <39.001614, 36.645412, 20.465578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880577, 36.265213, 20.493830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034936, -0.062995, -0.997402,
		0.952480, -0.304273, -0.014145,
		-0.302592, -0.950499, 0.070631,
		38.789799, 35.980064, 20.515018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405922, 36.172165, 20.034708>,  <39.001614, 36.645412, 20.465578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405922, 36.172165, 20.034708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022221, 36.063774, 20.066715>,  <38.792000, 35.998737, 20.085920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022221, 36.063774, 20.066715>,  <39.405922, 36.172165, 20.034708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022221, 36.063774, 20.066715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126398, 0.158264, -0.979273,
		0.252697, -0.949486, -0.186067,
		-0.959254, -0.270978, 0.080021,
		38.734444, 35.982479, 20.090721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259537, 35.602531, 19.552181>,  <39.405922, 36.172165, 20.034708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259537, 35.602531, 19.552181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888466, 35.709370, 19.656548>,  <38.665825, 35.773472, 19.719168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888466, 35.709370, 19.656548>,  <39.259537, 35.602531, 19.552181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888466, 35.709370, 19.656548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281245, -0.040205, -0.958794,
		-0.245604, -0.962830, 0.112418,
		-0.927675, 0.267100, 0.260916,
		38.610165, 35.789497, 19.734823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609657, 35.216984, 19.119179>,  <39.259537, 35.602531, 19.552181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609657, 35.216984, 19.119179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404350, 35.529655, 19.260899>,  <38.281166, 35.717258, 19.345930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404350, 35.529655, 19.260899>,  <38.609657, 35.216984, 19.119179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404350, 35.529655, 19.260899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319919, 0.208809, -0.924149,
		-0.796371, -0.587685, 0.142900,
		-0.513269, 0.781681, 0.354301,
		38.250370, 35.764160, 19.367189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.818455, 35.273819, 18.834114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897358, 35.647221, 18.953884>,  <37.944698, 35.871262, 19.025745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897358, 35.647221, 18.953884>,  <37.818455, 35.273819, 18.834114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897358, 35.647221, 18.953884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339284, 0.351556, -0.872522,
		-0.919770, 0.070520, 0.386071,
		0.197256, 0.933507, 0.299425,
		37.956535, 35.927273, 19.043711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308315, 35.615685, 18.626692>,  <37.818455, 35.273819, 18.834114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308315, 35.615685, 18.626692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592556, 35.888306, 18.696587>,  <37.763100, 36.051880, 18.738523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592556, 35.888306, 18.696587>,  <37.308315, 35.615685, 18.626692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592556, 35.888306, 18.696587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207656, 0.440439, -0.873437,
		-0.672256, 0.584379, 0.454504,
		0.710600, 0.681553, 0.174738,
		37.805737, 36.092773, 18.749008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968819, 36.312035, 18.520336>,  <37.308315, 35.615685, 18.626692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968819, 36.312035, 18.520336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364582, 36.352440, 18.478630>,  <37.602039, 36.376682, 18.453606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364582, 36.352440, 18.478630>,  <36.968819, 36.312035, 18.520336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364582, 36.352440, 18.478630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127391, 0.259668, -0.957259,
		-0.069623, 0.960400, 0.269786,
		0.989406, 0.101015, -0.104267,
		37.661404, 36.382744, 18.447350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033234, 36.908680, 18.232439>,  <36.968819, 36.312035, 18.520336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033234, 36.908680, 18.232439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387543, 36.746593, 18.141928>,  <37.600128, 36.649342, 18.087622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387543, 36.746593, 18.141928>,  <37.033234, 36.908680, 18.232439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387543, 36.746593, 18.141928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091571, 0.325376, -0.941140,
		0.454994, 0.854358, 0.251103,
		0.885774, -0.405219, -0.226279,
		37.653275, 36.625027, 18.074043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583324, 37.439510, 17.953882>,  <37.033234, 36.908680, 18.232439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583324, 37.439510, 17.953882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700928, 37.081654, 17.819313>,  <37.771492, 36.866940, 17.738571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700928, 37.081654, 17.819313>,  <37.583324, 37.439510, 17.953882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700928, 37.081654, 17.819313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047548, 0.365235, -0.929700,
		0.954618, 0.257348, 0.149922,
		0.294013, -0.894637, -0.336423,
		37.789131, 36.813263, 17.718386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048180, 37.600212, 17.389877>,  <37.583324, 37.439510, 17.953882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048180, 37.600212, 17.389877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974991, 37.210094, 17.340374>,  <37.931076, 36.976025, 17.310673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974991, 37.210094, 17.340374>,  <38.048180, 37.600212, 17.389877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974991, 37.210094, 17.340374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175852, 0.091384, -0.980166,
		0.967262, -0.201109, 0.154787,
		-0.182975, -0.975297, -0.123757,
		37.920097, 36.917507, 17.303247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507973, 37.467838, 16.969576>,  <38.048180, 37.600212, 17.389877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507973, 37.467838, 16.969576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256516, 37.158417, 16.937498>,  <38.105640, 36.972763, 16.918251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256516, 37.158417, 16.937498>,  <38.507973, 37.467838, 16.969576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256516, 37.158417, 16.937498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070188, 0.046266, -0.996460,
		0.774522, -0.632045, 0.025210,
		-0.628641, -0.773550, -0.080196,
		38.067924, 36.926353, 16.913439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708832, 37.052700, 16.531349>,  <38.507973, 37.467838, 16.969576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708832, 37.052700, 16.531349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324390, 36.943409, 16.515230>,  <38.093723, 36.877834, 16.505558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324390, 36.943409, 16.515230>,  <38.708832, 37.052700, 16.531349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324390, 36.943409, 16.515230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069325, -0.097433, -0.992825,
		0.267340, -0.957003, 0.112584,
		-0.961105, -0.273227, -0.040297,
		38.036060, 36.861443, 16.503141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776840, 36.740860, 15.951609>,  <38.708832, 37.052700, 16.531349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776840, 36.740860, 15.951609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378864, 36.775265, 15.930828>,  <38.140079, 36.795906, 15.918360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378864, 36.775265, 15.930828>,  <38.776840, 36.740860, 15.951609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378864, 36.775265, 15.930828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035169, -0.186250, -0.981873,
		-0.094123, -0.978731, 0.182282,
		-0.994939, 0.086006, -0.051952,
		38.080383, 36.801067, 15.915242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581547, 36.232361, 15.447038>,  <38.776840, 36.740860, 15.951609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581547, 36.232361, 15.447038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266979, 36.479122, 15.459569>,  <38.078239, 36.627178, 15.467088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266979, 36.479122, 15.459569>,  <38.581547, 36.232361, 15.447038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266979, 36.479122, 15.459569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079665, -0.050999, -0.995516,
		-0.612538, -0.785386, 0.089252,
		-0.786416, 0.616902, 0.031329,
		38.031055, 36.664192, 15.468967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082558, 36.026878, 14.975404>,  <38.581547, 36.232361, 15.447038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082558, 36.026878, 14.975404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984814, 36.409454, 15.039302>,  <37.926167, 36.639000, 15.077641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984814, 36.409454, 15.039302>,  <38.082558, 36.026878, 14.975404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984814, 36.409454, 15.039302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230596, 0.102699, -0.967614,
		-0.941868, -0.273279, 0.195456,
		-0.244355, 0.956437, 0.159746,
		37.911507, 36.696384, 15.087226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456089, 36.243565, 14.460273>,  <38.082558, 36.026878, 14.975404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456089, 36.243565, 14.460273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614315, 36.582233, 14.602640>,  <37.709251, 36.785435, 14.688061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614315, 36.582233, 14.602640>,  <37.456089, 36.243565, 14.460273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614315, 36.582233, 14.602640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314573, 0.488987, -0.813594,
		-0.862884, 0.209870, 0.459767,
		0.395569, 0.846668, 0.355919,
		37.732986, 36.836235, 14.709416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972485, 36.682686, 14.275187>,  <37.456089, 36.243565, 14.460273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972485, 36.682686, 14.275187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274628, 36.928860, 14.365234>,  <37.455914, 37.076565, 14.419263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274628, 36.928860, 14.365234>,  <36.972485, 36.682686, 14.275187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274628, 36.928860, 14.365234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246051, 0.584748, -0.773000,
		-0.607369, 0.528499, 0.593120,
		0.755356, 0.615434, 0.225120,
		37.501236, 37.113491, 14.432771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656780, 37.402599, 14.261412>,  <36.972485, 36.682686, 14.275187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656780, 37.402599, 14.261412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050331, 37.388329, 14.191319>,  <37.286461, 37.379765, 14.149262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050331, 37.388329, 14.191319>,  <36.656780, 37.402599, 14.261412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050331, 37.388329, 14.191319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111253, 0.645056, -0.755993,
		0.140008, 0.763302, 0.630689,
		0.983880, -0.035679, -0.175233,
		37.345497, 37.377625, 14.138749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946262, 38.078388, 14.132753>,  <36.656780, 37.402599, 14.261412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946262, 38.078388, 14.132753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181732, 37.815483, 13.944511>,  <37.323013, 37.657742, 13.831567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181732, 37.815483, 13.944511>,  <36.946262, 38.078388, 14.132753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181732, 37.815483, 13.944511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038285, 0.558844, -0.828388,
		0.807460, 0.505672, 0.303817,
		0.588679, -0.657259, -0.470604,
		37.358337, 37.618305, 13.803330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298935, 38.400589, 13.689268>,  <36.946262, 38.078388, 14.132753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298935, 38.400589, 13.689268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372688, 38.044350, 13.522975>,  <37.416943, 37.830605, 13.423199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372688, 38.044350, 13.522975>,  <37.298935, 38.400589, 13.689268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372688, 38.044350, 13.522975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098982, 0.404009, -0.909384,
		0.977857, 0.208829, -0.013659,
		0.184388, -0.890599, -0.415733,
		37.428005, 37.777168, 13.398255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736984, 38.555634, 13.119188>,  <37.298935, 38.400589, 13.689268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736984, 38.555634, 13.119188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630604, 38.176853, 13.047013>,  <37.566776, 37.949585, 13.003708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630604, 38.176853, 13.047013>,  <37.736984, 38.555634, 13.119188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630604, 38.176853, 13.047013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004104, 0.186064, -0.982529,
		0.963978, -0.262044, -0.045597,
		-0.265949, -0.946949, -0.180438,
		37.550819, 37.892769, 12.992882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104786, 38.520695, 12.498708>,  <37.736984, 38.555634, 13.119188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104786, 38.520695, 12.498708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828133, 38.232315, 12.516035>,  <37.662140, 38.059288, 12.526431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828133, 38.232315, 12.516035>,  <38.104786, 38.520695, 12.498708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828133, 38.232315, 12.516035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357098, 0.289211, -0.888165,
		0.627795, -0.629752, -0.457477,
		-0.691631, -0.720950, 0.043318,
		37.620644, 38.016029, 12.529031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199284, 38.141972, 11.838727>,  <38.104786, 38.520695, 12.498708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199284, 38.141972, 11.838727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825241, 38.104702, 11.975483>,  <37.600815, 38.082340, 12.057536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825241, 38.104702, 11.975483>,  <38.199284, 38.141972, 11.838727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825241, 38.104702, 11.975483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354323, 0.259562, -0.898378,
		-0.005037, -0.961221, -0.275732,
		-0.935109, -0.093173, 0.341890,
		37.544708, 38.076748, 12.078050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814663, 37.954773, 11.238228>,  <38.199284, 38.141972, 11.838727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814663, 37.954773, 11.238228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520809, 38.031322, 11.498591>,  <37.344498, 38.077251, 11.654810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520809, 38.031322, 11.498591>,  <37.814663, 37.954773, 11.238228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520809, 38.031322, 11.498591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618245, 0.206305, -0.758427,
		-0.279427, -0.959591, -0.033246,
		-0.734639, 0.191370, 0.650909,
		37.300419, 38.088734, 11.693864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187035, 37.598213, 10.991686>,  <37.814663, 37.954773, 11.238228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187035, 37.598213, 10.991686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041977, 37.896439, 11.215338>,  <36.954945, 38.075375, 11.349528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041977, 37.896439, 11.215338>,  <37.187035, 37.598213, 10.991686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041977, 37.896439, 11.215338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694317, 0.184048, -0.695738,
		-0.621624, -0.640515, 0.450915,
		-0.362640, 0.745565, 0.559129,
		36.933186, 38.120110, 11.383077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447968, 37.707672, 10.851076>,  <37.187035, 37.598213, 10.991686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447968, 37.707672, 10.851076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548008, 38.050560, 11.031135>,  <36.608032, 38.256290, 11.139170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548008, 38.050560, 11.031135>,  <36.447968, 37.707672, 10.851076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548008, 38.050560, 11.031135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544053, 0.509002, -0.667026,
		-0.800910, -0.078080, 0.593672,
		0.250099, 0.857216, 0.450145,
		36.623039, 38.307724, 11.166178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842289, 38.105907, 11.128687>,  <36.447968, 37.707672, 10.851076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842289, 38.105907, 11.128687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147736, 38.323788, 10.990011>,  <36.331001, 38.454517, 10.906806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147736, 38.323788, 10.990011>,  <35.842289, 38.105907, 11.128687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147736, 38.323788, 10.990011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571827, 0.321171, -0.754893,
		-0.299844, 0.774694, 0.556725,
		0.763615, 0.544701, -0.346689,
		36.376820, 38.487198, 10.886004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642174, 37.723366, 10.406243>,  <35.842289, 38.105907, 11.128687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642174, 37.723366, 10.406243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591923, 37.367413, 10.230823>,  <35.561771, 37.153839, 10.125570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591923, 37.367413, 10.230823>,  <35.642174, 37.723366, 10.406243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591923, 37.367413, 10.230823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579383, 0.293027, -0.760560,
		0.805316, -0.349637, 0.478770,
		-0.125628, -0.889882, -0.438553,
		35.554234, 37.100449, 10.099257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292591, 38.179356, 9.866060>,  <35.642174, 37.723366, 10.406243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292591, 38.179356, 9.866060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953781, 38.000286, 9.980700>,  <34.750496, 37.892845, 10.049483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953781, 38.000286, 9.980700>,  <35.292591, 38.179356, 9.866060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953781, 38.000286, 9.980700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211540, 0.210745, 0.954378,
		-0.487649, 0.869008, -0.083806,
		-0.847024, -0.447673, 0.286599,
		34.699673, 37.865986, 10.066679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144577, 38.475018, 10.459832>,  <35.292591, 38.179356, 9.866060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144577, 38.475018, 10.459832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927315, 38.140305, 10.487503>,  <34.796959, 37.939476, 10.504106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927315, 38.140305, 10.487503>,  <35.144577, 38.475018, 10.459832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927315, 38.140305, 10.487503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080172, 0.030326, 0.996320,
		-0.835797, 0.546701, 0.050615,
		-0.543154, -0.836779, 0.069176,
		34.764370, 37.889271, 10.508256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712513, 38.550968, 10.917368>,  <35.144577, 38.475018, 10.459832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712513, 38.550968, 10.917368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593773, 38.168999, 10.918571>,  <34.522530, 37.939819, 10.919293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593773, 38.168999, 10.918571>,  <34.712513, 38.550968, 10.917368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593773, 38.168999, 10.918571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081495, 0.028473, 0.996267,
		-0.951441, 0.295493, -0.086274,
		-0.296846, -0.954921, 0.003009,
		34.504719, 37.882523, 10.919475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028625, 38.537964, 11.307021>,  <34.712513, 38.550968, 10.917368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028625, 38.537964, 11.307021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.191784, 38.173088, 11.322652>,  <34.289680, 37.954163, 11.332030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.191784, 38.173088, 11.322652>,  <34.028625, 38.537964, 11.307021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191784, 38.173088, 11.322652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188611, -0.042309, 0.981140,
		-0.893335, -0.407572, -0.189307,
		0.407895, -0.912192, 0.039077,
		34.314152, 37.899429, 11.334374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572285, 37.991070, 11.686146>,  <34.028625, 38.537964, 11.307021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572285, 37.991070, 11.686146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935108, 37.822956, 11.695974>,  <34.152802, 37.722088, 11.701872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935108, 37.822956, 11.695974>,  <33.572285, 37.991070, 11.686146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935108, 37.822956, 11.695974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081559, -0.118163, 0.989639,
		-0.413026, -0.899666, -0.141459,
		0.907059, -0.420284, 0.024571,
		34.207226, 37.696873, 11.703346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564697, 37.398190, 12.137440>,  <33.572285, 37.991070, 11.686146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564697, 37.398190, 12.137440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960228, 37.453407, 12.114912>,  <34.197544, 37.486538, 12.101396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960228, 37.453407, 12.114912>,  <33.564697, 37.398190, 12.137440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960228, 37.453407, 12.114912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087835, -0.234152, 0.968224,
		0.120470, -0.962350, -0.243660,
		0.988823, 0.138044, -0.056320,
		34.256874, 37.494820, 12.098016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741322, 36.899418, 12.602529>,  <33.564697, 37.398190, 12.137440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741322, 36.899418, 12.602529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057419, 37.142181, 12.568625>,  <34.247078, 37.287838, 12.548284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057419, 37.142181, 12.568625>,  <33.741322, 36.899418, 12.602529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057419, 37.142181, 12.568625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243110, -0.183530, 0.952478,
		0.562511, -0.773292, -0.292578,
		0.790240, 0.606908, -0.084758,
		34.294491, 37.324253, 12.543199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157692, 36.543613, 13.046884>,  <33.741322, 36.899418, 12.602529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157692, 36.543613, 13.046884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306698, 36.910946, 12.993370>,  <34.396103, 37.131344, 12.961262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306698, 36.910946, 12.993370>,  <34.157692, 36.543613, 13.046884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306698, 36.910946, 12.993370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407891, -0.032531, 0.912451,
		0.833580, -0.394474, -0.386697,
		0.372518, 0.918331, -0.133785,
		34.418453, 37.186447, 12.953235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767368, 36.516224, 13.218987>,  <34.157692, 36.543613, 13.046884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767368, 36.516224, 13.218987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720333, 36.913074, 13.236202>,  <34.692112, 37.151184, 13.246531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720333, 36.913074, 13.236202>,  <34.767368, 36.516224, 13.218987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720333, 36.913074, 13.236202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407568, 0.008696, 0.913133,
		0.905572, 0.124914, -0.405383,
		-0.117588, 0.992130, 0.043037,
		34.685055, 37.210712, 13.249113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411598, 36.751331, 13.405837>,  <34.767368, 36.516224, 13.218987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411598, 36.751331, 13.405837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129562, 37.008064, 13.526436>,  <34.960342, 37.162106, 13.598795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129562, 37.008064, 13.526436>,  <35.411598, 36.751331, 13.405837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129562, 37.008064, 13.526436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354752, -0.048877, 0.933682,
		0.614007, 0.765283, -0.193230,
		-0.705086, 0.641836, 0.301497,
		34.918037, 37.200615, 13.616885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750950, 37.126770, 13.852468>,  <35.411598, 36.751331, 13.405837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750950, 37.126770, 13.852468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375175, 37.223354, 13.949762>,  <35.149712, 37.281303, 14.008140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375175, 37.223354, 13.949762>,  <35.750950, 37.126770, 13.852468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375175, 37.223354, 13.949762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248302, -0.009712, 0.968634,
		0.236247, 0.970362, -0.050831,
		-0.939432, 0.241459, 0.243237,
		35.093346, 37.295792, 14.022734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782795, 37.499878, 14.543541>,  <35.750950, 37.126770, 13.852468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782795, 37.499878, 14.543541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388569, 37.432430, 14.537386>,  <35.152035, 37.391960, 14.533693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388569, 37.432430, 14.537386>,  <35.782795, 37.499878, 14.543541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388569, 37.432430, 14.537386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044545, -0.345885, 0.937219,
		-0.163357, 0.923001, 0.348402,
		-0.985561, -0.168621, -0.015388,
		35.092899, 37.381844, 14.532769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536617, 37.782898, 15.086680>,  <35.782795, 37.499878, 14.543541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536617, 37.782898, 15.086680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258224, 37.510151, 14.996653>,  <35.091187, 37.346500, 14.942636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258224, 37.510151, 14.996653>,  <35.536617, 37.782898, 15.086680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258224, 37.510151, 14.996653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010313, -0.322903, 0.946376,
		-0.717982, 0.656343, 0.231768,
		-0.695986, -0.681871, -0.225069,
		35.049427, 37.305588, 14.929132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996632, 37.839027, 15.534878>,  <35.536617, 37.782898, 15.086680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996632, 37.839027, 15.534878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005871, 37.462280, 15.400806>,  <35.011414, 37.236233, 15.320364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005871, 37.462280, 15.400806>,  <34.996632, 37.839027, 15.534878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005871, 37.462280, 15.400806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050665, -0.333733, 0.941305,
		-0.998448, -0.038728, 0.040010,
		0.023102, -0.941872, -0.335178,
		35.012802, 37.179718, 15.300253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658524, 37.513058, 16.124454>,  <34.996632, 37.839027, 15.534878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658524, 37.513058, 16.124454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877975, 37.240932, 15.930060>,  <35.009647, 37.077656, 15.813424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877975, 37.240932, 15.930060>,  <34.658524, 37.513058, 16.124454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877975, 37.240932, 15.930060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174660, -0.475188, 0.862375,
		-0.817620, -0.558004, -0.141877,
		0.548627, -0.680315, -0.485984,
		35.042564, 37.036839, 15.784266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327122, 36.859077, 16.260227>,  <34.658524, 37.513058, 16.124454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327122, 36.859077, 16.260227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689491, 36.740456, 16.139324>,  <34.906914, 36.669281, 16.066782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689491, 36.740456, 16.139324>,  <34.327122, 36.859077, 16.260227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689491, 36.740456, 16.139324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059959, -0.616776, 0.784852,
		-0.419179, -0.729137, -0.540969,
		0.905922, -0.296557, -0.302258,
		34.961269, 36.651489, 16.048647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321255, 36.188713, 16.124258>,  <34.327122, 36.859077, 16.260227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321255, 36.188713, 16.124258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707172, 36.241478, 16.215271>,  <34.938725, 36.273136, 16.269878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707172, 36.241478, 16.215271>,  <34.321255, 36.188713, 16.124258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707172, 36.241478, 16.215271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120416, -0.547576, 0.828046,
		0.233820, -0.826293, -0.512414,
		0.964794, 0.131911, 0.227534,
		34.996613, 36.281052, 16.283531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575855, 35.597275, 16.332724>,  <34.321255, 36.188713, 16.124258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575855, 35.597275, 16.332724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864689, 35.832973, 16.477707>,  <35.037991, 35.974392, 16.564697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864689, 35.832973, 16.477707>,  <34.575855, 35.597275, 16.332724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864689, 35.832973, 16.477707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022935, -0.503253, 0.863835,
		0.691421, -0.632077, -0.349878,
		0.722088, 0.589249, 0.362456,
		35.081314, 36.009747, 16.586443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077610, 35.209515, 16.652548>,  <34.575855, 35.597275, 16.332724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077610, 35.209515, 16.652548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150440, 35.555706, 16.839220>,  <35.194138, 35.763420, 16.951223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150440, 35.555706, 16.839220>,  <35.077610, 35.209515, 16.652548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150440, 35.555706, 16.839220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195275, -0.496986, 0.845501,
		0.963700, -0.062812, -0.259495,
		0.182073, 0.865482, 0.466680,
		35.205063, 35.815350, 16.979223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552326, 34.964649, 17.244020>,  <35.077610, 35.209515, 16.652548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552326, 34.964649, 17.244020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417221, 35.329151, 17.338289>,  <35.336159, 35.547852, 17.394850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417221, 35.329151, 17.338289>,  <35.552326, 34.964649, 17.244020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417221, 35.329151, 17.338289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091973, -0.281140, 0.955250,
		0.936728, 0.300970, 0.178768,
		-0.337760, 0.911251, 0.235670,
		35.315891, 35.602528, 17.408991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.830963, 35.143787, 21.303276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492256, 35.311428, 21.434330>,  <39.289032, 35.412010, 21.512962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492256, 35.311428, 21.434330>,  <39.830963, 35.143787, 21.303276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492256, 35.311428, 21.434330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298868, -0.134709, 0.944739,
		0.440075, 0.897891, -0.011188,
		-0.846766, 0.419100, 0.327633,
		39.238228, 35.437157, 21.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066902, 35.606792, 21.758329>,  <39.830963, 35.143787, 21.303276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066902, 35.606792, 21.758329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686832, 35.539268, 21.863148>,  <39.458790, 35.498753, 21.926039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686832, 35.539268, 21.863148>,  <40.066902, 35.606792, 21.758329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686832, 35.539268, 21.863148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262222, 0.021642, 0.964765,
		-0.168533, 0.985411, 0.023702,
		-0.950177, -0.168810, 0.262044,
		39.401779, 35.488625, 21.941761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948360, 36.158676, 22.218506>,  <40.066902, 35.606792, 21.758329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948360, 36.158676, 22.218506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671143, 35.880318, 22.293783>,  <39.504810, 35.713303, 22.338949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671143, 35.880318, 22.293783>,  <39.948360, 36.158676, 22.218506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671143, 35.880318, 22.293783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140688, 0.125472, 0.982071,
		-0.707034, 0.707095, 0.010947,
		-0.693044, -0.695898, 0.188193,
		39.463230, 35.671547, 22.350241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548122, 36.427723, 22.762083>,  <39.948360, 36.158676, 22.218506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548122, 36.427723, 22.762083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485435, 36.033470, 22.787287>,  <39.447823, 35.796917, 22.802408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485435, 36.033470, 22.787287>,  <39.548122, 36.427723, 22.762083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485435, 36.033470, 22.787287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095784, 0.048328, 0.994228,
		-0.982987, 0.161853, 0.086833,
		-0.156722, -0.985631, 0.063009,
		39.438419, 35.737782, 22.806189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106045, 36.317810, 23.342152>,  <39.548122, 36.427723, 22.762083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106045, 36.317810, 23.342152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.278496, 35.963379, 23.274029>,  <39.381966, 35.750721, 23.233154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.278496, 35.963379, 23.274029>,  <39.106045, 36.317810, 23.342152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278496, 35.963379, 23.274029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007844, -0.192423, 0.981281,
		-0.902259, -0.421717, -0.089909,
		0.431124, -0.886075, -0.170307,
		39.407833, 35.697556, 23.222937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678493, 35.901932, 23.574350>,  <39.106045, 36.317810, 23.342152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678493, 35.901932, 23.574350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030510, 35.711975, 23.573257>,  <39.241718, 35.598000, 23.572601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030510, 35.711975, 23.573257>,  <38.678493, 35.901932, 23.574350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030510, 35.711975, 23.573257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014450, 0.021026, 0.999675,
		-0.474684, -0.879791, 0.025366,
		0.880038, -0.474896, -0.002732,
		39.294521, 35.569508, 23.572437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549122, 35.338528, 23.944391>,  <38.678493, 35.901932, 23.574350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549122, 35.338528, 23.944391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948826, 35.353359, 23.948383>,  <39.188648, 35.362259, 23.950779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948826, 35.353359, 23.948383>,  <38.549122, 35.338528, 23.944391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948826, 35.353359, 23.948383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005493, -0.119167, 0.992859,
		0.038005, -0.992182, -0.118875,
		0.999262, 0.037081, 0.009979,
		39.248604, 35.364483, 23.951378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738861, 34.741024, 24.188980>,  <38.549122, 35.338528, 23.944391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738861, 34.741024, 24.188980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013344, 35.023243, 24.259769>,  <39.178036, 35.192574, 24.302242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013344, 35.023243, 24.259769>,  <38.738861, 34.741024, 24.188980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013344, 35.023243, 24.259769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045396, -0.284361, 0.957642,
		0.725984, -0.649111, -0.227161,
		0.686212, 0.705545, 0.176974,
		39.219208, 35.234905, 24.312862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020313, 34.490364, 24.811869>,  <38.738861, 34.741024, 24.188980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020313, 34.490364, 24.811869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193096, 34.850506, 24.790798>,  <39.296768, 35.066589, 24.778156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193096, 34.850506, 24.790798>,  <39.020313, 34.490364, 24.811869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193096, 34.850506, 24.790798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277705, -0.077209, 0.957559,
		0.858073, -0.428257, -0.283383,
		0.431961, 0.900352, -0.052678,
		39.322685, 35.120613, 24.774994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675026, 34.487087, 25.204399>,  <39.020313, 34.490364, 24.811869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675026, 34.487087, 25.204399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.557991, 34.868477, 25.175346>,  <39.487770, 35.097309, 25.157915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.557991, 34.868477, 25.175346>,  <39.675026, 34.487087, 25.204399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557991, 34.868477, 25.175346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254147, 0.150764, 0.955342,
		0.921846, 0.261066, -0.286436,
		-0.292592, 0.953475, -0.072631,
		39.470215, 35.154518, 25.153557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219269, 34.894478, 25.451618>,  <39.675026, 34.487087, 25.204399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219269, 34.894478, 25.451618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875446, 35.095444, 25.489006>,  <39.669151, 35.216022, 25.511438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875446, 35.095444, 25.489006>,  <40.219269, 34.894478, 25.451618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875446, 35.095444, 25.489006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216147, 0.191688, 0.957359,
		0.463072, 0.843112, -0.273363,
		-0.859561, 0.502413, 0.093471,
		39.617577, 35.246166, 25.517048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388290, 35.605904, 25.746792>,  <40.219269, 34.894478, 25.451618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388290, 35.605904, 25.746792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007484, 35.511475, 25.824705>,  <39.779003, 35.454819, 25.871454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007484, 35.511475, 25.824705>,  <40.388290, 35.605904, 25.746792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007484, 35.511475, 25.824705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183896, 0.067518, 0.980624,
		-0.244650, 0.969387, -0.020865,
		-0.952013, -0.236072, 0.194785,
		39.721882, 35.440655, 25.883141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003113, 36.207069, 26.282206>,  <40.388290, 35.605904, 25.746792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003113, 36.207069, 26.282206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889515, 35.823540, 26.281116>,  <39.821358, 35.593422, 26.280462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889515, 35.823540, 26.281116>,  <40.003113, 36.207069, 26.282206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889515, 35.823540, 26.281116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042451, -0.015411, 0.998980,
		-0.957886, 0.283588, 0.045080,
		-0.283993, -0.958822, -0.002723,
		39.804317, 35.535892, 26.280300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429115, 36.191032, 26.749672>,  <40.003113, 36.207069, 26.282206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429115, 36.191032, 26.749672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594570, 35.826881, 26.754110>,  <39.693844, 35.608391, 26.756773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594570, 35.826881, 26.754110>,  <39.429115, 36.191032, 26.749672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594570, 35.826881, 26.754110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231888, -0.093558, 0.968233,
		-0.880418, -0.403067, -0.249804,
		0.413634, -0.910376, 0.011096,
		39.718658, 35.553768, 26.757439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839020, 36.555927, 26.962597>,  <39.429115, 36.191032, 26.749672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839020, 36.555927, 26.962597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101120, 36.853775, 27.013493>,  <39.258381, 37.032486, 27.044029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101120, 36.853775, 27.013493>,  <38.839020, 36.555927, 26.962597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101120, 36.853775, 27.013493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477476, 0.538768, -0.694079,
		-0.585377, 0.394041, 0.708565,
		0.655248, 0.744622, 0.127237,
		39.297695, 37.077160, 27.051664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461639, 37.106018, 27.031292>,  <38.839020, 36.555927, 26.962597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461639, 37.106018, 27.031292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810562, 37.264980, 26.917343>,  <39.019917, 37.360359, 26.848974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810562, 37.264980, 26.917343>,  <38.461639, 37.106018, 27.031292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810562, 37.264980, 26.917343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464228, 0.490168, -0.737718,
		-0.153538, 0.775761, 0.612063,
		0.872306, 0.397405, -0.284871,
		39.072254, 37.384201, 26.831882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372963, 37.778061, 27.068546>,  <38.461639, 37.106018, 27.031292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372963, 37.778061, 27.068546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638504, 37.700470, 26.779638>,  <38.797829, 37.653915, 26.606295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638504, 37.700470, 26.779638>,  <38.372963, 37.778061, 27.068546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638504, 37.700470, 26.779638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373114, 0.751090, -0.544655,
		0.648140, 0.631059, 0.426237,
		0.663852, -0.193978, -0.722269,
		38.837658, 37.642277, 26.562958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647568, 38.456600, 26.878139>,  <38.372963, 37.778061, 27.068546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647568, 38.456600, 26.878139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734257, 38.217190, 26.569647>,  <38.786270, 38.073544, 26.384550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734257, 38.217190, 26.569647>,  <38.647568, 38.456600, 26.878139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734257, 38.217190, 26.569647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187471, 0.749790, -0.634563,
		0.958064, 0.282108, 0.050291,
		0.216723, -0.598523, -0.771233,
		38.799274, 38.037632, 26.338276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876602, 38.930363, 26.302452>,  <38.647568, 38.456600, 26.878139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876602, 38.930363, 26.302452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833668, 38.589893, 26.096939>,  <38.807907, 38.385612, 25.973631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833668, 38.589893, 26.096939>,  <38.876602, 38.930363, 26.302452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833668, 38.589893, 26.096939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301621, 0.520294, -0.798949,
		0.947367, 0.069213, -0.312579,
		-0.107335, -0.851178, -0.513785,
		38.801468, 38.334541, 25.942804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005470, 39.024166, 25.629723>,  <38.876602, 38.930363, 26.302452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005470, 39.024166, 25.629723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811977, 38.675961, 25.593491>,  <38.695881, 38.467037, 25.571751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811977, 38.675961, 25.593491>,  <39.005470, 39.024166, 25.629723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811977, 38.675961, 25.593491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376106, 0.300209, -0.876595,
		0.790285, -0.389966, -0.472627,
		-0.483729, -0.870518, -0.090582,
		38.666859, 38.414806, 25.566317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208614, 38.711239, 24.995152>,  <39.005470, 39.024166, 25.629723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208614, 38.711239, 24.995152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846394, 38.560825, 25.073706>,  <38.629059, 38.470577, 25.120838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846394, 38.560825, 25.073706>,  <39.208614, 38.711239, 24.995152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846394, 38.560825, 25.073706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360610, 0.438470, -0.823228,
		0.223453, -0.816297, -0.532661,
		-0.905554, -0.376036, 0.196388,
		38.574726, 38.448013, 25.132622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103374, 38.444016, 24.383966>,  <39.208614, 38.711239, 24.995152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103374, 38.444016, 24.383966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766563, 38.521839, 24.585217>,  <38.564476, 38.568535, 24.705967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766563, 38.521839, 24.585217>,  <39.103374, 38.444016, 24.383966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766563, 38.521839, 24.585217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443059, 0.282595, -0.850787,
		-0.307710, -0.939301, -0.151751,
		-0.842029, 0.194561, 0.503123,
		38.513954, 38.580208, 24.736153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615711, 38.122360, 24.100710>,  <39.103374, 38.444016, 24.383966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615711, 38.122360, 24.100710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395016, 38.397354, 24.289581>,  <38.262600, 38.562351, 24.402905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395016, 38.397354, 24.289581>,  <38.615711, 38.122360, 24.100710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395016, 38.397354, 24.289581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367431, 0.307881, -0.877613,
		-0.748719, -0.657705, 0.082733,
		-0.551738, 0.687483, 0.472177,
		38.229496, 38.603600, 24.431234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923256, 38.054955, 23.818903>,  <38.615711, 38.122360, 24.100710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923256, 38.054955, 23.818903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918179, 38.413910, 23.995325>,  <37.915131, 38.629284, 24.101177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918179, 38.413910, 23.995325>,  <37.923256, 38.054955, 23.818903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918179, 38.413910, 23.995325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542896, 0.364228, -0.756705,
		-0.839704, -0.249054, 0.482566,
		-0.012697, 0.897391, 0.441054,
		37.914368, 38.683128, 24.127642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284645, 38.307285, 23.939907>,  <37.923256, 38.054955, 23.818903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284645, 38.307285, 23.939907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499088, 38.644409, 23.920885>,  <37.627754, 38.846684, 23.909472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499088, 38.644409, 23.920885>,  <37.284645, 38.307285, 23.939907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499088, 38.644409, 23.920885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483395, 0.260327, -0.835799,
		-0.692038, 0.471068, 0.546972,
		0.536110, 0.842808, -0.047556,
		37.659920, 38.897251, 23.906618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822208, 38.834320, 23.667820>,  <37.284645, 38.307285, 23.939907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822208, 38.834320, 23.667820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175098, 39.013355, 23.609381>,  <37.386833, 39.120777, 23.574316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175098, 39.013355, 23.609381>,  <36.822208, 38.834320, 23.667820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175098, 39.013355, 23.609381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302418, 0.300859, -0.904449,
		-0.360866, 0.842109, 0.400784,
		0.882224, 0.447589, -0.146100,
		37.439766, 39.147633, 23.565552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614525, 39.414589, 23.382082>,  <36.822208, 38.834320, 23.667820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614525, 39.414589, 23.382082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993553, 39.364204, 23.264614>,  <37.220970, 39.333973, 23.194134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993553, 39.364204, 23.264614>,  <36.614525, 39.414589, 23.382082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993553, 39.364204, 23.264614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244783, 0.304619, -0.920483,
		0.205402, 0.944109, 0.257815,
		0.947571, -0.125961, -0.293671,
		37.277824, 39.326416, 23.176514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758533, 40.077377, 23.216085>,  <36.614525, 39.414589, 23.382082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758533, 40.077377, 23.216085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.013908, 39.820583, 23.046259>,  <37.167133, 39.666508, 22.944363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.013908, 39.820583, 23.046259>,  <36.758533, 40.077377, 23.216085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013908, 39.820583, 23.046259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293932, 0.306446, -0.905370,
		0.711342, 0.702812, 0.006945,
		0.638433, -0.641986, -0.424567,
		37.205437, 39.627987, 22.918888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323418, 40.659061, 22.836002>,  <36.758533, 40.077377, 23.216085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323418, 40.659061, 22.836002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933384, 40.728752, 22.781088>,  <35.699364, 40.770569, 22.748138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933384, 40.728752, 22.781088>,  <36.323418, 40.659061, 22.836002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933384, 40.728752, 22.781088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177769, -0.243606, 0.953443,
		0.132675, 0.954096, 0.268510,
		-0.975087, 0.174231, -0.137288,
		35.640858, 40.781021, 22.739901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101612, 41.202396, 23.345955>,  <36.323418, 40.659061, 22.836002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101612, 41.202396, 23.345955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.783882, 40.978363, 23.251846>,  <35.593243, 40.843945, 23.195381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.783882, 40.978363, 23.251846>,  <36.101612, 41.202396, 23.345955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783882, 40.978363, 23.251846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193228, -0.134229, 0.971929,
		-0.575939, 0.817491, -0.001601,
		-0.794328, -0.560081, -0.235270,
		35.545582, 40.810337, 23.181265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535881, 41.504387, 23.729862>,  <36.101612, 41.202396, 23.345955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535881, 41.504387, 23.729862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.389271, 41.147095, 23.625711>,  <35.301304, 40.932720, 23.563221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.389271, 41.147095, 23.625711>,  <35.535881, 41.504387, 23.729862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389271, 41.147095, 23.625711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362444, -0.120669, 0.924161,
		-0.856911, 0.433097, -0.279519,
		-0.366522, -0.893233, -0.260376,
		35.279312, 40.879124, 23.547598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920403, 41.395489, 24.134443>,  <35.535881, 41.504387, 23.729862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920403, 41.395489, 24.134443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.012531, 41.021046, 24.028120>,  <35.067806, 40.796379, 23.964327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.012531, 41.021046, 24.028120>,  <34.920403, 41.395489, 24.134443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012531, 41.021046, 24.028120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276953, -0.324911, 0.904284,
		-0.932872, -0.134658, -0.334091,
		0.230319, -0.936109, -0.265806,
		35.081627, 40.740211, 23.948378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311932, 41.138405, 24.511000>,  <34.920403, 41.395489, 24.134443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311932, 41.138405, 24.511000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585613, 40.862003, 24.417719>,  <34.749821, 40.696163, 24.361750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585613, 40.862003, 24.417719>,  <34.311932, 41.138405, 24.511000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585613, 40.862003, 24.417719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218635, -0.499406, 0.838327,
		-0.695747, -0.522600, -0.492773,
		0.684204, -0.691001, -0.233202,
		34.790874, 40.654705, 24.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958851, 40.453701, 24.540545>,  <34.311932, 41.138405, 24.511000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958851, 40.453701, 24.540545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.349384, 40.367859, 24.551302>,  <34.583702, 40.316353, 24.557756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.349384, 40.367859, 24.551302>,  <33.958851, 40.453701, 24.540545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349384, 40.367859, 24.551302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173074, -0.700662, 0.692183,
		-0.129700, -0.680455, -0.721220,
		0.976332, -0.214601, 0.026893,
		34.642284, 40.303478, 24.559370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154140, 39.689419, 24.609606>,  <33.958851, 40.453701, 24.540545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154140, 39.689419, 24.609606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474888, 39.875584, 24.759481>,  <34.667336, 39.987282, 24.849407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474888, 39.875584, 24.759481>,  <34.154140, 39.689419, 24.609606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474888, 39.875584, 24.759481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053494, -0.680501, 0.730792,
		0.595098, -0.565957, -0.570571,
		0.801871, 0.465415, 0.374690,
		34.715450, 40.015209, 24.871889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621403, 39.187241, 24.856489>,  <34.154140, 39.689419, 24.609606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621403, 39.187241, 24.856489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.731144, 39.502472, 25.076914>,  <34.796989, 39.691608, 25.209169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.731144, 39.502472, 25.076914>,  <34.621403, 39.187241, 24.856489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731144, 39.502472, 25.076914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097597, -0.592911, 0.799332,
		0.956664, -0.165518, -0.239581,
		0.274354, 0.788074, 0.551063,
		34.813450, 39.738895, 25.242233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243183, 38.936295, 25.243347>,  <34.621403, 39.187241, 24.856489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243183, 38.936295, 25.243347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.069885, 39.246628, 25.426819>,  <34.965908, 39.432827, 25.536901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.069885, 39.246628, 25.426819>,  <35.243183, 38.936295, 25.243347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069885, 39.246628, 25.426819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174544, -0.571514, 0.801814,
		0.884213, 0.267322, 0.383022,
		-0.433245, 0.775829, 0.458680,
		34.939911, 39.479378, 25.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413445, 38.903252, 26.078773>,  <35.243183, 38.936295, 25.243347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413445, 38.903252, 26.078773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138226, 39.193333, 26.089058>,  <34.973095, 39.367382, 26.095228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138226, 39.193333, 26.089058>,  <35.413445, 38.903252, 26.078773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138226, 39.193333, 26.089058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344344, -0.357477, 0.868122,
		0.638758, 0.588460, 0.495684,
		-0.688051, 0.725206, 0.025709,
		34.931808, 39.410896, 26.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437378, 39.138809, 26.701586>,  <35.413445, 38.903252, 26.078773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437378, 39.138809, 26.701586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.064842, 39.217617, 26.579090>,  <34.841320, 39.264904, 26.505592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.064842, 39.217617, 26.579090>,  <35.437378, 39.138809, 26.701586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064842, 39.217617, 26.579090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362107, -0.412234, 0.836027,
		0.038473, 0.889519, 0.455275,
		-0.931342, 0.197023, -0.306241,
		34.785439, 39.276726, 26.487217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039536, 39.569225, 27.224243>,  <35.437378, 39.138809, 26.701586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039536, 39.569225, 27.224243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795502, 39.351818, 26.993631>,  <34.649082, 39.221375, 26.855265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795502, 39.351818, 26.993631>,  <35.039536, 39.569225, 27.224243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795502, 39.351818, 26.993631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445016, -0.366974, 0.816879,
		-0.655558, 0.754931, -0.017987,
		-0.610086, -0.543516, -0.576529,
		34.612476, 39.188763, 26.820673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.984467, 42.492435, 19.666420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671219, 42.287975, 19.524744>,  <35.483269, 42.165298, 19.439739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671219, 42.287975, 19.524744>,  <35.984467, 42.492435, 19.666420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671219, 42.287975, 19.524744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226591, -0.295861, 0.927967,
		-0.579122, 0.806964, 0.115872,
		-0.783118, -0.511151, -0.354190,
		35.436283, 42.134628, 19.418488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390236, 42.786781, 20.020761>,  <35.984467, 42.492435, 19.666420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390236, 42.786781, 20.020761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290989, 42.416237, 19.907419>,  <35.231441, 42.193909, 19.839413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290989, 42.416237, 19.907419>,  <35.390236, 42.786781, 20.020761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290989, 42.416237, 19.907419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080144, -0.271873, 0.958990,
		-0.965408, 0.260654, -0.006785,
		-0.248120, -0.926361, -0.283358,
		35.216553, 42.138329, 19.822412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874378, 42.547295, 20.561842>,  <35.390236, 42.786781, 20.020761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874378, 42.547295, 20.561842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933475, 42.204464, 20.364426>,  <34.968933, 41.998764, 20.245975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933475, 42.204464, 20.364426>,  <34.874378, 42.547295, 20.561842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933475, 42.204464, 20.364426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010468, -0.500346, 0.865762,
		-0.988970, -0.122747, -0.082896,
		0.147746, -0.857081, -0.493542,
		34.977798, 41.947338, 20.216364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504955, 42.157791, 20.853334>,  <34.874378, 42.547295, 20.561842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504955, 42.157791, 20.853334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782429, 41.912346, 20.702452>,  <34.948914, 41.765079, 20.611923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782429, 41.912346, 20.702452>,  <34.504955, 42.157791, 20.853334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782429, 41.912346, 20.702452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194624, -0.344532, 0.918378,
		-0.693489, -0.710476, -0.119572,
		0.693682, -0.613614, -0.377205,
		34.990532, 41.728260, 20.589291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332478, 41.540520, 21.142498>,  <34.504955, 42.157791, 20.853334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332478, 41.540520, 21.142498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697929, 41.462921, 20.999588>,  <34.917202, 41.416363, 20.913843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697929, 41.462921, 20.999588>,  <34.332478, 41.540520, 21.142498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697929, 41.462921, 20.999588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252490, -0.418007, 0.872651,
		-0.318633, -0.887488, -0.332922,
		0.913631, -0.193996, -0.357272,
		34.972019, 41.404720, 20.892406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493877, 40.746780, 21.176172>,  <34.332478, 41.540520, 21.142498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493877, 40.746780, 21.176172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835365, 40.955074, 21.177004>,  <35.040257, 41.080051, 21.177504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835365, 40.955074, 21.177004>,  <34.493877, 40.746780, 21.176172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835365, 40.955074, 21.177004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292409, -0.482692, 0.825533,
		0.430885, -0.704165, -0.564350,
		0.853719, 0.520731, 0.002080,
		35.091480, 41.111294, 21.177628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047382, 40.275917, 21.347954>,  <34.493877, 40.746780, 21.176172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047382, 40.275917, 21.347954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182228, 40.640110, 21.443762>,  <35.263134, 40.858627, 21.501247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182228, 40.640110, 21.443762>,  <35.047382, 40.275917, 21.347954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182228, 40.640110, 21.443762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272334, -0.337843, 0.900942,
		0.901214, -0.238492, -0.361849,
		0.337115, 0.910485, 0.239520,
		35.283363, 40.913254, 21.515617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747784, 40.200214, 21.671118>,  <35.047382, 40.275917, 21.347954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747784, 40.200214, 21.671118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629082, 40.562412, 21.792452>,  <35.557861, 40.779732, 21.865252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629082, 40.562412, 21.792452>,  <35.747784, 40.200214, 21.671118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629082, 40.562412, 21.792452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327000, -0.202085, 0.923164,
		0.897222, 0.373143, -0.236127,
		-0.296755, 0.905497, 0.303333,
		35.540054, 40.834061, 21.883451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305435, 40.443272, 22.150181>,  <35.747784, 40.200214, 21.671118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305435, 40.443272, 22.150181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963604, 40.639397, 22.218645>,  <35.758507, 40.757072, 22.259724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963604, 40.639397, 22.218645>,  <36.305435, 40.443272, 22.150181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963604, 40.639397, 22.218645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229146, 0.060236, 0.971527,
		0.466043, 0.869462, -0.163829,
		-0.854574, 0.490314, 0.171161,
		35.707233, 40.786491, 22.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073559, 40.416630, 22.468161>,  <36.305435, 40.443272, 22.150181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073559, 40.416630, 22.468161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137333, 40.022007, 22.453856>,  <37.175598, 39.785233, 22.445272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137333, 40.022007, 22.453856>,  <37.073559, 40.416630, 22.468161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137333, 40.022007, 22.453856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067645, 0.025222, -0.997391,
		0.984888, 0.161441, -0.062715,
		0.159438, -0.986560, -0.035761,
		37.185165, 39.726040, 22.443127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329670, 40.357964, 21.824247>,  <37.073559, 40.416630, 22.468161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329670, 40.357964, 21.824247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291237, 39.969559, 21.911797>,  <37.268177, 39.736515, 21.964327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291237, 39.969559, 21.911797>,  <37.329670, 40.357964, 21.824247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291237, 39.969559, 21.911797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084661, -0.211123, -0.973786,
		0.991767, -0.112090, -0.061922,
		-0.096078, -0.971011, 0.218875,
		37.262413, 39.678257, 21.977459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950058, 39.988495, 21.574368>,  <37.329670, 40.357964, 21.824247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950058, 39.988495, 21.574368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633530, 39.747730, 21.617294>,  <37.443615, 39.603271, 21.643051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633530, 39.747730, 21.617294>,  <37.950058, 39.988495, 21.574368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633530, 39.747730, 21.617294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121995, -0.327438, -0.936964,
		0.599109, -0.728345, 0.332538,
		-0.791319, -0.601912, 0.107317,
		37.396133, 39.567158, 21.649488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090221, 39.626503, 21.010386>,  <37.950058, 39.988495, 21.574368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090221, 39.626503, 21.010386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721077, 39.496990, 21.093801>,  <37.499588, 39.419285, 21.143850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721077, 39.496990, 21.093801>,  <38.090221, 39.626503, 21.010386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721077, 39.496990, 21.093801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133591, -0.238737, -0.961851,
		0.361215, -0.915517, 0.177068,
		-0.922864, -0.323780, 0.208540,
		37.444218, 39.399857, 21.156364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978172, 38.852020, 20.707190>,  <38.090221, 39.626503, 21.010386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978172, 38.852020, 20.707190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619514, 39.025517, 20.742720>,  <37.404320, 39.129616, 20.764038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619514, 39.025517, 20.742720>,  <37.978172, 38.852020, 20.707190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619514, 39.025517, 20.742720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169260, -0.150432, -0.974023,
		-0.409112, -0.888391, 0.208300,
		-0.896649, 0.433741, 0.088825,
		37.350521, 39.155640, 20.769367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424046, 38.317772, 20.420458>,  <37.978172, 38.852020, 20.707190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424046, 38.317772, 20.420458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290825, 38.693558, 20.388260>,  <37.210892, 38.919029, 20.368940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290825, 38.693558, 20.388260>,  <37.424046, 38.317772, 20.420458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290825, 38.693558, 20.388260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187365, -0.149606, -0.970831,
		-0.924107, -0.308250, 0.225849,
		-0.333047, 0.939468, -0.080497,
		37.190910, 38.975399, 20.364111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825993, 38.271915, 19.951353>,  <37.424046, 38.317772, 20.420458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825993, 38.271915, 19.951353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943256, 38.654274, 19.958582>,  <37.013615, 38.883690, 19.962919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943256, 38.654274, 19.958582>,  <36.825993, 38.271915, 19.951353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943256, 38.654274, 19.958582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163794, 0.068838, -0.984090,
		-0.941929, 0.285533, 0.176750,
		0.293157, 0.955893, 0.018072,
		37.031204, 38.941044, 19.964003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240482, 38.617928, 19.727636>,  <36.825993, 38.271915, 19.951353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240482, 38.617928, 19.727636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570045, 38.840794, 19.686184>,  <36.767784, 38.974514, 19.661312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570045, 38.840794, 19.686184>,  <36.240482, 38.617928, 19.727636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570045, 38.840794, 19.686184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200348, 0.115306, -0.972916,
		-0.530129, 0.822355, 0.206629,
		0.823907, 0.557169, -0.103630,
		36.817219, 39.007946, 19.655094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047112, 39.075745, 19.349400>,  <36.240482, 38.617928, 19.727636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047112, 39.075745, 19.349400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440243, 39.144379, 19.322226>,  <36.676121, 39.185558, 19.305922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440243, 39.144379, 19.322226>,  <36.047112, 39.075745, 19.349400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440243, 39.144379, 19.322226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132752, 0.401610, -0.906138,
		-0.128198, 0.899592, 0.417491,
		0.982824, 0.171588, -0.067937,
		36.735088, 39.195854, 19.301844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056431, 39.712059, 19.134800>,  <36.047112, 39.075745, 19.349400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056431, 39.712059, 19.134800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423538, 39.581810, 19.043877>,  <36.643803, 39.503662, 18.989323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423538, 39.581810, 19.043877>,  <36.056431, 39.712059, 19.134800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423538, 39.581810, 19.043877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104623, 0.353917, -0.929407,
		0.383084, 0.876763, 0.290747,
		0.917769, -0.325622, -0.227309,
		36.698868, 39.484123, 18.975683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368591, 40.268692, 18.800802>,  <36.056431, 39.712059, 19.134800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368591, 40.268692, 18.800802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556690, 39.938122, 18.676939>,  <36.669548, 39.739780, 18.602621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556690, 39.938122, 18.676939>,  <36.368591, 40.268692, 18.800802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556690, 39.938122, 18.676939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062883, 0.318603, -0.945800,
		0.880294, 0.464228, 0.097853,
		0.470243, -0.826428, -0.309657,
		36.697762, 39.690193, 18.584042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942265, 40.475571, 18.306740>,  <36.368591, 40.268692, 18.800802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942265, 40.475571, 18.306740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855362, 40.089703, 18.247135>,  <36.803219, 39.858181, 18.211372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855362, 40.089703, 18.247135>,  <36.942265, 40.475571, 18.306740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855362, 40.089703, 18.247135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021108, 0.147978, -0.988765,
		0.975886, -0.217961, -0.011787,
		-0.217257, -0.964674, -0.149011,
		36.790184, 39.800301, 18.202433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475731, 40.217903, 17.889591>,  <36.942265, 40.475571, 18.306740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475731, 40.217903, 17.889591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169327, 39.962502, 17.859821>,  <36.985485, 39.809261, 17.841959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169327, 39.962502, 17.859821>,  <37.475731, 40.217903, 17.889591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169327, 39.962502, 17.859821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113034, -0.019818, -0.993394,
		0.632808, -0.769366, 0.087353,
		-0.766014, -0.638501, -0.074423,
		36.939522, 39.770950, 17.837494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648701, 39.781948, 17.345251>,  <37.475731, 40.217903, 17.889591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648701, 39.781948, 17.345251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257435, 39.700966, 17.364002>,  <37.022675, 39.652378, 17.375254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257435, 39.700966, 17.364002>,  <37.648701, 39.781948, 17.345251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257435, 39.700966, 17.364002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007694, -0.190142, -0.981727,
		0.207670, -0.960655, 0.184433,
		-0.978168, -0.202456, 0.046878,
		36.963985, 39.640228, 17.378065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.444309, 37.192600, 16.386290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631367, 37.545143, 16.413183>,  <32.743603, 37.756668, 16.429319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631367, 37.545143, 16.413183>,  <32.444309, 37.192600, 16.386290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631367, 37.545143, 16.413183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248517, -0.204096, 0.946881,
		0.848260, -0.426098, -0.314477,
		0.467648, 0.881354, 0.067233,
		32.771660, 37.809551, 16.433353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029167, 37.025829, 16.719053>,  <32.444309, 37.192600, 16.386290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029167, 37.025829, 16.719053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049232, 37.417233, 16.799051>,  <33.061272, 37.652077, 16.847050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049232, 37.417233, 16.799051>,  <33.029167, 37.025829, 16.719053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049232, 37.417233, 16.799051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097740, -0.204094, 0.974060,
		0.993947, -0.029311, -0.105877,
		0.050160, 0.978512, 0.199993,
		33.064281, 37.710785, 16.859049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584488, 37.150688, 17.122398>,  <33.029167, 37.025829, 16.719053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584488, 37.150688, 17.122398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.354031, 37.465897, 17.209187>,  <33.215755, 37.655022, 17.261259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.354031, 37.465897, 17.209187>,  <33.584488, 37.150688, 17.122398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354031, 37.465897, 17.209187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212111, -0.112208, 0.970782,
		0.789343, 0.605335, -0.102500,
		-0.576148, 0.788022, 0.216969,
		33.181187, 37.702305, 17.274277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029720, 37.735435, 17.400509>,  <33.584488, 37.150688, 17.122398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029720, 37.735435, 17.400509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651382, 37.771694, 17.525187>,  <33.424377, 37.793449, 17.599993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651382, 37.771694, 17.525187>,  <34.029720, 37.735435, 17.400509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651382, 37.771694, 17.525187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292825, -0.176121, 0.939806,
		0.140088, 0.980186, 0.140040,
		-0.945848, 0.090648, 0.311695,
		33.367626, 37.798889, 17.618694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116360, 38.027668, 18.015778>,  <34.029720, 37.735435, 17.400509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116360, 38.027668, 18.015778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.729912, 37.942757, 18.074499>,  <33.498043, 37.891808, 18.109732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.729912, 37.942757, 18.074499>,  <34.116360, 38.027668, 18.015778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729912, 37.942757, 18.074499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212971, -0.334363, 0.918066,
		-0.145802, 0.918226, 0.368244,
		-0.966119, -0.212281, 0.146804,
		33.440075, 37.879074, 18.118540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059586, 38.091125, 18.767916>,  <34.116360, 38.027668, 18.015778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059586, 38.091125, 18.767916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710945, 37.926804, 18.660919>,  <33.501762, 37.828209, 18.596722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710945, 37.926804, 18.660919>,  <34.059586, 38.091125, 18.767916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710945, 37.926804, 18.660919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145952, -0.303448, 0.941604,
		-0.467989, 0.859741, 0.204526,
		-0.871599, -0.410809, -0.267491,
		33.449467, 37.803562, 18.580671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576351, 38.374168, 19.261932>,  <34.059586, 38.091125, 18.767916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576351, 38.374168, 19.261932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468998, 38.020058, 19.110006>,  <33.404587, 37.807590, 19.018850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468998, 38.020058, 19.110006>,  <33.576351, 38.374168, 19.261932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468998, 38.020058, 19.110006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070012, -0.375314, 0.924250,
		-0.960765, 0.274644, 0.038748,
		-0.268382, -0.885274, -0.379817,
		33.388485, 37.754475, 18.996061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959011, 38.095303, 19.611835>,  <33.576351, 38.374168, 19.261932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959011, 38.095303, 19.611835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135029, 37.774822, 19.449631>,  <33.240639, 37.582535, 19.352308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135029, 37.774822, 19.449631>,  <32.959011, 38.095303, 19.611835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135029, 37.774822, 19.449631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208344, -0.530356, 0.821776,
		-0.873474, -0.277129, -0.400304,
		0.440042, -0.801201, -0.405514,
		33.267040, 37.534462, 19.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492817, 37.615330, 19.739599>,  <32.959011, 38.095303, 19.611835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492817, 37.615330, 19.739599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.820988, 37.393581, 19.683634>,  <33.017891, 37.260532, 19.650055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.820988, 37.393581, 19.683634>,  <32.492817, 37.615330, 19.739599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820988, 37.393581, 19.683634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268448, -0.589550, 0.761818,
		-0.504815, -0.587455, -0.632502,
		0.820426, -0.554371, -0.139913,
		33.067116, 37.227268, 19.641659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330647, 37.005058, 20.030910>,  <32.492817, 37.615330, 19.739599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330647, 37.005058, 20.030910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723431, 36.943806, 19.986528>,  <32.959099, 36.907055, 19.959900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723431, 36.943806, 19.986528>,  <32.330647, 37.005058, 20.030910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723431, 36.943806, 19.986528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021665, -0.491765, 0.870458,
		-0.187861, -0.857156, -0.479574,
		0.981957, -0.153135, -0.110954,
		33.018017, 36.897865, 19.953241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460289, 36.267208, 20.053139>,  <32.330647, 37.005058, 20.030910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460289, 36.267208, 20.053139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.801544, 36.439777, 20.170460>,  <33.006298, 36.543320, 20.240852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.801544, 36.439777, 20.170460>,  <32.460289, 36.267208, 20.053139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801544, 36.439777, 20.170460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040252, -0.614985, 0.787511,
		0.520127, -0.660051, -0.542033,
		0.853140, 0.431424, 0.293302,
		33.057487, 36.569206, 20.258450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883072, 35.784443, 20.384138>,  <32.460289, 36.267208, 20.053139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883072, 35.784443, 20.384138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071735, 36.106224, 20.528578>,  <33.184933, 36.299294, 20.615242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071735, 36.106224, 20.528578>,  <32.883072, 35.784443, 20.384138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071735, 36.106224, 20.528578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078151, -0.446037, 0.891596,
		0.878310, -0.392311, -0.273247,
		0.471661, 0.804452, 0.361099,
		33.213234, 36.347561, 20.636908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573761, 35.541576, 20.772430>,  <32.883072, 35.784443, 20.384138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573761, 35.541576, 20.772430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454826, 35.891895, 20.924517>,  <33.383465, 36.102089, 21.015768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454826, 35.891895, 20.924517>,  <33.573761, 35.541576, 20.772430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454826, 35.891895, 20.924517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012836, -0.394521, 0.918797,
		0.954687, 0.278072, 0.106063,
		-0.297336, 0.875802, 0.380214,
		33.365627, 36.154636, 21.038580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984604, 35.563065, 21.336050>,  <33.573761, 35.541576, 20.772430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984604, 35.563065, 21.336050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721264, 35.857700, 21.398037>,  <33.563259, 36.034481, 21.435228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721264, 35.857700, 21.398037>,  <33.984604, 35.563065, 21.336050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721264, 35.857700, 21.398037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004447, -0.209679, 0.977760,
		0.752699, 0.643018, 0.141318,
		-0.658349, 0.736588, 0.154966,
		33.523758, 36.078678, 21.444527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787476, 35.783482, 21.444700>,  <33.984604, 35.563065, 21.336050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787476, 35.783482, 21.444700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974892, 35.433620, 21.394991>,  <35.087341, 35.223701, 21.365166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974892, 35.433620, 21.394991>,  <34.787476, 35.783482, 21.444700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974892, 35.433620, 21.394991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069666, 0.176814, -0.981776,
		0.880689, 0.451348, 0.143779,
		0.468544, -0.874655, -0.124274,
		35.115456, 35.171223, 21.357708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257782, 35.907959, 20.855024>,  <34.787476, 35.783482, 21.444700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257782, 35.907959, 20.855024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263111, 35.508362, 20.872166>,  <35.266308, 35.268604, 20.882450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263111, 35.508362, 20.872166>,  <35.257782, 35.907959, 20.855024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263111, 35.508362, 20.872166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294848, -0.037025, -0.954827,
		0.955451, 0.025356, 0.294058,
		0.013323, -0.998993, 0.042852,
		35.267109, 35.208664, 20.885021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814716, 35.719112, 20.531521>,  <35.257782, 35.907959, 20.855024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814716, 35.719112, 20.531521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553322, 35.417149, 20.509396>,  <35.396484, 35.235970, 20.496120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553322, 35.417149, 20.509396>,  <35.814716, 35.719112, 20.531521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553322, 35.417149, 20.509396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128380, -0.038525, -0.990976,
		0.745970, -0.654692, 0.122091,
		-0.653488, -0.754913, -0.055311,
		35.357277, 35.190674, 20.492802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162323, 35.275074, 20.138069>,  <35.814716, 35.719112, 20.531521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162323, 35.275074, 20.138069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777302, 35.168980, 20.115673>,  <35.546288, 35.105324, 20.102236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777302, 35.168980, 20.115673>,  <36.162323, 35.275074, 20.138069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777302, 35.168980, 20.115673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041486, 0.059974, -0.997337,
		0.267886, -0.962317, -0.046724,
		-0.962557, -0.265235, -0.055989,
		35.488533, 35.089409, 20.098877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146702, 34.925655, 19.523851>,  <36.162323, 35.275074, 20.138069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146702, 34.925655, 19.523851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756004, 34.981171, 19.589218>,  <35.521584, 35.014481, 19.628437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756004, 34.981171, 19.589218>,  <36.146702, 34.925655, 19.523851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756004, 34.981171, 19.589218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133824, 0.200821, -0.970444,
		-0.167507, -0.969746, -0.177577,
		-0.976746, 0.138792, 0.163415,
		35.462982, 35.022808, 19.638243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686844, 34.418629, 18.963390>,  <36.146702, 34.925655, 19.523851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686844, 34.418629, 18.963390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483517, 34.731358, 19.107813>,  <35.361519, 34.918995, 19.194468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483517, 34.731358, 19.107813>,  <35.686844, 34.418629, 18.963390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483517, 34.731358, 19.107813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316602, 0.220242, -0.922636,
		-0.800859, -0.583304, 0.135574,
		-0.508318, 0.781825, 0.361058,
		35.331020, 34.965904, 19.216129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057346, 34.486252, 18.522596>,  <35.686844, 34.418629, 18.963390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057346, 34.486252, 18.522596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116329, 34.846256, 18.686666>,  <35.151718, 35.062260, 18.785109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116329, 34.846256, 18.686666>,  <35.057346, 34.486252, 18.522596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116329, 34.846256, 18.686666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257474, 0.435338, -0.862664,
		-0.954968, 0.021595, 0.295921,
		0.147454, 0.900008, 0.410174,
		35.160564, 35.116261, 18.809719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425766, 34.863121, 18.351295>,  <35.057346, 34.486252, 18.522596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425766, 34.863121, 18.351295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716503, 35.125168, 18.433773>,  <34.890945, 35.282394, 18.483259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716503, 35.125168, 18.433773>,  <34.425766, 34.863121, 18.351295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716503, 35.125168, 18.433773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110620, 0.407975, -0.906267,
		-0.677834, 0.635906, 0.369004,
		0.726845, 0.655118, 0.206196,
		34.934555, 35.321705, 18.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173332, 35.493240, 18.130356>,  <34.425766, 34.863121, 18.351295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173332, 35.493240, 18.130356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568844, 35.550301, 18.148119>,  <34.806149, 35.584538, 18.158777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568844, 35.550301, 18.148119>,  <34.173332, 35.493240, 18.130356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568844, 35.550301, 18.148119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020572, 0.424426, -0.905229,
		-0.147976, 0.894156, 0.422598,
		0.988777, 0.142646, 0.044410,
		34.865479, 35.593094, 18.161442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257969, 36.176105, 17.927919>,  <34.173332, 35.493240, 18.130356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257969, 36.176105, 17.927919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623035, 36.016975, 17.890446>,  <34.842075, 35.921497, 17.867962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623035, 36.016975, 17.890446>,  <34.257969, 36.176105, 17.927919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623035, 36.016975, 17.890446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115503, 0.470940, -0.874571,
		0.392043, 0.787371, 0.475761,
		0.912667, -0.397822, -0.093685,
		34.896835, 35.897629, 17.862341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664101, 36.801941, 17.710171>,  <34.257969, 36.176105, 17.927919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664101, 36.801941, 17.710171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859234, 36.464848, 17.619112>,  <34.976315, 36.262592, 17.564476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859234, 36.464848, 17.619112>,  <34.664101, 36.801941, 17.710171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859234, 36.464848, 17.619112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258726, 0.388651, -0.884314,
		0.833714, 0.372500, 0.407634,
		0.487834, -0.842730, -0.227648,
		35.005585, 36.212029, 17.550817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362823, 36.946873, 17.551186>,  <34.664101, 36.801941, 17.710171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362823, 36.946873, 17.551186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.301128, 36.602062, 17.358059>,  <35.264111, 36.395176, 17.242182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.301128, 36.602062, 17.358059>,  <35.362823, 36.946873, 17.551186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301128, 36.602062, 17.358059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239081, 0.441581, -0.864781,
		0.958671, -0.248817, 0.137986,
		-0.154240, -0.862031, -0.482818,
		35.254856, 36.343452, 17.213213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861446, 36.999409, 17.030519>,  <35.362823, 36.946873, 17.551186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861446, 36.999409, 17.030519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598190, 36.728489, 16.899002>,  <35.440235, 36.565937, 16.820091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598190, 36.728489, 16.899002>,  <35.861446, 36.999409, 17.030519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598190, 36.728489, 16.899002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067292, 0.382043, -0.921691,
		0.749879, -0.628731, -0.205863,
		-0.658144, -0.677304, -0.328795,
		35.400745, 36.525299, 16.800364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178089, 36.699715, 16.417995>,  <35.861446, 36.999409, 17.030519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178089, 36.699715, 16.417995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.797413, 36.577888, 16.402369>,  <35.569008, 36.504791, 16.392992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.797413, 36.577888, 16.402369>,  <36.178089, 36.699715, 16.417995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797413, 36.577888, 16.402369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034982, 0.233931, -0.971624,
		0.305066, -0.923317, -0.233284,
		-0.951689, -0.304570, -0.039065,
		35.511906, 36.486519, 16.390650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803299, 36.497570, 16.510431>,  <36.178089, 36.699715, 16.417995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803299, 36.497570, 16.510431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195038, 36.577747, 16.521008>,  <37.430080, 36.625854, 16.527353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195038, 36.577747, 16.521008>,  <36.803299, 36.497570, 16.510431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195038, 36.577747, 16.521008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071214, -0.464382, 0.882767,
		0.189226, -0.862653, -0.469067,
		0.979348, 0.200446, 0.026440,
		37.488842, 36.637882, 16.528940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086700, 35.949535, 16.865095>,  <36.803299, 36.497570, 16.510431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086700, 35.949535, 16.865095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376530, 36.225079, 16.873695>,  <37.550426, 36.390404, 16.878855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376530, 36.225079, 16.873695>,  <37.086700, 35.949535, 16.865095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376530, 36.225079, 16.873695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342362, -0.386839, 0.856238,
		0.598144, -0.613049, -0.516134,
		0.724577, 0.688859, 0.021501,
		37.593903, 36.431736, 16.880146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749428, 35.650829, 17.080753>,  <37.086700, 35.949535, 16.865095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749428, 35.650829, 17.080753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775085, 36.044598, 17.146235>,  <37.790478, 36.280857, 17.185524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775085, 36.044598, 17.146235>,  <37.749428, 35.650829, 17.080753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775085, 36.044598, 17.146235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190684, -0.173110, 0.966267,
		0.979554, -0.030763, -0.198817,
		0.064142, 0.984422, 0.163705,
		37.794327, 36.339924, 17.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363747, 35.689049, 17.445372>,  <37.749428, 35.650829, 17.080753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363747, 35.689049, 17.445372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.186806, 36.039837, 17.520475>,  <38.080643, 36.250309, 17.565538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.186806, 36.039837, 17.520475>,  <38.363747, 35.689049, 17.445372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186806, 36.039837, 17.520475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338733, -0.030481, 0.940389,
		0.830414, 0.479582, -0.283575,
		-0.442350, 0.876968, 0.187762,
		38.054100, 36.302929, 17.576803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819874, 36.039242, 17.857044>,  <38.363747, 35.689049, 17.445372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819874, 36.039242, 17.857044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463528, 36.206871, 17.927168>,  <38.249718, 36.307449, 17.969242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463528, 36.206871, 17.927168>,  <38.819874, 36.039242, 17.857044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463528, 36.206871, 17.927168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167303, -0.056108, 0.984308,
		0.422332, 0.906218, -0.020127,
		-0.890868, 0.419072, 0.175309,
		38.196266, 36.332592, 17.979761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918686, 36.594337, 18.260895>,  <38.819874, 36.039242, 17.857044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918686, 36.594337, 18.260895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532036, 36.512547, 18.322636>,  <38.300045, 36.463474, 18.359680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532036, 36.512547, 18.322636>,  <38.918686, 36.594337, 18.260895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532036, 36.512547, 18.322636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164727, -0.034617, 0.985731,
		-0.196213, 0.978260, 0.067144,
		-0.966626, -0.204474, 0.154354,
		38.242046, 36.451206, 18.368942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734169, 36.958580, 18.838717>,  <38.918686, 36.594337, 18.260895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734169, 36.958580, 18.838717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453777, 36.675461, 18.803747>,  <38.285542, 36.505589, 18.782764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453777, 36.675461, 18.803747>,  <38.734169, 36.958580, 18.838717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453777, 36.675461, 18.803747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088754, -0.208211, 0.974049,
		-0.707633, 0.675033, 0.208773,
		-0.700983, -0.707799, -0.087425,
		38.243481, 36.463120, 18.777519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335251, 37.079399, 19.365629>,  <38.734169, 36.958580, 18.838717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335251, 37.079399, 19.365629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237408, 36.708210, 19.253176>,  <38.178699, 36.485497, 19.185703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237408, 36.708210, 19.253176>,  <38.335251, 37.079399, 19.365629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237408, 36.708210, 19.253176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016519, -0.285911, 0.958114,
		-0.969481, 0.239009, 0.054608,
		-0.244611, -0.927971, -0.281134,
		38.164024, 36.429817, 19.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747158, 36.838421, 19.851292>,  <38.335251, 37.079399, 19.365629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747158, 36.838421, 19.851292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924236, 36.516232, 19.693691>,  <38.030483, 36.322918, 19.599131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924236, 36.516232, 19.693691>,  <37.747158, 36.838421, 19.851292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924236, 36.516232, 19.693691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112676, -0.385949, 0.915613,
		-0.889565, -0.449731, -0.080100,
		0.442694, -0.805472, -0.394001,
		38.057045, 36.274590, 19.575491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468220, 36.223640, 20.122166>,  <37.747158, 36.838421, 19.851292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468220, 36.223640, 20.122166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820980, 36.097660, 19.981842>,  <38.032635, 36.022072, 19.897648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820980, 36.097660, 19.981842>,  <37.468220, 36.223640, 20.122166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820980, 36.097660, 19.981842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222134, -0.378745, 0.898448,
		-0.415833, -0.870264, -0.264053,
		0.881895, -0.314949, -0.350810,
		38.085548, 36.003178, 19.876600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523827, 35.493877, 20.310003>,  <37.468220, 36.223640, 20.122166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523827, 35.493877, 20.310003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.889141, 35.646221, 20.252245>,  <38.108330, 35.737625, 20.217590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.889141, 35.646221, 20.252245>,  <37.523827, 35.493877, 20.310003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889141, 35.646221, 20.252245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293199, -0.368648, 0.882119,
		0.282730, -0.847966, -0.448349,
		0.913289, 0.380857, -0.144395,
		38.163128, 35.760479, 20.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000481, 34.957932, 20.550409>,  <37.523827, 35.493877, 20.310003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000481, 34.957932, 20.550409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236824, 35.280640, 20.551279>,  <38.378628, 35.474266, 20.551800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236824, 35.280640, 20.551279>,  <38.000481, 34.957932, 20.550409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236824, 35.280640, 20.551279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347695, -0.257068, 0.901678,
		0.728010, -0.532006, -0.432402,
		0.590855, 0.806775, 0.002172,
		38.414082, 35.522671, 20.551931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539474, 34.689812, 20.788433>,  <38.000481, 34.957932, 20.550409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539474, 34.689812, 20.788433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587963, 35.083950, 20.836428>,  <38.617058, 35.320435, 20.865225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587963, 35.083950, 20.836428>,  <38.539474, 34.689812, 20.788433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587963, 35.083950, 20.836428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440766, -0.161740, 0.882931,
		0.889399, -0.054145, -0.453913,
		0.121222, 0.985347, 0.119986,
		38.624329, 35.379555, 20.872423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278091, 34.737747, 20.979185>,  <38.539474, 34.689812, 20.788433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278091, 34.737747, 20.979185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092190, 35.070198, 21.101320>,  <38.980648, 35.269669, 21.174601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092190, 35.070198, 21.101320>,  <39.278091, 34.737747, 20.979185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092190, 35.070198, 21.101320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366987, -0.133018, 0.920666,
		0.805806, 0.539940, -0.243192,
		-0.464755, 0.831127, 0.305338,
		38.952763, 35.319534, 21.192921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.424980, 39.055717, 16.907290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097195, 39.282642, 16.939857>,  <36.900524, 39.418797, 16.959398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097195, 39.282642, 16.939857>,  <37.424980, 39.055717, 16.907290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097195, 39.282642, 16.939857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069367, 0.042842, -0.996671,
		-0.568913, -0.822387, 0.004245,
		-0.819467, 0.567314, 0.081420,
		36.851353, 39.452835, 16.964283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034710, 38.739063, 16.413435>,  <37.424980, 39.055717, 16.907290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034710, 38.739063, 16.413435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887325, 39.099884, 16.503361>,  <36.798893, 39.316376, 16.557316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887325, 39.099884, 16.503361>,  <37.034710, 38.739063, 16.413435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887325, 39.099884, 16.503361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196435, 0.160822, -0.967238,
		-0.908652, -0.400553, 0.117937,
		-0.368464, 0.902050, 0.224814,
		36.776787, 39.370499, 16.570805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468319, 38.843647, 15.914801>,  <37.034710, 38.739063, 16.413435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468319, 38.843647, 15.914801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581463, 39.212467, 16.020487>,  <36.649349, 39.433762, 16.083899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581463, 39.212467, 16.020487>,  <36.468319, 38.843647, 15.914801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581463, 39.212467, 16.020487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055827, 0.259170, -0.964217,
		-0.957535, 0.287489, 0.021834,
		0.282860, 0.922053, 0.264214,
		36.666321, 39.489082, 16.099751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360363, 39.225620, 15.279343>,  <36.468319, 38.843647, 15.914801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360363, 39.225620, 15.279343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573040, 39.481133, 15.501788>,  <36.700645, 39.634441, 15.635256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573040, 39.481133, 15.501788>,  <36.360363, 39.225620, 15.279343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573040, 39.481133, 15.501788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398330, 0.390859, -0.829797,
		-0.747421, 0.662712, -0.046630,
		0.531691, 0.638781, 0.556114,
		36.732548, 39.672768, 15.668622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131271, 39.931095, 15.091765>,  <36.360363, 39.225620, 15.279343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131271, 39.931095, 15.091765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500317, 39.983364, 15.236928>,  <36.721745, 40.014725, 15.324026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500317, 39.983364, 15.236928>,  <36.131271, 39.931095, 15.091765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500317, 39.983364, 15.236928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250091, 0.513631, -0.820754,
		-0.293654, 0.848002, 0.441203,
		0.922617, 0.130677, 0.362907,
		36.777103, 40.022568, 15.345800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382782, 40.566639, 14.990040>,  <36.131271, 39.931095, 15.091765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382782, 40.566639, 14.990040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727985, 40.372627, 15.046551>,  <36.935108, 40.256222, 15.080458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727985, 40.372627, 15.046551>,  <36.382782, 40.566639, 14.990040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727985, 40.372627, 15.046551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375079, 0.427844, -0.822353,
		0.338420, 0.762690, 0.551158,
		0.863011, -0.485029, 0.141278,
		36.986889, 40.227119, 15.088934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849564, 41.105545, 14.934656>,  <36.382782, 40.566639, 14.990040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849564, 41.105545, 14.934656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055046, 40.765965, 14.885033>,  <37.178337, 40.562218, 14.855258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055046, 40.765965, 14.885033>,  <36.849564, 41.105545, 14.934656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055046, 40.765965, 14.885033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542290, 0.433334, -0.719822,
		0.664852, 0.302501, 0.682983,
		0.513707, -0.848949, -0.124059,
		37.209160, 40.511280, 14.847815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548805, 41.332123, 14.808463>,  <36.849564, 41.105545, 14.934656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548805, 41.332123, 14.808463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496754, 40.963684, 14.661684>,  <37.465523, 40.742622, 14.573617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496754, 40.963684, 14.661684>,  <37.548805, 41.332123, 14.808463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496754, 40.963684, 14.661684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490210, 0.261924, -0.831318,
		0.861835, -0.288064, 0.417445,
		-0.130133, -0.921094, -0.366947,
		37.457714, 40.687355, 14.551600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179977, 41.254913, 14.395603>,  <37.548805, 41.332123, 14.808463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179977, 41.254913, 14.395603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936665, 40.962234, 14.272568>,  <37.790676, 40.786625, 14.198747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936665, 40.962234, 14.272568>,  <38.179977, 41.254913, 14.395603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936665, 40.962234, 14.272568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234949, 0.204174, -0.950322,
		0.758153, -0.650329, 0.047717,
		-0.608279, -0.731700, -0.307589,
		37.754181, 40.742725, 14.180291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512951, 40.980419, 13.725802>,  <38.179977, 41.254913, 14.395603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512951, 40.980419, 13.725802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140179, 40.836323, 13.709140>,  <37.916515, 40.749866, 13.699142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140179, 40.836323, 13.709140>,  <38.512951, 40.980419, 13.725802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140179, 40.836323, 13.709140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054964, 0.253858, -0.965678,
		0.358452, -0.897654, -0.256378,
		-0.931929, -0.360241, -0.041657,
		37.860600, 40.728252, 13.696643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477444, 40.457695, 13.237038>,  <38.512951, 40.980419, 13.725802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477444, 40.457695, 13.237038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116344, 40.628803, 13.255190>,  <37.899685, 40.731468, 13.266081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116344, 40.628803, 13.255190>,  <38.477444, 40.457695, 13.237038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116344, 40.628803, 13.255190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049690, 0.208484, -0.976763,
		-0.427294, -0.879514, -0.209464,
		-0.902746, 0.427773, 0.045381,
		37.845520, 40.757133, 13.268805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209339, 40.155510, 12.590899>,  <38.477444, 40.457695, 13.237038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209339, 40.155510, 12.590899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949348, 40.442200, 12.691957>,  <37.793354, 40.614212, 12.752593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949348, 40.442200, 12.691957>,  <38.209339, 40.155510, 12.590899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949348, 40.442200, 12.691957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159528, 0.196362, -0.967467,
		-0.743018, -0.669139, -0.013294,
		-0.649981, 0.716725, 0.252647,
		37.754353, 40.657219, 12.767752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000275, 40.542202, 11.926354>,  <38.209339, 40.155510, 12.590899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000275, 40.542202, 11.926354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675983, 40.612526, 12.149715>,  <37.481411, 40.654720, 12.283732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675983, 40.612526, 12.149715>,  <38.000275, 40.542202, 11.926354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675983, 40.612526, 12.149715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476996, 0.354629, -0.804185,
		-0.339409, -0.918330, -0.203646,
		-0.810726, 0.175809, 0.558404,
		37.432766, 40.665268, 12.317237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519585, 40.029140, 11.727165>,  <38.000275, 40.542202, 11.926354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519585, 40.029140, 11.727165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409176, 40.395924, 11.842409>,  <37.342930, 40.615993, 11.911555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409176, 40.395924, 11.842409>,  <37.519585, 40.029140, 11.727165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409176, 40.395924, 11.842409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469125, 0.133097, -0.873045,
		-0.838888, -0.376140, 0.393428,
		-0.276023, 0.916953, 0.288110,
		37.326370, 40.671009, 11.928843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069683, 39.441006, 11.617948>,  <37.519585, 40.029140, 11.727165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069683, 39.441006, 11.617948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956676, 39.085705, 11.473066>,  <36.888870, 38.872524, 11.386138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956676, 39.085705, 11.473066>,  <37.069683, 39.441006, 11.617948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956676, 39.085705, 11.473066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149312, -0.413702, 0.898085,
		-0.947570, 0.199645, 0.249506,
		-0.282519, -0.888253, -0.362202,
		36.871922, 38.819229, 11.364406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563084, 39.064487, 12.143073>,  <37.069683, 39.441006, 11.617948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563084, 39.064487, 12.143073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678825, 38.753662, 11.919488>,  <36.748268, 38.567165, 11.785336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678825, 38.753662, 11.919488>,  <36.563084, 39.064487, 12.143073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678825, 38.753662, 11.919488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218594, -0.514872, 0.828929,
		-0.931929, -0.362038, 0.020883,
		0.289352, -0.777068, -0.558964,
		36.765633, 38.520542, 11.751799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288837, 38.501858, 12.446440>,  <36.563084, 39.064487, 12.143073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288837, 38.501858, 12.446440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 38.366707, 12.235739>,  <36.788025, 38.285614, 12.109318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 38.366707, 12.235739>,  <36.288837, 38.501858, 12.446440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600830, 38.366707, 12.235739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340158, -0.477618, 0.810045,
		-0.525288, -0.810997, -0.257598,
		0.779978, -0.337883, -0.526754,
		36.834824, 38.265343, 12.077713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279362, 37.786686, 12.538603>,  <36.288837, 38.501858, 12.446440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279362, 37.786686, 12.538603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642872, 37.855419, 12.386499>,  <36.860977, 37.896660, 12.295238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642872, 37.855419, 12.386499>,  <36.279362, 37.786686, 12.538603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642872, 37.855419, 12.386499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396884, -0.637372, 0.660484,
		-0.128871, -0.751151, -0.647429,
		0.908777, 0.171837, -0.380258,
		36.915504, 37.906971, 12.272422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610928, 37.202682, 12.701300>,  <36.279362, 37.786686, 12.538603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610928, 37.202682, 12.701300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930603, 37.435162, 12.639959>,  <37.122406, 37.574650, 12.603155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930603, 37.435162, 12.639959>,  <36.610928, 37.202682, 12.701300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930603, 37.435162, 12.639959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445668, -0.401744, 0.799989,
		0.403343, -0.707681, -0.580087,
		0.799184, 0.581196, -0.153350,
		37.170357, 37.609520, 12.593954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154411, 36.729305, 12.794927>,  <36.610928, 37.202682, 12.701300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154411, 36.729305, 12.794927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309444, 37.096474, 12.828884>,  <37.402462, 37.316772, 12.849258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309444, 37.096474, 12.828884>,  <37.154411, 36.729305, 12.794927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309444, 37.096474, 12.828884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391754, -0.247372, 0.886192,
		0.834452, -0.310213, -0.455475,
		0.387579, 0.917919, 0.084893,
		37.425720, 37.371849, 12.854352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820236, 36.611069, 12.914791>,  <37.154411, 36.729305, 12.794927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820236, 36.611069, 12.914791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722134, 36.973682, 13.052226>,  <37.663273, 37.191250, 13.134687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722134, 36.973682, 13.052226>,  <37.820236, 36.611069, 12.914791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722134, 36.973682, 13.052226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385583, -0.233959, 0.892518,
		0.889480, 0.351379, -0.292162,
		-0.245258, 0.906530, 0.343588,
		37.648556, 37.245640, 13.155302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387184, 36.902832, 13.433250>,  <37.820236, 36.611069, 12.914791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387184, 36.902832, 13.433250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083149, 37.143707, 13.530931>,  <37.900730, 37.288235, 13.589540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083149, 37.143707, 13.530931>,  <38.387184, 36.902832, 13.433250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083149, 37.143707, 13.530931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175596, -0.171481, 0.969412,
		0.625648, 0.779718, 0.024598,
		-0.760086, 0.602192, 0.244202,
		37.855122, 37.324364, 13.604192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637527, 37.490635, 13.913324>,  <38.387184, 36.902832, 13.433250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637527, 37.490635, 13.913324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246616, 37.437889, 13.979700>,  <38.012070, 37.406242, 14.019526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246616, 37.437889, 13.979700>,  <38.637527, 37.490635, 13.913324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246616, 37.437889, 13.979700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184918, -0.147858, 0.971567,
		-0.103575, 0.980179, 0.168882,
		-0.977281, -0.131860, 0.165938,
		37.953434, 37.398331, 14.029482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602673, 37.799374, 14.535977>,  <38.637527, 37.490635, 13.913324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602673, 37.799374, 14.535977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243309, 37.623714, 14.536552>,  <38.027691, 37.518318, 14.536898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243309, 37.623714, 14.536552>,  <38.602673, 37.799374, 14.535977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243309, 37.623714, 14.536552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144874, -0.293287, 0.944984,
		-0.414568, 0.849194, 0.327114,
		-0.898412, -0.439150, 0.001438,
		37.973785, 37.491970, 14.536984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224380, 38.017544, 15.028427>,  <38.602673, 37.799374, 14.535977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224380, 38.017544, 15.028427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051937, 37.663799, 14.956828>,  <37.948471, 37.451553, 14.913869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051937, 37.663799, 14.956828>,  <38.224380, 38.017544, 15.028427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051937, 37.663799, 14.956828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027600, -0.211213, 0.977050,
		-0.901876, 0.416279, 0.115465,
		-0.431113, -0.884365, -0.178998,
		37.922604, 37.398491, 14.903129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495487, 37.927105, 15.374674>,  <38.224380, 38.017544, 15.028427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495487, 37.927105, 15.374674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616718, 37.553974, 15.296727>,  <37.689457, 37.330093, 15.249959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616718, 37.553974, 15.296727>,  <37.495487, 37.927105, 15.374674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616718, 37.553974, 15.296727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150763, -0.248844, 0.956738,
		-0.940965, -0.260588, -0.216055,
		0.303078, -0.932830, -0.194867,
		37.707642, 37.274124, 15.238267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022083, 37.487213, 15.645139>,  <37.495487, 37.927105, 15.374674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022083, 37.487213, 15.645139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353504, 37.268692, 15.596050>,  <37.552357, 37.137581, 15.566597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353504, 37.268692, 15.596050>,  <37.022083, 37.487213, 15.645139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353504, 37.268692, 15.596050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053333, -0.295186, 0.953950,
		-0.557371, -0.783849, -0.273712,
		0.828549, -0.546302, -0.122723,
		37.602070, 37.104801, 15.559234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778503, 36.819687, 15.871886>,  <37.022083, 37.487213, 15.645139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778503, 36.819687, 15.871886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.178375, 36.829632, 15.873970>,  <37.418297, 36.835598, 15.875220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.178375, 36.829632, 15.873970>,  <36.778503, 36.819687, 15.871886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178375, 36.829632, 15.873970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008829, -0.532451, 0.846415,
		0.023816, -0.846096, -0.532499,
		0.999678, 0.024860, 0.005210,
		37.478279, 36.837090, 15.875533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092117, 36.435146, 15.641524>,  <36.778503, 36.819687, 15.871886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092117, 36.435146, 15.641524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736645, 36.521351, 15.803413>,  <35.523361, 36.573074, 15.900547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736645, 36.521351, 15.803413>,  <36.092117, 36.435146, 15.641524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736645, 36.521351, 15.803413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389266, 0.111866, -0.914308,
		-0.242321, -0.970072, -0.015520,
		-0.888680, 0.215515, 0.404723,
		35.470039, 36.586006, 15.924830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659222, 36.006714, 15.260703>,  <36.092117, 36.435146, 15.641524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659222, 36.006714, 15.260703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440544, 36.310905, 15.400878>,  <35.309338, 36.493420, 15.484982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440544, 36.310905, 15.400878>,  <35.659222, 36.006714, 15.260703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440544, 36.310905, 15.400878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430901, 0.103336, -0.896463,
		-0.717952, -0.641091, 0.271197,
		-0.546690, 0.760476, 0.350437,
		35.276539, 36.539047, 15.506009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987698, 35.947517, 14.943138>,  <35.659222, 36.006714, 15.260703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987698, 35.947517, 14.943138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001820, 36.332478, 15.050867>,  <35.010292, 36.563454, 15.115504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001820, 36.332478, 15.050867>,  <34.987698, 35.947517, 14.943138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001820, 36.332478, 15.050867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634134, 0.229865, -0.738266,
		-0.772417, -0.144720, 0.618408,
		0.035308, 0.962402, 0.269323,
		35.012413, 36.621197, 15.131664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447048, 36.256615, 14.587138>,  <34.987698, 35.947517, 14.943138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447048, 36.256615, 14.587138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636665, 36.590649, 14.698800>,  <34.750435, 36.791069, 14.765798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636665, 36.590649, 14.698800>,  <34.447048, 36.256615, 14.587138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636665, 36.590649, 14.698800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244997, 0.429616, -0.869141,
		-0.845732, 0.343615, 0.408247,
		0.474039, 0.835080, 0.279155,
		34.778877, 36.841171, 14.782547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939884, 36.813534, 14.354065>,  <34.447048, 36.256615, 14.587138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939884, 36.813534, 14.354065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294823, 36.989609, 14.408981>,  <34.507786, 37.095253, 14.441932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294823, 36.989609, 14.408981>,  <33.939884, 36.813534, 14.354065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294823, 36.989609, 14.408981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123894, 0.514404, -0.848551,
		-0.444148, 0.735949, 0.510991,
		0.887346, 0.440191, 0.137292,
		34.561028, 37.121666, 14.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846210, 37.536110, 14.344478>,  <33.939884, 36.813534, 14.354065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846210, 37.536110, 14.344478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227879, 37.483742, 14.236828>,  <34.456879, 37.452320, 14.172238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227879, 37.483742, 14.236828>,  <33.846210, 37.536110, 14.344478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227879, 37.483742, 14.236828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171512, 0.497726, -0.850207,
		0.245256, 0.857397, 0.452460,
		0.954166, -0.130916, -0.269124,
		34.514130, 37.444466, 14.156091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056091, 38.102032, 13.948582>,  <33.846210, 37.536110, 14.344478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056091, 38.102032, 13.948582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.351433, 37.851887, 13.847582>,  <34.528637, 37.701801, 13.786983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.351433, 37.851887, 13.847582>,  <34.056091, 38.102032, 13.948582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351433, 37.851887, 13.847582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020533, 0.353379, -0.935255,
		0.674102, 0.695733, 0.248077,
		0.738353, -0.625363, -0.252499,
		34.572937, 37.664276, 13.771832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960217, 38.897034, 13.937744>,  <34.056091, 38.102032, 13.948582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960217, 38.897034, 13.937744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564560, 38.873856, 13.883718>,  <33.327168, 38.859951, 13.851303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564560, 38.873856, 13.883718>,  <33.960217, 38.897034, 13.937744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564560, 38.873856, 13.883718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121642, -0.192976, 0.973634,
		-0.082478, 0.979491, 0.183832,
		-0.989141, -0.057942, -0.135063,
		33.267818, 38.856472, 13.843200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691010, 39.316181, 14.503663>,  <33.960217, 38.897034, 13.937744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691010, 39.316181, 14.503663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405632, 39.071877, 14.366282>,  <33.234406, 38.925293, 14.283854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405632, 39.071877, 14.366282>,  <33.691010, 39.316181, 14.503663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405632, 39.071877, 14.366282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175029, -0.319277, 0.931358,
		-0.678497, 0.724588, 0.120885,
		-0.713447, -0.610765, -0.343452,
		33.191597, 38.888645, 14.263247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993450, 39.514320, 14.677165>,  <33.691010, 39.316181, 14.503663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993450, 39.514320, 14.677165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984970, 39.117603, 14.626722>,  <32.979881, 38.879574, 14.596457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984970, 39.117603, 14.626722>,  <32.993450, 39.514320, 14.677165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984970, 39.117603, 14.626722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239005, -0.117451, 0.963889,
		-0.970787, 0.050576, -0.234553,
		-0.021201, -0.991790, -0.126107,
		32.978611, 38.820065, 14.588890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429935, 39.405560, 15.132202>,  <32.993450, 39.514320, 14.677165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429935, 39.405560, 15.132202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581562, 39.042877, 15.058229>,  <32.672539, 38.825268, 15.013845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581562, 39.042877, 15.058229>,  <32.429935, 39.405560, 15.132202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581562, 39.042877, 15.058229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073643, -0.228771, 0.970691,
		-0.922436, -0.354335, -0.153491,
		0.379064, -0.906703, -0.184932,
		32.695282, 38.770866, 15.002749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065945, 39.010742, 15.552204>,  <32.429935, 39.405560, 15.132202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065945, 39.010742, 15.552204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373405, 38.766205, 15.476911>,  <32.557884, 38.619484, 15.431735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373405, 38.766205, 15.476911>,  <32.065945, 39.010742, 15.552204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373405, 38.766205, 15.476911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039564, -0.339142, 0.939903,
		-0.638440, -0.715013, -0.284870,
		0.768654, -0.611342, -0.188233,
		32.604000, 38.582802, 15.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892467, 38.358612, 15.811879>,  <32.065945, 39.010742, 15.552204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892467, 38.358612, 15.811879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288990, 38.322231, 15.773855>,  <32.526905, 38.300404, 15.751040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288990, 38.322231, 15.773855>,  <31.892467, 38.358612, 15.811879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288990, 38.322231, 15.773855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033910, -0.521491, 0.852583,
		-0.127117, -0.848395, -0.513874,
		0.991308, -0.090952, -0.095059,
		32.586384, 38.294945, 15.745337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975138, 37.647560, 15.979223>,  <31.892467, 38.358612, 15.811879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975138, 37.647560, 15.979223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320702, 37.845531, 16.016531>,  <32.528042, 37.964314, 16.038916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320702, 37.845531, 16.016531>,  <31.975138, 37.647560, 15.979223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320702, 37.845531, 16.016531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172758, -0.465165, 0.868203,
		0.473088, -0.733937, -0.487365,
		0.863911, 0.494933, 0.093270,
		32.579876, 37.994011, 16.044512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.610283, 42.154430, 12.773848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001312, 42.106071, 12.704864>,  <35.235928, 42.077057, 12.663473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001312, 42.106071, 12.704864>,  <34.610283, 42.154430, 12.773848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001312, 42.106071, 12.704864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169189, -0.036895, 0.984893,
		-0.125434, -0.991979, -0.015613,
		0.977569, -0.120898, -0.172460,
		35.294582, 42.069801, 12.653126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783123, 41.602089, 13.142719>,  <34.610283, 42.154430, 12.773848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783123, 41.602089, 13.142719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094315, 41.851120, 13.108906>,  <35.281029, 42.000538, 13.088618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094315, 41.851120, 13.108906>,  <34.783123, 41.602089, 13.142719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094315, 41.851120, 13.108906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001704, 0.136635, 0.990620,
		0.628288, -0.770537, 0.107360,
		0.777979, 0.622578, -0.084533,
		35.327709, 42.037895, 13.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210163, 41.452923, 13.770388>,  <34.783123, 41.602089, 13.142719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210163, 41.452923, 13.770388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338833, 41.801723, 13.622797>,  <35.416035, 42.011002, 13.534243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338833, 41.801723, 13.622797>,  <35.210163, 41.452923, 13.770388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338833, 41.801723, 13.622797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159568, 0.334191, 0.928899,
		0.933308, -0.357679, -0.031642,
		0.321673, 0.871999, -0.368978,
		35.435333, 42.063324, 13.512104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934368, 41.475945, 13.938113>,  <35.210163, 41.452923, 13.770388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934368, 41.475945, 13.938113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.785980, 41.842396, 13.877326>,  <35.696949, 42.062267, 13.840854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.785980, 41.842396, 13.877326>,  <35.934368, 41.475945, 13.938113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785980, 41.842396, 13.877326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233418, 0.250380, 0.939588,
		0.898830, 0.313088, -0.306724,
		-0.370971, 0.916125, -0.151969,
		35.674690, 42.117233, 13.831736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398479, 41.905025, 14.305820>,  <35.934368, 41.475945, 13.938113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398479, 41.905025, 14.305820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079723, 42.140217, 14.250322>,  <35.888470, 42.281334, 14.217024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079723, 42.140217, 14.250322>,  <36.398479, 41.905025, 14.305820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079723, 42.140217, 14.250322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016206, 0.250382, 0.968011,
		0.603912, 0.769146, -0.209055,
		-0.796886, 0.587982, -0.138744,
		35.840656, 42.316612, 14.208699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552673, 42.378635, 14.759917>,  <36.398479, 41.905025, 14.305820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552673, 42.378635, 14.759917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.164566, 42.438999, 14.684222>,  <35.931702, 42.475220, 14.638805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.164566, 42.438999, 14.684222>,  <36.552673, 42.378635, 14.759917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164566, 42.438999, 14.684222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119178, 0.382625, 0.916185,
		0.210671, 0.911495, -0.353262,
		-0.970265, 0.150913, -0.189239,
		35.873486, 42.484272, 14.627451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519661, 43.120079, 14.913256>,  <36.552673, 42.378635, 14.759917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519661, 43.120079, 14.913256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.168148, 42.929211, 14.910787>,  <35.957241, 42.814690, 14.909306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.168148, 42.929211, 14.910787>,  <36.519661, 43.120079, 14.913256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168148, 42.929211, 14.910787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140164, 0.245726, 0.959152,
		-0.456167, 0.843755, -0.282824,
		-0.878787, -0.477175, -0.006172,
		35.904510, 42.786057, 14.908935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193386, 43.507561, 15.353679>,  <36.519661, 43.120079, 14.913256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193386, 43.507561, 15.353679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973362, 43.173759, 15.366583>,  <35.841347, 42.973480, 15.374326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973362, 43.173759, 15.366583>,  <36.193386, 43.507561, 15.353679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973362, 43.173759, 15.366583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149602, 0.136470, 0.979283,
		-0.821614, 0.533842, -0.199910,
		-0.550064, -0.834499, 0.032261,
		35.808342, 42.923409, 15.376262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663647, 43.634453, 15.777153>,  <36.193386, 43.507561, 15.353679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663647, 43.634453, 15.777153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630615, 43.235924, 15.768067>,  <35.610794, 42.996807, 15.762616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630615, 43.235924, 15.768067>,  <35.663647, 43.634453, 15.777153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630615, 43.235924, 15.768067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266195, 0.000089, 0.963919,
		-0.960375, 0.085649, -0.265224,
		-0.082583, -0.996325, -0.022713,
		35.605839, 42.937027, 15.761253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083618, 43.449329, 16.199986>,  <35.663647, 43.634453, 15.777153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083618, 43.449329, 16.199986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298447, 43.112343, 16.182951>,  <35.427341, 42.910152, 16.172729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298447, 43.112343, 16.182951>,  <35.083618, 43.449329, 16.199986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298447, 43.112343, 16.182951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162621, -0.152945, 0.974763,
		-0.827715, -0.516589, -0.219144,
		0.537069, -0.842463, -0.042587,
		35.459568, 42.859604, 16.170176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672699, 43.007214, 16.397429>,  <35.083618, 43.449329, 16.199986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672699, 43.007214, 16.397429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.040764, 42.861752, 16.455475>,  <35.261604, 42.774475, 16.490303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.040764, 42.861752, 16.455475>,  <34.672699, 43.007214, 16.397429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040764, 42.861752, 16.455475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194717, -0.103473, 0.975386,
		-0.339685, -0.925770, -0.166022,
		0.920163, -0.363652, 0.145115,
		35.316814, 42.752655, 16.499010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581825, 42.381290, 16.639277>,  <34.672699, 43.007214, 16.397429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581825, 42.381290, 16.639277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950356, 42.478889, 16.760353>,  <35.171474, 42.537449, 16.832998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950356, 42.478889, 16.760353>,  <34.581825, 42.381290, 16.639277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950356, 42.478889, 16.760353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237112, -0.264361, 0.934822,
		0.308113, -0.933048, -0.185708,
		0.921328, 0.243997, 0.302690,
		35.226753, 42.552090, 16.851160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129223, 41.914886, 16.292944>,  <34.581825, 42.381290, 16.639277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129223, 41.914886, 16.292944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.764675, 41.753654, 16.326248>,  <33.545948, 41.656914, 16.346231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.764675, 41.753654, 16.326248>,  <34.129223, 41.914886, 16.292944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764675, 41.753654, 16.326248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108350, 0.039802, -0.993316,
		0.397072, -0.914299, -0.079948,
		-0.911370, -0.403081, 0.083260,
		33.491264, 41.632732, 16.351227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968945, 41.376923, 15.747847>,  <34.129223, 41.914886, 16.292944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968945, 41.376923, 15.747847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.611671, 41.488091, 15.889260>,  <33.397308, 41.554790, 15.974109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.611671, 41.488091, 15.889260>,  <33.968945, 41.376923, 15.747847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611671, 41.488091, 15.889260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387624, -0.077252, -0.918575,
		-0.227985, -0.957491, 0.176731,
		-0.893180, 0.277927, 0.353534,
		33.343716, 41.571468, 15.995320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550808, 41.011719, 15.336379>,  <33.968945, 41.376923, 15.747847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550808, 41.011719, 15.336379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.338722, 41.333649, 15.443066>,  <33.211472, 41.526806, 15.507077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.338722, 41.333649, 15.443066>,  <33.550808, 41.011719, 15.336379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338722, 41.333649, 15.443066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363538, 0.068392, -0.929065,
		-0.765972, -0.589564, 0.256321,
		-0.530213, 0.804821, 0.266716,
		33.179657, 41.575096, 15.523081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927879, 40.911034, 15.222136>,  <33.550808, 41.011719, 15.336379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927879, 40.911034, 15.222136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932533, 41.310944, 15.229294>,  <32.935326, 41.550888, 15.233588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932533, 41.310944, 15.229294>,  <32.927879, 40.911034, 15.222136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932533, 41.310944, 15.229294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354144, 0.020857, -0.934958,
		-0.935118, 0.004543, 0.354306,
		0.011637, 0.999772, 0.017895,
		32.936024, 41.610874, 15.234662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485165, 41.086781, 14.729783>,  <32.927879, 40.911034, 15.222136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485165, 41.086781, 14.729783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669010, 41.436367, 14.792951>,  <32.779316, 41.646118, 14.830852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669010, 41.436367, 14.792951>,  <32.485165, 41.086781, 14.729783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669010, 41.436367, 14.792951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226066, 0.287082, -0.930848,
		-0.858868, 0.392126, 0.329520,
		0.459610, 0.873968, 0.157919,
		32.806892, 41.698559, 14.840326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091228, 41.549152, 14.453424>,  <32.485165, 41.086781, 14.729783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091228, 41.549152, 14.453424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444279, 41.737038, 14.460916>,  <32.656109, 41.849770, 14.465411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444279, 41.737038, 14.460916>,  <32.091228, 41.549152, 14.453424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444279, 41.737038, 14.460916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110982, 0.246932, -0.962657,
		-0.456794, 0.847583, 0.270077,
		0.882622, 0.469709, 0.018731,
		32.709064, 41.877949, 14.466535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916325, 42.153347, 14.112431>,  <32.091228, 41.549152, 14.453424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916325, 42.153347, 14.112431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.313156, 42.111679, 14.084340>,  <32.551254, 42.086678, 14.067486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.313156, 42.111679, 14.084340>,  <31.916325, 42.153347, 14.112431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313156, 42.111679, 14.084340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056105, 0.132775, -0.989557,
		0.112404, 0.985657, 0.125878,
		0.992077, -0.104168, -0.070225,
		32.610779, 42.080429, 14.063272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165157, 42.747009, 13.715097>,  <31.916325, 42.153347, 14.112431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165157, 42.747009, 13.715097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.461433, 42.478947, 13.696093>,  <32.639198, 42.318108, 13.684690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.461433, 42.478947, 13.696093>,  <32.165157, 42.747009, 13.715097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461433, 42.478947, 13.696093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037553, 0.029312, -0.998865,
		0.670793, 0.741637, -0.003455,
		0.740693, -0.670161, -0.047513,
		32.683640, 42.277897, 13.681839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560078, 42.978703, 13.148223>,  <32.165157, 42.747009, 13.715097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560078, 42.978703, 13.148223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638767, 42.590412, 13.203338>,  <32.685982, 42.357437, 13.236406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638767, 42.590412, 13.203338>,  <32.560078, 42.978703, 13.148223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638767, 42.590412, 13.203338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155157, -0.169585, -0.973225,
		0.968104, 0.170078, -0.183977,
		0.196724, -0.970729, 0.137787,
		32.697784, 42.299194, 13.244674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130333, 42.822952, 12.768436>,  <32.560078, 42.978703, 13.148223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130333, 42.822952, 12.768436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.938457, 42.475975, 12.821255>,  <32.823330, 42.267788, 12.852946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.938457, 42.475975, 12.821255>,  <33.130333, 42.822952, 12.768436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938457, 42.475975, 12.821255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036657, -0.170172, -0.984732,
		0.876671, -0.467528, 0.113428,
		-0.479693, -0.867444, 0.132047,
		32.794548, 42.215740, 12.860868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575947, 42.288830, 12.436045>,  <33.130333, 42.822952, 12.768436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575947, 42.288830, 12.436045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202805, 42.145065, 12.445920>,  <32.978920, 42.058807, 12.451845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202805, 42.145065, 12.445920>,  <33.575947, 42.288830, 12.436045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202805, 42.145065, 12.445920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045875, -0.186481, -0.981387,
		0.357328, -0.914356, 0.190447,
		-0.932852, -0.359414, 0.024689,
		32.922951, 42.037243, 12.453326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642033, 41.541058, 12.219940>,  <33.575947, 42.288830, 12.436045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642033, 41.541058, 12.219940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270695, 41.676796, 12.159257>,  <33.047894, 41.758240, 12.122848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270695, 41.676796, 12.159257>,  <33.642033, 41.541058, 12.219940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270695, 41.676796, 12.159257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120533, -0.111258, -0.986455,
		-0.351633, -0.934057, 0.062382,
		-0.928346, 0.339351, -0.151707,
		32.992191, 41.778603, 12.113745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296295, 41.074646, 11.863918>,  <33.642033, 41.541058, 12.219940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296295, 41.074646, 11.863918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264606, 41.466797, 11.791722>,  <33.245594, 41.702087, 11.748405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264606, 41.466797, 11.791722>,  <33.296295, 41.074646, 11.863918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264606, 41.466797, 11.791722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492912, -0.118851, -0.861924,
		-0.866465, -0.157247, -0.473826,
		-0.079220, 0.980381, -0.180489,
		33.240841, 41.760910, 11.737576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164162, 40.829395, 11.170169>,  <33.296295, 41.074646, 11.863918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164162, 40.829395, 11.170169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981720, 40.518425, 10.996932>,  <32.872253, 40.331841, 10.892990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981720, 40.518425, 10.996932>,  <33.164162, 40.829395, 11.170169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981720, 40.518425, 10.996932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318591, -0.311763, 0.895156,
		-0.830943, 0.546266, -0.105484,
		-0.456107, -0.777430, -0.433093,
		32.844887, 40.285194, 10.867004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510170, 40.717793, 11.518789>,  <33.164162, 40.829395, 11.170169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510170, 40.717793, 11.518789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.656364, 40.379192, 11.363942>,  <32.744080, 40.176033, 11.271033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.656364, 40.379192, 11.363942>,  <32.510170, 40.717793, 11.518789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656364, 40.379192, 11.363942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079616, -0.442797, 0.893080,
		-0.927406, -0.295587, -0.229231,
		0.365486, -0.846498, -0.387119,
		32.766010, 40.125244, 11.247807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953176, 40.127110, 11.557425>,  <32.510170, 40.717793, 11.518789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953176, 40.127110, 11.557425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.322407, 39.974037, 11.541980>,  <32.543945, 39.882195, 11.532713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.322407, 39.974037, 11.541980>,  <31.953176, 40.127110, 11.557425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322407, 39.974037, 11.541980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125879, -0.395435, 0.909827,
		-0.363436, -0.834979, -0.413187,
		0.923076, -0.382676, -0.038609,
		32.599327, 39.859234, 11.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840225, 39.523659, 11.992057>,  <31.953176, 40.127110, 11.557425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840225, 39.523659, 11.992057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236069, 39.498875, 11.940157>,  <32.473576, 39.484005, 11.909017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236069, 39.498875, 11.940157>,  <31.840225, 39.523659, 11.992057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236069, 39.498875, 11.940157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094084, -0.403339, 0.910201,
		-0.108732, -0.912950, -0.393318,
		0.989609, -0.061963, -0.129750,
		32.532951, 39.480286, 11.901232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025890, 38.837833, 12.241661>,  <31.840225, 39.523659, 11.992057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025890, 38.837833, 12.241661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.363163, 39.052814, 12.247122>,  <32.565525, 39.181805, 12.250399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.363163, 39.052814, 12.247122>,  <32.025890, 38.837833, 12.241661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363163, 39.052814, 12.247122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240850, -0.400315, 0.884160,
		0.480662, -0.742220, -0.466984,
		0.843182, 0.537455, 0.013653,
		32.616119, 39.214050, 12.251218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632271, 38.301819, 12.272043>,  <32.025890, 38.837833, 12.241661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632271, 38.301819, 12.272043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739506, 38.654751, 12.426770>,  <32.803848, 38.866508, 12.519607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739506, 38.654751, 12.426770>,  <32.632271, 38.301819, 12.272043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739506, 38.654751, 12.426770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196345, -0.443130, 0.874691,
		0.943173, -0.158547, -0.292039,
		0.268091, 0.882326, 0.386818,
		32.819935, 38.919449, 12.542816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308624, 38.249516, 12.752293>,  <32.632271, 38.301819, 12.272043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308624, 38.249516, 12.752293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137505, 38.595753, 12.856399>,  <33.034832, 38.803493, 12.918862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137505, 38.595753, 12.856399>,  <33.308624, 38.249516, 12.752293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137505, 38.595753, 12.856399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148289, -0.216829, 0.964881,
		0.891627, 0.451369, -0.035599,
		-0.427799, 0.865593, 0.260264,
		33.009167, 38.855431, 12.934478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750668, 38.587215, 13.326795>,  <33.308624, 38.249516, 12.752293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750668, 38.587215, 13.326795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393871, 38.764603, 13.361875>,  <33.179794, 38.871037, 13.382922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393871, 38.764603, 13.361875>,  <33.750668, 38.587215, 13.326795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393871, 38.764603, 13.361875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026614, -0.142147, 0.989488,
		0.451274, 0.884946, 0.114991,
		-0.891989, 0.443470, 0.087699,
		33.126274, 38.897644, 13.388185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532452, 38.532112, 13.382417>,  <33.750668, 38.587215, 13.326795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532452, 38.532112, 13.382417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582859, 38.136974, 13.345991>,  <34.613102, 37.899891, 13.324136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582859, 38.136974, 13.345991>,  <34.532452, 38.532112, 13.382417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582859, 38.136974, 13.345991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189541, 0.066129, -0.979643,
		0.973752, 0.140711, -0.178903,
		0.126016, -0.987840, -0.091064,
		34.620663, 37.840622, 13.318672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895832, 38.448395, 12.824137>,  <34.532452, 38.532112, 13.382417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895832, 38.448395, 12.824137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718277, 38.092075, 12.862992>,  <34.611744, 37.878284, 12.886306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718277, 38.092075, 12.862992>,  <34.895832, 38.448395, 12.824137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718277, 38.092075, 12.862992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177690, -0.018748, -0.983908,
		0.878289, -0.454003, -0.149965,
		-0.443885, -0.890803, 0.097138,
		34.585110, 37.824833, 12.892134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327763, 38.097015, 12.435756>,  <34.895832, 38.448395, 12.824137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327763, 38.097015, 12.435756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.006763, 37.859802, 12.462027>,  <34.814163, 37.717472, 12.477789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.006763, 37.859802, 12.462027>,  <35.327763, 38.097015, 12.435756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006763, 37.859802, 12.462027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125868, 0.060663, -0.990191,
		0.583234, -0.802888, -0.123326,
		-0.802493, -0.593035, 0.065677,
		34.766014, 37.681892, 12.481730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514984, 37.519516, 12.186186>,  <35.327763, 38.097015, 12.435756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514984, 37.519516, 12.186186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118336, 37.557877, 12.151563>,  <34.880348, 37.580891, 12.130789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118336, 37.557877, 12.151563>,  <35.514984, 37.519516, 12.186186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118336, 37.557877, 12.151563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080588, -0.064471, -0.994660,
		-0.100972, -0.993301, 0.056202,
		-0.991620, 0.095903, -0.086558,
		34.820850, 37.586647, 12.125595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393555, 37.262630, 11.572014>,  <35.514984, 37.519516, 12.186186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393555, 37.262630, 11.572014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010963, 37.369255, 11.619510>,  <34.781410, 37.433228, 11.648007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010963, 37.369255, 11.619510>,  <35.393555, 37.262630, 11.572014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010963, 37.369255, 11.619510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149713, -0.098986, -0.983762,
		-0.250478, -0.958722, 0.134585,
		-0.956476, 0.266560, 0.118739,
		34.724022, 37.449223, 11.655131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006958, 36.760460, 11.248081>,  <35.393555, 37.262630, 11.572014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006958, 36.760460, 11.248081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.759846, 37.074078, 11.272129>,  <34.611580, 37.262249, 11.286558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.759846, 37.074078, 11.272129>,  <35.006958, 36.760460, 11.248081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759846, 37.074078, 11.272129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151318, -0.043507, -0.987527,
		-0.771653, -0.619173, 0.145518,
		-0.617781, 0.784048, 0.060120,
		34.574512, 37.309292, 11.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503365, 36.615662, 10.754887>,  <35.006958, 36.760460, 11.248081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503365, 36.615662, 10.754887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489811, 37.010162, 10.819586>,  <34.481678, 37.246861, 10.858405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489811, 37.010162, 10.819586>,  <34.503365, 36.615662, 10.754887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489811, 37.010162, 10.819586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131148, 0.156054, -0.979003,
		-0.990784, -0.054387, 0.124057,
		-0.033885, 0.986250, 0.161748,
		34.479645, 37.306038, 10.868111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950188, 36.836971, 10.518165>,  <34.503365, 36.615662, 10.754887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950188, 36.836971, 10.518165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.194691, 37.153351, 10.529187>,  <34.341393, 37.343178, 10.535801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.194691, 37.153351, 10.529187>,  <33.950188, 36.836971, 10.518165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194691, 37.153351, 10.529187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317747, 0.277150, -0.906766,
		-0.724847, 0.545509, 0.420733,
		0.611256, 0.790953, 0.027557,
		34.378067, 37.390636, 10.537455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544525, 37.365749, 10.374747>,  <33.950188, 36.836971, 10.518165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544525, 37.365749, 10.374747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905987, 37.499123, 10.267244>,  <34.122864, 37.579147, 10.202743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905987, 37.499123, 10.267244>,  <33.544525, 37.365749, 10.374747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905987, 37.499123, 10.267244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346970, 0.202157, -0.915830,
		-0.251033, 0.920846, 0.298370,
		0.903656, 0.333429, -0.268758,
		34.177082, 37.599152, 10.186617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.756008, 35.697697, 26.547235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095558, 35.626369, 26.348190>,  <36.299290, 35.583572, 26.228764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095558, 35.626369, 26.348190>,  <35.756008, 35.697697, 26.547235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095558, 35.626369, 26.348190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481589, 0.127187, -0.867119,
		0.217909, 0.975719, 0.022092,
		0.848874, -0.178314, -0.497611,
		36.350220, 35.572876, 26.198908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847542, 36.200939, 25.992266>,  <35.756008, 35.697697, 26.547235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847542, 36.200939, 25.992266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094055, 35.907089, 25.878756>,  <36.241962, 35.730782, 25.810650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094055, 35.907089, 25.878756>,  <35.847542, 36.200939, 25.992266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094055, 35.907089, 25.878756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285656, 0.127274, -0.949843,
		0.733891, 0.666434, -0.131412,
		0.616282, -0.734620, -0.283776,
		36.278938, 35.686703, 25.793623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971550, 36.436134, 25.336994>,  <35.847542, 36.200939, 25.992266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971550, 36.436134, 25.336994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055565, 36.045410, 25.353601>,  <36.105972, 35.810974, 25.363565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055565, 36.045410, 25.353601>,  <35.971550, 36.436134, 25.336994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055565, 36.045410, 25.353601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352121, -0.115193, -0.928839,
		0.912083, 0.180471, -0.368151,
		0.210037, -0.976812, 0.041518,
		36.118576, 35.752365, 25.366056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445057, 36.365879, 24.711380>,  <35.971550, 36.436134, 25.336994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445057, 36.365879, 24.711380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320847, 36.003780, 24.827385>,  <36.246319, 35.786522, 24.896988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320847, 36.003780, 24.827385>,  <36.445057, 36.365879, 24.711380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320847, 36.003780, 24.827385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263750, -0.211063, -0.941216,
		0.913240, -0.368767, -0.173217,
		-0.310529, -0.905242, 0.290014,
		36.227688, 35.732208, 24.914389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605343, 35.983665, 24.174206>,  <36.445057, 36.365879, 24.711380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605343, 35.983665, 24.174206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350010, 35.723866, 24.339460>,  <36.196808, 35.567986, 24.438612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350010, 35.723866, 24.339460>,  <36.605343, 35.983665, 24.174206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350010, 35.723866, 24.339460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169821, -0.404659, -0.898561,
		0.750791, -0.643743, 0.148010,
		-0.638336, -0.649497, 0.413135,
		36.158508, 35.529015, 24.463402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760052, 35.328941, 23.854074>,  <36.605343, 35.983665, 24.174206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760052, 35.328941, 23.854074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391865, 35.324848, 24.010349>,  <36.170952, 35.322392, 24.104115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391865, 35.324848, 24.010349>,  <36.760052, 35.328941, 23.854074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391865, 35.324848, 24.010349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371864, -0.284619, -0.883577,
		0.120234, -0.958586, 0.258179,
		-0.920468, -0.010229, 0.390685,
		36.115723, 35.321781, 24.127554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463634, 34.701130, 23.651047>,  <36.760052, 35.328941, 23.854074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463634, 34.701130, 23.651047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142380, 34.936481, 23.688541>,  <35.949627, 35.077690, 23.711037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142380, 34.936481, 23.688541>,  <36.463634, 34.701130, 23.651047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142380, 34.936481, 23.688541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391144, -0.402025, -0.827878,
		-0.449423, -0.701560, 0.553021,
		-0.803134, 0.588378, 0.093732,
		35.901440, 35.112995, 23.716661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966675, 34.348068, 23.432430>,  <36.463634, 34.701130, 23.651047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966675, 34.348068, 23.432430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796001, 34.709797, 23.427635>,  <35.693596, 34.926834, 23.424759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796001, 34.709797, 23.427635>,  <35.966675, 34.348068, 23.432430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796001, 34.709797, 23.427635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412308, -0.206300, -0.887380,
		-0.804949, -0.373689, 0.460884,
		-0.426684, 0.904321, -0.011986,
		35.667995, 34.981094, 23.424040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234940, 34.230759, 23.204653>,  <35.966675, 34.348068, 23.432430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234940, 34.230759, 23.204653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333565, 34.606014, 23.107410>,  <35.392738, 34.831169, 23.049065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333565, 34.606014, 23.107410>,  <35.234940, 34.230759, 23.204653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333565, 34.606014, 23.107410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405355, -0.128022, -0.905150,
		-0.880281, 0.321719, 0.348715,
		0.246561, 0.938140, -0.243106,
		35.407532, 34.887455, 23.034479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749363, 34.273434, 22.683052>,  <35.234940, 34.230759, 23.204653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749363, 34.273434, 22.683052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003571, 34.577682, 22.630033>,  <35.156094, 34.760231, 22.598223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003571, 34.577682, 22.630033>,  <34.749363, 34.273434, 22.683052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003571, 34.577682, 22.630033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230253, 0.022853, -0.972862,
		-0.736952, 0.648792, 0.189659,
		0.635520, 0.760623, -0.132544,
		35.194225, 34.805870, 22.590271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389038, 34.798706, 22.309593>,  <34.749363, 34.273434, 22.683052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389038, 34.798706, 22.309593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779709, 34.862408, 22.252001>,  <35.014111, 34.900631, 22.217445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779709, 34.862408, 22.252001>,  <34.389038, 34.798706, 22.309593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779709, 34.862408, 22.252001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162792, 0.112110, -0.980271,
		-0.139974, 0.980851, 0.135421,
		0.976681, 0.159258, -0.143982,
		35.072712, 34.910187, 22.208807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450500, 35.278957, 21.879229>,  <34.389038, 34.798706, 22.309593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450500, 35.278957, 21.879229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833771, 35.174267, 21.832924>,  <35.063732, 35.111454, 21.805141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833771, 35.174267, 21.832924>,  <34.450500, 35.278957, 21.879229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833771, 35.174267, 21.832924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081020, 0.139868, -0.986850,
		0.274473, 0.954954, 0.112813,
		0.958176, -0.261723, -0.115760,
		35.121223, 35.095749, 21.798197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185783, 35.872562, 21.995085>,  <34.450500, 35.278957, 21.879229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185783, 35.872562, 21.995085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812168, 35.995773, 21.922766>,  <33.587997, 36.069702, 21.879374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812168, 35.995773, 21.922766>,  <34.185783, 35.872562, 21.995085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812168, 35.995773, 21.922766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173566, 0.050967, 0.983503,
		0.312165, 0.950010, 0.005859,
		-0.934039, 0.308032, -0.180800,
		33.531956, 36.088184, 21.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022068, 36.540298, 22.409758>,  <34.185783, 35.872562, 21.995085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022068, 36.540298, 22.409758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680092, 36.355045, 22.316307>,  <33.474907, 36.243893, 22.260237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680092, 36.355045, 22.316307>,  <34.022068, 36.540298, 22.409758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680092, 36.355045, 22.316307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313564, 0.102640, 0.944004,
		-0.413223, 0.880324, -0.232974,
		-0.854941, -0.463136, -0.233625,
		33.423611, 36.216103, 22.246220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506741, 36.907715, 22.859091>,  <34.022068, 36.540298, 22.409758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506741, 36.907715, 22.859091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312588, 36.572086, 22.760815>,  <33.196095, 36.370708, 22.701849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312588, 36.572086, 22.760815>,  <33.506741, 36.907715, 22.859091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312588, 36.572086, 22.760815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436929, -0.010611, 0.899434,
		-0.757294, 0.543921, -0.361463,
		-0.485385, -0.839069, -0.245691,
		33.166973, 36.320366, 22.687107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810841, 36.949898, 23.017607>,  <33.506741, 36.907715, 22.859091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810841, 36.949898, 23.017607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855885, 36.552757, 23.033424>,  <32.882912, 36.314472, 23.042915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855885, 36.552757, 23.033424>,  <32.810841, 36.949898, 23.017607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855885, 36.552757, 23.033424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397244, -0.008508, 0.917674,
		-0.910778, -0.119052, -0.395362,
		0.112614, -0.992852, 0.039544,
		32.889668, 36.254902, 23.045288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230446, 36.743210, 23.396528>,  <32.810841, 36.949898, 23.017607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230446, 36.743210, 23.396528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474865, 36.429062, 23.436178>,  <32.621517, 36.240574, 23.459969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474865, 36.429062, 23.436178>,  <32.230446, 36.743210, 23.396528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474865, 36.429062, 23.436178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437576, -0.230762, 0.869066,
		-0.659661, -0.574411, -0.484664,
		0.611043, -0.785367, 0.099124,
		32.658176, 36.193451, 23.465916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798386, 36.158669, 23.711691>,  <32.230446, 36.743210, 23.396528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798386, 36.158669, 23.711691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174561, 36.029148, 23.753130>,  <32.400265, 35.951435, 23.777994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174561, 36.029148, 23.753130>,  <31.798386, 36.158669, 23.711691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174561, 36.029148, 23.753130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180781, -0.218224, 0.959008,
		-0.287924, -0.920613, -0.263764,
		0.940435, -0.323805, 0.103598,
		32.456692, 35.932007, 23.784210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789448, 35.442490, 23.856432>,  <31.798386, 36.158669, 23.711691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789448, 35.442490, 23.856432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128056, 35.606579, 23.992153>,  <32.331219, 35.705032, 24.073586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128056, 35.606579, 23.992153>,  <31.789448, 35.442490, 23.856432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128056, 35.606579, 23.992153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251432, -0.253709, 0.934031,
		0.469243, -0.875986, -0.111626,
		0.846518, 0.410221, 0.339302,
		32.382011, 35.729645, 24.093945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996891, 35.123985, 24.519724>,  <31.789448, 35.442490, 23.856432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996891, 35.123985, 24.519724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266567, 35.416965, 24.557619>,  <32.428375, 35.592754, 24.580357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266567, 35.416965, 24.557619>,  <31.996891, 35.123985, 24.519724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266567, 35.416965, 24.557619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220434, 0.077135, 0.972347,
		0.704892, -0.676433, 0.213462,
		0.674193, 0.732454, 0.094737,
		32.468826, 35.636703, 24.586040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499775, 34.990810, 25.148121>,  <31.996891, 35.123985, 24.519724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499775, 34.990810, 25.148121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501701, 35.384968, 25.080023>,  <32.502857, 35.621460, 25.039164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501701, 35.384968, 25.080023>,  <32.499775, 34.990810, 25.148121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501701, 35.384968, 25.080023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221415, 0.167073, 0.960761,
		0.975168, 0.033073, 0.218984,
		0.004811, 0.985390, -0.170247,
		32.503143, 35.680584, 25.028948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774628, 35.203197, 25.782991>,  <32.499775, 34.990810, 25.148121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774628, 35.203197, 25.782991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629162, 35.525539, 25.596085>,  <32.541882, 35.718945, 25.483940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629162, 35.525539, 25.596085>,  <32.774628, 35.203197, 25.782991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629162, 35.525539, 25.596085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339882, 0.352243, 0.872012,
		0.867309, 0.475939, 0.145796,
		-0.363669, 0.805858, -0.467267,
		32.520061, 35.767296, 25.455904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048145, 35.801235, 26.215136>,  <32.774628, 35.203197, 25.782991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048145, 35.801235, 26.215136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732681, 35.926617, 26.003567>,  <32.543404, 36.001846, 25.876625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732681, 35.926617, 26.003567>,  <33.048145, 35.801235, 26.215136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732681, 35.926617, 26.003567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357138, 0.466702, 0.809100,
		0.500467, 0.827003, -0.256121,
		-0.788660, 0.313457, -0.528923,
		32.496082, 36.020653, 25.844891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008472, 36.456573, 26.415638>,  <33.048145, 35.801235, 26.215136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008472, 36.456573, 26.415638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658905, 36.386044, 26.234457>,  <32.449165, 36.343723, 26.125748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658905, 36.386044, 26.234457>,  <33.008472, 36.456573, 26.415638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658905, 36.386044, 26.234457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462638, 0.587564, 0.663879,
		0.149079, 0.789732, -0.595061,
		-0.873923, -0.176328, -0.452954,
		32.396729, 36.333145, 26.098572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757179, 37.164837, 26.206484>,  <33.008472, 36.456573, 26.415638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757179, 37.164837, 26.206484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460003, 36.898582, 26.234674>,  <32.281696, 36.738831, 26.251589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460003, 36.898582, 26.234674>,  <32.757179, 37.164837, 26.206484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460003, 36.898582, 26.234674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441897, 0.566830, 0.695292,
		-0.502761, 0.485417, -0.715263,
		-0.742939, -0.665638, 0.070476,
		32.237122, 36.698891, 26.255817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179958, 37.526554, 26.149799>,  <32.757179, 37.164837, 26.206484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179958, 37.526554, 26.149799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072475, 37.194881, 26.345861>,  <32.007984, 36.995876, 26.463499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072475, 37.194881, 26.345861>,  <32.179958, 37.526554, 26.149799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072475, 37.194881, 26.345861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481708, 0.556345, 0.677080,
		-0.834119, -0.054175, -0.548918,
		-0.268708, -0.829183, 0.490154,
		31.991863, 36.946125, 26.492908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535048, 37.465534, 26.288879>,  <32.179958, 37.526554, 26.149799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535048, 37.465534, 26.288879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623316, 37.789997, 26.505518>,  <31.676277, 37.984676, 26.635502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623316, 37.789997, 26.505518>,  <31.535048, 37.465534, 26.288879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623316, 37.789997, 26.505518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277787, 0.480019, -0.832116,
		-0.934954, 0.334071, -0.119403,
		0.220670, 0.811158, 0.541596,
		31.689516, 38.033344, 26.667997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205898, 37.967239, 25.946308>,  <31.535048, 37.465534, 26.288879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205898, 37.967239, 25.946308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504480, 38.123062, 26.162106>,  <31.683630, 38.216557, 26.291584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504480, 38.123062, 26.162106>,  <31.205898, 37.967239, 25.946308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504480, 38.123062, 26.162106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150130, 0.691241, -0.706857,
		-0.648280, 0.608630, 0.457496,
		0.746454, 0.389557, 0.539491,
		31.728416, 38.239929, 26.323954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931747, 38.634716, 25.995262>,  <31.205898, 37.967239, 25.946308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931747, 38.634716, 25.995262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331076, 38.625519, 26.016537>,  <31.570673, 38.619999, 26.029303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331076, 38.625519, 26.016537>,  <30.931747, 38.634716, 25.995262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331076, 38.625519, 26.016537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054650, 0.678770, -0.732315,
		-0.019264, 0.733991, 0.678886,
		0.998320, -0.022994, 0.053189,
		31.630571, 38.618622, 26.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096224, 39.320141, 25.876261>,  <30.931747, 38.634716, 25.995262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096224, 39.320141, 25.876261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436302, 39.125378, 25.796171>,  <31.640348, 39.008518, 25.748117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436302, 39.125378, 25.796171>,  <31.096224, 39.320141, 25.876261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436302, 39.125378, 25.796171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212567, 0.665418, -0.715566,
		0.481647, 0.565809, 0.669235,
		0.850195, -0.486907, -0.200225,
		31.691360, 38.979305, 25.736103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597797, 39.922047, 25.727989>,  <31.096224, 39.320141, 25.876261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597797, 39.922047, 25.727989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740105, 39.570061, 25.602076>,  <31.825489, 39.358868, 25.526527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740105, 39.570061, 25.602076>,  <31.597797, 39.922047, 25.727989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740105, 39.570061, 25.602076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441035, 0.455038, -0.773582,
		0.823964, 0.136385, 0.549984,
		0.355769, -0.879966, -0.314784,
		31.846836, 39.306072, 25.507641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253258, 40.075623, 25.593266>,  <31.597797, 39.922047, 25.727989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253258, 40.075623, 25.593266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153194, 39.751328, 25.381559>,  <32.093159, 39.556751, 25.254536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153194, 39.751328, 25.381559>,  <32.253258, 40.075623, 25.593266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153194, 39.751328, 25.381559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436611, 0.393447, -0.809055,
		0.864172, -0.433472, 0.255556,
		-0.250155, -0.810741, -0.529265,
		32.078148, 39.508106, 25.222780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891991, 39.906696, 25.148193>,  <32.253258, 40.075623, 25.593266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891991, 39.906696, 25.148193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566296, 39.730980, 24.996378>,  <32.370880, 39.625549, 24.905289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566296, 39.730980, 24.996378>,  <32.891991, 39.906696, 25.148193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566296, 39.730980, 24.996378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303281, 0.235590, -0.923319,
		0.495019, -0.866904, -0.058598,
		-0.814234, -0.439289, -0.379537,
		32.322025, 39.599194, 24.882517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171295, 39.587452, 24.578695>,  <32.891991, 39.906696, 25.148193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171295, 39.587452, 24.578695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785435, 39.598450, 24.473862>,  <32.553917, 39.605049, 24.410961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785435, 39.598450, 24.473862>,  <33.171295, 39.587452, 24.578695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785435, 39.598450, 24.473862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253760, 0.365110, -0.895712,
		0.071063, -0.930558, -0.359182,
		-0.964653, 0.027494, -0.262084,
		32.496040, 39.606697, 24.395237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153542, 39.282711, 23.961206>,  <33.171295, 39.587452, 24.578695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153542, 39.282711, 23.961206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831436, 39.519409, 23.976128>,  <32.638172, 39.661427, 23.985081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831436, 39.519409, 23.976128>,  <33.153542, 39.282711, 23.961206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831436, 39.519409, 23.976128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133297, 0.241982, -0.961081,
		-0.577744, -0.768948, -0.273736,
		-0.805260, 0.591747, 0.037305,
		32.589859, 39.696934, 23.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772476, 39.194088, 23.326744>,  <33.153542, 39.282711, 23.961206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772476, 39.194088, 23.326744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647697, 39.547817, 23.465689>,  <32.572830, 39.760056, 23.549055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647697, 39.547817, 23.465689>,  <32.772476, 39.194088, 23.326744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647697, 39.547817, 23.465689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, 0.368307, -0.929662,
		-0.950058, -0.286918, -0.122755,
		-0.311948, 0.884323, 0.347363,
		32.554111, 39.813114, 23.569897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123539, 39.289726, 23.009062>,  <32.772476, 39.194088, 23.326744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123539, 39.289726, 23.009062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240978, 39.661659, 23.097799>,  <32.311443, 39.884819, 23.151041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240978, 39.661659, 23.097799>,  <32.123539, 39.289726, 23.009062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240978, 39.661659, 23.097799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062124, 0.250139, -0.966215,
		-0.953907, 0.269902, 0.131206,
		0.293603, 0.929830, 0.221842,
		32.329060, 39.940609, 23.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672649, 39.633251, 22.631350>,  <32.123539, 39.289726, 23.009062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672649, 39.633251, 22.631350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960230, 39.895935, 22.722420>,  <32.132778, 40.053547, 22.777061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960230, 39.895935, 22.722420>,  <31.672649, 39.633251, 22.631350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960230, 39.895935, 22.722420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096243, 0.418463, -0.903120,
		-0.688364, 0.627388, 0.364059,
		0.718952, 0.656713, 0.227673,
		32.175915, 40.092949, 22.790722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429350, 40.231888, 22.604891>,  <31.672649, 39.633251, 22.631350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429350, 40.231888, 22.604891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817986, 40.284451, 22.526155>,  <32.051167, 40.315987, 22.478914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817986, 40.284451, 22.526155>,  <31.429350, 40.231888, 22.604891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817986, 40.284451, 22.526155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233317, 0.392276, -0.889766,
		-0.039704, 0.910413, 0.411790,
		0.971590, 0.131404, -0.196840,
		32.109463, 40.323872, 22.467104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455841, 40.818233, 22.298800>,  <31.429350, 40.231888, 22.604891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455841, 40.818233, 22.298800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831335, 40.710758, 22.212467>,  <32.056633, 40.646271, 22.160667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831335, 40.710758, 22.212467>,  <31.455841, 40.818233, 22.298800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831335, 40.710758, 22.212467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059628, 0.490176, -0.869582,
		0.339444, 0.829176, 0.444123,
		0.938735, -0.268692, -0.215829,
		32.112957, 40.630150, 22.147718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830141, 41.454922, 22.082136>,  <31.455841, 40.818233, 22.298800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830141, 41.454922, 22.082136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023499, 41.140030, 21.928986>,  <32.139515, 40.951096, 21.837095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023499, 41.140030, 21.928986>,  <31.830141, 41.454922, 22.082136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023499, 41.140030, 21.928986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024785, 0.449503, -0.892935,
		0.875051, 0.422152, 0.236799,
		0.483396, -0.787233, -0.382875,
		32.168518, 40.903862, 21.814123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423534, 41.649921, 21.713444>,  <31.830141, 41.454922, 22.082136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423534, 41.649921, 21.713444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353462, 41.280449, 21.577137>,  <32.311417, 41.058765, 21.495354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353462, 41.280449, 21.577137>,  <32.423534, 41.649921, 21.713444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353462, 41.280449, 21.577137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108019, 0.325998, -0.939179,
		0.978592, -0.201337, 0.042666,
		-0.175183, -0.923682, -0.340767,
		32.300907, 41.003345, 21.474907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970509, 41.516651, 21.194201>,  <32.423534, 41.649921, 21.713444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970509, 41.516651, 21.194201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681042, 41.251633, 21.116915>,  <32.507362, 41.092621, 21.070543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681042, 41.251633, 21.116915>,  <32.970509, 41.516651, 21.194201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681042, 41.251633, 21.116915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239354, 0.021645, -0.970691,
		0.647312, -0.748706, 0.142920,
		-0.723669, -0.662549, -0.193217,
		32.463940, 41.052868, 21.058950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257687, 41.096954, 20.712103>,  <32.970509, 41.516651, 21.194201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257687, 41.096954, 20.712103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869827, 41.007488, 20.672596>,  <32.637112, 40.953808, 20.648891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869827, 41.007488, 20.672596>,  <33.257687, 41.096954, 20.712103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869827, 41.007488, 20.672596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093563, 0.033770, -0.995040,
		0.225893, -0.974080, -0.011818,
		-0.969649, -0.223667, -0.098766,
		32.578934, 40.940388, 20.642965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191750, 40.512184, 20.277775>,  <33.257687, 41.096954, 20.712103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191750, 40.512184, 20.277775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841240, 40.704502, 20.265291>,  <32.630932, 40.819893, 20.257801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841240, 40.704502, 20.265291>,  <33.191750, 40.512184, 20.277775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841240, 40.704502, 20.265291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018058, -0.031957, -0.999326,
		-0.481471, -0.876249, 0.019321,
		-0.876276, 0.480797, -0.031210,
		32.578358, 40.848740, 20.255928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819885, 40.135979, 19.877537>,  <33.191750, 40.512184, 20.277775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819885, 40.135979, 19.877537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.617825, 40.479084, 19.839470>,  <32.496590, 40.684948, 19.816629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.617825, 40.479084, 19.839470>,  <32.819885, 40.135979, 19.877537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617825, 40.479084, 19.839470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101412, -0.050510, -0.993562,
		-0.857052, -0.511550, -0.061473,
		-0.505152, 0.857768, -0.095167,
		32.466278, 40.736416, 19.810921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331734, 40.051800, 19.335072>,  <32.819885, 40.135979, 19.877537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331734, 40.051800, 19.335072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410172, 40.442665, 19.367815>,  <32.457233, 40.677185, 19.387461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410172, 40.442665, 19.367815>,  <32.331734, 40.051800, 19.335072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410172, 40.442665, 19.367815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021104, 0.087668, -0.995926,
		-0.980358, 0.193568, 0.037813,
		0.196094, 0.977162, 0.081861,
		32.468998, 40.735813, 19.392374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968199, 40.269875, 18.761019>,  <32.331734, 40.051800, 19.335072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968199, 40.269875, 18.761019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190296, 40.584309, 18.869665>,  <32.323555, 40.772968, 18.934853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190296, 40.584309, 18.869665>,  <31.968199, 40.269875, 18.761019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190296, 40.584309, 18.869665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103918, 0.258453, -0.960418,
		-0.825170, 0.561492, 0.061816,
		0.555244, 0.786084, 0.271617,
		32.356869, 40.820133, 18.951151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720949, 40.791882, 18.307758>,  <31.968199, 40.269875, 18.761019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720949, 40.791882, 18.307758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069641, 40.947388, 18.427057>,  <32.278854, 41.040691, 18.498636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069641, 40.947388, 18.427057>,  <31.720949, 40.791882, 18.307758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069641, 40.947388, 18.427057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234143, 0.204191, -0.950517,
		-0.430424, 0.898427, 0.086973,
		0.871729, 0.388761, 0.298249,
		32.331161, 41.064014, 18.516533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832249, 41.341957, 17.881012>,  <31.720949, 40.791882, 18.307758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832249, 41.341957, 17.881012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189724, 41.265163, 18.043228>,  <32.404209, 41.219086, 18.140558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189724, 41.265163, 18.043228>,  <31.832249, 41.341957, 17.881012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189724, 41.265163, 18.043228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446692, 0.295517, -0.844473,
		0.042282, 0.935848, 0.349859,
		0.893688, -0.191986, 0.405541,
		32.457829, 41.207569, 18.164890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263142, 41.929447, 17.697893>,  <31.832249, 41.341957, 17.881012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263142, 41.929447, 17.697893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500683, 41.617680, 17.777737>,  <32.643208, 41.430618, 17.825644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500683, 41.617680, 17.777737>,  <32.263142, 41.929447, 17.697893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500683, 41.617680, 17.777737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588037, 0.251130, -0.768860,
		0.549136, 0.573969, 0.607461,
		0.593854, -0.779418, 0.199611,
		32.678841, 41.383854, 17.837620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868553, 42.258228, 17.739248>,  <32.263142, 41.929447, 17.697893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868553, 42.258228, 17.739248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887035, 41.869759, 17.645706>,  <32.898125, 41.636677, 17.589581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887035, 41.869759, 17.645706>,  <32.868553, 42.258228, 17.739248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887035, 41.869759, 17.645706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373294, 0.233933, -0.897734,
		0.926562, -0.045818, 0.373342,
		0.046204, -0.971172, -0.233858,
		32.900898, 41.578407, 17.575548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406307, 42.322075, 17.306917>,  <32.868553, 42.258228, 17.739248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406307, 42.322075, 17.306917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288433, 41.944855, 17.245197>,  <33.217709, 41.718521, 17.208164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288433, 41.944855, 17.245197>,  <33.406307, 42.322075, 17.306917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288433, 41.944855, 17.245197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245120, 0.081471, -0.966063,
		0.923621, -0.322509, 0.207153,
		-0.294687, -0.943054, -0.154302,
		33.200027, 41.661938, 17.198906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941681, 42.022633, 17.020281>,  <33.406307, 42.322075, 17.306917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941681, 42.022633, 17.020281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632065, 41.791306, 16.917204>,  <33.446293, 41.652508, 16.855358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632065, 41.791306, 16.917204>,  <33.941681, 42.022633, 17.020281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632065, 41.791306, 16.917204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204451, 0.156892, -0.966222,
		0.599214, -0.800583, -0.003204,
		-0.774043, -0.578318, -0.257692,
		33.399853, 41.617809, 16.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572186, 41.910538, 17.192797>,  <33.941681, 42.022633, 17.020281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572186, 41.910538, 17.192797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915367, 42.110775, 17.238956>,  <35.121277, 42.230919, 17.266651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915367, 42.110775, 17.238956>,  <34.572186, 41.910538, 17.192797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915367, 42.110775, 17.238956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112675, -0.035794, 0.992987,
		0.501214, -0.864942, 0.025695,
		0.857956, 0.500594, 0.115397,
		35.172752, 42.260952, 17.273575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977428, 41.567509, 17.590816>,  <34.572186, 41.910538, 17.192797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977428, 41.567509, 17.590816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134884, 41.931992, 17.639385>,  <35.229359, 42.150681, 17.668526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134884, 41.931992, 17.639385>,  <34.977428, 41.567509, 17.590816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134884, 41.931992, 17.639385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133942, -0.073823, 0.988236,
		0.909454, -0.405273, 0.092989,
		0.393640, 0.911210, 0.121421,
		35.252975, 42.205353, 17.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375488, 41.410862, 18.108263>,  <34.977428, 41.567509, 17.590816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375488, 41.410862, 18.108263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337276, 41.809021, 18.111366>,  <35.314350, 42.047916, 18.113228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337276, 41.809021, 18.111366>,  <35.375488, 41.410862, 18.108263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337276, 41.809021, 18.111366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095124, 0.001373, 0.995465,
		0.990871, 0.095838, -0.094818,
		-0.095534, 0.995396, 0.007756,
		35.308617, 42.107639, 18.113693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955883, 41.581211, 18.467529>,  <35.375488, 41.410862, 18.108263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955883, 41.581211, 18.467529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680462, 41.871246, 18.472443>,  <35.515209, 42.045265, 18.475391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680462, 41.871246, 18.472443>,  <35.955883, 41.581211, 18.467529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680462, 41.871246, 18.472443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022059, -0.037872, 0.999039,
		0.724854, 0.687617, 0.042072,
		-0.688549, 0.725086, 0.012284,
		35.473896, 42.088772, 18.476128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151253, 42.140297, 19.004616>,  <35.955883, 41.581211, 18.467529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151253, 42.140297, 19.004616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754379, 42.161415, 18.959406>,  <35.516254, 42.174088, 18.932280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754379, 42.161415, 18.959406>,  <36.151253, 42.140297, 19.004616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754379, 42.161415, 18.959406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115483, -0.046101, 0.992239,
		0.047177, 0.997541, 0.051838,
		-0.992188, 0.052798, -0.113024,
		35.456722, 42.177254, 18.925499>
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
