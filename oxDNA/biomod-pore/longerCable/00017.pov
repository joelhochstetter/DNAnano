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
	<24.188578, 34.474049, 35.134190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381371, 34.764290, 35.330635>,  <24.497047, 34.938435, 35.448502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381371, 34.764290, 35.330635>,  <24.188578, 34.474049, 35.134190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381371, 34.764290, 35.330635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006612, -0.563517, 0.826078,
		0.876155, -0.394909, -0.276404,
		0.481984, 0.725600, 0.491117,
		24.525967, 34.981972, 35.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759634, 34.237671, 35.465134>,  <24.188578, 34.474049, 35.134190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759634, 34.237671, 35.465134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717178, 34.548225, 35.713638>,  <24.691706, 34.734558, 35.862740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717178, 34.548225, 35.713638>,  <24.759634, 34.237671, 35.465134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717178, 34.548225, 35.713638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120344, -0.610167, 0.783079,
		0.987042, 0.157880, -0.028671,
		-0.106138, 0.776382, 0.621261,
		24.685337, 34.781139, 35.900017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121691, 33.641193, 35.611519>,  <24.759634, 34.237671, 35.465134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121691, 33.641193, 35.611519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391333, 33.520813, 35.881336>,  <25.553118, 33.448586, 36.043228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391333, 33.520813, 35.881336>,  <25.121691, 33.641193, 35.611519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391333, 33.520813, 35.881336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730553, 0.136911, -0.668990,
		0.108980, 0.943761, 0.312153,
		0.674104, -0.300951, 0.674546,
		25.593563, 33.430527, 36.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634409, 34.197445, 35.720058>,  <25.121691, 33.641193, 35.611519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634409, 34.197445, 35.720058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804489, 33.854401, 35.835789>,  <25.906536, 33.648575, 35.905228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804489, 33.854401, 35.835789>,  <25.634409, 34.197445, 35.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804489, 33.854401, 35.835789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715261, 0.122508, -0.688036,
		0.554624, 0.499492, 0.665507,
		0.425198, -0.857613, 0.289322,
		25.932049, 33.597118, 35.922585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371578, 34.394329, 35.904114>,  <25.634409, 34.197445, 35.720058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371578, 34.394329, 35.904114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311089, 34.011959, 35.803452>,  <26.274796, 33.782536, 35.743053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311089, 34.011959, 35.803452>,  <26.371578, 34.394329, 35.904114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311089, 34.011959, 35.803452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781204, 0.040419, -0.622966,
		0.605683, -0.290803, 0.740663,
		-0.151224, -0.955929, -0.251657,
		26.265722, 33.725182, 35.727955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806473, 33.997490, 36.112564>,  <26.371578, 34.394329, 35.904114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806473, 33.997490, 36.112564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668690, 33.852032, 35.766357>,  <26.586020, 33.764755, 35.558636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668690, 33.852032, 35.766357>,  <26.806473, 33.997490, 36.112564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668690, 33.852032, 35.766357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846703, 0.277893, -0.453728,
		0.405515, -0.889123, 0.212177,
		-0.344457, -0.363644, -0.865513,
		26.565353, 33.742939, 35.506702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126776, 34.148666, 36.739819>,  <26.806473, 33.997490, 36.112564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126776, 34.148666, 36.739819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401972, 34.195908, 37.026237>,  <27.567089, 34.224251, 37.198090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401972, 34.195908, 37.026237>,  <27.126776, 34.148666, 36.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401972, 34.195908, 37.026237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167382, 0.934244, -0.314916,
		-0.706153, 0.336512, 0.622983,
		0.687991, 0.118103, 0.716045,
		27.608370, 34.231339, 37.241051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000837, 34.776482, 37.076061>,  <27.126776, 34.148666, 36.739819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000837, 34.776482, 37.076061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385624, 34.671940, 37.107834>,  <27.616497, 34.609215, 37.126900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385624, 34.671940, 37.107834>,  <27.000837, 34.776482, 37.076061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385624, 34.671940, 37.107834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273001, 0.909878, -0.312397,
		0.009371, 0.322202, 0.946625,
		0.961968, -0.261356, 0.079435,
		27.674215, 34.593533, 37.131664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306553, 35.179852, 37.523510>,  <27.000837, 34.776482, 37.076061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306553, 35.179852, 37.523510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604534, 35.079403, 37.276291>,  <27.783323, 35.019135, 37.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604534, 35.079403, 37.276291>,  <27.306553, 35.179852, 37.523510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604534, 35.079403, 37.276291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263842, 0.961816, -0.072781,
		0.612723, -0.108848, 0.782766,
		0.744955, -0.251121, -0.618046,
		27.828020, 35.004066, 37.090878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925179, 35.723148, 37.588326>,  <27.306553, 35.179852, 37.523510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925179, 35.723148, 37.588326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985973, 35.540943, 37.237461>,  <28.022449, 35.431618, 37.026943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985973, 35.540943, 37.237461>,  <27.925179, 35.723148, 37.588326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985973, 35.540943, 37.237461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237934, 0.878231, -0.414845,
		0.959316, -0.145655, 0.241861,
		0.151986, -0.455515, -0.877158,
		28.031569, 35.404289, 36.974312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457014, 36.079426, 37.286121>,  <27.925179, 35.723148, 37.588326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457014, 36.079426, 37.286121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345703, 35.884293, 36.955162>,  <28.278917, 35.767212, 36.756588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345703, 35.884293, 36.955162>,  <28.457014, 36.079426, 37.286121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345703, 35.884293, 36.955162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096737, 0.842805, -0.529454,
		0.955617, -0.227374, -0.187341,
		-0.278276, -0.487833, -0.827395,
		28.262220, 35.737942, 36.706944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948303, 36.098118, 36.689846>,  <28.457014, 36.079426, 37.286121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948303, 36.098118, 36.689846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581373, 36.069893, 36.533112>,  <28.361216, 36.052956, 36.439072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581373, 36.069893, 36.533112>,  <28.948303, 36.098118, 36.689846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581373, 36.069893, 36.533112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029251, 0.969564, -0.243083,
		0.397065, -0.234448, -0.887341,
		-0.917324, -0.070565, -0.391838,
		28.306175, 36.048725, 36.415562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948099, 36.496376, 36.074265>,  <28.948303, 36.098118, 36.689846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948099, 36.496376, 36.074265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568790, 36.454788, 36.194244>,  <28.341206, 36.429836, 36.266232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568790, 36.454788, 36.194244>,  <28.948099, 36.496376, 36.074265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568790, 36.454788, 36.194244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135046, 0.987209, -0.084746,
		-0.287300, -0.120869, -0.950184,
		-0.948273, -0.103971, 0.299948,
		28.284309, 36.423595, 36.284229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451660, 36.846291, 35.622536>,  <28.948099, 36.496376, 36.074265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451660, 36.846291, 35.622536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335819, 36.827934, 36.004955>,  <28.266315, 36.816921, 36.234406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335819, 36.827934, 36.004955>,  <28.451660, 36.846291, 35.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335819, 36.827934, 36.004955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108452, 0.993990, 0.014860,
		-0.950983, -0.099382, -0.292839,
		-0.289602, -0.045891, 0.956046,
		28.248938, 36.814167, 36.291771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828049, 36.326984, 35.783775>,  <28.451660, 36.846291, 35.622536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828049, 36.326984, 35.783775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987612, 36.235695, 35.428520>,  <28.083349, 36.180920, 35.215366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987612, 36.235695, 35.428520>,  <27.828049, 36.326984, 35.783775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987612, 36.235695, 35.428520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730952, -0.663961, -0.157688,
		-0.553700, 0.712088, -0.431680,
		0.398906, -0.228225, -0.888137,
		28.107283, 36.167229, 35.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386309, 35.709194, 35.681622>,  <27.828049, 36.326984, 35.783775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386309, 35.709194, 35.681622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697464, 35.804562, 35.914188>,  <27.884157, 35.861782, 36.053730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697464, 35.804562, 35.914188>,  <27.386309, 35.709194, 35.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697464, 35.804562, 35.914188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093854, -0.958934, 0.267650,
		0.621355, -0.153633, -0.768320,
		0.777888, 0.238415, 0.581419,
		27.930830, 35.876087, 36.088615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791681, 35.106071, 35.652660>,  <27.386309, 35.709194, 35.681622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791681, 35.106071, 35.652660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931929, 35.307705, 35.968372>,  <28.016077, 35.428684, 36.157799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931929, 35.307705, 35.968372>,  <27.791681, 35.106071, 35.652660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931929, 35.307705, 35.968372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191795, -0.863569, 0.466329,
		0.916669, -0.012122, -0.399463,
		0.350617, 0.504085, 0.789282,
		28.037113, 35.458931, 36.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279587, 34.609058, 35.938118>,  <27.791681, 35.106071, 35.652660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279587, 34.609058, 35.938118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223936, 34.866207, 36.239410>,  <28.190546, 35.020496, 36.420185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223936, 34.866207, 36.239410>,  <28.279587, 34.609058, 35.938118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223936, 34.866207, 36.239410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006457, -0.761202, 0.648483,
		0.990254, 0.085357, 0.110054,
		-0.139126, 0.642874, 0.753231,
		28.182198, 35.059071, 36.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876284, 34.554996, 36.520763>,  <28.279587, 34.609058, 35.938118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876284, 34.554996, 36.520763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533419, 34.700527, 36.666588>,  <28.327700, 34.787846, 36.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533419, 34.700527, 36.666588>,  <28.876284, 34.554996, 36.520763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533419, 34.700527, 36.666588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054096, -0.767495, 0.638769,
		0.512199, 0.527807, 0.677549,
		-0.857162, 0.363829, 0.364558,
		28.276270, 34.809677, 36.775955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944330, 34.320362, 37.212971>,  <28.876284, 34.554996, 36.520763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944330, 34.320362, 37.212971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557386, 34.419296, 37.190926>,  <28.325220, 34.478657, 37.177700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557386, 34.419296, 37.190926>,  <28.944330, 34.320362, 37.212971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557386, 34.419296, 37.190926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195467, -0.589928, 0.783440,
		0.161260, 0.768642, 0.619019,
		-0.967361, 0.247335, -0.055112,
		28.267178, 34.493496, 37.174393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610014, 34.444031, 37.889992>,  <28.944330, 34.320362, 37.212971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610014, 34.444031, 37.889992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328966, 34.290134, 37.650558>,  <28.160337, 34.197796, 37.506901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328966, 34.290134, 37.650558>,  <28.610014, 34.444031, 37.889992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328966, 34.290134, 37.650558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272662, -0.631435, 0.725910,
		-0.657252, 0.673250, 0.338755,
		-0.702621, -0.384740, -0.598581,
		28.118179, 34.174713, 37.470985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950548, 34.268379, 38.221905>,  <28.610014, 34.444031, 37.889992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950548, 34.268379, 38.221905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955704, 34.010944, 37.915798>,  <27.958797, 33.856483, 37.732136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955704, 34.010944, 37.915798>,  <27.950548, 34.268379, 38.221905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955704, 34.010944, 37.915798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352678, -0.719071, 0.598795,
		-0.935656, 0.262175, -0.236246,
		0.012888, -0.643585, -0.765266,
		27.959570, 33.817867, 37.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048370, 34.448402, 39.048168>,  <27.950548, 34.268379, 38.221905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048370, 34.448402, 39.048168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399477, 34.416523, 39.237133>,  <28.610142, 34.397396, 39.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399477, 34.416523, 39.237133>,  <28.048370, 34.448402, 39.048168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399477, 34.416523, 39.237133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010792, -0.982527, -0.185806,
		0.478965, 0.168193, -0.861571,
		0.877768, -0.079696, 0.472411,
		28.662807, 34.392612, 39.378857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500666, 33.971245, 38.639252>,  <28.048370, 34.448402, 39.048168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500666, 33.971245, 38.639252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601923, 33.962860, 39.026131>,  <28.662678, 33.957829, 39.258259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601923, 33.962860, 39.026131>,  <28.500666, 33.971245, 38.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601923, 33.962860, 39.026131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278117, -0.955985, -0.093507,
		0.926590, 0.292666, -0.236172,
		0.253144, -0.020960, 0.967202,
		28.677866, 33.956573, 39.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209404, 33.721600, 38.735348>,  <28.500666, 33.971245, 38.639252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209404, 33.721600, 38.735348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014551, 33.663597, 39.079830>,  <28.897640, 33.628796, 39.286518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014551, 33.663597, 39.079830>,  <29.209404, 33.721600, 38.735348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014551, 33.663597, 39.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397993, -0.914628, 0.071117,
		0.777371, 0.377397, 0.503255,
		-0.487130, -0.145008, 0.861207,
		28.868412, 33.620094, 39.338192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710712, 33.456421, 39.042080>,  <29.209404, 33.721600, 38.735348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710712, 33.456421, 39.042080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010305, 33.621105, 38.834419>,  <30.190062, 33.719917, 38.709824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010305, 33.621105, 38.834419>,  <29.710712, 33.456421, 39.042080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010305, 33.621105, 38.834419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545570, -0.827828, 0.130591,
		-0.376003, -0.381045, -0.844646,
		0.748982, 0.411711, -0.519153,
		30.235001, 33.744617, 38.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943295, 32.804623, 38.716537>,  <29.710712, 33.456421, 39.042080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943295, 32.804623, 38.716537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202862, 33.108784, 38.706005>,  <30.358603, 33.291279, 38.699688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202862, 33.108784, 38.706005>,  <29.943295, 32.804623, 38.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202862, 33.108784, 38.706005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738118, -0.620750, 0.264293,
		0.184627, -0.190937, -0.964083,
		0.648918, 0.760403, -0.026327,
		30.397537, 33.336906, 38.698109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848248, 32.662029, 37.953739>,  <29.943295, 32.804623, 38.716537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848248, 32.662029, 37.953739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090084, 32.486420, 37.687889>,  <30.235186, 32.381054, 37.528378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090084, 32.486420, 37.687889>,  <29.848248, 32.662029, 37.953739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090084, 32.486420, 37.687889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702373, -0.099710, 0.704790,
		-0.375688, -0.892927, 0.248072,
		0.604591, -0.439020, -0.664628,
		30.271461, 32.354713, 37.488503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048637, 31.919882, 38.060890>,  <29.848248, 32.662029, 37.953739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048637, 31.919882, 38.060890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364574, 32.078060, 37.873371>,  <30.554136, 32.172966, 37.760860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364574, 32.078060, 37.873371>,  <30.048637, 31.919882, 38.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364574, 32.078060, 37.873371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609729, -0.423853, 0.669760,
		0.066154, -0.814844, -0.575893,
		0.789844, 0.395446, -0.468795,
		30.601528, 32.196693, 37.732731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376625, 31.656052, 37.697872>,  <30.048637, 31.919882, 38.060890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376625, 31.656052, 37.697872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223106, 31.433762, 37.402882>,  <29.130995, 31.300388, 37.225887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223106, 31.433762, 37.402882>,  <29.376625, 31.656052, 37.697872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223106, 31.433762, 37.402882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799815, 0.599207, -0.035295,
		0.461516, 0.576300, -0.674449,
		-0.383795, -0.555724, -0.737477,
		29.107967, 31.267044, 37.181637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288818, 32.118153, 37.105919>,  <29.376625, 31.656052, 37.697872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288818, 32.118153, 37.105919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054806, 31.793823, 37.099030>,  <28.914398, 31.599224, 37.094898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054806, 31.793823, 37.099030>,  <29.288818, 32.118153, 37.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054806, 31.793823, 37.099030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810765, 0.585246, -0.012147,
		0.019927, 0.006855, -0.999778,
		-0.585033, -0.810827, -0.017220,
		28.879295, 31.550575, 37.093864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816345, 32.256569, 36.554173>,  <29.288818, 32.118153, 37.105919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816345, 32.256569, 36.554173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652514, 32.031696, 36.841560>,  <28.554214, 31.896774, 37.013992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652514, 32.031696, 36.841560>,  <28.816345, 32.256569, 36.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652514, 32.031696, 36.841560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706639, 0.693609, 0.139887,
		-0.576979, -0.450404, -0.681345,
		-0.409581, -0.562177, 0.718471,
		28.529638, 31.863043, 37.057102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108038, 32.090019, 36.364883>,  <28.816345, 32.256569, 36.554173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108038, 32.090019, 36.364883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141579, 32.063499, 36.762592>,  <28.161703, 32.047588, 37.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141579, 32.063499, 36.762592>,  <28.108038, 32.090019, 36.364883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141579, 32.063499, 36.762592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634774, 0.765587, 0.104587,
		-0.768135, -0.639906, 0.022108,
		0.083852, -0.066303, 0.994270,
		28.166735, 32.043610, 37.060875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511831, 32.232250, 36.975666>,  <28.108038, 32.090019, 36.364883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511831, 32.232250, 36.975666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479286, 31.899187, 36.756557>,  <27.459759, 31.699348, 36.625092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479286, 31.899187, 36.756557>,  <27.511831, 32.232250, 36.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479286, 31.899187, 36.756557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909607, -0.286697, 0.300700,
		-0.407427, -0.473792, 0.780720,
		-0.081361, -0.832662, -0.547773,
		27.454878, 31.649389, 36.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749212, 31.690840, 37.359943>,  <27.511831, 32.232250, 36.975666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749212, 31.690840, 37.359943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784401, 31.587477, 36.975136>,  <27.805515, 31.525459, 36.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784401, 31.587477, 36.975136>,  <27.749212, 31.690840, 37.359943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784401, 31.587477, 36.975136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920045, -0.349094, 0.177905,
		-0.381808, -0.900755, 0.207035,
		0.087974, -0.258407, -0.962022,
		27.810793, 31.509954, 36.686531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942778, 30.949223, 37.342117>,  <27.749212, 31.690840, 37.359943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942778, 30.949223, 37.342117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055023, 31.116648, 36.996616>,  <28.122370, 31.217104, 36.789318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055023, 31.116648, 36.996616>,  <27.942778, 30.949223, 37.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055023, 31.116648, 36.996616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918737, -0.377603, 0.115494,
		-0.277812, -0.825966, -0.490511,
		0.280612, 0.418565, -0.863748,
		28.139206, 31.242218, 36.737492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142624, 30.396372, 36.936489>,  <27.942778, 30.949223, 37.342117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142624, 30.396372, 36.936489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326735, 30.737270, 36.837032>,  <28.437201, 30.941809, 36.777359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326735, 30.737270, 36.837032>,  <28.142624, 30.396372, 36.936489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326735, 30.737270, 36.837032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887505, -0.448641, 0.105152,
		-0.021938, -0.269074, -0.962870,
		0.460276, 0.852244, -0.248646,
		28.464817, 30.992943, 36.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681076, 30.329573, 36.370934>,  <28.142624, 30.396372, 36.936489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681076, 30.329573, 36.370934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802124, 30.620525, 36.617294>,  <28.874754, 30.795097, 36.765110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802124, 30.620525, 36.617294>,  <28.681076, 30.329573, 36.370934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802124, 30.620525, 36.617294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939943, -0.334804, -0.066432,
		0.157885, 0.599015, -0.785018,
		0.302621, 0.727384, 0.615901,
		28.892910, 30.838741, 36.802063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155050, 30.725733, 35.995880>,  <28.681076, 30.329573, 36.370934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155050, 30.725733, 35.995880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263227, 30.747484, 36.380360>,  <29.328135, 30.760536, 36.611046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263227, 30.747484, 36.380360>,  <29.155050, 30.725733, 35.995880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263227, 30.747484, 36.380360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788658, -0.585129, -0.188793,
		0.552158, 0.809115, -0.201132,
		0.270444, 0.054381, 0.961199,
		29.344360, 30.763798, 36.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919603, 30.821009, 36.021458>,  <29.155050, 30.725733, 35.995880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919603, 30.821009, 36.021458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773670, 30.647270, 36.350880>,  <29.686111, 30.543028, 36.548534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773670, 30.647270, 36.350880>,  <29.919603, 30.821009, 36.021458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773670, 30.647270, 36.350880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804601, -0.592175, 0.044121,
		0.468525, 0.678730, 0.565518,
		-0.364832, -0.434344, 0.823555,
		29.664221, 30.516968, 36.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275454, 30.779490, 36.711010>,  <29.919603, 30.821009, 36.021458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275454, 30.779490, 36.711010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051615, 30.458445, 36.628391>,  <29.917311, 30.265818, 36.578819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051615, 30.458445, 36.628391>,  <30.275454, 30.779490, 36.711010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051615, 30.458445, 36.628391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799855, -0.588287, 0.118953,
		-0.216982, -0.098641, 0.971179,
		-0.559598, -0.802614, -0.206547,
		29.883736, 30.217661, 36.566429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142372, 30.322596, 37.213360>,  <30.275454, 30.779490, 36.711010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142372, 30.322596, 37.213360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164959, 30.147697, 36.854332>,  <30.178511, 30.042759, 36.638916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164959, 30.147697, 36.854332>,  <30.142372, 30.322596, 37.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164959, 30.147697, 36.854332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790519, -0.529534, 0.307691,
		-0.609829, -0.726918, 0.315751,
		0.056465, -0.437246, -0.897567,
		30.181898, 30.016523, 36.585060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066515, 29.572231, 37.293045>,  <30.142372, 30.322596, 37.213360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066515, 29.572231, 37.293045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292757, 29.676805, 36.980190>,  <30.428503, 29.739550, 36.792477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292757, 29.676805, 36.980190>,  <30.066515, 29.572231, 37.293045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292757, 29.676805, 36.980190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730350, -0.599252, 0.327850,
		-0.382988, -0.756670, -0.529878,
		0.565605, 0.261434, -0.782140,
		30.462439, 29.755236, 36.745548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387461, 28.992609, 37.012432>,  <30.066515, 29.572231, 37.293045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387461, 28.992609, 37.012432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629572, 29.286749, 36.890514>,  <30.774837, 29.463232, 36.817364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629572, 29.286749, 36.890514>,  <30.387461, 28.992609, 37.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629572, 29.286749, 36.890514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790549, -0.510514, 0.338241,
		0.093121, -0.445688, -0.890332,
		0.605277, 0.735349, -0.304798,
		30.811155, 29.507353, 36.799076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843851, 28.904816, 36.342834>,  <30.387461, 28.992609, 37.012432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843851, 28.904816, 36.342834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986057, 29.095398, 36.664478>,  <31.071381, 29.209747, 36.857464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986057, 29.095398, 36.664478>,  <30.843851, 28.904816, 36.342834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986057, 29.095398, 36.664478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851562, -0.519756, -0.068526,
		0.385293, 0.709115, -0.590512,
		0.355515, 0.476455, 0.804114,
		31.092712, 29.238335, 36.905712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921749, 29.299339, 35.816425>,  <30.843851, 28.904816, 36.342834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921749, 29.299339, 35.816425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244459, 29.146883, 35.997025>,  <31.438086, 29.055408, 36.105385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244459, 29.146883, 35.997025>,  <30.921749, 29.299339, 35.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244459, 29.146883, 35.997025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585978, 0.418087, -0.694142,
		0.075803, 0.824581, 0.560642,
		0.806774, -0.381142, 0.451494,
		31.486492, 29.032541, 36.132473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477489, 29.883940, 35.893559>,  <30.921749, 29.299339, 35.816425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477489, 29.883940, 35.893559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697987, 29.550344, 35.903324>,  <31.830284, 29.350187, 35.909184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697987, 29.550344, 35.903324>,  <31.477489, 29.883940, 35.893559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697987, 29.550344, 35.903324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656525, 0.415513, -0.629542,
		0.514886, 0.363059, 0.776583,
		0.551241, -0.833988, 0.024415,
		31.863359, 29.300148, 35.910648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197498, 30.069992, 36.102402>,  <31.477489, 29.883940, 35.893559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197498, 30.069992, 36.102402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201534, 29.732059, 35.888428>,  <32.203957, 29.529301, 35.760044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201534, 29.732059, 35.888428>,  <32.197498, 30.069992, 36.102402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201534, 29.732059, 35.888428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895120, 0.246086, -0.371756,
		0.445711, -0.475081, 0.758709,
		0.010093, -0.844832, -0.534937,
		32.204563, 29.478611, 35.727947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886864, 29.680079, 36.225662>,  <32.197498, 30.069992, 36.102402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886864, 29.680079, 36.225662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117584, 29.522251, 35.939552>,  <33.256016, 29.427555, 35.767887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117584, 29.522251, 35.939552>,  <32.886864, 29.680079, 36.225662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117584, 29.522251, 35.939552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568530, -0.822649, -0.004668,
		-0.586577, 0.409347, -0.698830,
		0.576802, -0.394568, -0.715273,
		33.290627, 29.403881, 35.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778866, 30.428404, 36.418751>,  <32.886864, 29.680079, 36.225662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778866, 30.428404, 36.418751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821388, 30.815857, 36.508591>,  <32.846901, 31.048328, 36.562496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821388, 30.815857, 36.508591>,  <32.778866, 30.428404, 36.418751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821388, 30.815857, 36.508591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626334, -0.240667, 0.741475,
		0.772272, 0.061854, -0.632273,
		0.106304, 0.968635, 0.224602,
		32.853279, 31.106447, 36.575970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523232, 30.742105, 36.276516>,  <32.778866, 30.428404, 36.418751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523232, 30.742105, 36.276516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313328, 30.887753, 36.584293>,  <33.187386, 30.975142, 36.768959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313328, 30.887753, 36.584293>,  <33.523232, 30.742105, 36.276516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313328, 30.887753, 36.584293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731018, -0.270382, 0.626504,
		0.436164, 0.891242, -0.124290,
		-0.524761, 0.364117, 0.769445,
		33.155899, 30.996988, 36.815128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806320, 31.172537, 36.847088>,  <33.523232, 30.742105, 36.276516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806320, 31.172537, 36.847088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550995, 30.916925, 37.018761>,  <33.397800, 30.763559, 37.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550995, 30.916925, 37.018761>,  <33.806320, 31.172537, 36.847088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550995, 30.916925, 37.018761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734080, -0.337506, 0.589251,
		-0.231695, 0.691182, 0.684532,
		-0.638313, -0.639028, 0.429185,
		33.359501, 30.725218, 37.147514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816109, 31.286818, 37.633881>,  <33.806320, 31.172537, 36.847088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816109, 31.286818, 37.633881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723953, 30.913734, 37.522896>,  <33.668659, 30.689884, 37.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723953, 30.913734, 37.522896>,  <33.816109, 31.286818, 37.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723953, 30.913734, 37.522896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736817, -0.353449, 0.576345,
		-0.635628, -0.071655, 0.768663,
		-0.230385, -0.932705, -0.277458,
		33.654839, 30.633923, 37.439659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047535, 31.092798, 38.252949>,  <33.816109, 31.286818, 37.633881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047535, 31.092798, 38.252949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043392, 30.772806, 38.012974>,  <34.040905, 30.580811, 37.868988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043392, 30.772806, 38.012974>,  <34.047535, 31.092798, 38.252949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043392, 30.772806, 38.012974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798140, -0.368047, 0.476984,
		-0.602383, -0.473893, 0.642309,
		-0.010360, -0.799979, -0.599938,
		34.040283, 30.532812, 37.832993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764915, 30.439672, 38.659203>,  <34.047535, 31.092798, 38.252949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764915, 30.439672, 38.659203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031254, 30.396358, 38.363926>,  <34.191055, 30.370371, 38.186760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031254, 30.396358, 38.363926>,  <33.764915, 30.439672, 38.659203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031254, 30.396358, 38.363926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735439, -0.071331, 0.673826,
		-0.125622, -0.991557, 0.032143,
		0.665844, -0.108287, -0.738190,
		34.231007, 30.363873, 38.142467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319904, 30.008472, 38.935673>,  <33.764915, 30.439672, 38.659203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319904, 30.008472, 38.935673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471535, 30.189932, 38.613056>,  <34.562515, 30.298807, 38.419487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471535, 30.189932, 38.613056>,  <34.319904, 30.008472, 38.935673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471535, 30.189932, 38.613056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886148, 0.073084, 0.457603,
		0.266536, -0.888178, -0.374296,
		0.379078, 0.453650, -0.806537,
		34.585258, 30.326027, 38.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959202, 29.614473, 38.754749>,  <34.319904, 30.008472, 38.935673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959202, 29.614473, 38.754749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930653, 30.000032, 38.652138>,  <34.913525, 30.231369, 38.590572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930653, 30.000032, 38.652138>,  <34.959202, 29.614473, 38.754749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930653, 30.000032, 38.652138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959949, 0.136232, 0.244823,
		0.270931, -0.228781, -0.935016,
		-0.071368, 0.963899, -0.256527,
		34.909241, 30.289202, 38.575180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530884, 29.789793, 38.225880>,  <34.959202, 29.614473, 38.754749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530884, 29.789793, 38.225880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418968, 30.112143, 38.434601>,  <35.351818, 30.305553, 38.559834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418968, 30.112143, 38.434601>,  <35.530884, 29.789793, 38.225880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418968, 30.112143, 38.434601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945468, 0.325691, 0.003958,
		-0.166758, 0.494459, -0.853055,
		-0.279790, 0.805876, 0.521806,
		35.335030, 30.353905, 38.591145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644295, 30.500757, 37.861431>,  <35.530884, 29.789793, 38.225880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644295, 30.500757, 37.861431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674610, 30.505148, 38.260258>,  <35.692799, 30.507782, 38.499554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674610, 30.505148, 38.260258>,  <35.644295, 30.500757, 37.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674610, 30.505148, 38.260258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897506, 0.434917, -0.073005,
		-0.434442, 0.900403, 0.023110,
		0.075785, 0.010975, 0.997064,
		35.697346, 30.508440, 38.559376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768436, 31.172668, 38.166050>,  <35.644295, 30.500757, 37.861431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768436, 31.172668, 38.166050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929337, 30.857681, 38.352848>,  <36.025875, 30.668690, 38.464928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929337, 30.857681, 38.352848>,  <35.768436, 31.172668, 38.166050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929337, 30.857681, 38.352848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914569, 0.368983, -0.165576,
		-0.041929, 0.493706, 0.868618,
		0.402251, -0.787468, 0.466999,
		36.050011, 30.621441, 38.492947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403675, 31.475658, 38.606750>,  <35.768436, 31.172668, 38.166050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403675, 31.475658, 38.606750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382828, 31.103655, 38.461224>,  <36.370319, 30.880453, 38.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382828, 31.103655, 38.461224>,  <36.403675, 31.475658, 38.606750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382828, 31.103655, 38.461224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878810, 0.130321, -0.459031,
		0.474317, -0.343650, 0.810511,
		-0.052119, -0.930011, -0.363817,
		36.367191, 30.824652, 38.352077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042984, 31.335236, 38.737236>,  <36.403675, 31.475658, 38.606750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042984, 31.335236, 38.737236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905666, 31.075102, 38.466175>,  <36.823277, 30.919022, 38.303539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905666, 31.075102, 38.466175>,  <37.042984, 31.335236, 38.737236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905666, 31.075102, 38.466175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899597, -0.020296, -0.436249,
		0.269953, -0.759379, 0.592004,
		-0.343294, -0.650332, -0.677656,
		36.802677, 30.880003, 38.262878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368946, 30.652168, 38.818108>,  <37.042984, 31.335236, 38.737236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368946, 30.652168, 38.818108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246029, 30.779356, 38.459339>,  <37.172279, 30.855669, 38.244080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246029, 30.779356, 38.459339>,  <37.368946, 30.652168, 38.818108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246029, 30.779356, 38.459339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917690, -0.150395, -0.367731,
		-0.251820, -0.936096, -0.245583,
		-0.307297, 0.317971, -0.896919,
		37.153839, 30.874748, 38.190262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635574, 30.222292, 38.170677>,  <37.368946, 30.652168, 38.818108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635574, 30.222292, 38.170677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592033, 30.619144, 38.145947>,  <37.565910, 30.857256, 38.131107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592033, 30.619144, 38.145947>,  <37.635574, 30.222292, 38.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592033, 30.619144, 38.145947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968040, 0.091659, -0.233447,
		-0.225943, -0.085263, -0.970402,
		-0.108851, 0.992133, -0.061829,
		37.559380, 30.916784, 38.127399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074963, 30.115055, 37.604610>,  <37.635574, 30.222292, 38.170677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074963, 30.115055, 37.604610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448273, 30.222485, 37.699989>,  <38.672260, 30.286943, 37.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448273, 30.222485, 37.699989>,  <38.074963, 30.115055, 37.604610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448273, 30.222485, 37.699989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359056, 0.712976, 0.602283,
		-0.008249, -0.647714, 0.761839,
		0.933280, 0.268575, 0.238447,
		38.728256, 30.303057, 37.771523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690304, 29.996641, 37.358257>,  <38.074963, 30.115055, 37.604610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690304, 29.996641, 37.358257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960114, 29.768814, 37.170380>,  <39.121998, 29.632118, 37.057652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960114, 29.768814, 37.170380>,  <38.690304, 29.996641, 37.358257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960114, 29.768814, 37.170380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174563, -0.495135, 0.851099,
		-0.717319, -0.656077, -0.234555,
		0.674523, -0.569565, -0.469696,
		39.162472, 29.597944, 37.029472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280685, 29.518518, 36.927628>,  <38.690304, 29.996641, 37.358257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280685, 29.518518, 36.927628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904816, 29.622057, 36.838177>,  <37.679295, 29.684179, 36.784508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904816, 29.622057, 36.838177>,  <38.280685, 29.518518, 36.927628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904816, 29.622057, 36.838177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180051, -0.181578, -0.966753,
		-0.290847, -0.948698, 0.124019,
		-0.939675, 0.258848, -0.223626,
		37.622913, 29.699711, 36.771088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061852, 28.931887, 36.532104>,  <38.280685, 29.518518, 36.927628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061852, 28.931887, 36.532104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858925, 29.268934, 36.459850>,  <37.737171, 29.471163, 36.416500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858925, 29.268934, 36.459850>,  <38.061852, 28.931887, 36.532104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858925, 29.268934, 36.459850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141980, -0.125018, -0.981943,
		-0.849986, -0.523798, -0.056212,
		-0.507312, 0.842619, -0.180633,
		37.706730, 29.521719, 36.405659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573360, 28.872107, 35.923874>,  <38.061852, 28.931887, 36.532104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573360, 28.872107, 35.923874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628399, 29.267941, 35.940784>,  <37.661423, 29.505442, 35.950932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628399, 29.267941, 35.940784>,  <37.573360, 28.872107, 35.923874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628399, 29.267941, 35.940784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014569, 0.044697, -0.998895,
		-0.990382, 0.136825, 0.020568,
		0.137593, 0.989587, 0.042274,
		37.669678, 29.564816, 35.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201626, 29.126036, 35.465878>,  <37.573360, 28.872107, 35.923874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201626, 29.126036, 35.465878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474411, 29.413662, 35.519363>,  <37.638081, 29.586237, 35.551453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474411, 29.413662, 35.519363>,  <37.201626, 29.126036, 35.465878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474411, 29.413662, 35.519363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142127, 0.049046, -0.988633,
		-0.717449, 0.693210, -0.068751,
		0.681958, 0.719065, 0.133712,
		37.678997, 29.629381, 35.559479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996670, 29.666082, 35.115681>,  <37.201626, 29.126036, 35.465878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996670, 29.666082, 35.115681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393475, 29.707245, 35.144836>,  <37.631557, 29.731943, 35.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393475, 29.707245, 35.144836>,  <36.996670, 29.666082, 35.115681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393475, 29.707245, 35.144836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063526, 0.091500, -0.993777,
		-0.108936, 0.990474, 0.084232,
		0.992017, 0.102908, 0.072889,
		37.691078, 29.738117, 35.166702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137966, 29.810043, 34.463154>,  <36.996670, 29.666082, 35.115681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137966, 29.810043, 34.463154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512669, 29.798298, 34.602650>,  <37.737492, 29.791250, 34.686348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512669, 29.798298, 34.602650>,  <37.137966, 29.810043, 34.463154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512669, 29.798298, 34.602650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338613, -0.175834, -0.924350,
		0.088463, 0.983982, -0.154771,
		0.936758, -0.029363, 0.348744,
		37.793697, 29.789490, 34.707272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466541, 30.285700, 34.075985>,  <37.137966, 29.810043, 34.463154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466541, 30.285700, 34.075985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730877, 30.016802, 34.209480>,  <37.889477, 29.855463, 34.289577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730877, 30.016802, 34.209480>,  <37.466541, 30.285700, 34.075985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730877, 30.016802, 34.209480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302264, -0.168629, -0.938190,
		0.686971, 0.720868, 0.091759,
		0.660838, -0.672245, 0.333736,
		37.929127, 29.815128, 34.309601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968105, 30.350796, 33.491253>,  <37.466541, 30.285700, 34.075985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968105, 30.350796, 33.491253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059532, 30.027395, 33.708168>,  <38.114388, 29.833355, 33.838318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059532, 30.027395, 33.708168>,  <37.968105, 30.350796, 33.491253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059532, 30.027395, 33.708168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211873, -0.502375, -0.838290,
		0.950194, 0.306501, 0.056475,
		0.228565, -0.808503, 0.542293,
		38.128101, 29.784843, 33.870857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723217, 30.175991, 33.370201>,  <37.968105, 30.350796, 33.491253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723217, 30.175991, 33.370201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511600, 29.851803, 33.470802>,  <38.384632, 29.657290, 33.531162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511600, 29.851803, 33.470802>,  <38.723217, 30.175991, 33.370201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511600, 29.851803, 33.470802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256782, -0.435377, -0.862850,
		0.808815, -0.391898, 0.438446,
		-0.529039, -0.810471, 0.251507,
		38.352890, 29.608662, 33.546253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124119, 29.660810, 33.211506>,  <38.723217, 30.175991, 33.370201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124119, 29.660810, 33.211506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801590, 29.434603, 33.280823>,  <38.608070, 29.298878, 33.322411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801590, 29.434603, 33.280823>,  <39.124119, 29.660810, 33.211506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801590, 29.434603, 33.280823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197663, -0.533772, -0.822202,
		0.557468, -0.628709, 0.542175,
		-0.806324, -0.565520, 0.173289,
		38.559692, 29.264946, 33.332809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188126, 28.874147, 33.147095>,  <39.124119, 29.660810, 33.211506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188126, 28.874147, 33.147095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801064, 28.925596, 33.060291>,  <38.568825, 28.956467, 33.008209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801064, 28.925596, 33.060291>,  <39.188126, 28.874147, 33.147095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801064, 28.925596, 33.060291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114676, -0.541922, -0.832568,
		-0.224687, -0.830528, 0.509646,
		-0.967659, 0.128623, -0.217005,
		38.510765, 28.964184, 32.995190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142876, 28.343750, 32.628044>,  <39.188126, 28.874147, 33.147095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142876, 28.343750, 32.628044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798740, 28.547262, 32.615597>,  <38.592258, 28.669369, 32.608128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798740, 28.547262, 32.615597>,  <39.142876, 28.343750, 32.628044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798740, 28.547262, 32.615597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194271, -0.383722, -0.902782,
		-0.471259, -0.770648, 0.428970,
		-0.860333, 0.508781, -0.031118,
		38.540642, 28.699896, 32.606262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543461, 27.847958, 32.531071>,  <39.142876, 28.343750, 32.628044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543461, 27.847958, 32.531071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451790, 28.202084, 32.369232>,  <38.396786, 28.414558, 32.272129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451790, 28.202084, 32.369232>,  <38.543461, 27.847958, 32.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451790, 28.202084, 32.369232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183331, -0.447476, -0.875303,
		-0.955964, -0.126426, 0.264857,
		-0.229179, 0.885315, -0.404593,
		38.383038, 28.467678, 32.247856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001553, 27.757973, 32.084473>,  <38.543461, 27.847958, 32.531071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001553, 27.757973, 32.084473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134678, 28.111687, 31.953463>,  <38.214554, 28.323915, 31.874857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134678, 28.111687, 31.953463>,  <38.001553, 27.757973, 32.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134678, 28.111687, 31.953463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175436, -0.283197, -0.942879,
		-0.926529, 0.371263, 0.060883,
		0.332814, 0.884287, -0.327523,
		38.234524, 28.376972, 31.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557209, 28.072826, 31.589579>,  <38.001553, 27.757973, 32.084473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557209, 28.072826, 31.589579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909676, 28.241413, 31.503870>,  <38.121155, 28.342566, 31.452446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909676, 28.241413, 31.503870>,  <37.557209, 28.072826, 31.589579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909676, 28.241413, 31.503870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147252, -0.186014, -0.971450,
		-0.449294, 0.887560, -0.101847,
		0.881165, 0.421469, -0.214270,
		38.174026, 28.367853, 31.439589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474068, 28.574053, 31.007080>,  <37.557209, 28.072826, 31.589579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474068, 28.574053, 31.007080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849644, 28.438257, 31.029478>,  <38.074989, 28.356779, 31.042917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849644, 28.438257, 31.029478>,  <37.474068, 28.574053, 31.007080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849644, 28.438257, 31.029478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002009, -0.168150, -0.985759,
		0.344072, 0.925458, -0.158565,
		0.938941, -0.339490, 0.055996,
		38.131325, 28.336411, 31.046276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607182, 28.424932, 30.278137>,  <37.474068, 28.574053, 31.007080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607182, 28.424932, 30.278137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957436, 28.311464, 30.434496>,  <38.167587, 28.243383, 30.528311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957436, 28.311464, 30.434496>,  <37.607182, 28.424932, 30.278137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957436, 28.311464, 30.434496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279507, -0.362418, -0.889117,
		0.393882, 0.887798, -0.238058,
		0.875633, -0.283668, 0.390896,
		38.220127, 28.226364, 30.551765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093166, 28.688379, 29.760891>,  <37.607182, 28.424932, 30.278137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093166, 28.688379, 29.760891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273720, 28.396717, 29.966642>,  <38.382053, 28.221720, 30.090094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273720, 28.396717, 29.966642>,  <38.093166, 28.688379, 29.760891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273720, 28.396717, 29.966642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175473, -0.492658, -0.852348,
		0.874908, 0.474995, -0.094430,
		0.451383, -0.729156, 0.514379,
		38.409134, 28.177971, 30.120956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865532, 28.553787, 29.458122>,  <38.093166, 28.688379, 29.760891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865532, 28.553787, 29.458122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710926, 28.231615, 29.637848>,  <38.618160, 28.038311, 29.745684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710926, 28.231615, 29.637848>,  <38.865532, 28.553787, 29.458122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710926, 28.231615, 29.637848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125492, -0.528576, -0.839559,
		0.913705, -0.268117, 0.305378,
		-0.386516, -0.805432, 0.449316,
		38.594971, 27.989986, 29.772642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217972, 28.077662, 29.194448>,  <38.865532, 28.553787, 29.458122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217972, 28.077662, 29.194448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893330, 27.885864, 29.327942>,  <38.698544, 27.770786, 29.408037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893330, 27.885864, 29.327942>,  <39.217972, 28.077662, 29.194448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893330, 27.885864, 29.327942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045202, -0.518011, -0.854179,
		0.582449, -0.708345, 0.398749,
		-0.811609, -0.479492, 0.333734,
		38.649845, 27.742016, 29.428062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357952, 27.461485, 29.093119>,  <39.217972, 28.077662, 29.194448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357952, 27.461485, 29.093119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965042, 27.406485, 29.144072>,  <38.729298, 27.373484, 29.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965042, 27.406485, 29.144072>,  <39.357952, 27.461485, 29.093119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965042, 27.406485, 29.144072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009075, -0.643916, -0.765043,
		0.187219, -0.752639, 0.631255,
		-0.982276, -0.137502, 0.127383,
		38.670361, 27.365234, 29.182287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185154, 26.714424, 29.248579>,  <39.357952, 27.461485, 29.093119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185154, 26.714424, 29.248579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868431, 26.910196, 29.102428>,  <38.678398, 27.027658, 29.014738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868431, 26.910196, 29.102428>,  <39.185154, 26.714424, 29.248579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868431, 26.910196, 29.102428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056788, -0.536635, -0.841902,
		-0.608124, -0.687373, 0.397118,
		-0.791808, 0.489429, -0.365375,
		38.630890, 27.057024, 28.992817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832844, 26.279217, 28.857038>,  <39.185154, 26.714424, 29.248579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832844, 26.279217, 28.857038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617401, 26.587427, 28.720688>,  <38.488136, 26.772354, 28.638878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617401, 26.587427, 28.720688>,  <38.832844, 26.279217, 28.857038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617401, 26.587427, 28.720688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113127, -0.334776, -0.935483,
		-0.834930, -0.542417, 0.093144,
		-0.538604, 0.770525, -0.340876,
		38.455818, 26.818584, 28.618425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582397, 25.984087, 28.223427>,  <38.832844, 26.279217, 28.857038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582397, 25.984087, 28.223427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559673, 26.383436, 28.221350>,  <38.546040, 26.623045, 28.220104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559673, 26.383436, 28.221350>,  <38.582397, 25.984087, 28.223427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559673, 26.383436, 28.221350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125531, 0.001985, -0.992088,
		-0.990462, -0.057012, -0.125439,
		-0.056810, 0.998371, -0.005191,
		38.542629, 26.682947, 28.219793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007561, 26.176556, 27.775423>,  <38.582397, 25.984087, 28.223427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007561, 26.176556, 27.775423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225101, 26.510693, 27.807491>,  <38.355625, 26.711174, 27.826733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225101, 26.510693, 27.807491>,  <38.007561, 26.176556, 27.775423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225101, 26.510693, 27.807491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067823, 0.051467, -0.996369,
		-0.836434, 0.547318, -0.028665,
		0.543855, 0.835341, 0.080170,
		38.388260, 26.761295, 27.831543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588921, 26.785942, 27.546429>,  <38.007561, 26.176556, 27.775423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588921, 26.785942, 27.546429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974911, 26.878628, 27.497223>,  <38.206505, 26.934240, 27.467699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974911, 26.878628, 27.497223>,  <37.588921, 26.785942, 27.546429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974911, 26.878628, 27.497223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154931, 0.124938, -0.979993,
		-0.211711, 0.964727, 0.156461,
		0.964974, 0.231716, -0.123016,
		38.264404, 26.948143, 27.460318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618359, 27.419983, 27.097437>,  <37.588921, 26.785942, 27.546429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618359, 27.419983, 27.097437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978153, 27.250986, 27.052862>,  <38.194031, 27.149588, 27.026117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978153, 27.250986, 27.052862>,  <37.618359, 27.419983, 27.097437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978153, 27.250986, 27.052862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017456, 0.289582, -0.956994,
		0.436595, 0.858860, 0.267851,
		0.899489, -0.422494, -0.111438,
		38.248001, 27.124237, 27.019430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056137, 27.963966, 26.854113>,  <37.618359, 27.419983, 27.097437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056137, 27.963966, 26.854113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203079, 27.601364, 26.770880>,  <38.291245, 27.383802, 26.720940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203079, 27.601364, 26.770880>,  <38.056137, 27.963966, 26.854113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203079, 27.601364, 26.770880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141805, 0.275700, -0.950727,
		0.919208, 0.319745, 0.229827,
		0.367353, -0.906506, -0.208084,
		38.313286, 27.329412, 26.708454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694340, 28.093290, 26.630730>,  <38.056137, 27.963966, 26.854113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694340, 28.093290, 26.630730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609501, 27.729719, 26.487139>,  <38.558598, 27.511576, 26.400984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609501, 27.729719, 26.487139>,  <38.694340, 28.093290, 26.630730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609501, 27.729719, 26.487139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238555, 0.308068, -0.920970,
		0.947685, -0.280972, 0.151488,
		-0.212098, -0.908927, -0.358978,
		38.545872, 27.457041, 26.379446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326851, 27.799295, 26.313889>,  <38.694340, 28.093290, 26.630730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326851, 27.799295, 26.313889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021427, 27.599489, 26.150198>,  <38.838173, 27.479605, 26.051985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021427, 27.599489, 26.150198>,  <39.326851, 27.799295, 26.313889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021427, 27.599489, 26.150198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354010, 0.206198, -0.912228,
		0.540055, -0.841406, 0.019390,
		-0.763556, -0.499517, -0.409224,
		38.792358, 27.449635, 26.027431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624844, 27.532778, 25.814318>,  <39.326851, 27.799295, 26.313889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624844, 27.532778, 25.814318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237339, 27.530371, 25.715153>,  <39.004837, 27.528927, 25.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237339, 27.530371, 25.715153>,  <39.624844, 27.532778, 25.814318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237339, 27.530371, 25.715153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231668, 0.334660, -0.913418,
		0.088464, -0.942320, -0.322813,
		-0.968764, -0.006019, -0.247910,
		38.946709, 27.528564, 25.640779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628563, 27.420027, 25.063784>,  <39.624844, 27.532778, 25.814318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628563, 27.420027, 25.063784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255150, 27.544680, 25.134670>,  <39.031101, 27.619473, 25.177202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255150, 27.544680, 25.134670>,  <39.628563, 27.420027, 25.063784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255150, 27.544680, 25.134670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058884, 0.354328, -0.933265,
		-0.353631, -0.881666, -0.312425,
		-0.933530, 0.311635, 0.177217,
		38.975090, 27.638170, 25.187836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314491, 27.179100, 24.488571>,  <39.628563, 27.420027, 25.063784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314491, 27.179100, 24.488571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131306, 27.491381, 24.658640>,  <39.021393, 27.678749, 24.760681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131306, 27.491381, 24.658640>,  <39.314491, 27.179100, 24.488571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131306, 27.491381, 24.658640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155155, 0.400740, -0.902959,
		-0.875326, -0.479491, -0.062395,
		-0.457964, 0.780702, 0.425173,
		38.993916, 27.725592, 24.786192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873577, 27.420132, 23.934933>,  <39.314491, 27.179100, 24.488571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873577, 27.420132, 23.934933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896755, 27.726162, 24.191465>,  <38.910664, 27.909781, 24.345385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896755, 27.726162, 24.191465>,  <38.873577, 27.420132, 23.934933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896755, 27.726162, 24.191465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108949, 0.643419, -0.757721,
		-0.992357, -0.025966, 0.120637,
		0.057945, 0.765074, 0.641330,
		38.914139, 27.955685, 24.383865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310066, 27.883261, 23.691854>,  <38.873577, 27.420132, 23.934933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310066, 27.883261, 23.691854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586029, 28.086071, 23.898527>,  <38.751606, 28.207758, 24.022532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586029, 28.086071, 23.898527>,  <38.310066, 27.883261, 23.691854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586029, 28.086071, 23.898527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069779, 0.663842, -0.744610,
		-0.720532, 0.549762, 0.422607,
		0.689902, 0.507026, 0.516681,
		38.792999, 28.238178, 24.053532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231041, 28.544218, 23.566101>,  <38.310066, 27.883261, 23.691854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231041, 28.544218, 23.566101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590786, 28.585457, 23.736055>,  <38.806633, 28.610201, 23.838028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590786, 28.585457, 23.736055>,  <38.231041, 28.544218, 23.566101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590786, 28.585457, 23.736055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221755, 0.729961, -0.646515,
		-0.376802, 0.675668, 0.633634,
		0.899358, 0.103096, 0.424884,
		38.860592, 28.616386, 23.863520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424412, 29.251255, 23.747030>,  <38.231041, 28.544218, 23.566101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424412, 29.251255, 23.747030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759197, 29.064486, 23.632851>,  <38.960068, 28.952423, 23.564342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759197, 29.064486, 23.632851>,  <38.424412, 29.251255, 23.747030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759197, 29.064486, 23.632851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026501, 0.555558, -0.831055,
		0.546622, 0.687996, 0.477354,
		0.836960, -0.466923, -0.285447,
		39.010284, 28.924408, 23.547216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887455, 29.730482, 23.452190>,  <38.424412, 29.251255, 23.747030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887455, 29.730482, 23.452190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042999, 29.404470, 23.280369>,  <39.136326, 29.208864, 23.177277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042999, 29.404470, 23.280369>,  <38.887455, 29.730482, 23.452190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042999, 29.404470, 23.280369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186657, 0.526276, -0.829574,
		0.902189, 0.242411, 0.356780,
		0.388862, -0.815028, -0.429553,
		39.159657, 29.159962, 23.151503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587082, 29.895542, 23.131197>,  <38.887455, 29.730482, 23.452190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587082, 29.895542, 23.131197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441162, 29.566544, 22.956646>,  <39.353611, 29.369144, 22.851915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441162, 29.566544, 22.956646>,  <39.587082, 29.895542, 23.131197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441162, 29.566544, 22.956646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236271, 0.371561, -0.897841,
		0.900610, -0.430633, 0.058787,
		-0.364797, -0.822494, -0.436378,
		39.331722, 29.319796, 22.825733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083187, 29.697300, 22.591114>,  <39.587082, 29.895542, 23.131197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083187, 29.697300, 22.591114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729790, 29.540472, 22.488571>,  <39.517750, 29.446375, 22.427046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729790, 29.540472, 22.488571>,  <40.083187, 29.697300, 22.591114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729790, 29.540472, 22.488571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129119, 0.322234, -0.937813,
		0.450298, -0.861652, -0.234067,
		-0.883493, -0.392072, -0.256357,
		39.464741, 29.422850, 22.411665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261120, 29.606312, 22.003344>,  <40.083187, 29.697300, 22.591114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261120, 29.606312, 22.003344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870369, 29.525379, 21.975706>,  <39.635918, 29.476820, 21.959124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870369, 29.525379, 21.975706>,  <40.261120, 29.606312, 22.003344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870369, 29.525379, 21.975706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020328, 0.233793, -0.972074,
		0.212828, -0.951002, -0.224274,
		-0.976878, -0.202325, -0.069090,
		39.577305, 29.464680, 21.954979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184738, 29.111902, 21.415747>,  <40.261120, 29.606312, 22.003344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184738, 29.111902, 21.415747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832787, 29.294939, 21.466995>,  <39.621616, 29.404762, 21.497744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832787, 29.294939, 21.466995>,  <40.184738, 29.111902, 21.415747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832787, 29.294939, 21.466995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088218, 0.422230, -0.902186,
		-0.466930, -0.782515, -0.411881,
		-0.879883, 0.457593, 0.128120,
		39.568821, 29.432217, 21.505432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798401, 28.920982, 20.778343>,  <40.184738, 29.111902, 21.415747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798401, 28.920982, 20.778343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633076, 29.247826, 20.939098>,  <39.533882, 29.443932, 21.035551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633076, 29.247826, 20.939098>,  <39.798401, 28.920982, 20.778343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633076, 29.247826, 20.939098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140444, 0.378866, -0.914733,
		-0.899695, -0.434510, -0.041831,
		-0.413309, 0.817106, 0.401888,
		39.509083, 29.492958, 21.059666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070118, 28.953726, 20.506487>,  <39.798401, 28.920982, 20.778343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070118, 28.953726, 20.506487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202301, 29.322477, 20.587414>,  <39.281612, 29.543728, 20.635969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202301, 29.322477, 20.587414>,  <39.070118, 28.953726, 20.506487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202301, 29.322477, 20.587414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166395, 0.267906, -0.948968,
		-0.929036, 0.279933, 0.241929,
		0.330462, 0.921881, 0.202315,
		39.301441, 29.599041, 20.648108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581486, 29.373575, 20.369957>,  <39.070118, 28.953726, 20.506487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581486, 29.373575, 20.369957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896996, 29.618057, 20.343868>,  <39.086304, 29.764748, 20.328215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896996, 29.618057, 20.343868>,  <38.581486, 29.373575, 20.369957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896996, 29.618057, 20.343868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384124, 0.407305, -0.828584,
		-0.479871, 0.678622, 0.556054,
		0.788779, 0.611207, -0.065221,
		39.133629, 29.801420, 20.324303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423901, 30.181232, 20.457939>,  <38.581486, 29.373575, 20.369957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423901, 30.181232, 20.457939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741138, 30.072588, 20.239862>,  <38.931480, 30.007402, 20.109016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741138, 30.072588, 20.239862>,  <38.423901, 30.181232, 20.457939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741138, 30.072588, 20.239862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396799, 0.448698, -0.800763,
		0.462121, 0.851410, 0.248085,
		0.793092, -0.271609, -0.545191,
		38.979065, 29.991106, 20.076305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184212, 30.628181, 21.015793>,  <38.423901, 30.181232, 20.457939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184212, 30.628181, 21.015793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230095, 30.966585, 20.807518>,  <38.257626, 31.169628, 20.682554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230095, 30.966585, 20.807518>,  <38.184212, 30.628181, 21.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230095, 30.966585, 20.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143068, -0.532749, -0.834093,
		-0.983044, 0.021181, -0.182145,
		0.114704, 0.846008, -0.520685,
		38.264507, 31.220388, 20.651312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761059, 30.562712, 20.425032>,  <38.184212, 30.628181, 21.015793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761059, 30.562712, 20.425032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030506, 30.843079, 20.331263>,  <38.192173, 31.011299, 20.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030506, 30.843079, 20.331263>,  <37.761059, 30.562712, 20.425032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030506, 30.843079, 20.331263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183440, -0.465818, -0.865658,
		-0.715952, 0.540121, -0.442360,
		0.673619, 0.700916, -0.234423,
		38.232594, 31.053354, 20.260935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647579, 30.913956, 19.794403>,  <37.761059, 30.562712, 20.425032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647579, 30.913956, 19.794403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041409, 30.935455, 19.861002>,  <38.277706, 30.948355, 19.900961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041409, 30.935455, 19.861002>,  <37.647579, 30.913956, 19.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041409, 30.935455, 19.861002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173711, -0.413682, -0.893696,
		0.020842, 0.908834, -0.416638,
		0.984576, 0.053748, 0.166496,
		38.336781, 30.951580, 19.910952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060299, 31.417166, 19.316414>,  <37.647579, 30.913956, 19.794403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060299, 31.417166, 19.316414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261738, 31.099163, 19.451679>,  <38.382603, 30.908361, 19.532839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261738, 31.099163, 19.451679>,  <38.060299, 31.417166, 19.316414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261738, 31.099163, 19.451679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120680, -0.322852, -0.938724,
		0.855469, 0.513548, -0.066646,
		0.503597, -0.795006, 0.338165,
		38.412815, 30.860661, 19.553129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850262, 31.304907, 19.119328>,  <38.060299, 31.417166, 19.316414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850262, 31.304907, 19.119328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715088, 30.932291, 19.173040>,  <38.633984, 30.708721, 19.205267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715088, 30.932291, 19.173040>,  <38.850262, 31.304907, 19.119328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715088, 30.932291, 19.173040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212365, -0.214466, -0.953365,
		0.916898, -0.293656, 0.270302,
		-0.337932, -0.931542, 0.134281,
		38.613708, 30.652828, 19.213326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364769, 31.326555, 19.758167>,  <38.850262, 31.304907, 19.119328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364769, 31.326555, 19.758167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965405, 31.317347, 19.737564>,  <38.725788, 31.311821, 19.725203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965405, 31.317347, 19.737564>,  <39.364769, 31.326555, 19.758167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965405, 31.317347, 19.737564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053141, 0.690451, 0.721424,
		0.018956, 0.723012, -0.690575,
		-0.998407, -0.023023, -0.051509,
		38.665882, 31.310440, 19.722111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109329, 31.966438, 19.820570>,  <39.364769, 31.326555, 19.758167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109329, 31.966438, 19.820570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828720, 31.715040, 19.954945>,  <38.660355, 31.564201, 20.035570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828720, 31.715040, 19.954945>,  <39.109329, 31.966438, 19.820570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828720, 31.715040, 19.954945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091172, 0.546674, 0.832367,
		-0.706787, 0.553300, -0.440808,
		-0.701527, -0.628495, 0.335936,
		38.618263, 31.526491, 20.055725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626282, 32.379498, 20.077078>,  <39.109329, 31.966438, 19.820570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626282, 32.379498, 20.077078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529499, 32.034264, 20.254410>,  <38.471428, 31.827124, 20.360809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529499, 32.034264, 20.254410>,  <38.626282, 32.379498, 20.077078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529499, 32.034264, 20.254410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068449, 0.470949, 0.879501,
		-0.967869, 0.182460, -0.173028,
		-0.241961, -0.863085, 0.443328,
		38.456909, 31.775339, 20.387407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966648, 32.491951, 20.360165>,  <38.626282, 32.379498, 20.077078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966648, 32.491951, 20.360165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153111, 32.201981, 20.563017>,  <38.264988, 32.028000, 20.684729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153111, 32.201981, 20.563017>,  <37.966648, 32.491951, 20.360165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153111, 32.201981, 20.563017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158105, 0.495734, 0.853962,
		-0.870459, -0.478262, 0.116477,
		0.466159, -0.724923, 0.507131,
		38.292957, 31.984503, 20.715157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627369, 32.366436, 21.029467>,  <37.966648, 32.491951, 20.360165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627369, 32.366436, 21.029467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018314, 32.283001, 21.043659>,  <38.252880, 32.232941, 21.052174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018314, 32.283001, 21.043659>,  <37.627369, 32.366436, 21.029467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018314, 32.283001, 21.043659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024140, 0.276513, 0.960707,
		-0.210207, -0.938099, 0.275288,
		0.977359, -0.208593, 0.035479,
		38.311523, 32.220425, 21.054302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775887, 31.967957, 21.612328>,  <37.627369, 32.366436, 21.029467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775887, 31.967957, 21.612328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111355, 32.168034, 21.526131>,  <38.312637, 32.288078, 21.474413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111355, 32.168034, 21.526131>,  <37.775887, 31.967957, 21.612328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111355, 32.168034, 21.526131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079928, 0.278340, 0.957151,
		0.538739, -0.819960, 0.193456,
		0.838672, 0.500192, -0.215490,
		38.362957, 32.318092, 21.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267387, 31.608622, 22.000296>,  <37.775887, 31.967957, 21.612328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267387, 31.608622, 22.000296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420242, 31.970448, 21.924681>,  <38.511955, 32.187542, 21.879313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420242, 31.970448, 21.924681>,  <38.267387, 31.608622, 22.000296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420242, 31.970448, 21.924681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210820, 0.113833, 0.970875,
		0.899736, -0.410862, -0.147200,
		0.382139, 0.904563, -0.189038,
		38.534885, 32.241817, 21.867970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858284, 31.607729, 22.323181>,  <38.267387, 31.608622, 22.000296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858284, 31.607729, 22.323181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758579, 31.990910, 22.266336>,  <38.698757, 32.220818, 22.232229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758579, 31.990910, 22.266336>,  <38.858284, 31.607729, 22.323181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758579, 31.990910, 22.266336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189281, 0.192105, 0.962948,
		0.949758, 0.213129, -0.229207,
		-0.249264, 0.957952, -0.142112,
		38.683800, 32.278294, 22.223703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329193, 31.968506, 22.722048>,  <38.858284, 31.607729, 22.323181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329193, 31.968506, 22.722048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050537, 32.251301, 22.673290>,  <38.883343, 32.420979, 22.644035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050537, 32.251301, 22.673290>,  <39.329193, 31.968506, 22.722048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050537, 32.251301, 22.673290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094758, 0.259097, 0.961192,
		0.711132, 0.658057, -0.247491,
		-0.696643, 0.706986, -0.121896,
		38.841545, 32.463398, 22.636721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637169, 32.616089, 23.019022>,  <39.329193, 31.968506, 22.722048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637169, 32.616089, 23.019022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241428, 32.667324, 22.991364>,  <39.003986, 32.698067, 22.974768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241428, 32.667324, 22.991364>,  <39.637169, 32.616089, 23.019022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241428, 32.667324, 22.991364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033631, 0.261043, 0.964741,
		0.141622, 0.956792, -0.253955,
		-0.989349, 0.128088, -0.069147,
		38.944622, 32.705750, 22.970619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542095, 33.183041, 23.409544>,  <39.637169, 32.616089, 23.019022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542095, 33.183041, 23.409544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174992, 33.025043, 23.393017>,  <38.954731, 32.930244, 23.383101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174992, 33.025043, 23.393017>,  <39.542095, 33.183041, 23.409544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174992, 33.025043, 23.393017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125139, 0.188872, 0.973996,
		-0.376913, 0.899061, -0.222767,
		-0.917756, -0.394989, -0.041319,
		38.899666, 32.906548, 23.380621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056774, 33.721127, 23.455791>,  <39.542095, 33.183041, 23.409544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056774, 33.721127, 23.455791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895977, 33.374878, 23.575193>,  <38.799500, 33.167130, 23.646835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895977, 33.374878, 23.575193>,  <39.056774, 33.721127, 23.455791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895977, 33.374878, 23.575193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104699, 0.367323, 0.924182,
		-0.909638, 0.340260, -0.238290,
		-0.401992, -0.865619, 0.298506,
		38.775379, 33.115192, 23.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429245, 33.871307, 23.808359>,  <39.056774, 33.721127, 23.455791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429245, 33.871307, 23.808359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490452, 33.493279, 23.923895>,  <38.527176, 33.266460, 23.993216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490452, 33.493279, 23.923895>,  <38.429245, 33.871307, 23.808359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490452, 33.493279, 23.923895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168702, 0.263010, 0.949929,
		-0.973717, -0.194083, -0.119190,
		0.153017, -0.945070, 0.288840,
		38.536358, 33.209759, 24.010548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972118, 33.842731, 24.340372>,  <38.429245, 33.871307, 23.808359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972118, 33.842731, 24.340372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199402, 33.517410, 24.390461>,  <38.335773, 33.322220, 24.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199402, 33.517410, 24.390461>,  <37.972118, 33.842731, 24.340372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199402, 33.517410, 24.390461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131497, 0.060474, 0.989470,
		-0.812308, -0.578694, -0.072584,
		0.568211, -0.813299, 0.125220,
		38.369865, 33.273422, 24.428026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713074, 33.424633, 24.990295>,  <37.972118, 33.842731, 24.340372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713074, 33.424633, 24.990295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082405, 33.277756, 24.945354>,  <38.304005, 33.189629, 24.918390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082405, 33.277756, 24.945354>,  <37.713074, 33.424633, 24.990295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082405, 33.277756, 24.945354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107945, -0.032589, 0.993622,
		-0.368516, -0.929572, 0.009546,
		0.923332, -0.367196, -0.112352,
		38.359406, 33.167599, 24.911650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746872, 32.867249, 25.530285>,  <37.713074, 33.424633, 24.990295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746872, 32.867249, 25.530285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120712, 32.985451, 25.451084>,  <38.345016, 33.056374, 25.403564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120712, 32.985451, 25.451084>,  <37.746872, 32.867249, 25.530285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120712, 32.985451, 25.451084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236731, -0.101254, 0.966285,
		0.265495, -0.949960, -0.164587,
		0.934596, 0.295506, -0.198002,
		38.401093, 33.074104, 25.391684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104927, 32.376362, 25.944588>,  <37.746872, 32.867249, 25.530285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104927, 32.376362, 25.944588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356697, 32.676929, 25.865400>,  <38.507759, 32.857269, 25.817888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356697, 32.676929, 25.865400>,  <38.104927, 32.376362, 25.944588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356697, 32.676929, 25.865400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311903, -0.010964, 0.950051,
		0.711718, -0.659732, -0.241271,
		0.629424, 0.751421, -0.197969,
		38.545525, 32.902355, 25.806009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785881, 32.100033, 26.195280>,  <38.104927, 32.376362, 25.944588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785881, 32.100033, 26.195280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793758, 32.499954, 26.193916>,  <38.798485, 32.739906, 26.193098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793758, 32.499954, 26.193916>,  <38.785881, 32.100033, 26.195280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793758, 32.499954, 26.193916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269999, -0.002037, 0.962858,
		0.962659, -0.019882, -0.269985,
		0.019693, 0.999800, -0.003407,
		38.799667, 32.799892, 26.192894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397568, 32.290638, 26.538134>,  <38.785881, 32.100033, 26.195280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397568, 32.290638, 26.538134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152542, 32.606709, 26.545897>,  <39.005527, 32.796352, 26.550554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152542, 32.606709, 26.545897>,  <39.397568, 32.290638, 26.538134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152542, 32.606709, 26.545897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054959, 0.018087, 0.998325,
		0.788505, 0.612608, -0.054507,
		-0.612568, 0.790180, 0.019406,
		38.968773, 32.843761, 26.551718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566730, 32.607483, 27.173109>,  <39.397568, 32.290638, 26.538134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566730, 32.607483, 27.173109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226685, 32.804283, 27.098030>,  <39.022655, 32.922363, 27.052982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226685, 32.804283, 27.098030>,  <39.566730, 32.607483, 27.173109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226685, 32.804283, 27.098030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108667, 0.184860, 0.976739,
		0.515258, 0.850739, -0.103688,
		-0.850118, 0.492005, -0.187698,
		38.971649, 32.951885, 27.041721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597305, 33.253624, 27.581615>,  <39.566730, 32.607483, 27.173109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597305, 33.253624, 27.581615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215363, 33.201233, 27.474957>,  <38.986198, 33.169800, 27.410961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215363, 33.201233, 27.474957>,  <39.597305, 33.253624, 27.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215363, 33.201233, 27.474957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285240, 0.153367, 0.946106,
		-0.083024, 0.979451, -0.183803,
		-0.954853, -0.130977, -0.266646,
		38.928905, 33.161942, 27.394962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224342, 33.768997, 27.813242>,  <39.597305, 33.253624, 27.581615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224342, 33.768997, 27.813242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971241, 33.464428, 27.756863>,  <38.819382, 33.281689, 27.723036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971241, 33.464428, 27.756863>,  <39.224342, 33.768997, 27.813242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971241, 33.464428, 27.756863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278837, 0.054231, 0.958806,
		-0.722410, 0.645987, -0.246627,
		-0.632751, -0.761420, -0.140948,
		38.781414, 33.236004, 27.714579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603882, 34.060474, 28.077276>,  <39.224342, 33.768997, 27.813242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603882, 34.060474, 28.077276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550060, 33.664719, 28.055378>,  <38.517769, 33.427265, 28.042240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550060, 33.664719, 28.055378>,  <38.603882, 34.060474, 28.077276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550060, 33.664719, 28.055378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272880, -0.016112, 0.961913,
		-0.952592, 0.144368, -0.267817,
		-0.134554, -0.989393, -0.054743,
		38.509693, 33.367901, 28.038956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924274, 33.937263, 28.286684>,  <38.603882, 34.060474, 28.077276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924274, 33.937263, 28.286684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112022, 33.589512, 28.348484>,  <38.224670, 33.380859, 28.385563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112022, 33.589512, 28.348484>,  <37.924274, 33.937263, 28.286684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112022, 33.589512, 28.348484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217284, 0.055870, 0.974508,
		-0.855848, -0.490978, -0.162678,
		0.469373, -0.869379, 0.154498,
		38.252834, 33.328697, 28.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454967, 33.611858, 28.706001>,  <37.924274, 33.937263, 28.286684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454967, 33.611858, 28.706001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789024, 33.397732, 28.756561>,  <37.989460, 33.269257, 28.786898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789024, 33.397732, 28.756561>,  <37.454967, 33.611858, 28.706001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789024, 33.397732, 28.756561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301846, -0.253928, 0.918918,
		-0.459813, -0.805580, -0.373648,
		0.835141, -0.535315, 0.126402,
		38.039566, 33.237137, 28.794481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314682, 32.872955, 28.682148>,  <37.454967, 33.611858, 28.706001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314682, 32.872955, 28.682148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639202, 32.963581, 28.897724>,  <37.833916, 33.017956, 29.027071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639202, 32.963581, 28.897724>,  <37.314682, 32.872955, 28.682148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639202, 32.963581, 28.897724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539724, -0.064045, 0.839402,
		0.224696, -0.971888, 0.070323,
		0.811301, 0.226566, 0.538942,
		37.882591, 33.031551, 29.059406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298916, 32.504219, 29.261271>,  <37.314682, 32.872955, 28.682148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298916, 32.504219, 29.261271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579300, 32.761703, 29.384098>,  <37.747528, 32.916195, 29.457794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579300, 32.761703, 29.384098>,  <37.298916, 32.504219, 29.261271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579300, 32.761703, 29.384098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358429, -0.054276, 0.931978,
		0.616592, -0.763340, 0.192681,
		0.700958, 0.643712, 0.307069,
		37.789589, 32.954819, 29.476219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480465, 32.271187, 29.894964>,  <37.298916, 32.504219, 29.261271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480465, 32.271187, 29.894964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617668, 32.646465, 29.913445>,  <37.699989, 32.871632, 29.924532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617668, 32.646465, 29.913445>,  <37.480465, 32.271187, 29.894964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617668, 32.646465, 29.913445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344359, 0.079836, 0.935438,
		0.873936, -0.336770, 0.350460,
		0.343007, 0.938196, 0.046199,
		37.720570, 32.927925, 29.927303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017818, 32.291920, 30.380878>,  <37.480465, 32.271187, 29.894964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017818, 32.291920, 30.380878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848343, 32.652500, 30.345407>,  <37.746658, 32.868851, 30.324125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848343, 32.652500, 30.345407>,  <38.017818, 32.291920, 30.380878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848343, 32.652500, 30.345407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207022, -0.001062, 0.978336,
		0.881832, 0.432870, 0.187071,
		-0.423691, 0.901456, -0.088677,
		37.721237, 32.922935, 30.318804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192188, 32.611317, 30.977064>,  <38.017818, 32.291920, 30.380878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192188, 32.611317, 30.977064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884941, 32.829578, 30.843048>,  <37.700592, 32.960537, 30.762638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884941, 32.829578, 30.843048>,  <38.192188, 32.611317, 30.977064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884941, 32.829578, 30.843048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312578, 0.137125, 0.939942,
		0.558829, 0.826713, 0.065233,
		-0.768118, 0.545658, -0.335042,
		37.654507, 32.993275, 30.742535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119926, 33.125919, 31.418886>,  <38.192188, 32.611317, 30.977064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119926, 33.125919, 31.418886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759232, 33.150375, 31.247711>,  <37.542816, 33.165051, 31.145006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759232, 33.150375, 31.247711>,  <38.119926, 33.125919, 31.418886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759232, 33.150375, 31.247711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405489, 0.223464, 0.886365,
		0.149821, 0.972793, -0.176715,
		-0.901739, 0.061140, -0.427936,
		37.488708, 33.168716, 31.119329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782600, 33.763653, 31.710175>,  <38.119926, 33.125919, 31.418886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782600, 33.763653, 31.710175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510094, 33.501232, 31.580265>,  <37.346592, 33.343781, 31.502319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510094, 33.501232, 31.580265>,  <37.782600, 33.763653, 31.710175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510094, 33.501232, 31.580265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440663, 0.013264, 0.897574,
		-0.584546, 0.754601, -0.298133,
		-0.681265, -0.656050, -0.324772,
		37.305714, 33.304417, 31.482834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207161, 33.930565, 32.226494>,  <37.782600, 33.763653, 31.710175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207161, 33.930565, 32.226494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086361, 33.608147, 32.022888>,  <37.013882, 33.414696, 31.900726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086361, 33.608147, 32.022888>,  <37.207161, 33.930565, 32.226494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086361, 33.608147, 32.022888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541448, -0.294434, 0.787492,
		-0.784622, 0.513423, -0.347512,
		-0.301997, -0.806043, -0.509011,
		36.995762, 33.366333, 31.870184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492756, 33.936512, 32.290981>,  <37.207161, 33.930565, 32.226494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492756, 33.936512, 32.290981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633194, 33.568584, 32.220928>,  <36.717457, 33.347828, 32.178898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633194, 33.568584, 32.220928>,  <36.492756, 33.936512, 32.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633194, 33.568584, 32.220928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350023, -0.302409, 0.886585,
		-0.868456, -0.249978, -0.428131,
		0.351097, -0.919815, -0.175131,
		36.738522, 33.292641, 32.168388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929665, 33.440552, 32.478336>,  <36.492756, 33.936512, 32.290981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929665, 33.440552, 32.478336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236229, 33.183624, 32.475880>,  <36.420166, 33.029469, 32.474407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236229, 33.183624, 32.475880>,  <35.929665, 33.440552, 32.478336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236229, 33.183624, 32.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375095, -0.455276, 0.807483,
		-0.521462, -0.616558, -0.589859,
		0.766408, -0.642325, -0.006141,
		36.466152, 32.990929, 32.474037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734379, 32.787029, 32.706722>,  <35.929665, 33.440552, 32.478336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734379, 32.787029, 32.706722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127800, 32.764290, 32.775307>,  <36.363853, 32.750645, 32.816456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127800, 32.764290, 32.775307>,  <35.734379, 32.787029, 32.706722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127800, 32.764290, 32.775307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177234, -0.487123, 0.855161,
		0.034903, -0.871481, -0.489186,
		0.983550, -0.056852, 0.171458,
		36.422867, 32.747234, 32.826744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879707, 32.152092, 32.936668>,  <35.734379, 32.787029, 32.706722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879707, 32.152092, 32.936668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197956, 32.357292, 33.065556>,  <36.388905, 32.480412, 33.142887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197956, 32.357292, 33.065556>,  <35.879707, 32.152092, 32.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197956, 32.357292, 33.065556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082240, -0.435502, 0.896423,
		0.600191, -0.739709, -0.304304,
		0.795617, 0.512999, 0.322218,
		36.436642, 32.511192, 33.162220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304028, 31.613819, 33.353676>,  <35.879707, 32.152092, 32.936668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304028, 31.613819, 33.353676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459366, 31.973610, 33.433807>,  <36.552570, 32.189484, 33.481888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459366, 31.973610, 33.433807>,  <36.304028, 31.613819, 33.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459366, 31.973610, 33.433807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002873, -0.216212, 0.976342,
		0.921509, -0.379734, -0.081381,
		0.388345, 0.899475, 0.200333,
		36.575871, 32.243454, 33.493908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853390, 31.552347, 33.691963>,  <36.304028, 31.613819, 33.353676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853390, 31.552347, 33.691963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760685, 31.923906, 33.807499>,  <36.705063, 32.146843, 33.876820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760685, 31.923906, 33.807499>,  <36.853390, 31.552347, 33.691963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760685, 31.923906, 33.807499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059180, -0.309842, 0.948945,
		0.970970, 0.202839, 0.126783,
		-0.231765, 0.928900, 0.288843,
		36.691154, 32.202576, 33.894154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357742, 31.781214, 34.253838>,  <36.853390, 31.552347, 33.691963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357742, 31.781214, 34.253838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014786, 31.985376, 34.280243>,  <36.809010, 32.107876, 34.296085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014786, 31.985376, 34.280243>,  <37.357742, 31.781214, 34.253838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014786, 31.985376, 34.280243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121961, -0.326113, 0.937430,
		0.499999, 0.795698, 0.341858,
		-0.857395, 0.510407, 0.066012,
		36.757568, 32.138500, 34.300045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470978, 32.407784, 34.833385>,  <37.357742, 31.781214, 34.253838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470978, 32.407784, 34.833385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089195, 32.307072, 34.769356>,  <36.860126, 32.246643, 34.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089195, 32.307072, 34.769356>,  <37.470978, 32.407784, 34.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089195, 32.307072, 34.769356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119796, -0.167960, 0.978488,
		-0.273249, 0.953098, 0.130148,
		-0.954455, -0.251779, -0.160072,
		36.802860, 32.231537, 34.721333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949966, 33.082825, 34.955246>,  <37.470978, 32.407784, 34.833385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949966, 33.082825, 34.955246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946770, 33.432549, 35.149368>,  <37.944851, 33.642384, 35.265842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946770, 33.432549, 35.149368>,  <37.949966, 33.082825, 34.955246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946770, 33.432549, 35.149368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082297, 0.484248, -0.871052,
		-0.996576, 0.032976, -0.075824,
		-0.007993, 0.874309, 0.485303,
		37.944370, 33.694839, 35.294960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413376, 33.481411, 34.592083>,  <37.949966, 33.082825, 34.955246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413376, 33.481411, 34.592083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716679, 33.683594, 34.756794>,  <37.898663, 33.804901, 34.855621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716679, 33.683594, 34.756794>,  <37.413376, 33.481411, 34.592083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716679, 33.683594, 34.756794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184212, 0.439759, -0.879021,
		-0.625387, 0.742380, 0.240341,
		0.758260, 0.505454, 0.411775,
		37.944157, 33.835232, 34.880325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393585, 34.048748, 34.135391>,  <37.413376, 33.481411, 34.592083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393585, 34.048748, 34.135391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746212, 34.054260, 34.324131>,  <37.957790, 34.057568, 34.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746212, 34.054260, 34.324131>,  <37.393585, 34.048748, 34.135391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746212, 34.054260, 34.324131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372974, 0.592368, -0.714136,
		-0.289352, 0.805550, 0.517074,
		0.881570, 0.013782, 0.471852,
		38.010685, 34.058395, 34.465687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475021, 34.766079, 34.135117>,  <37.393585, 34.048748, 34.135391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475021, 34.766079, 34.135117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843716, 34.623833, 34.197002>,  <38.064934, 34.538486, 34.234135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843716, 34.623833, 34.197002>,  <37.475021, 34.766079, 34.135117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843716, 34.623833, 34.197002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340844, 0.552534, -0.760613,
		0.185000, 0.753820, 0.630501,
		0.921738, -0.355616, 0.154716,
		38.120235, 34.517147, 34.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995098, 35.353062, 34.148594>,  <37.475021, 34.766079, 34.135117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995098, 35.353062, 34.148594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129536, 34.995354, 34.030392>,  <38.210197, 34.780727, 33.959473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129536, 34.995354, 34.030392>,  <37.995098, 35.353062, 34.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129536, 34.995354, 34.030392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387943, 0.417348, -0.821779,
		0.858220, 0.161555, 0.487194,
		0.336092, -0.894271, -0.295502,
		38.230362, 34.727074, 33.941742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577908, 35.483582, 33.863888>,  <37.995098, 35.353062, 34.148594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577908, 35.483582, 33.863888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512569, 35.118752, 33.713459>,  <38.473366, 34.899853, 33.623199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512569, 35.118752, 33.713459>,  <38.577908, 35.483582, 33.863888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512569, 35.118752, 33.713459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461059, 0.266435, -0.846426,
		0.872207, -0.311649, 0.377002,
		-0.163341, -0.912078, -0.376075,
		38.463566, 34.845127, 33.600636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098557, 35.403450, 33.513222>,  <38.577908, 35.483582, 33.863888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098557, 35.403450, 33.513222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876167, 35.104496, 33.367722>,  <38.742733, 34.925125, 33.280422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876167, 35.104496, 33.367722>,  <39.098557, 35.403450, 33.513222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876167, 35.104496, 33.367722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464661, 0.083392, -0.881553,
		0.689194, -0.659136, 0.300917,
		-0.555970, -0.747385, -0.363748,
		38.709377, 34.880280, 33.258598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545097, 35.015369, 33.124924>,  <39.098557, 35.403450, 33.513222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545097, 35.015369, 33.124924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180389, 34.946335, 32.975849>,  <38.961563, 34.904915, 32.886406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180389, 34.946335, 32.975849>,  <39.545097, 35.015369, 33.124924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180389, 34.946335, 32.975849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328742, 0.237250, -0.914134,
		0.246208, -0.955991, -0.159572,
		-0.911763, -0.172609, -0.372687,
		38.906860, 34.894562, 32.864044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714668, 34.759972, 32.510971>,  <39.545097, 35.015369, 33.124924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714668, 34.759972, 32.510971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328671, 34.840092, 32.443253>,  <39.097073, 34.888165, 32.402622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328671, 34.840092, 32.443253>,  <39.714668, 34.759972, 32.510971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328671, 34.840092, 32.443253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235227, 0.375574, -0.896444,
		-0.115972, -0.904889, -0.409543,
		-0.964996, 0.200298, -0.169299,
		39.039173, 34.900181, 32.392464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426476, 34.475838, 31.875095>,  <39.714668, 34.759972, 32.510971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426476, 34.475838, 31.875095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190319, 34.785976, 31.964785>,  <39.048626, 34.972061, 32.018597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190319, 34.785976, 31.964785>,  <39.426476, 34.475838, 31.875095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190319, 34.785976, 31.964785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017982, 0.290374, -0.956744,
		-0.806918, -0.560820, -0.185376,
		-0.590389, 0.775348, 0.224223,
		39.013203, 35.018581, 32.032051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064713, 34.410351, 31.265873>,  <39.426476, 34.475838, 31.875095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064713, 34.410351, 31.265873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001453, 34.755539, 31.457817>,  <38.963497, 34.962654, 31.572985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001453, 34.755539, 31.457817>,  <39.064713, 34.410351, 31.265873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001453, 34.755539, 31.457817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117434, 0.498966, -0.858628,
		-0.980408, -0.079436, -0.180251,
		-0.158145, 0.862974, 0.479861,
		38.954010, 35.014431, 31.601776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480324, 34.744041, 30.948530>,  <39.064713, 34.410351, 31.265873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480324, 34.744041, 30.948530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674809, 35.038147, 31.137411>,  <38.791500, 35.214611, 31.250740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674809, 35.038147, 31.137411>,  <38.480324, 34.744041, 30.948530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674809, 35.038147, 31.137411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142223, 0.466588, -0.872965,
		-0.862187, 0.491607, 0.122291,
		0.486216, 0.735267, 0.472204,
		38.820675, 35.258728, 31.279072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356865, 35.346214, 30.555286>,  <38.480324, 34.744041, 30.948530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356865, 35.346214, 30.555286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694557, 35.421860, 30.755890>,  <38.897171, 35.467247, 30.876251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694557, 35.421860, 30.755890>,  <38.356865, 35.346214, 30.555286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694557, 35.421860, 30.755890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311687, 0.587983, -0.746409,
		-0.436033, 0.786456, 0.437450,
		0.844231, 0.189111, 0.501508,
		38.947826, 35.478592, 30.906342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556683, 36.169281, 30.555752>,  <38.356865, 35.346214, 30.555286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556683, 36.169281, 30.555752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881599, 35.946938, 30.626404>,  <39.076550, 35.813530, 30.668795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881599, 35.946938, 30.626404>,  <38.556683, 36.169281, 30.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881599, 35.946938, 30.626404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447040, 0.398850, -0.800671,
		0.374612, 0.729341, 0.572475,
		0.812294, -0.555860, 0.176631,
		39.125286, 35.780178, 30.679394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078995, 36.662025, 30.443024>,  <38.556683, 36.169281, 30.555752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078995, 36.662025, 30.443024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213085, 36.288452, 30.393402>,  <39.293541, 36.064308, 30.363630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213085, 36.288452, 30.393402>,  <39.078995, 36.662025, 30.443024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213085, 36.288452, 30.393402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211510, 0.202914, -0.956080,
		0.918088, 0.294267, 0.265559,
		0.335228, -0.933934, -0.124053,
		39.313652, 36.008270, 30.356186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685963, 36.780666, 30.051947>,  <39.078995, 36.662025, 30.443024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685963, 36.780666, 30.051947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599949, 36.392094, 30.011793>,  <39.548340, 36.158951, 29.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599949, 36.392094, 30.011793>,  <39.685963, 36.780666, 30.051947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599949, 36.392094, 30.011793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298082, 0.032599, -0.953983,
		0.930004, -0.235060, 0.282557,
		-0.215032, -0.971434, -0.100384,
		39.535439, 36.100662, 29.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269943, 36.474552, 29.724104>,  <39.685963, 36.780666, 30.051947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269943, 36.474552, 29.724104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964100, 36.227467, 29.650566>,  <39.780594, 36.079216, 29.606443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964100, 36.227467, 29.650566>,  <40.269943, 36.474552, 29.724104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964100, 36.227467, 29.650566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411743, -0.248732, -0.876698,
		0.495821, -0.746029, 0.444523,
		-0.764610, -0.617715, -0.183846,
		39.734718, 36.042152, 29.595413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585636, 35.941055, 29.342819>,  <40.269943, 36.474552, 29.724104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585636, 35.941055, 29.342819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191402, 35.897579, 29.290972>,  <39.954861, 35.871494, 29.259863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191402, 35.897579, 29.290972>,  <40.585636, 35.941055, 29.342819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191402, 35.897579, 29.290972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157153, -0.304787, -0.939366,
		0.062594, -0.946198, 0.317476,
		-0.985589, -0.108691, -0.129620,
		39.895725, 35.864971, 29.252087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472736, 35.278484, 28.998390>,  <40.585636, 35.941055, 29.342819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472736, 35.278484, 28.998390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157131, 35.507969, 28.910475>,  <39.967766, 35.645660, 28.857725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157131, 35.507969, 28.910475>,  <40.472736, 35.278484, 28.998390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157131, 35.507969, 28.910475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079024, -0.260003, -0.962369,
		-0.609269, -0.776693, 0.159810,
		-0.789016, 0.573713, -0.219789,
		39.920425, 35.680084, 28.844538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142338, 34.836159, 28.698866>,  <40.472736, 35.278484, 28.998390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142338, 34.836159, 28.698866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970840, 35.173996, 28.570591>,  <39.867943, 35.376698, 28.493626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970840, 35.173996, 28.570591>,  <40.142338, 34.836159, 28.698866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970840, 35.173996, 28.570591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114967, -0.301073, -0.946646,
		-0.896082, -0.442735, 0.031982,
		-0.428742, 0.844595, -0.320686,
		39.842216, 35.427376, 28.474386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552319, 34.659203, 28.419804>,  <40.142338, 34.836159, 28.698866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552319, 34.659203, 28.419804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601044, 35.030849, 28.280149>,  <39.630280, 35.253838, 28.196356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601044, 35.030849, 28.280149>,  <39.552319, 34.659203, 28.419804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601044, 35.030849, 28.280149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084531, -0.360189, -0.929041,
		-0.988946, 0.083661, -0.122417,
		0.121817, 0.929120, -0.349136,
		39.637589, 35.309586, 28.175409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131828, 34.685844, 27.983934>,  <39.552319, 34.659203, 28.419804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131828, 34.685844, 27.983934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365112, 34.992046, 27.875219>,  <39.505081, 35.175766, 27.809990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365112, 34.992046, 27.875219>,  <39.131828, 34.685844, 27.983934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365112, 34.992046, 27.875219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163953, -0.438624, -0.883588,
		-0.795604, 0.470757, -0.381317,
		0.583210, 0.765504, -0.271789,
		39.540077, 35.221699, 27.793682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986904, 34.763721, 27.226751>,  <39.131828, 34.685844, 27.983934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986904, 34.763721, 27.226751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337147, 34.931236, 27.323032>,  <39.547291, 35.031746, 27.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337147, 34.931236, 27.323032>,  <38.986904, 34.763721, 27.226751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337147, 34.931236, 27.323032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358866, -0.230449, -0.904494,
		-0.323317, 0.878358, -0.352069,
		0.875603, 0.418784, 0.240705,
		39.599827, 35.056873, 27.395245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114933, 35.207455, 26.712992>,  <38.986904, 34.763721, 27.226751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114933, 35.207455, 26.712992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463757, 35.112293, 26.884068>,  <39.673050, 35.055195, 26.986713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463757, 35.112293, 26.884068>,  <39.114933, 35.207455, 26.712992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463757, 35.112293, 26.884068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407330, -0.131603, -0.903749,
		0.271295, 0.962331, -0.017859,
		0.872056, -0.237908, 0.427689,
		39.725372, 35.040920, 27.012375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673203, 35.498116, 26.236929>,  <39.114933, 35.207455, 26.712992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673203, 35.498116, 26.236929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864792, 35.235016, 26.469461>,  <39.979748, 35.077156, 26.608982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864792, 35.235016, 26.469461>,  <39.673203, 35.498116, 26.236929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864792, 35.235016, 26.469461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634799, -0.197872, -0.746911,
		0.606310, 0.726782, 0.322763,
		0.478976, -0.657749, 0.581333,
		40.008484, 35.037689, 26.643862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421524, 35.535862, 25.943274>,  <39.673203, 35.498116, 26.236929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421524, 35.535862, 25.943274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427372, 35.194489, 26.151672>,  <40.430882, 34.989666, 26.276712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427372, 35.194489, 26.151672>,  <40.421524, 35.535862, 25.943274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427372, 35.194489, 26.151672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765435, -0.325703, -0.555001,
		0.643347, 0.406904, 0.648486,
		0.014618, -0.853433, 0.520998,
		40.431759, 34.938457, 26.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206871, 35.391129, 26.077164>,  <40.421524, 35.535862, 25.943274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206871, 35.391129, 26.077164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021049, 35.037926, 26.103933>,  <40.909557, 34.826004, 26.119995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021049, 35.037926, 26.103933>,  <41.206871, 35.391129, 26.077164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021049, 35.037926, 26.103933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761386, -0.436872, -0.478993,
		0.452192, -0.171566, 0.875264,
		-0.464557, -0.883011, 0.066922,
		40.881683, 34.773022, 26.124010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668400, 34.815666, 26.192350>,  <41.206871, 35.391129, 26.077164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668400, 34.815666, 26.192350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343391, 34.625420, 26.057533>,  <41.148384, 34.511272, 25.976643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343391, 34.625420, 26.057533>,  <41.668400, 34.815666, 26.192350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343391, 34.625420, 26.057533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569777, -0.525868, -0.631520,
		0.123121, -0.705163, 0.698274,
		-0.812524, -0.475614, -0.337041,
		41.099636, 34.482735, 25.956421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790359, 33.974171, 26.270872>,  <41.668400, 34.815666, 26.192350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790359, 33.974171, 26.270872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537914, 34.086510, 25.981647>,  <41.386448, 34.153912, 25.808113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537914, 34.086510, 25.981647>,  <41.790359, 33.974171, 26.270872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537914, 34.086510, 25.981647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527256, -0.528385, -0.665440,
		-0.568943, -0.801208, 0.185392,
		-0.631114, 0.280848, -0.723063,
		41.348579, 34.170765, 25.764729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723190, 33.351406, 25.872501>,  <41.790359, 33.974171, 26.270872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723190, 33.351406, 25.872501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534035, 33.584400, 25.608051>,  <41.420540, 33.724197, 25.449381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534035, 33.584400, 25.608051>,  <41.723190, 33.351406, 25.872501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534035, 33.584400, 25.608051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323351, -0.583253, -0.745158,
		-0.819645, -0.566155, 0.087470,
		-0.472892, 0.582481, -0.661127,
		41.392166, 33.759144, 25.409714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417751, 32.896641, 25.353172>,  <41.723190, 33.351406, 25.872501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417751, 32.896641, 25.353172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392803, 33.247345, 25.162426>,  <41.377834, 33.457767, 25.047977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392803, 33.247345, 25.162426>,  <41.417751, 32.896641, 25.353172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392803, 33.247345, 25.162426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135192, -0.465971, -0.874411,
		-0.988854, -0.119006, -0.089469,
		-0.062370, 0.876760, -0.476867,
		41.374092, 33.510372, 25.019365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856277, 32.870308, 24.860065>,  <41.417751, 32.896641, 25.353172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856277, 32.870308, 24.860065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093983, 33.164948, 24.730904>,  <41.236607, 33.341732, 24.653406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093983, 33.164948, 24.730904>,  <40.856277, 32.870308, 24.860065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093983, 33.164948, 24.730904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001010, -0.402172, -0.915563,
		-0.804269, 0.543760, -0.239741,
		0.594264, 0.736602, -0.322905,
		41.272263, 33.385929, 24.634031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596786, 33.138981, 24.283705>,  <40.856277, 32.870308, 24.860065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596786, 33.138981, 24.283705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991821, 33.201797, 24.282709>,  <41.228844, 33.239487, 24.282112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991821, 33.201797, 24.282709>,  <40.596786, 33.138981, 24.283705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991821, 33.201797, 24.282709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094951, -0.609604, -0.786999,
		-0.125104, 0.776995, -0.616950,
		0.987590, 0.157037, -0.002487,
		41.288097, 33.248909, 24.281963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665840, 33.198093, 23.598337>,  <40.596786, 33.138981, 24.283705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665840, 33.198093, 23.598337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041790, 33.124157, 23.713200>,  <41.267361, 33.079796, 23.782118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041790, 33.124157, 23.713200>,  <40.665840, 33.198093, 23.598337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041790, 33.124157, 23.713200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159606, -0.505613, -0.847869,
		0.301915, 0.842726, -0.445713,
		0.939879, -0.184846, 0.287157,
		41.323753, 33.068703, 23.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113548, 33.391277, 23.047890>,  <40.665840, 33.198093, 23.598337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113548, 33.391277, 23.047890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326897, 33.140617, 23.275160>,  <41.454906, 32.990223, 23.411522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326897, 33.140617, 23.275160>,  <41.113548, 33.391277, 23.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326897, 33.140617, 23.275160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212393, -0.550963, -0.807050,
		0.818782, 0.551134, -0.160772,
		0.533371, -0.626651, 0.568175,
		41.486908, 32.952621, 23.445612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725971, 33.259651, 22.628138>,  <41.113548, 33.391277, 23.047890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725971, 33.259651, 22.628138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707825, 32.972141, 22.905643>,  <41.696938, 32.799637, 23.072147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707825, 32.972141, 22.905643>,  <41.725971, 33.259651, 22.628138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707825, 32.972141, 22.905643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265030, -0.678252, -0.685371,
		0.963172, 0.152773, 0.221270,
		-0.045371, -0.718773, 0.693763,
		41.694214, 32.756508, 23.113771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228008, 32.858437, 22.541983>,  <41.725971, 33.259651, 22.628138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228008, 32.858437, 22.541983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992180, 32.615726, 22.755232>,  <41.850681, 32.470100, 22.883181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992180, 32.615726, 22.755232>,  <42.228008, 32.858437, 22.541983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992180, 32.615726, 22.755232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110813, -0.714561, -0.690741,
		0.800076, -0.348167, 0.488527,
		-0.589576, -0.606780, 0.533122,
		41.815308, 32.433693, 22.915169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518475, 32.209316, 22.434921>,  <42.228008, 32.858437, 22.541983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518475, 32.209316, 22.434921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147057, 32.142384, 22.567471>,  <41.924206, 32.102222, 22.646999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147057, 32.142384, 22.567471>,  <42.518475, 32.209316, 22.434921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147057, 32.142384, 22.567471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074932, -0.789785, -0.608790,
		0.363584, -0.590118, 0.720810,
		-0.928543, -0.167335, 0.331372,
		41.868492, 32.092182, 22.666882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458973, 31.510706, 22.671431>,  <42.518475, 32.209316, 22.434921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458973, 31.510706, 22.671431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092262, 31.645197, 22.585203>,  <41.872234, 31.725891, 22.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092262, 31.645197, 22.585203>,  <42.458973, 31.510706, 22.671431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092262, 31.645197, 22.585203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127730, -0.758209, -0.639378,
		-0.378421, -0.558634, 0.738055,
		-0.916778, 0.336226, -0.215568,
		41.817230, 31.746065, 22.520533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144684, 31.200981, 22.389942>,  <42.458973, 31.510706, 22.671431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144684, 31.200981, 22.389942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529785, 31.117640, 22.458860>,  <43.760845, 31.067635, 22.500212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529785, 31.117640, 22.458860>,  <43.144684, 31.200981, 22.389942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529785, 31.117640, 22.458860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110925, 0.276769, 0.954513,
		-0.246564, -0.938076, 0.243350,
		0.962758, -0.208355, 0.172297,
		43.818611, 31.055134, 22.510550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194065, 30.677980, 22.895658>,  <43.144684, 31.200981, 22.389942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194065, 30.677980, 22.895658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541851, 30.874487, 22.916380>,  <43.750523, 30.992392, 22.928814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541851, 30.874487, 22.916380>,  <43.194065, 30.677980, 22.895658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541851, 30.874487, 22.916380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134372, 0.134284, 0.981790,
		0.475366, -0.860595, 0.182768,
		0.869466, 0.491268, 0.051805,
		43.802692, 31.021868, 22.931921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593143, 30.220209, 23.447662>,  <43.194065, 30.677980, 22.895658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593143, 30.220209, 23.447662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770824, 30.578150, 23.430138>,  <43.877434, 30.792915, 23.419622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770824, 30.578150, 23.430138>,  <43.593143, 30.220209, 23.447662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770824, 30.578150, 23.430138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022289, 0.059926, 0.997954,
		0.895648, -0.442319, 0.046565,
		0.444205, 0.894853, -0.043814,
		43.904087, 30.846605, 23.416994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150810, 30.253723, 23.907778>,  <43.593143, 30.220209, 23.447662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150810, 30.253723, 23.907778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046021, 30.633633, 23.839304>,  <43.983147, 30.861578, 23.798220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046021, 30.633633, 23.839304>,  <44.150810, 30.253723, 23.907778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046021, 30.633633, 23.839304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135020, 0.139562, 0.980965,
		0.955584, 0.280097, 0.091677,
		-0.261971, 0.949773, -0.171182,
		43.967430, 30.918564, 23.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453751, 30.615067, 24.450665>,  <44.150810, 30.253723, 23.907778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453751, 30.615067, 24.450665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220947, 30.896191, 24.287045>,  <44.081264, 31.064865, 24.188873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220947, 30.896191, 24.287045>,  <44.453751, 30.615067, 24.450665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220947, 30.896191, 24.287045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184793, 0.375553, 0.908191,
		0.791907, 0.604165, -0.088700,
		-0.582009, 0.702812, -0.409049,
		44.046345, 31.107035, 24.164330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727364, 31.208908, 24.752474>,  <44.453751, 30.615067, 24.450665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727364, 31.208908, 24.752474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360413, 31.305117, 24.625628>,  <44.140240, 31.362843, 24.549520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360413, 31.305117, 24.625628>,  <44.727364, 31.208908, 24.752474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360413, 31.305117, 24.625628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188330, 0.439592, 0.878232,
		0.350635, 0.865395, -0.357976,
		-0.917381, 0.240521, -0.317116,
		44.085197, 31.377274, 24.530493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619293, 31.899357, 24.971546>,  <44.727364, 31.208908, 24.752474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619293, 31.899357, 24.971546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244289, 31.779882, 24.900146>,  <44.019287, 31.708197, 24.857306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244289, 31.779882, 24.900146>,  <44.619293, 31.899357, 24.971546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244289, 31.779882, 24.900146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311558, 0.492124, 0.812863,
		-0.154948, 0.817679, -0.554429,
		-0.937509, -0.298688, -0.178501,
		43.963036, 31.690275, 24.846596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238766, 32.490303, 24.980919>,  <44.619293, 31.899357, 24.971546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238766, 32.490303, 24.980919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990108, 32.191845, 25.076275>,  <43.840916, 32.012772, 25.133488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990108, 32.191845, 25.076275>,  <44.238766, 32.490303, 24.980919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990108, 32.191845, 25.076275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187687, 0.437358, 0.879484,
		-0.760483, 0.501982, -0.411922,
		-0.621643, -0.746144, 0.238388,
		43.803616, 31.968002, 25.147791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687466, 32.840740, 25.158188>,  <44.238766, 32.490303, 24.980919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687466, 32.840740, 25.158188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620594, 32.472389, 25.299063>,  <43.580471, 32.251377, 25.383587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620594, 32.472389, 25.299063>,  <43.687466, 32.840740, 25.158188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620594, 32.472389, 25.299063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217475, 0.382858, 0.897844,
		-0.961642, 0.073511, -0.264274,
		-0.167181, -0.920878, 0.352185,
		43.570438, 32.196125, 25.404718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976723, 32.758877, 25.390144>,  <43.687466, 32.840740, 25.158188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976723, 32.758877, 25.390144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179623, 32.486721, 25.601713>,  <43.301365, 32.323425, 25.728655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179623, 32.486721, 25.601713>,  <42.976723, 32.758877, 25.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179623, 32.486721, 25.601713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312739, 0.426578, 0.848661,
		-0.803050, -0.595902, 0.003598,
		0.507254, -0.680392, 0.528924,
		43.331799, 32.282604, 25.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524220, 32.530056, 25.956402>,  <42.976723, 32.758877, 25.390144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524220, 32.530056, 25.956402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891850, 32.429390, 26.077709>,  <43.112427, 32.368992, 26.150494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891850, 32.429390, 26.077709>,  <42.524220, 32.530056, 25.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891850, 32.429390, 26.077709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218470, 0.315098, 0.923572,
		-0.327988, -0.915084, 0.234617,
		0.919073, -0.251664, 0.303266,
		43.167572, 32.353889, 26.168690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406784, 32.173435, 26.605932>,  <42.524220, 32.530056, 25.956402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406784, 32.173435, 26.605932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780590, 32.315765, 26.602812>,  <43.004875, 32.401165, 26.600939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780590, 32.315765, 26.602812>,  <42.406784, 32.173435, 26.605932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780590, 32.315765, 26.602812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087407, 0.250700, 0.964111,
		0.345016, -0.900297, 0.265385,
		0.934518, 0.355830, -0.007803,
		43.060947, 32.422512, 26.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695168, 31.945993, 27.284739>,  <42.406784, 32.173435, 26.605932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695168, 31.945993, 27.284739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956329, 32.231213, 27.182541>,  <43.113026, 32.402344, 27.121222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956329, 32.231213, 27.182541>,  <42.695168, 31.945993, 27.284739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956329, 32.231213, 27.182541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180243, 0.473885, 0.861943,
		0.735682, -0.516715, 0.437924,
		0.652905, 0.713048, -0.255494,
		43.152203, 32.445126, 27.105892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055195, 32.133541, 27.933775>,  <42.695168, 31.945993, 27.284739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055195, 32.133541, 27.933775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161285, 32.450703, 27.714336>,  <43.224941, 32.640999, 27.582672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161285, 32.450703, 27.714336>,  <43.055195, 32.133541, 27.933775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161285, 32.450703, 27.714336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264175, 0.606962, 0.749539,
		0.927290, -0.053871, 0.370447,
		0.265226, 0.792903, -0.548599,
		43.240852, 32.688572, 27.549757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500286, 32.438305, 28.250267>,  <43.055195, 32.133541, 27.933775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500286, 32.438305, 28.250267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379120, 32.729282, 28.003994>,  <43.306419, 32.903870, 27.856230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379120, 32.729282, 28.003994>,  <43.500286, 32.438305, 28.250267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379120, 32.729282, 28.003994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261047, 0.557992, 0.787718,
		0.916569, 0.399332, 0.020876,
		-0.302912, 0.727447, -0.615682,
		43.288246, 32.947517, 27.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677589, 33.174644, 28.519205>,  <43.500286, 32.438305, 28.250267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677589, 33.174644, 28.519205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371674, 33.255287, 28.274435>,  <43.188126, 33.303673, 28.127573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371674, 33.255287, 28.274435>,  <43.677589, 33.174644, 28.519205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371674, 33.255287, 28.274435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383280, 0.621067, 0.683646,
		0.517874, 0.757384, -0.397714,
		-0.764789, 0.201606, -0.611925,
		43.142239, 33.315769, 28.090858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651810, 33.887005, 28.602736>,  <43.677589, 33.174644, 28.519205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651810, 33.887005, 28.602736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294800, 33.784344, 28.454397>,  <43.080593, 33.722748, 28.365395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294800, 33.784344, 28.454397>,  <43.651810, 33.887005, 28.602736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294800, 33.784344, 28.454397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446551, 0.618063, 0.646985,
		0.063159, 0.743054, -0.666245,
		-0.892526, -0.256649, -0.370848,
		43.027042, 33.707348, 28.343143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261894, 34.527020, 28.569902>,  <43.651810, 33.887005, 28.602736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261894, 34.527020, 28.569902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011517, 34.217491, 28.608681>,  <42.861290, 34.031776, 28.631947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011517, 34.217491, 28.608681>,  <43.261894, 34.527020, 28.569902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011517, 34.217491, 28.608681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536849, 0.517715, 0.666157,
		-0.565674, 0.364933, -0.739484,
		-0.625944, -0.773818, 0.096944,
		42.823734, 33.985344, 28.637764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583763, 34.812855, 28.477617>,  <43.261894, 34.527020, 28.569902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583763, 34.812855, 28.477617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544342, 34.457504, 28.656986>,  <42.520691, 34.244293, 28.764608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544342, 34.457504, 28.656986>,  <42.583763, 34.812855, 28.477617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544342, 34.457504, 28.656986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615026, 0.408628, 0.674364,
		-0.782323, -0.209331, -0.586644,
		-0.098554, -0.888372, 0.448423,
		42.514774, 34.190994, 28.791513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922974, 34.668652, 28.545338>,  <42.583763, 34.812855, 28.477617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922974, 34.668652, 28.545338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067307, 34.411545, 28.815643>,  <42.153904, 34.257282, 28.977827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067307, 34.411545, 28.815643>,  <41.922974, 34.668652, 28.545338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067307, 34.411545, 28.815643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672930, 0.322246, 0.665825,
		-0.645730, -0.694992, -0.316259,
		0.360830, -0.642763, 0.675764,
		42.175556, 34.218716, 29.018373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322590, 34.491169, 28.928665>,  <41.922974, 34.668652, 28.545338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322590, 34.491169, 28.928665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620865, 34.384811, 29.173042>,  <41.799831, 34.320995, 29.319668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620865, 34.384811, 29.173042>,  <41.322590, 34.491169, 28.928665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620865, 34.384811, 29.173042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522452, 0.335724, 0.783794,
		-0.413517, -0.903652, 0.111426,
		0.745686, -0.265897, 0.610942,
		41.844570, 34.305042, 29.356325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029163, 34.110851, 29.501877>,  <41.322590, 34.491169, 28.928665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029163, 34.110851, 29.501877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376472, 34.210999, 29.673185>,  <41.584858, 34.271088, 29.775970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376472, 34.210999, 29.673185>,  <41.029163, 34.110851, 29.501877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376472, 34.210999, 29.673185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494493, 0.367769, 0.787542,
		0.039669, -0.895580, 0.443129,
		0.868276, 0.250365, 0.428269,
		41.636955, 34.286110, 29.801666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963902, 34.017117, 30.243574>,  <41.029163, 34.110851, 29.501877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963902, 34.017117, 30.243574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259361, 34.286076, 30.224506>,  <41.436638, 34.447453, 30.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259361, 34.286076, 30.224506>,  <40.963902, 34.017117, 30.243574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259361, 34.286076, 30.224506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409224, 0.503493, 0.760941,
		0.535666, -0.542555, 0.647067,
		0.738646, 0.672405, -0.047677,
		41.480957, 34.487797, 30.210205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325455, 33.991875, 30.977325>,  <40.963902, 34.017117, 30.243574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325455, 33.991875, 30.977325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486416, 34.322353, 30.819609>,  <41.582993, 34.520641, 30.724979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486416, 34.322353, 30.819609>,  <41.325455, 33.991875, 30.977325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486416, 34.322353, 30.819609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062963, 0.454660, 0.888437,
		0.913294, -0.332685, 0.234977,
		0.402404, 0.826199, -0.394291,
		41.607136, 34.570213, 30.701321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967335, 34.176933, 31.353973>,  <41.325455, 33.991875, 30.977325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967335, 34.176933, 31.353973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797836, 34.499607, 31.189194>,  <41.696136, 34.693211, 31.090326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797836, 34.499607, 31.189194>,  <41.967335, 34.176933, 31.353973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797836, 34.499607, 31.189194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011757, 0.459660, 0.888017,
		0.905705, 0.371449, -0.204262,
		-0.423745, 0.806683, -0.411950,
		41.670712, 34.741611, 31.065609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382736, 34.710392, 31.643381>,  <41.967335, 34.176933, 31.353973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382736, 34.710392, 31.643381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070030, 34.906876, 31.489729>,  <41.882408, 35.024765, 31.397537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070030, 34.906876, 31.489729>,  <42.382736, 34.710392, 31.643381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070030, 34.906876, 31.489729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154179, 0.444626, 0.882347,
		0.604214, 0.749012, -0.271858,
		-0.781764, 0.491212, -0.384131,
		41.835503, 35.054237, 31.374489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480492, 35.429028, 31.862257>,  <42.382736, 34.710392, 31.643381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480492, 35.429028, 31.862257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099049, 35.363445, 31.761259>,  <41.870182, 35.324097, 31.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099049, 35.363445, 31.761259>,  <42.480492, 35.429028, 31.862257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099049, 35.363445, 31.761259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288093, 0.253501, 0.923439,
		-0.087396, 0.953339, -0.288974,
		-0.953606, -0.163956, -0.252496,
		41.812965, 35.314259, 31.685511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151512, 36.019669, 32.071800>,  <42.480492, 35.429028, 31.862257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151512, 36.019669, 32.071800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855186, 35.753025, 32.038761>,  <41.677391, 35.593040, 32.018936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855186, 35.753025, 32.038761>,  <42.151512, 36.019669, 32.071800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855186, 35.753025, 32.038761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427704, 0.373316, 0.823228,
		-0.517936, 0.645189, -0.561671,
		-0.740818, -0.666608, -0.082596,
		41.632942, 35.553043, 32.013981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478500, 36.361755, 32.135693>,  <42.151512, 36.019669, 32.071800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478500, 36.361755, 32.135693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407475, 35.979179, 32.228378>,  <41.364857, 35.749634, 32.283989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407475, 35.979179, 32.228378>,  <41.478500, 36.361755, 32.135693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407475, 35.979179, 32.228378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399873, 0.285269, 0.871047,
		-0.899206, 0.062014, -0.433109,
		-0.177569, -0.956439, 0.231718,
		41.354202, 35.692249, 32.297894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832569, 36.343204, 32.537865>,  <41.478500, 36.361755, 32.135693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832569, 36.343204, 32.537865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996773, 35.990162, 32.629509>,  <41.095295, 35.778336, 32.684498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996773, 35.990162, 32.629509>,  <40.832569, 36.343204, 32.537865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996773, 35.990162, 32.629509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234803, 0.140474, 0.961839,
		-0.881107, -0.448640, -0.149573,
		0.410509, -0.882604, 0.229115,
		41.119926, 35.725380, 32.698242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395702, 36.015373, 33.031826>,  <40.832569, 36.343204, 32.537865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395702, 36.015373, 33.031826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730167, 35.804699, 33.093052>,  <40.930847, 35.678295, 33.129787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730167, 35.804699, 33.093052>,  <40.395702, 36.015373, 33.031826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730167, 35.804699, 33.093052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153227, 0.043649, 0.987227,
		-0.526644, -0.848936, -0.044206,
		0.836163, -0.526690, 0.153068,
		40.981018, 35.646690, 33.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163139, 35.513889, 33.579147>,  <40.395702, 36.015373, 33.031826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163139, 35.513889, 33.579147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563049, 35.522362, 33.578838>,  <40.802994, 35.527447, 33.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563049, 35.522362, 33.578838>,  <40.163139, 35.513889, 33.579147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563049, 35.522362, 33.578838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003753, -0.140846, 0.990024,
		0.020864, -0.989805, -0.140894,
		0.999776, 0.021185, -0.000776,
		40.862984, 35.528717, 33.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359062, 34.950066, 33.997871>,  <40.163139, 35.513889, 33.579147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359062, 34.950066, 33.997871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669388, 35.202396, 34.003090>,  <40.855583, 35.353794, 34.006222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669388, 35.202396, 34.003090>,  <40.359062, 34.950066, 33.997871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669388, 35.202396, 34.003090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137689, -0.189449, 0.972189,
		0.615754, -0.752441, -0.233835,
		0.775815, 0.630826, 0.013051,
		40.902134, 35.391644, 34.007004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849010, 34.586308, 34.356201>,  <40.359062, 34.950066, 33.997871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849010, 34.586308, 34.356201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017097, 34.948559, 34.378998>,  <41.117950, 35.165909, 34.392677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017097, 34.948559, 34.378998>,  <40.849010, 34.586308, 34.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017097, 34.948559, 34.378998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197869, -0.152749, 0.968254,
		0.885588, -0.395598, -0.243384,
		0.420216, 0.905632, 0.056996,
		41.143162, 35.220249, 34.396095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525459, 34.504330, 34.799244>,  <40.849010, 34.586308, 34.356201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525459, 34.504330, 34.799244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424011, 34.891243, 34.797058>,  <41.363140, 35.123390, 34.795746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424011, 34.891243, 34.797058>,  <41.525459, 34.504330, 34.799244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424011, 34.891243, 34.797058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441560, 0.120800, 0.889063,
		0.860639, 0.223075, -0.457753,
		-0.253624, 0.967287, -0.005464,
		41.347923, 35.181431, 34.795418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050159, 34.940762, 34.796055>,  <41.525459, 34.504330, 34.799244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050159, 34.940762, 34.796055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759705, 35.178917, 34.933598>,  <41.585430, 35.321812, 35.016121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759705, 35.178917, 34.933598>,  <42.050159, 34.940762, 34.796055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759705, 35.178917, 34.933598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529654, 0.165515, 0.831908,
		0.438397, 0.786204, -0.435537,
		-0.726137, 0.595390, 0.343855,
		41.541862, 35.357533, 35.036755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370899, 35.587280, 35.221539>,  <42.050159, 34.940762, 34.796055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370899, 35.587280, 35.221539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988762, 35.566998, 35.337982>,  <41.759480, 35.554829, 35.407848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988762, 35.566998, 35.337982>,  <42.370899, 35.587280, 35.221539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988762, 35.566998, 35.337982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266526, 0.277490, 0.923018,
		-0.127585, 0.959389, -0.251583,
		-0.955346, -0.050710, 0.291106,
		41.702160, 35.551785, 35.425316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244518, 36.216778, 35.592121>,  <42.370899, 35.587280, 35.221539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244518, 36.216778, 35.592121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959190, 35.965244, 35.715889>,  <41.787994, 35.814323, 35.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959190, 35.965244, 35.715889>,  <42.244518, 36.216778, 35.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959190, 35.965244, 35.715889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219304, 0.219053, 0.950748,
		-0.665639, 0.746049, -0.018351,
		-0.713324, -0.628830, 0.309422,
		41.745193, 35.776596, 35.808716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861454, 36.609554, 35.986935>,  <42.244518, 36.216778, 35.592121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861454, 36.609554, 35.986935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766411, 36.237167, 36.097820>,  <41.709385, 36.013737, 36.164352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766411, 36.237167, 36.097820>,  <41.861454, 36.609554, 35.986935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766411, 36.237167, 36.097820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185775, 0.236569, 0.953689,
		-0.953431, 0.278102, 0.116739,
		-0.237606, -0.930964, 0.277217,
		41.695129, 35.957878, 36.180984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725384, 36.665459, 36.671806>,  <41.861454, 36.609554, 35.986935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725384, 36.665459, 36.671806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711323, 36.267735, 36.631580>,  <41.702885, 36.029099, 36.607445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711323, 36.267735, 36.631580>,  <41.725384, 36.665459, 36.671806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711323, 36.267735, 36.631580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304286, -0.106496, 0.946609,
		-0.951932, 0.002675, 0.306298,
		-0.035151, -0.994310, -0.100563,
		41.700779, 35.969440, 36.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219711, 36.339729, 37.210266>,  <41.725384, 36.665459, 36.671806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219711, 36.339729, 37.210266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515610, 36.088593, 37.113441>,  <41.693150, 35.937912, 37.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515610, 36.088593, 37.113441>,  <41.219711, 36.339729, 37.210266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515610, 36.088593, 37.113441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310805, -0.000255, 0.950474,
		-0.596808, -0.778341, 0.194948,
		0.739743, -0.627841, -0.242065,
		41.737534, 35.900242, 37.040821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223377, 35.793137, 37.736198>,  <41.219711, 36.339729, 37.210266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223377, 35.793137, 37.736198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589035, 35.821056, 37.576466>,  <41.808430, 35.837807, 37.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589035, 35.821056, 37.576466>,  <41.223377, 35.793137, 37.736198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589035, 35.821056, 37.576466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403669, -0.066073, 0.912516,
		0.037310, -0.995370, -0.088577,
		0.914144, 0.069802, -0.399335,
		41.863277, 35.841995, 37.456665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669296, 35.198914, 38.080235>,  <41.223377, 35.793137, 37.736198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669296, 35.198914, 38.080235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965088, 35.431923, 37.945274>,  <42.142563, 35.571728, 37.864300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965088, 35.431923, 37.945274>,  <41.669296, 35.198914, 38.080235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965088, 35.431923, 37.945274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471513, -0.090477, 0.877205,
		0.480462, -0.807765, -0.341571,
		0.739481, 0.582519, -0.337401,
		42.186932, 35.606678, 37.844055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338207, 35.037537, 38.466404>,  <41.669296, 35.198914, 38.080235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338207, 35.037537, 38.466404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404774, 35.391300, 38.291988>,  <42.444714, 35.603558, 38.187340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404774, 35.391300, 38.291988>,  <42.338207, 35.037537, 38.466404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404774, 35.391300, 38.291988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512186, 0.300338, 0.804650,
		0.842599, -0.357235, -0.403002,
		0.166412, 0.884410, -0.436035,
		42.454697, 35.656624, 38.161179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984180, 35.076344, 38.565144>,  <42.338207, 35.037537, 38.466404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984180, 35.076344, 38.565144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826664, 35.437134, 38.494297>,  <42.732155, 35.653606, 38.451790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826664, 35.437134, 38.494297>,  <42.984180, 35.076344, 38.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826664, 35.437134, 38.494297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483960, 0.367266, 0.794291,
		0.781480, 0.227067, -0.581145,
		-0.393792, 0.901974, -0.177120,
		42.708527, 35.707726, 38.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530602, 35.472034, 38.666592>,  <42.984180, 35.076344, 38.565144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530602, 35.472034, 38.666592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186440, 35.669830, 38.715885>,  <42.979942, 35.788506, 38.745461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186440, 35.669830, 38.715885>,  <43.530602, 35.472034, 38.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186440, 35.669830, 38.715885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392989, 0.489857, 0.778203,
		0.324443, 0.718000, -0.615803,
		-0.860405, 0.494486, 0.123235,
		42.928318, 35.818176, 38.752857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745289, 36.039223, 38.861889>,  <43.530602, 35.472034, 38.666592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745289, 36.039223, 38.861889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356277, 36.042862, 38.954929>,  <43.122871, 36.045044, 39.010754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356277, 36.042862, 38.954929>,  <43.745289, 36.039223, 38.861889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356277, 36.042862, 38.954929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208800, 0.475820, 0.854399,
		-0.102907, 0.879495, -0.464648,
		-0.972529, 0.009095, 0.232603,
		43.064518, 36.045589, 39.024712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542702, 36.797768, 39.060162>,  <43.745289, 36.039223, 38.861889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542702, 36.797768, 39.060162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292320, 36.533779, 39.226349>,  <43.142090, 36.375385, 39.326061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292320, 36.533779, 39.226349>,  <43.542702, 36.797768, 39.060162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292320, 36.533779, 39.226349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173716, 0.401363, 0.899294,
		-0.760263, 0.635094, -0.136589,
		-0.625958, -0.659972, 0.415467,
		43.104534, 36.335789, 39.350990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938889, 37.132900, 39.583744>,  <43.542702, 36.797768, 39.060162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938889, 37.132900, 39.583744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058853, 36.758564, 39.657772>,  <43.130833, 36.533962, 39.702187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058853, 36.758564, 39.657772>,  <42.938889, 37.132900, 39.583744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058853, 36.758564, 39.657772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168636, 0.242953, 0.955267,
		-0.938942, -0.255290, 0.230682,
		0.299915, -0.935842, 0.185067,
		43.148827, 36.477810, 39.713291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536217, 36.967381, 40.083637>,  <42.938889, 37.132900, 39.583744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536217, 36.967381, 40.083637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840191, 36.709740, 40.118584>,  <43.022575, 36.555157, 40.139549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840191, 36.709740, 40.118584>,  <42.536217, 36.967381, 40.083637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840191, 36.709740, 40.118584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085776, 0.232604, 0.968782,
		-0.644313, -0.728719, 0.232012,
		0.759936, -0.644100, 0.087363,
		43.068172, 36.516510, 40.144794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352234, 36.582329, 40.619858>,  <42.536217, 36.967381, 40.083637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352234, 36.582329, 40.619858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744419, 36.517296, 40.575573>,  <42.979729, 36.478275, 40.549004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744419, 36.517296, 40.575573>,  <42.352234, 36.582329, 40.619858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744419, 36.517296, 40.575573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131598, 0.123879, 0.983532,
		-0.146195, -0.978887, 0.142855,
		0.980463, -0.162587, -0.110709,
		43.038559, 36.468521, 40.542358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510681, 36.102863, 41.130554>,  <42.352234, 36.582329, 40.619858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510681, 36.102863, 41.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798683, 36.360844, 41.028080>,  <42.971485, 36.515633, 40.966595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798683, 36.360844, 41.028080>,  <42.510681, 36.102863, 41.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798683, 36.360844, 41.028080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016876, 0.352785, 0.935552,
		0.693761, -0.677928, 0.243123,
		0.720007, 0.644947, -0.256189,
		43.014687, 36.554329, 40.951221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858082, 36.217140, 41.737183>,  <42.510681, 36.102863, 41.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858082, 36.217140, 41.737183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008034, 36.508644, 41.507969>,  <43.098003, 36.683548, 41.370441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008034, 36.508644, 41.507969>,  <42.858082, 36.217140, 41.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008034, 36.508644, 41.507969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277419, 0.501606, 0.819408,
		0.884592, -0.466151, -0.014130,
		0.374881, 0.728762, -0.573036,
		43.120499, 36.727272, 41.336060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376160, 36.599712, 42.085701>,  <42.858082, 36.217140, 41.737183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376160, 36.599712, 42.085701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335106, 36.841496, 41.769703>,  <43.310474, 36.986565, 41.580105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335106, 36.841496, 41.769703>,  <43.376160, 36.599712, 42.085701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335106, 36.841496, 41.769703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456492, 0.734243, 0.502496,
		0.883788, -0.309054, -0.351290,
		-0.102634, 0.604461, -0.789995,
		43.304317, 37.022835, 41.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046234, 36.985107, 41.901772>,  <43.376160, 36.599712, 42.085701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046234, 36.985107, 41.901772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742290, 37.196342, 41.750118>,  <43.559925, 37.323082, 41.659126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742290, 37.196342, 41.750118>,  <44.046234, 36.985107, 41.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742290, 37.196342, 41.750118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289827, 0.797222, 0.529564,
		0.581908, 0.292510, -0.758829,
		-0.759857, 0.528086, -0.379132,
		43.514332, 37.354767, 41.636379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321346, 37.702728, 41.862804>,  <44.046234, 36.985107, 41.901772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321346, 37.702728, 41.862804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926857, 37.757984, 41.826408>,  <43.690163, 37.791138, 41.804573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926857, 37.757984, 41.826408>,  <44.321346, 37.702728, 41.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926857, 37.757984, 41.826408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073697, 0.859408, 0.505950,
		0.148086, 0.492275, -0.857750,
		-0.986225, 0.138138, -0.090987,
		43.630989, 37.799427, 41.799110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237186, 38.204449, 41.574936>,  <44.321346, 37.702728, 41.862804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237186, 38.204449, 41.574936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874523, 38.188778, 41.742954>,  <43.656925, 38.179375, 41.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874523, 38.188778, 41.742954>,  <44.237186, 38.204449, 41.574936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874523, 38.188778, 41.742954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179090, 0.865767, 0.467305,
		-0.381966, 0.498911, -0.777940,
		-0.906658, -0.039173, 0.420043,
		43.602524, 38.177025, 41.868969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919735, 38.812489, 41.393688>,  <44.237186, 38.204449, 41.574936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919735, 38.812489, 41.393688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693848, 38.703999, 41.705467>,  <43.558315, 38.638905, 41.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693848, 38.703999, 41.705467>,  <43.919735, 38.812489, 41.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693848, 38.703999, 41.705467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242119, 0.848449, 0.470652,
		-0.788969, 0.454503, -0.413466,
		-0.564717, -0.271222, 0.779444,
		43.524433, 38.622631, 41.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215450, 39.250084, 41.394867>,  <43.919735, 38.812489, 41.393688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215450, 39.250084, 41.394867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296951, 39.123310, 41.765388>,  <43.345852, 39.047245, 41.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296951, 39.123310, 41.765388>,  <43.215450, 39.250084, 41.394867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296951, 39.123310, 41.765388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029171, 0.947698, 0.317834,
		-0.978588, -0.037738, 0.202341,
		0.203753, -0.316931, 0.926304,
		43.358078, 39.028233, 42.043282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009155, 39.759403, 41.951786>,  <43.215450, 39.250084, 41.394867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009155, 39.759403, 41.951786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276413, 39.531712, 42.143436>,  <43.436768, 39.395096, 42.258427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276413, 39.531712, 42.143436>,  <43.009155, 39.759403, 41.951786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276413, 39.531712, 42.143436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189413, 0.752875, 0.630319,
		-0.719516, -0.330393, 0.610850,
		0.668147, -0.569227, 0.479125,
		43.476856, 39.360943, 42.287174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234631, 40.190014, 42.660614>,  <43.009155, 39.759403, 41.951786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234631, 40.190014, 42.660614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398624, 39.855946, 42.807255>,  <43.497021, 39.655502, 42.895241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398624, 39.855946, 42.807255>,  <43.234631, 40.190014, 42.660614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398624, 39.855946, 42.807255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885939, 0.269085, -0.377764,
		0.216852, 0.479664, 0.850234,
		0.409985, -0.835174, 0.366601,
		43.521622, 39.605392, 42.917236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871609, 40.370197, 42.906036>,  <43.234631, 40.190014, 42.660614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871609, 40.370197, 42.906036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916142, 39.974834, 42.864750>,  <43.942860, 39.737617, 42.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916142, 39.974834, 42.864750>,  <43.871609, 40.370197, 42.906036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916142, 39.974834, 42.864750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975983, 0.128312, -0.176051,
		0.187254, -0.081139, 0.978955,
		0.111327, -0.988409, -0.103217,
		43.949539, 39.678310, 42.833786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404083, 40.189358, 43.239487>,  <43.871609, 40.370197, 42.906036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404083, 40.189358, 43.239487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363754, 39.898575, 42.967789>,  <44.339558, 39.724106, 42.804771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363754, 39.898575, 42.967789>,  <44.404083, 40.189358, 43.239487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363754, 39.898575, 42.967789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932251, 0.169421, -0.319694,
		0.347481, -0.665458, 0.660623,
		-0.100820, -0.726954, -0.679245,
		44.333508, 39.680489, 42.764015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866241, 39.600857, 43.214741>,  <44.404083, 40.189358, 43.239487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866241, 39.600857, 43.214741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749603, 39.659782, 42.836689>,  <44.679619, 39.695137, 42.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749603, 39.659782, 42.836689>,  <44.866241, 39.600857, 43.214741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749603, 39.659782, 42.836689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956301, 0.067007, -0.284601,
		0.021403, -0.986817, -0.160419,
		-0.291598, 0.147318, -0.945128,
		44.662125, 39.703979, 42.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779491, 38.762062, 43.073662>,  <44.866241, 39.600857, 43.214741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779491, 38.762062, 43.073662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174896, 38.771637, 43.133366>,  <45.412140, 38.777382, 43.169186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174896, 38.771637, 43.133366>,  <44.779491, 38.762062, 43.073662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174896, 38.771637, 43.133366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149410, 0.304596, 0.940690,
		-0.022949, -0.952181, 0.304672,
		0.988509, 0.023933, 0.149255,
		45.471451, 38.778816, 43.178143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060101, 38.836849, 43.053333>,  <44.779491, 38.762062, 43.073662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060101, 38.836849, 43.053333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733822, 38.987808, 42.877968>,  <43.538055, 39.078384, 42.772747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733822, 38.987808, 42.877968>,  <44.060101, 38.836849, 43.053333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733822, 38.987808, 42.877968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149843, -0.869860, -0.469991,
		-0.558733, -0.317677, 0.766093,
		-0.815699, 0.377393, -0.438417,
		43.489113, 39.101025, 42.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482494, 38.425587, 43.240051>,  <44.060101, 38.836849, 43.053333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482494, 38.425587, 43.240051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430565, 38.608322, 42.888042>,  <43.399406, 38.717964, 42.676838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430565, 38.608322, 42.888042>,  <43.482494, 38.425587, 43.240051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430565, 38.608322, 42.888042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240788, -0.875496, -0.418960,
		-0.961856, 0.157508, 0.223663,
		-0.129826, 0.456835, -0.880027,
		43.391617, 38.745373, 42.624035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833233, 38.160572, 43.014126>,  <43.482494, 38.425587, 43.240051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833233, 38.160572, 43.014126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035461, 38.295559, 42.696507>,  <43.156799, 38.376553, 42.505936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035461, 38.295559, 42.696507>,  <42.833233, 38.160572, 43.014126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035461, 38.295559, 42.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235748, -0.831277, -0.503390,
		-0.829953, 0.441695, -0.340712,
		0.505571, 0.337467, -0.794049,
		43.187134, 38.396797, 42.458290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426888, 38.116272, 42.382198>,  <42.833233, 38.160572, 43.014126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426888, 38.116272, 42.382198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798855, 38.127254, 42.235504>,  <43.022038, 38.133846, 42.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798855, 38.127254, 42.235504>,  <42.426888, 38.116272, 42.382198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798855, 38.127254, 42.235504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188979, -0.819793, -0.540580,
		-0.315489, 0.572002, -0.757154,
		0.929921, 0.027460, -0.366732,
		43.077831, 38.135494, 42.125484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381672, 38.120903, 41.692188>,  <42.426888, 38.116272, 42.382198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381672, 38.120903, 41.692188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744133, 37.960114, 41.744804>,  <42.961609, 37.863640, 41.776375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744133, 37.960114, 41.744804>,  <42.381672, 38.120903, 41.692188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744133, 37.960114, 41.744804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263138, -0.779290, -0.568740,
		0.331129, 0.480751, -0.811931,
		0.906152, -0.401976, 0.131542,
		43.015980, 37.839520, 41.784267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628094, 38.015274, 41.040607>,  <42.381672, 38.120903, 41.692188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628094, 38.015274, 41.040607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881950, 37.791710, 41.254093>,  <43.034264, 37.657570, 41.382183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881950, 37.791710, 41.254093>,  <42.628094, 38.015274, 41.040607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881950, 37.791710, 41.254093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126951, -0.605834, -0.785397,
		0.762309, 0.566200, -0.313533,
		0.634641, -0.558911, 0.533713,
		43.072342, 37.624035, 41.414207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184551, 37.918339, 40.578209>,  <42.628094, 38.015274, 41.040607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184551, 37.918339, 40.578209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232491, 37.633331, 40.854748>,  <43.261253, 37.462326, 41.020672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232491, 37.633331, 40.854748>,  <43.184551, 37.918339, 40.578209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232491, 37.633331, 40.854748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159317, -0.673535, -0.721781,
		0.979925, 0.196648, 0.032794,
		0.119849, -0.712517, 0.691344,
		43.268444, 37.419575, 41.062149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848080, 37.572903, 40.598225>,  <43.184551, 37.918339, 40.578209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848080, 37.572903, 40.598225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593346, 37.305866, 40.752499>,  <43.440506, 37.145645, 40.845062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593346, 37.305866, 40.752499>,  <43.848080, 37.572903, 40.598225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593346, 37.305866, 40.752499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259636, -0.656721, -0.708030,
		0.725965, -0.350762, 0.591557,
		-0.636838, -0.667595, 0.385686,
		43.402294, 37.105587, 40.868206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233887, 36.940445, 40.672165>,  <43.848080, 37.572903, 40.598225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233887, 36.940445, 40.672165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843300, 36.855827, 40.655415>,  <43.608948, 36.805058, 40.645363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843300, 36.855827, 40.655415>,  <44.233887, 36.940445, 40.672165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843300, 36.855827, 40.655415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183837, -0.715075, -0.674441,
		0.112729, -0.666271, 0.737140,
		-0.976471, -0.211543, -0.041875,
		43.550358, 36.792366, 40.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104591, 36.117561, 40.727077>,  <44.233887, 36.940445, 40.672165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104591, 36.117561, 40.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821564, 36.319302, 40.529095>,  <43.651749, 36.440346, 40.410305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821564, 36.319302, 40.529095>,  <44.104591, 36.117561, 40.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821564, 36.319302, 40.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164034, -0.564068, -0.809271,
		-0.687343, -0.653804, 0.316386,
		-0.707568, 0.504349, -0.494954,
		43.609291, 36.470608, 40.380608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165226, 35.687675, 40.125172>,  <44.104591, 36.117561, 40.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165226, 35.687675, 40.125172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829491, 35.904495, 40.141663>,  <43.628052, 36.034588, 40.151558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829491, 35.904495, 40.141663>,  <44.165226, 35.687675, 40.125172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829491, 35.904495, 40.141663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306834, -0.409784, -0.859029,
		-0.448747, -0.733659, 0.510265,
		-0.839332, 0.542053, 0.041223,
		43.577690, 36.067112, 40.154030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540192, 35.271255, 39.925545>,  <44.165226, 35.687675, 40.125172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540192, 35.271255, 39.925545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449062, 35.654884, 39.858273>,  <43.394382, 35.885059, 39.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449062, 35.654884, 39.858273>,  <43.540192, 35.271255, 39.925545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449062, 35.654884, 39.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296042, -0.232773, -0.926378,
		-0.927607, -0.161264, 0.336956,
		-0.227826, 0.959068, -0.168181,
		43.380714, 35.942604, 39.807819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782310, 35.071552, 39.895542>,  <43.540192, 35.271255, 39.925545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782310, 35.071552, 39.895542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786919, 35.471130, 39.913292>,  <42.789684, 35.710876, 39.923943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786919, 35.471130, 39.913292>,  <42.782310, 35.071552, 39.895542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786919, 35.471130, 39.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317115, 0.045732, -0.947284,
		-0.948317, -0.003157, 0.317308,
		0.011520, 0.998949, 0.044370,
		42.790375, 35.770817, 39.926601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188442, 35.504574, 39.668839>,  <42.782310, 35.071552, 39.895542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188442, 35.504574, 39.668839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461254, 35.787228, 39.593475>,  <42.624943, 35.956821, 39.548260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461254, 35.787228, 39.593475>,  <42.188442, 35.504574, 39.668839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461254, 35.787228, 39.593475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393972, 0.137973, -0.908708,
		-0.616132, 0.693994, 0.372497,
		0.682032, 0.706637, -0.188404,
		42.665863, 35.999218, 39.536953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866451, 36.217888, 39.364071>,  <42.188442, 35.504574, 39.668839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866451, 36.217888, 39.364071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242683, 36.144886, 39.249527>,  <42.468422, 36.101086, 39.180801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242683, 36.144886, 39.249527>,  <41.866451, 36.217888, 39.364071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242683, 36.144886, 39.249527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293069, -0.010321, -0.956036,
		0.171526, 0.983151, -0.063194,
		0.940579, -0.182505, -0.286361,
		42.524857, 36.090134, 39.163620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968719, 36.775734, 38.894329>,  <41.866451, 36.217888, 39.364071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968719, 36.775734, 38.894329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239643, 36.486759, 38.838715>,  <42.402199, 36.313374, 38.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239643, 36.486759, 38.838715>,  <41.968719, 36.775734, 38.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239643, 36.486759, 38.838715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232246, -0.030637, -0.972174,
		0.698078, 0.690755, -0.188534,
		0.677310, -0.722440, -0.139039,
		42.442837, 36.270027, 38.797005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158886, 36.854637, 38.201252>,  <41.968719, 36.775734, 38.894329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158886, 36.854637, 38.201252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338840, 36.504002, 38.269596>,  <42.446812, 36.293621, 38.310604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338840, 36.504002, 38.269596>,  <42.158886, 36.854637, 38.201252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338840, 36.504002, 38.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123676, -0.250622, -0.960152,
		0.884483, 0.410824, -0.221164,
		0.449882, -0.876591, 0.170862,
		42.473804, 36.241024, 38.320854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472992, 36.835888, 37.640560>,  <42.158886, 36.854637, 38.201252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472992, 36.835888, 37.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514965, 36.467236, 37.790005>,  <42.540150, 36.246044, 37.879673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514965, 36.467236, 37.790005>,  <42.472992, 36.835888, 37.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514965, 36.467236, 37.790005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242424, -0.388058, -0.889181,
		0.964479, 0.002730, -0.264144,
		0.104930, -0.921631, 0.373612,
		42.546444, 36.190746, 37.902088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936306, 36.492184, 37.258144>,  <42.472992, 36.835888, 37.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936306, 36.492184, 37.258144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720139, 36.211483, 37.443829>,  <42.590439, 36.043060, 37.555237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720139, 36.211483, 37.443829>,  <42.936306, 36.492184, 37.258144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720139, 36.211483, 37.443829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401717, -0.269573, -0.875188,
		0.739306, -0.659446, -0.136226,
		-0.540416, -0.701756, 0.464207,
		42.558014, 36.000957, 37.583092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049511, 35.694862, 36.969620>,  <42.936306, 36.492184, 37.258144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049511, 35.694862, 36.969620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675335, 35.742504, 37.102749>,  <42.450829, 35.771088, 37.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675335, 35.742504, 37.102749>,  <43.049511, 35.694862, 36.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675335, 35.742504, 37.102749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348541, -0.153693, -0.924607,
		-0.058969, -0.980915, 0.185282,
		-0.935437, 0.119101, 0.332826,
		42.394703, 35.778236, 37.202595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679897, 35.068066, 36.708801>,  <43.049511, 35.694862, 36.969620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679897, 35.068066, 36.708801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401588, 35.339180, 36.803883>,  <42.234604, 35.501850, 36.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401588, 35.339180, 36.803883>,  <42.679897, 35.068066, 36.708801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401588, 35.339180, 36.803883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480625, -0.193410, -0.855332,
		-0.533762, -0.709361, 0.460332,
		-0.695771, 0.677791, 0.237702,
		42.192856, 35.542519, 36.875195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821136, 35.209553, 35.961758>,  <42.679897, 35.068066, 36.708801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821136, 35.209553, 35.961758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884094, 34.816383, 35.923637>,  <42.921871, 34.580482, 35.900764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884094, 34.816383, 35.923637>,  <42.821136, 35.209553, 35.961758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884094, 34.816383, 35.923637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193567, 0.063919, -0.979002,
		0.968379, 0.172539, -0.180202,
		0.157398, -0.982926, -0.095296,
		42.931313, 34.521507, 35.895050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405453, 35.025112, 35.506786>,  <42.821136, 35.209553, 35.961758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405453, 35.025112, 35.506786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123363, 34.742558, 35.482517>,  <42.954109, 34.573025, 35.467957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123363, 34.742558, 35.482517>,  <43.405453, 35.025112, 35.506786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123363, 34.742558, 35.482517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141972, 0.224541, -0.964067,
		0.694626, -0.671268, -0.258638,
		-0.705223, -0.706385, -0.060671,
		42.911797, 34.530643, 35.464317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600365, 34.596554, 34.975052>,  <43.405453, 35.025112, 35.506786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600365, 34.596554, 34.975052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206009, 34.618828, 35.038197>,  <42.969395, 34.632191, 35.076084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206009, 34.618828, 35.038197>,  <43.600365, 34.596554, 34.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206009, 34.618828, 35.038197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137979, 0.263598, -0.954714,
		-0.094774, -0.963024, -0.252195,
		-0.985890, 0.055685, 0.157860,
		42.910240, 34.635532, 35.085556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065243, 35.240013, 35.202724>,  <43.600365, 34.596554, 34.975052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065243, 35.240013, 35.202724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101242, 35.127266, 34.820637>,  <44.122841, 35.059616, 34.591385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101242, 35.127266, 34.820637>,  <44.065243, 35.240013, 35.202724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101242, 35.127266, 34.820637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920092, 0.390657, -0.028589,
		0.381223, -0.876320, 0.294504,
		0.089997, -0.281870, -0.955222,
		44.128242, 35.042706, 34.534069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810024, 34.942081, 35.053043>,  <44.065243, 35.240013, 35.202724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810024, 34.942081, 35.053043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669746, 35.089447, 34.708652>,  <44.585579, 35.177868, 34.502018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669746, 35.089447, 34.708652>,  <44.810024, 34.942081, 35.053043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669746, 35.089447, 34.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915349, 0.329096, -0.232019,
		0.197865, -0.869464, -0.452639,
		-0.350693, 0.368414, -0.860979,
		44.564537, 35.199970, 34.450359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282707, 34.749092, 34.531624>,  <44.810024, 34.942081, 35.053043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282707, 34.749092, 34.531624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098869, 35.056473, 34.353523>,  <44.988567, 35.240902, 34.246662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098869, 35.056473, 34.353523>,  <45.282707, 34.749092, 34.531624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098869, 35.056473, 34.353523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868972, 0.285528, -0.404179,
		-0.183461, -0.572672, -0.798992,
		-0.459597, 0.768453, -0.445253,
		44.960991, 35.287010, 34.219948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258629, 34.862423, 33.842712>,  <45.282707, 34.749092, 34.531624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258629, 34.862423, 33.842712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281487, 35.200474, 34.055313>,  <45.295200, 35.403305, 34.182873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281487, 35.200474, 34.055313>,  <45.258629, 34.862423, 33.842712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281487, 35.200474, 34.055313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844081, 0.243403, -0.477790,
		-0.533162, 0.475933, -0.699447,
		0.057149, 0.845129, 0.531498,
		45.298630, 35.454014, 34.214764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355953, 35.431381, 33.362518>,  <45.258629, 34.862423, 33.842712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355953, 35.431381, 33.362518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498230, 35.509735, 33.728058>,  <45.583595, 35.556747, 33.947380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498230, 35.509735, 33.728058>,  <45.355953, 35.431381, 33.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498230, 35.509735, 33.728058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899465, 0.193853, -0.391642,
		-0.253868, 0.961276, -0.107239,
		0.355687, 0.195883, 0.913847,
		45.604935, 35.568501, 34.002213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835651, 36.027157, 33.401649>,  <45.355953, 35.431381, 33.362518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835651, 36.027157, 33.401649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938652, 35.747562, 33.668514>,  <46.000454, 35.579803, 33.828632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938652, 35.747562, 33.668514>,  <45.835651, 36.027157, 33.401649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938652, 35.747562, 33.668514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944895, 0.037706, -0.325196,
		0.202153, 0.714136, 0.670182,
		0.257504, -0.698990, 0.667161,
		46.015903, 35.537865, 33.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559933, 36.231052, 33.713745>,  <45.835651, 36.027157, 33.401649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559933, 36.231052, 33.713745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472160, 35.841145, 33.730148>,  <46.419495, 35.607201, 33.739990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472160, 35.841145, 33.730148>,  <46.559933, 36.231052, 33.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472160, 35.841145, 33.730148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868123, -0.214260, -0.447723,
		0.445210, -0.062649, 0.893232,
		-0.219433, -0.974766, 0.041004,
		46.406330, 35.548714, 33.742451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735844, 36.982750, 33.583378>,  <46.559933, 36.231052, 33.713745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735844, 36.982750, 33.583378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780643, 36.698616, 33.861340>,  <46.807522, 36.528137, 34.028114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780643, 36.698616, 33.861340>,  <46.735844, 36.982750, 33.583378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780643, 36.698616, 33.861340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763545, 0.509063, 0.397309,
		-0.635969, 0.486091, 0.599382,
		0.111995, -0.710331, 0.694901,
		46.814243, 36.485516, 34.069809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996761, 37.281288, 34.167831>,  <46.735844, 36.982750, 33.583378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996761, 37.281288, 34.167831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029610, 36.914356, 34.323658>,  <47.049316, 36.694199, 34.417152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029610, 36.914356, 34.323658>,  <46.996761, 37.281288, 34.167831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029610, 36.914356, 34.323658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617294, 0.353695, 0.702743,
		-0.782435, 0.182769, 0.595307,
		0.082117, -0.917331, 0.389566,
		47.054245, 36.639156, 34.440529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881062, 37.275890, 34.900642>,  <46.996761, 37.281288, 34.167831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881062, 37.275890, 34.900642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110764, 36.949566, 34.873264>,  <47.248585, 36.753773, 34.856838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110764, 36.949566, 34.873264>,  <46.881062, 37.275890, 34.900642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110764, 36.949566, 34.873264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655345, 0.407974, 0.635673,
		-0.490662, -0.409898, 0.768918,
		0.574259, -0.815807, -0.068447,
		47.283043, 36.704823, 34.852730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661564, 37.802505, 35.363541>,  <46.881062, 37.275890, 34.900642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661564, 37.802505, 35.363541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378277, 37.871899, 35.637280>,  <46.208305, 37.913532, 35.801525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378277, 37.871899, 35.637280>,  <46.661564, 37.802505, 35.363541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378277, 37.871899, 35.637280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644308, -0.237455, 0.726968,
		0.288616, 0.955783, 0.056395,
		-0.708214, 0.173479, 0.684352,
		46.165813, 37.923943, 35.842587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013733, 38.106720, 35.888920>,  <46.661564, 37.802505, 35.363541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013733, 38.106720, 35.888920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682880, 37.932312, 36.030762>,  <46.484371, 37.827667, 36.115868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682880, 37.932312, 36.030762>,  <47.013733, 38.106720, 35.888920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682880, 37.932312, 36.030762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521523, -0.360326, 0.773420,
		-0.209456, 0.824651, 0.525432,
		-0.827128, -0.436022, 0.354603,
		46.434742, 37.801506, 36.137142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251537, 37.578316, 36.462788>,  <47.013733, 38.106720, 35.888920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251537, 37.578316, 36.462788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646336, 37.518257, 36.485729>,  <47.883217, 37.482224, 36.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646336, 37.518257, 36.485729>,  <47.251537, 37.578316, 36.462788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646336, 37.518257, 36.485729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159517, -0.871395, 0.463924,
		-0.019682, -0.467041, -0.884017,
		0.986999, -0.150147, 0.057351,
		47.942436, 37.473213, 36.502934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573978, 37.119335, 35.986446>,  <47.251537, 37.578316, 36.462788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573978, 37.119335, 35.986446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.675049, 37.090130, 36.372364>,  <47.735691, 37.072609, 36.603912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.675049, 37.090130, 36.372364>,  <47.573978, 37.119335, 35.986446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.675049, 37.090130, 36.372364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579925, -0.809615, 0.090615,
		0.774493, -0.582403, -0.246914,
		0.252680, -0.073011, 0.964791,
		47.750854, 37.068226, 36.661800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721165, 36.374161, 36.210556>,  <47.573978, 37.119335, 35.986446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721165, 36.374161, 36.210556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631496, 36.574455, 36.544983>,  <47.577694, 36.694630, 36.745640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631496, 36.574455, 36.544983>,  <47.721165, 36.374161, 36.210556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631496, 36.574455, 36.544983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603462, -0.744965, 0.284362,
		0.765232, -0.440789, 0.469175,
		-0.224175, 0.500732, 0.836070,
		47.564243, 36.724674, 36.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290157, 36.040077, 35.767563>,  <47.721165, 36.374161, 36.210556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290157, 36.040077, 35.767563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580956, 36.296070, 35.668041>,  <47.755432, 36.449665, 35.608330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580956, 36.296070, 35.668041>,  <47.290157, 36.040077, 35.767563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580956, 36.296070, 35.668041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043467, 0.404515, 0.913498,
		0.685268, -0.653291, 0.321897,
		0.726992, 0.639983, -0.248804,
		47.799053, 36.488064, 35.593399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137932, 35.322502, 35.733032>,  <47.290157, 36.040077, 35.767563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137932, 35.322502, 35.733032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368198, 35.517113, 35.995911>,  <47.506359, 35.633881, 36.153637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368198, 35.517113, 35.995911>,  <47.137932, 35.322502, 35.733032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368198, 35.517113, 35.995911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219689, 0.682145, -0.697435,
		-0.787621, 0.545866, 0.285802,
		0.575664, 0.486527, 0.657193,
		47.540897, 35.663071, 36.193069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740665, 35.200867, 35.310181>,  <47.137932, 35.322502, 35.733032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740665, 35.200867, 35.310181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593609, 34.915337, 35.071754>,  <47.505375, 34.744019, 34.928699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593609, 34.915337, 35.071754>,  <47.740665, 35.200867, 35.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593609, 34.915337, 35.071754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869687, -0.036895, -0.492222,
		0.329367, -0.699355, 0.634365,
		-0.367643, -0.713821, -0.596069,
		47.483315, 34.701191, 34.892933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.585144, 28.034958, 28.415472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.220310, 27.871008, 28.419537>,  <42.001411, 27.772638, 28.421976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.220310, 27.871008, 28.419537>,  <42.585144, 28.034958, 28.415472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220310, 27.871008, 28.419537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154203, 0.365894, 0.917793,
		-0.379900, 0.835537, -0.396930,
		-0.912084, -0.409877, 0.010161,
		41.946686, 27.748045, 28.422585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263557, 28.511520, 28.856165>,  <42.585144, 28.034958, 28.415472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263557, 28.511520, 28.856165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.056721, 28.169277, 28.846794>,  <41.932617, 27.963932, 28.841171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.056721, 28.169277, 28.846794>,  <42.263557, 28.511520, 28.856165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056721, 28.169277, 28.846794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306327, 0.159435, 0.938480,
		-0.799235, 0.492460, -0.344539,
		-0.517095, -0.855607, -0.023427,
		41.901592, 27.912596, 28.839766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610508, 28.668978, 28.995657>,  <42.263557, 28.511520, 28.856165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610508, 28.668978, 28.995657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653252, 28.284607, 29.097795>,  <41.678898, 28.053984, 29.159079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653252, 28.284607, 29.097795>,  <41.610508, 28.668978, 28.995657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653252, 28.284607, 29.097795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331374, 0.207712, 0.920351,
		-0.937429, -0.182962, -0.296231,
		0.106859, -0.960927, 0.255344,
		41.685310, 27.996328, 29.174398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921093, 28.550940, 29.243383>,  <41.610508, 28.668978, 28.995657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921093, 28.550940, 29.243383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.153881, 28.252625, 29.373066>,  <41.293552, 28.073635, 29.450876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.153881, 28.252625, 29.373066>,  <40.921093, 28.550940, 29.243383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153881, 28.252625, 29.373066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456223, 0.030601, 0.889339,
		-0.673179, -0.665481, -0.322436,
		0.581971, -0.745787, 0.324208,
		41.328472, 28.028889, 29.470327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563900, 28.000853, 29.618996>,  <40.921093, 28.550940, 29.243383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563900, 28.000853, 29.618996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941158, 27.960665, 29.745729>,  <41.167515, 27.936552, 29.821770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941158, 27.960665, 29.745729>,  <40.563900, 28.000853, 29.618996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941158, 27.960665, 29.745729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315722, 0.027218, 0.948461,
		-0.103916, -0.994568, -0.006050,
		0.943144, -0.100471, 0.316836,
		41.224102, 27.930523, 29.840780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541351, 27.483521, 30.172283>,  <40.563900, 28.000853, 29.618996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541351, 27.483521, 30.172283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869640, 27.707500, 30.217661>,  <41.066612, 27.841888, 30.244886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869640, 27.707500, 30.217661>,  <40.541351, 27.483521, 30.172283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869640, 27.707500, 30.217661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206550, 0.105675, 0.972713,
		0.532683, -0.821759, 0.202388,
		0.820723, 0.559951, 0.113443,
		41.115856, 27.875486, 30.251694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675072, 27.420736, 30.867525>,  <40.541351, 27.483521, 30.172283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675072, 27.420736, 30.867525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.876541, 27.746611, 30.752563>,  <40.997421, 27.942135, 30.683586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.876541, 27.746611, 30.752563>,  <40.675072, 27.420736, 30.867525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876541, 27.746611, 30.752563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136738, 0.403671, 0.904629,
		0.853005, -0.416337, 0.314716,
		0.503672, 0.814686, -0.287404,
		41.027641, 27.991016, 30.666342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843330, 27.701805, 31.507010>,  <40.675072, 27.420736, 30.867525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843330, 27.701805, 31.507010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979984, 27.991701, 31.267666>,  <41.061977, 28.165640, 31.124060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979984, 27.991701, 31.267666>,  <40.843330, 27.701805, 31.507010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979984, 27.991701, 31.267666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014532, 0.640663, 0.767685,
		0.939719, -0.253575, 0.229406,
		0.341638, 0.724742, -0.598358,
		41.082478, 28.209124, 31.088158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421413, 28.124500, 31.792942>,  <40.843330, 27.701805, 31.507010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421413, 28.124500, 31.792942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.237968, 28.380733, 31.546583>,  <41.127899, 28.534473, 31.398767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.237968, 28.380733, 31.546583>,  <41.421413, 28.124500, 31.792942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237968, 28.380733, 31.546583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030936, 0.681152, 0.731488,
		0.888096, 0.354526, -0.292570,
		-0.458616, 0.640581, -0.615896,
		41.100384, 28.572908, 31.361814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601357, 28.811588, 32.010643>,  <41.421413, 28.124500, 31.792942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601357, 28.811588, 32.010643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269421, 28.853048, 31.791325>,  <41.070259, 28.877924, 31.659733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269421, 28.853048, 31.791325>,  <41.601357, 28.811588, 32.010643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269421, 28.853048, 31.791325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328276, 0.703885, 0.629905,
		0.451227, 0.702711, -0.550084,
		-0.829837, 0.103651, -0.548295,
		41.020470, 28.884144, 31.626837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625584, 29.521971, 31.714481>,  <41.601357, 28.811588, 32.010643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625584, 29.521971, 31.714481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244534, 29.401962, 31.734478>,  <41.015903, 29.329956, 31.746475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244534, 29.401962, 31.734478>,  <41.625584, 29.521971, 31.714481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244534, 29.401962, 31.734478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250343, 0.866754, 0.431354,
		-0.172746, 0.398402, -0.900797,
		-0.952621, -0.300023, 0.049991,
		40.958748, 29.311954, 31.749475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332264, 30.042822, 31.419588>,  <41.625584, 29.521971, 31.714481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332264, 30.042822, 31.419588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.084530, 29.848175, 31.666042>,  <40.935890, 29.731388, 31.813915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.084530, 29.848175, 31.666042>,  <41.332264, 30.042822, 31.419588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084530, 29.848175, 31.666042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141901, 0.841218, 0.521743,
		-0.772195, 0.235704, -0.590050,
		-0.619338, -0.486616, 0.616138,
		40.898727, 29.702190, 31.850883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772358, 30.458654, 31.453186>,  <41.332264, 30.042822, 31.419588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772358, 30.458654, 31.453186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.755993, 30.215950, 31.770718>,  <40.746174, 30.070328, 31.961237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.755993, 30.215950, 31.770718>,  <40.772358, 30.458654, 31.453186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755993, 30.215950, 31.770718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502019, 0.699413, 0.508722,
		-0.863888, -0.377706, -0.333220,
		-0.040911, -0.606762, 0.793830,
		40.743721, 30.033922, 32.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188435, 30.705797, 31.758986>,  <40.772358, 30.458654, 31.453186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188435, 30.705797, 31.758986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337143, 30.473526, 32.048702>,  <40.426369, 30.334164, 32.222530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337143, 30.473526, 32.048702>,  <40.188435, 30.705797, 31.758986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337143, 30.473526, 32.048702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392191, 0.608921, 0.689494,
		-0.841410, -0.540396, -0.001356,
		0.371774, -0.580679, 0.724290,
		40.448673, 30.299322, 32.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656368, 30.766750, 32.217918>,  <40.188435, 30.705797, 31.758986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656368, 30.766750, 32.217918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980614, 30.660109, 32.426464>,  <40.175163, 30.596123, 32.551594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980614, 30.660109, 32.426464>,  <39.656368, 30.766750, 32.217918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980614, 30.660109, 32.426464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345761, 0.500652, 0.793597,
		-0.472601, -0.823571, 0.313654,
		0.810615, -0.266606, 0.521368,
		40.223797, 30.580128, 32.582874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341103, 30.758520, 32.935520>,  <39.656368, 30.766750, 32.217918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341103, 30.758520, 32.935520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733101, 30.747536, 33.014370>,  <39.968300, 30.740944, 33.061680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733101, 30.747536, 33.014370>,  <39.341103, 30.758520, 32.935520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733101, 30.747536, 33.014370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177038, 0.332293, 0.926412,
		-0.090947, -0.942776, 0.320783,
		0.979993, -0.027463, 0.197128,
		40.027100, 30.739298, 33.073509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412914, 30.524010, 33.657551>,  <39.341103, 30.758520, 32.935520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412914, 30.524010, 33.657551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755081, 30.714598, 33.576313>,  <39.960381, 30.828951, 33.527573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755081, 30.714598, 33.576313>,  <39.412914, 30.524010, 33.657551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755081, 30.714598, 33.576313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089097, 0.521630, 0.848506,
		0.510212, -0.707736, 0.488665,
		0.855421, 0.476457, -0.203084,
		40.011703, 30.857538, 33.515385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785625, 30.477982, 34.239620>,  <39.412914, 30.524010, 33.657551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785625, 30.477982, 34.239620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901817, 30.800920, 34.034168>,  <39.971531, 30.994684, 33.910896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901817, 30.800920, 34.034168>,  <39.785625, 30.477982, 34.239620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901817, 30.800920, 34.034168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146324, 0.567937, 0.809961,
		0.945627, -0.160122, 0.283108,
		0.290480, 0.807347, -0.513627,
		39.988960, 31.043125, 33.880081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417038, 30.635967, 34.538498>,  <39.785625, 30.477982, 34.239620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417038, 30.635967, 34.538498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.282326, 30.964540, 34.354397>,  <40.201500, 31.161684, 34.243938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.282326, 30.964540, 34.354397>,  <40.417038, 30.635967, 34.538498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282326, 30.964540, 34.354397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077476, 0.462969, 0.882981,
		0.938391, 0.333026, -0.092276,
		-0.336777, 0.821433, -0.460248,
		40.181293, 31.210970, 34.216324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851307, 31.177258, 34.867977>,  <40.417038, 30.635967, 34.538498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851307, 31.177258, 34.867977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548637, 31.392132, 34.718914>,  <40.367035, 31.521055, 34.629478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548637, 31.392132, 34.718914>,  <40.851307, 31.177258, 34.867977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548637, 31.392132, 34.718914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047005, 0.523820, 0.850531,
		0.652096, 0.661095, -0.371113,
		-0.756678, 0.537184, -0.372655,
		40.321632, 31.553288, 34.607117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982883, 31.925137, 35.121868>,  <40.851307, 31.177258, 34.867977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982883, 31.925137, 35.121868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.601063, 31.880831, 35.011192>,  <40.371971, 31.854246, 34.944786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.601063, 31.880831, 35.011192>,  <40.982883, 31.925137, 35.121868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601063, 31.880831, 35.011192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285583, 0.605493, 0.742846,
		0.085249, 0.788105, -0.609609,
		-0.954555, -0.110767, -0.276687,
		40.314697, 31.847601, 34.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710339, 32.586876, 35.239033>,  <40.982883, 31.925137, 35.121868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710339, 32.586876, 35.239033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405842, 32.327538, 35.233841>,  <40.223145, 32.171936, 35.230728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405842, 32.327538, 35.233841>,  <40.710339, 32.586876, 35.239033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405842, 32.327538, 35.233841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415391, 0.472161, 0.777505,
		-0.497963, 0.597257, -0.628742,
		-0.761238, -0.648343, -0.012976,
		40.177471, 32.133034, 35.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200203, 32.876797, 35.680817>,  <40.710339, 32.586876, 35.239033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200203, 32.876797, 35.680817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.591824, 32.951382, 35.648117>,  <41.826797, 32.996132, 35.628498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.591824, 32.951382, 35.648117>,  <41.200203, 32.876797, 35.680817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591824, 32.951382, 35.648117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101613, 0.099588, -0.989827,
		-0.176423, 0.977402, 0.116449,
		0.979056, 0.186461, -0.081747,
		41.885540, 33.007320, 35.623592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269154, 33.402676, 35.268570>,  <41.200203, 32.876797, 35.680817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269154, 33.402676, 35.268570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634064, 33.241093, 35.241520>,  <41.853008, 33.144142, 35.225288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634064, 33.241093, 35.241520>,  <41.269154, 33.402676, 35.268570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634064, 33.241093, 35.241520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071740, 0.004959, -0.997411,
		0.403247, 0.914764, -0.024456,
		0.912275, -0.403958, -0.067625,
		41.907745, 33.119904, 35.221233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675957, 33.700996, 34.751698>,  <41.269154, 33.402676, 35.268570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675957, 33.700996, 34.751698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877228, 33.356415, 34.779144>,  <41.997990, 33.149666, 34.795612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877228, 33.356415, 34.779144>,  <41.675957, 33.700996, 34.751698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877228, 33.356415, 34.779144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071244, -0.037776, -0.996743,
		0.861243, 0.506424, 0.042366,
		0.503174, -0.861457, 0.068614,
		42.028179, 33.097977, 34.799728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991386, 33.737217, 34.116581>,  <41.675957, 33.700996, 34.751698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991386, 33.737217, 34.116581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.034996, 33.362461, 34.249462>,  <42.061161, 33.137608, 34.329189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.034996, 33.362461, 34.249462>,  <41.991386, 33.737217, 34.116581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034996, 33.362461, 34.249462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085696, -0.324091, -0.942137,
		0.990338, 0.131185, 0.044953,
		0.109026, -0.936886, 0.332201,
		42.067703, 33.081394, 34.349121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505276, 33.478180, 33.709911>,  <41.991386, 33.737217, 34.116581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505276, 33.478180, 33.709911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329235, 33.154209, 33.864998>,  <42.223610, 32.959827, 33.958050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329235, 33.154209, 33.864998>,  <42.505276, 33.478180, 33.709911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329235, 33.154209, 33.864998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267886, -0.530548, -0.804212,
		0.857058, -0.250069, 0.450463,
		-0.440100, -0.809929, 0.387720,
		42.197205, 32.911232, 33.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045685, 32.837963, 33.626762>,  <42.505276, 33.478180, 33.709911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045685, 32.837963, 33.626762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.667835, 32.713039, 33.667065>,  <42.441124, 32.638084, 33.691246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.667835, 32.713039, 33.667065>,  <43.045685, 32.837963, 33.626762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667835, 32.713039, 33.667065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097591, -0.560506, -0.822380,
		0.313311, -0.767006, 0.559945,
		-0.944623, -0.312306, 0.100759,
		42.384449, 32.619347, 33.697292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971607, 32.149185, 33.301300>,  <43.045685, 32.837963, 33.626762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971607, 32.149185, 33.301300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.589809, 32.265865, 33.326103>,  <42.360729, 32.335873, 33.340984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.589809, 32.265865, 33.326103>,  <42.971607, 32.149185, 33.301300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589809, 32.265865, 33.326103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232309, -0.596919, -0.767932,
		-0.186995, -0.747394, 0.637523,
		-0.954497, 0.291702, 0.062006,
		42.303459, 32.353374, 33.344704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665981, 31.591038, 33.182659>,  <42.971607, 32.149185, 33.301300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665981, 31.591038, 33.182659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.405621, 31.881990, 33.095715>,  <42.249405, 32.056564, 33.043549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.405621, 31.881990, 33.095715>,  <42.665981, 31.591038, 33.182659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405621, 31.881990, 33.095715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171775, -0.419998, -0.891120,
		-0.739476, -0.542692, 0.398322,
		-0.650899, 0.727383, -0.217358,
		42.210350, 32.100204, 33.030506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215160, 31.221884, 32.647308>,  <42.665981, 31.591038, 33.182659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215160, 31.221884, 32.647308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.148479, 31.614494, 32.609741>,  <42.108471, 31.850060, 32.587200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.148479, 31.614494, 32.609741>,  <42.215160, 31.221884, 32.647308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148479, 31.614494, 32.609741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168308, -0.122177, -0.978134,
		-0.971536, -0.147252, 0.185566,
		-0.166703, 0.981524, -0.093915,
		42.098469, 31.908951, 32.581566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570255, 31.257019, 32.311596>,  <42.215160, 31.221884, 32.647308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570255, 31.257019, 32.311596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803448, 31.576258, 32.250702>,  <41.943363, 31.767801, 32.214165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803448, 31.576258, 32.250702>,  <41.570255, 31.257019, 32.311596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803448, 31.576258, 32.250702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084426, -0.126852, -0.988322,
		-0.808086, 0.589028, -0.006572,
		0.582983, 0.798095, -0.152236,
		41.978344, 31.815685, 32.205032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326893, 31.501543, 31.738146>,  <41.570255, 31.257019, 32.311596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326893, 31.501543, 31.738146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.663883, 31.714870, 31.768623>,  <41.866077, 31.842867, 31.786911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.663883, 31.714870, 31.768623>,  <41.326893, 31.501543, 31.738146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663883, 31.714870, 31.768623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201429, -0.180651, -0.962700,
		-0.499663, 0.826399, -0.259620,
		0.842475, 0.533320, 0.076196,
		41.916626, 31.874866, 31.791483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300060, 31.763561, 31.193794>,  <41.326893, 31.501543, 31.738146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300060, 31.763561, 31.193794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684177, 31.821072, 31.289427>,  <41.914650, 31.855577, 31.346807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684177, 31.821072, 31.289427>,  <41.300060, 31.763561, 31.193794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684177, 31.821072, 31.289427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262149, -0.171836, -0.949605,
		-0.095448, 0.974577, -0.202704,
		0.960295, 0.143776, 0.239083,
		41.972267, 31.864204, 31.361153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495972, 32.145069, 30.626667>,  <41.300060, 31.763561, 31.193794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495972, 32.145069, 30.626667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.823742, 31.994219, 30.799328>,  <42.020405, 31.903709, 30.902924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.823742, 31.994219, 30.799328>,  <41.495972, 32.145069, 30.626667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823742, 31.994219, 30.799328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398063, -0.167440, -0.901947,
		0.412421, 0.910902, 0.012914,
		0.819423, -0.377122, 0.431653,
		42.069569, 31.881083, 30.928823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993950, 32.358669, 30.205069>,  <41.495972, 32.145069, 30.626667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993950, 32.358669, 30.205069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.144032, 32.036366, 30.388359>,  <42.234081, 31.842983, 30.498333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.144032, 32.036366, 30.388359>,  <41.993950, 32.358669, 30.205069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144032, 32.036366, 30.388359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578376, -0.182802, -0.795025,
		0.724366, 0.563321, 0.397446,
		0.375200, -0.805762, 0.458227,
		42.256592, 31.794638, 30.525827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728142, 32.421005, 30.174538>,  <41.993950, 32.358669, 30.205069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728142, 32.421005, 30.174538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635616, 32.033329, 30.208393>,  <42.580101, 31.800724, 30.228706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635616, 32.033329, 30.208393>,  <42.728142, 32.421005, 30.174538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635616, 32.033329, 30.208393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548665, -0.201802, -0.811322,
		0.803405, -0.141234, 0.578440,
		-0.231316, -0.969190, 0.084639,
		42.566223, 31.742573, 30.233786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281525, 31.993143, 30.031420>,  <42.728142, 32.421005, 30.174538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281525, 31.993143, 30.031420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.005772, 31.706749, 29.987396>,  <42.840321, 31.534912, 29.960983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.005772, 31.706749, 29.987396>,  <43.281525, 31.993143, 30.031420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005772, 31.706749, 29.987396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514307, -0.376777, -0.770407,
		0.510135, -0.587709, 0.627981,
		-0.689384, -0.715987, -0.110056,
		42.798958, 31.491953, 29.954380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695980, 31.391071, 29.766577>,  <43.281525, 31.993143, 30.031420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695980, 31.391071, 29.766577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.312416, 31.321779, 29.676697>,  <43.082279, 31.280203, 29.622768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.312416, 31.321779, 29.676697>,  <43.695980, 31.391071, 29.766577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312416, 31.321779, 29.676697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283484, -0.552269, -0.783987,
		0.011716, -0.815469, 0.578682,
		-0.958906, -0.173232, -0.224702,
		43.024746, 31.269810, 29.609285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717106, 30.658314, 29.629709>,  <43.695980, 31.391071, 29.766577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717106, 30.658314, 29.629709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.391914, 30.772894, 29.426924>,  <43.196800, 30.841642, 29.305252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.391914, 30.772894, 29.426924>,  <43.717106, 30.658314, 29.629709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391914, 30.772894, 29.426924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280378, -0.570489, -0.771965,
		-0.510350, -0.769731, 0.383479,
		-0.812977, 0.286453, -0.506965,
		43.148022, 30.858829, 29.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.261650, 30.051369, 29.420595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114655, 30.324085, 29.167578>,  <43.026455, 30.487715, 29.015768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114655, 30.324085, 29.167578>,  <43.261650, 30.051369, 29.420595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114655, 30.324085, 29.167578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124538, -0.637935, -0.759954,
		-0.921651, -0.358052, 0.149527,
		-0.367492, 0.681790, -0.632544,
		43.004406, 30.528622, 28.977814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944584, 29.652327, 28.934364>,  <43.261650, 30.051369, 29.420595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944584, 29.652327, 28.934364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967232, 29.999445, 28.736893>,  <42.980820, 30.207716, 28.618410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967232, 29.999445, 28.736893>,  <42.944584, 29.652327, 28.934364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967232, 29.999445, 28.736893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115249, -0.496849, -0.860150,
		-0.991722, -0.008197, -0.128143,
		0.056618, 0.867798, -0.493681,
		42.984219, 30.259785, 28.588789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402340, 29.633205, 28.345642>,  <42.944584, 29.652327, 28.934364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402340, 29.633205, 28.345642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.689026, 29.895618, 28.251038>,  <42.861038, 30.053066, 28.194275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.689026, 29.895618, 28.251038>,  <42.402340, 29.633205, 28.345642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689026, 29.895618, 28.251038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021813, -0.360074, -0.932669,
		-0.697021, 0.663302, -0.272382,
		0.716719, 0.656031, -0.236510,
		42.904041, 30.092428, 28.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226547, 29.809692, 27.663485>,  <42.402340, 29.633205, 28.345642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226547, 29.809692, 27.663485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603760, 29.936136, 27.705000>,  <42.830086, 30.012003, 27.729910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603760, 29.936136, 27.705000>,  <42.226547, 29.809692, 27.663485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603760, 29.936136, 27.705000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122626, -0.040232, -0.991637,
		-0.309289, 0.947870, -0.076703,
		0.943029, 0.316108, 0.103790,
		42.886669, 30.030970, 27.736137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356735, 30.042685, 27.113205>,  <42.226547, 29.809692, 27.663485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356735, 30.042685, 27.113205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730335, 30.030254, 27.255571>,  <42.954494, 30.022797, 27.340992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730335, 30.030254, 27.255571>,  <42.356735, 30.042685, 27.113205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730335, 30.030254, 27.255571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352341, -0.084811, -0.932021,
		0.059150, 0.995912, -0.068264,
		0.934001, -0.031077, 0.355918,
		43.010536, 30.020931, 27.362347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711605, 30.413708, 26.613411>,  <42.356735, 30.042685, 27.113205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711605, 30.413708, 26.613411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.939983, 30.157814, 26.819229>,  <43.077011, 30.004278, 26.942720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.939983, 30.157814, 26.819229>,  <42.711605, 30.413708, 26.613411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939983, 30.157814, 26.819229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203080, -0.497212, -0.843527,
		0.795473, 0.586104, -0.153964,
		0.570947, -0.639736, 0.514545,
		43.111267, 29.965893, 26.973593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257469, 30.327061, 26.244568>,  <42.711605, 30.413708, 26.613411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257469, 30.327061, 26.244568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.316605, 29.994432, 26.458721>,  <43.352085, 29.794855, 26.587214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.316605, 29.994432, 26.458721>,  <43.257469, 30.327061, 26.244568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316605, 29.994432, 26.458721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451167, -0.425019, -0.784734,
		0.880110, 0.357557, 0.312346,
		0.147835, -0.831572, 0.535381,
		43.360954, 29.744961, 26.619335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951645, 30.153357, 26.290836>,  <43.257469, 30.327061, 26.244568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951645, 30.153357, 26.290836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799358, 29.798000, 26.393457>,  <43.707989, 29.584785, 26.455030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799358, 29.798000, 26.393457>,  <43.951645, 30.153357, 26.290836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799358, 29.798000, 26.393457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632662, -0.452595, -0.628409,
		0.674387, -0.076933, 0.734360,
		-0.380713, -0.888392, 0.256551,
		43.685146, 29.531483, 26.470423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489586, 29.732328, 26.339123>,  <43.951645, 30.153357, 26.290836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489586, 29.732328, 26.339123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.181953, 29.488634, 26.261824>,  <43.997372, 29.342419, 26.215445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.181953, 29.488634, 26.261824>,  <44.489586, 29.732328, 26.339123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181953, 29.488634, 26.261824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461903, -0.320810, -0.826878,
		0.441766, -0.725199, 0.528137,
		-0.769083, -0.609235, -0.193248,
		43.951229, 29.305864, 26.203850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742451, 29.029383, 26.170866>,  <44.489586, 29.732328, 26.339123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742451, 29.029383, 26.170866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375561, 29.051497, 26.013062>,  <44.155426, 29.064764, 25.918379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375561, 29.051497, 26.013062>,  <44.742451, 29.029383, 26.170866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375561, 29.051497, 26.013062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361613, -0.299917, -0.882772,
		-0.167122, -0.952362, 0.255101,
		-0.917228, 0.055283, -0.394509,
		44.100391, 29.068081, 25.894709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592442, 28.394083, 25.877808>,  <44.742451, 29.029383, 26.170866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592442, 28.394083, 25.877808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.323963, 28.641270, 25.714046>,  <44.162876, 28.789581, 25.615789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.323963, 28.641270, 25.714046>,  <44.592442, 28.394083, 25.877808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323963, 28.641270, 25.714046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038243, -0.522690, -0.851665,
		-0.740291, -0.587292, 0.327195,
		-0.671198, 0.617967, -0.409403,
		44.122604, 28.826660, 25.591227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211536, 27.939795, 25.529444>,  <44.592442, 28.394083, 25.877808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211536, 27.939795, 25.529444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.136898, 28.301718, 25.376343>,  <44.092113, 28.518871, 25.284481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.136898, 28.301718, 25.376343>,  <44.211536, 27.939795, 25.529444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136898, 28.301718, 25.376343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028753, -0.394459, -0.918463,
		-0.982016, -0.160375, 0.099620,
		-0.186595, 0.904810, -0.382754,
		44.080921, 28.573160, 25.261517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587082, 27.936031, 25.053417>,  <44.211536, 27.939795, 25.529444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587082, 27.936031, 25.053417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.842495, 28.228226, 24.956535>,  <43.995743, 28.403542, 24.898407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.842495, 28.228226, 24.956535>,  <43.587082, 27.936031, 25.053417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842495, 28.228226, 24.956535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015822, -0.327113, -0.944853,
		-0.769428, 0.599492, -0.220431,
		0.638537, 0.730484, -0.242205,
		44.034058, 28.447371, 24.883873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261440, 28.206905, 24.289936>,  <43.587082, 27.936031, 25.053417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261440, 28.206905, 24.289936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621429, 28.376251, 24.331533>,  <43.837421, 28.477859, 24.356491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621429, 28.376251, 24.331533>,  <43.261440, 28.206905, 24.289936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621429, 28.376251, 24.331533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056879, 0.122471, -0.990841,
		-0.432224, 0.897643, 0.086139,
		0.899970, 0.423366, 0.103992,
		43.891422, 28.503262, 24.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285126, 28.783747, 23.913614>,  <43.261440, 28.206905, 24.289936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285126, 28.783747, 23.913614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.673229, 28.703255, 23.967443>,  <43.906090, 28.654961, 23.999741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.673229, 28.703255, 23.967443>,  <43.285126, 28.783747, 23.913614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673229, 28.703255, 23.967443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144882, 0.037344, -0.988744,
		0.193937, 0.978832, 0.065388,
		0.970256, -0.201228, 0.134573,
		43.964306, 28.642887, 24.007814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601631, 29.173033, 23.345966>,  <43.285126, 28.783747, 23.913614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601631, 29.173033, 23.345966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.829746, 28.869957, 23.472885>,  <43.966618, 28.688112, 23.549036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.829746, 28.869957, 23.472885>,  <43.601631, 29.173033, 23.345966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829746, 28.869957, 23.472885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328082, -0.144025, -0.933605,
		0.753080, 0.636526, 0.166448,
		0.570292, -0.757688, 0.317295,
		44.000835, 28.642651, 23.568073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281670, 29.450287, 23.207506>,  <43.601631, 29.173033, 23.345966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281670, 29.450287, 23.207506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.317154, 29.054407, 23.252455>,  <44.338444, 28.816879, 23.279425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.317154, 29.054407, 23.252455>,  <44.281670, 29.450287, 23.207506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317154, 29.054407, 23.252455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227758, -0.089674, -0.969580,
		0.969668, 0.111605, 0.217457,
		0.088710, -0.989698, 0.112373,
		44.343765, 28.757498, 23.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906570, 29.317461, 22.926796>,  <44.281670, 29.450287, 23.207506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906570, 29.317461, 22.926796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.684883, 28.984552, 22.932016>,  <44.551872, 28.784807, 22.935148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.684883, 28.984552, 22.932016>,  <44.906570, 29.317461, 22.926796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684883, 28.984552, 22.932016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200818, -0.148911, -0.968245,
		0.807784, -0.533997, 0.249664,
		-0.554218, -0.832270, 0.013052,
		44.518620, 28.734871, 22.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308945, 28.873266, 22.456331>,  <44.906570, 29.317461, 22.926796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308945, 28.873266, 22.456331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.938557, 28.729532, 22.502748>,  <44.716324, 28.643291, 22.530600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.938557, 28.729532, 22.502748>,  <45.308945, 28.873266, 22.456331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938557, 28.729532, 22.502748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031372, -0.233043, -0.971960,
		0.376302, -0.903643, 0.204517,
		-0.925966, -0.359334, 0.116044,
		44.660767, 28.621733, 22.537561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337688, 28.311150, 22.047758>,  <45.308945, 28.873266, 22.456331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337688, 28.311150, 22.047758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954491, 28.414867, 22.096771>,  <44.724571, 28.477098, 22.126179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954491, 28.414867, 22.096771>,  <45.337688, 28.311150, 22.047758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954491, 28.414867, 22.096771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179960, -0.210835, -0.960814,
		-0.223320, -0.942499, 0.248643,
		-0.957989, 0.259315, 0.122528,
		44.667091, 28.492655, 22.133532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942921, 27.808773, 21.746046>,  <45.337688, 28.311150, 22.047758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942921, 27.808773, 21.746046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.699150, 28.125666, 21.733614>,  <44.552887, 28.315802, 21.726154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.699150, 28.125666, 21.733614>,  <44.942921, 27.808773, 21.746046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699150, 28.125666, 21.733614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062940, -0.087420, -0.994181,
		-0.790340, -0.603924, 0.103140,
		-0.609427, 0.792233, -0.031081,
		44.516323, 28.363335, 21.724289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439018, 27.568459, 21.301800>,  <44.942921, 27.808773, 21.746046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439018, 27.568459, 21.301800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.408283, 27.967266, 21.304672>,  <44.389843, 28.206551, 21.306396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.408283, 27.967266, 21.304672>,  <44.439018, 27.568459, 21.301800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408283, 27.967266, 21.304672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014567, 0.008325, -0.999860,
		-0.996937, -0.076720, -0.015163,
		-0.076836, 0.997018, 0.007182,
		44.385231, 28.266371, 21.306828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835468, 27.784763, 20.969250>,  <44.439018, 27.568459, 21.301800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835468, 27.784763, 20.969250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118187, 28.067013, 20.949127>,  <44.287819, 28.236362, 20.937054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118187, 28.067013, 20.949127>,  <43.835468, 27.784763, 20.969250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118187, 28.067013, 20.949127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168410, -0.236903, -0.956825,
		-0.687075, 0.667812, -0.286277,
		0.706799, 0.705623, -0.050304,
		44.330227, 28.278700, 20.934036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202862, 28.290998, 20.809017>,  <43.835468, 27.784763, 20.969250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202862, 28.290998, 20.809017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858593, 28.351387, 20.614511>,  <42.652031, 28.387619, 20.497808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858593, 28.351387, 20.614511>,  <43.202862, 28.290998, 20.809017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858593, 28.351387, 20.614511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483149, 0.059189, 0.873535,
		0.160658, 0.986765, 0.021999,
		-0.860672, 0.150969, -0.486264,
		42.600391, 28.396677, 20.468632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852829, 28.895037, 21.072233>,  <43.202862, 28.290998, 20.809017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852829, 28.895037, 21.072233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603882, 28.606241, 20.951309>,  <42.454514, 28.432964, 20.878756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603882, 28.606241, 20.951309>,  <42.852829, 28.895037, 21.072233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603882, 28.606241, 20.951309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573192, 0.157382, 0.804165,
		-0.533021, 0.673766, -0.511788,
		-0.622366, -0.721990, -0.302309,
		42.417171, 28.389645, 20.860617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201283, 29.121670, 21.325157>,  <42.852829, 28.895037, 21.072233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201283, 29.121670, 21.325157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.127853, 28.738482, 21.236986>,  <42.083797, 28.508568, 21.184084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.127853, 28.738482, 21.236986>,  <42.201283, 29.121670, 21.325157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127853, 28.738482, 21.236986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606342, -0.066149, 0.792448,
		-0.773725, 0.279128, -0.568716,
		-0.183574, -0.957973, -0.220428,
		42.072781, 28.451090, 21.170858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511120, 29.078890, 21.492634>,  <42.201283, 29.121670, 21.325157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511120, 29.078890, 21.492634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640144, 28.700880, 21.471157>,  <41.717560, 28.474075, 21.458271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640144, 28.700880, 21.471157>,  <41.511120, 29.078890, 21.492634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640144, 28.700880, 21.471157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499505, -0.218131, 0.838399,
		-0.804020, -0.243617, -0.542405,
		0.322564, -0.945023, -0.053694,
		41.736912, 28.417374, 21.455050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919666, 28.533064, 21.420321>,  <41.511120, 29.078890, 21.492634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919666, 28.533064, 21.420321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237305, 28.362661, 21.593721>,  <41.427887, 28.260420, 21.697762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237305, 28.362661, 21.593721>,  <40.919666, 28.533064, 21.420321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237305, 28.362661, 21.593721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567834, -0.265673, 0.779091,
		-0.216725, -0.864835, -0.452870,
		0.794100, -0.426004, 0.433505,
		41.475533, 28.234859, 21.723772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670609, 28.110378, 21.893085>,  <40.919666, 28.533064, 21.420321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670609, 28.110378, 21.893085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041012, 28.072685, 22.039310>,  <41.263252, 28.050070, 22.127045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041012, 28.072685, 22.039310>,  <40.670609, 28.110378, 21.893085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041012, 28.072685, 22.039310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377281, -0.264786, 0.887439,
		0.013172, -0.959692, -0.280744,
		0.926005, -0.094230, 0.365562,
		41.318813, 28.044416, 22.148979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629681, 27.567848, 22.312052>,  <40.670609, 28.110378, 21.893085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629681, 27.567848, 22.312052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966007, 27.733080, 22.451986>,  <41.167805, 27.832218, 22.535948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966007, 27.733080, 22.451986>,  <40.629681, 27.567848, 22.312052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966007, 27.733080, 22.451986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327285, -0.126834, 0.936375,
		0.431169, -0.901819, 0.028551,
		0.840820, 0.413080, 0.349839,
		41.218254, 27.857004, 22.556938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964649, 26.998325, 22.812794>,  <40.629681, 27.567848, 22.312052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964649, 26.998325, 22.812794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088551, 27.367176, 22.905516>,  <41.162891, 27.588486, 22.961149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088551, 27.367176, 22.905516>,  <40.964649, 26.998325, 22.812794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088551, 27.367176, 22.905516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264519, -0.150596, 0.952550,
		0.913280, -0.356375, 0.197272,
		0.309756, 0.922127, 0.231804,
		41.181477, 27.643814, 22.975058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519859, 26.878326, 23.369070>,  <40.964649, 26.998325, 22.812794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519859, 26.878326, 23.369070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406185, 27.259893, 23.407604>,  <41.337982, 27.488834, 23.430725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406185, 27.259893, 23.407604>,  <41.519859, 26.878326, 23.369070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406185, 27.259893, 23.407604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037191, -0.111370, 0.993083,
		0.958048, 0.278635, 0.067127,
		-0.284184, 0.953918, 0.096335,
		41.320930, 27.546068, 23.436504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963501, 27.169714, 23.958124>,  <41.519859, 26.878326, 23.369070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963501, 27.169714, 23.958124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640728, 27.403809, 23.926237>,  <41.447063, 27.544266, 23.907104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640728, 27.403809, 23.926237>,  <41.963501, 27.169714, 23.958124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640728, 27.403809, 23.926237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016472, 0.157213, 0.987427,
		0.590412, 0.795475, -0.136501,
		-0.806934, 0.585238, -0.079717,
		41.398647, 27.579380, 23.902323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190582, 27.766687, 24.375267>,  <41.963501, 27.169714, 23.958124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190582, 27.766687, 24.375267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793301, 27.738838, 24.337942>,  <41.554932, 27.722128, 24.315546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793301, 27.738838, 24.337942>,  <42.190582, 27.766687, 24.375267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793301, 27.738838, 24.337942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105136, 0.192067, 0.975734,
		-0.050012, 0.978909, -0.198080,
		-0.993199, -0.069624, -0.093313,
		41.495342, 27.717951, 24.309948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963840, 28.347994, 24.753553>,  <42.190582, 27.766687, 24.375267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963840, 28.347994, 24.753553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655880, 28.096928, 24.707432>,  <41.471104, 27.946287, 24.679758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655880, 28.096928, 24.707432>,  <41.963840, 28.347994, 24.753553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655880, 28.096928, 24.707432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176832, 0.036215, 0.983575,
		-0.613180, 0.777641, -0.138873,
		-0.769897, -0.627665, -0.115305,
		41.424911, 27.908628, 24.672840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521496, 28.723890, 25.159611>,  <41.963840, 28.347994, 24.753553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521496, 28.723890, 25.159611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416489, 28.341282, 25.108776>,  <41.353485, 28.111717, 25.078276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416489, 28.341282, 25.108776>,  <41.521496, 28.723890, 25.159611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416489, 28.341282, 25.108776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010795, -0.134608, 0.990840,
		-0.964867, 0.258740, 0.045662,
		-0.262517, -0.956522, -0.127086,
		41.337734, 28.054325, 25.070650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056637, 28.683537, 25.639778>,  <41.521496, 28.723890, 25.159611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056637, 28.683537, 25.639778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168751, 28.311443, 25.545031>,  <41.236019, 28.088188, 25.488182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168751, 28.311443, 25.545031>,  <41.056637, 28.683537, 25.639778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168751, 28.311443, 25.545031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079552, -0.223403, 0.971474,
		-0.956613, -0.291138, 0.011384,
		0.280290, -0.930231, -0.236871,
		41.252838, 28.032373, 25.473969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580189, 28.188812, 25.976652>,  <41.056637, 28.683537, 25.639778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580189, 28.188812, 25.976652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911308, 27.975204, 25.907871>,  <41.109982, 27.847040, 25.866602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911308, 27.975204, 25.907871>,  <40.580189, 28.188812, 25.976652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911308, 27.975204, 25.907871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016908, -0.330109, 0.943791,
		-0.560767, -0.778364, -0.282294,
		0.827801, -0.534020, -0.171954,
		41.159649, 27.814999, 25.856285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644627, 27.710302, 26.509998>,  <40.580189, 28.188812, 25.976652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644627, 27.710302, 26.509998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012093, 27.665161, 26.358572>,  <41.232574, 27.638077, 26.267715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012093, 27.665161, 26.358572>,  <40.644627, 27.710302, 26.509998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012093, 27.665161, 26.358572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306634, -0.400454, 0.863488,
		-0.249044, -0.909341, -0.333281,
		0.918669, -0.112851, -0.378566,
		41.287693, 27.631306, 26.245003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899319, 27.085987, 26.684240>,  <40.644627, 27.710302, 26.509998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899319, 27.085987, 26.684240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226269, 27.308813, 26.625484>,  <41.422440, 27.442509, 26.590231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226269, 27.308813, 26.625484>,  <40.899319, 27.085987, 26.684240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226269, 27.308813, 26.625484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331818, -0.246787, 0.910491,
		0.470951, -0.792953, -0.386562,
		0.817375, 0.557065, -0.146892,
		41.471481, 27.475933, 26.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437393, 26.661299, 27.006538>,  <40.899319, 27.085987, 26.684240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437393, 26.661299, 27.006538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575512, 27.035158, 26.972601>,  <41.658382, 27.259474, 26.952238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575512, 27.035158, 26.972601>,  <41.437393, 26.661299, 27.006538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575512, 27.035158, 26.972601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203957, 0.013509, 0.978887,
		0.916063, -0.355310, -0.185964,
		0.345296, 0.934651, -0.084843,
		41.679100, 27.315554, 26.947147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037239, 26.523884, 27.408325>,  <41.437393, 26.661299, 27.006538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037239, 26.523884, 27.408325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954548, 26.913343, 27.369797>,  <41.904934, 27.147018, 27.346680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954548, 26.913343, 27.369797>,  <42.037239, 26.523884, 27.408325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954548, 26.913343, 27.369797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183475, 0.135276, 0.973672,
		0.961043, 0.183609, -0.206604,
		-0.206723, 0.973647, -0.096319,
		41.892532, 27.205437, 27.340900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667461, 26.868151, 27.737700>,  <42.037239, 26.523884, 27.408325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667461, 26.868151, 27.737700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342995, 27.101028, 27.715578>,  <42.148315, 27.240755, 27.702305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342995, 27.101028, 27.715578>,  <42.667461, 26.868151, 27.737700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342995, 27.101028, 27.715578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101227, 0.232918, 0.967214,
		0.575988, 0.778973, -0.247869,
		-0.811166, 0.582195, -0.055305,
		42.099644, 27.275686, 27.698986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860939, 27.401308, 28.146868>,  <42.667461, 26.868151, 27.737700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860939, 27.401308, 28.146868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.462498, 27.421648, 28.118055>,  <42.223431, 27.433853, 28.100769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.462498, 27.421648, 28.118055>,  <42.860939, 27.401308, 28.146868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462498, 27.421648, 28.118055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052069, 0.320005, 0.945984,
		0.071155, 0.946050, -0.316111,
		-0.996105, 0.050852, -0.072029,
		42.163666, 27.436903, 28.096447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.224640, 31.930429, 31.669006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834286, 31.911753, 31.583710>,  <42.600075, 31.900547, 31.532532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834286, 31.911753, 31.583710>,  <43.224640, 31.930429, 31.669006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834286, 31.911753, 31.583710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211407, 0.445566, 0.869930,
		0.054393, 0.894030, -0.444692,
		-0.975883, -0.046693, -0.213240,
		42.541519, 31.897745, 31.519737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040848, 32.575146, 31.904119>,  <43.224640, 31.930429, 31.669006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040848, 32.575146, 31.904119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718388, 32.340244, 31.875130>,  <42.524910, 32.199303, 31.857735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718388, 32.340244, 31.875130>,  <43.040848, 32.575146, 31.904119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718388, 32.340244, 31.875130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320681, 0.330671, 0.887592,
		-0.497276, 0.738776, -0.454892,
		-0.806151, -0.587254, -0.072477,
		42.476543, 32.164066, 31.853386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426609, 33.057652, 31.957809>,  <43.040848, 32.575146, 31.904119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426609, 33.057652, 31.957809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.360977, 32.673134, 32.046349>,  <42.321598, 32.442425, 32.099472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.360977, 32.673134, 32.046349>,  <42.426609, 33.057652, 31.957809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360977, 32.673134, 32.046349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319471, 0.264080, 0.910055,
		-0.933282, 0.078609, -0.350435,
		-0.164082, -0.961292, 0.221348,
		42.311752, 32.384747, 32.112751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940228, 33.197624, 32.397400>,  <42.426609, 33.057652, 31.957809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940228, 33.197624, 32.397400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958031, 32.803780, 32.464989>,  <41.968712, 32.567471, 32.505543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958031, 32.803780, 32.464989>,  <41.940228, 33.197624, 32.397400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958031, 32.803780, 32.464989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311938, 0.146984, 0.938664,
		-0.949059, -0.094486, -0.300597,
		0.044508, -0.984616, 0.168970,
		41.971382, 32.508396, 32.515678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327339, 33.016781, 32.762615>,  <41.940228, 33.197624, 32.397400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327339, 33.016781, 32.762615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575211, 32.716232, 32.853344>,  <41.723934, 32.535904, 32.907780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575211, 32.716232, 32.853344>,  <41.327339, 33.016781, 32.762615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575211, 32.716232, 32.853344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143510, 0.175651, 0.973936,
		-0.771627, -0.636074, 0.001017,
		0.619675, -0.751370, 0.226820,
		41.761112, 32.490822, 32.921391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070320, 32.671772, 33.294411>,  <41.327339, 33.016781, 32.762615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070320, 32.671772, 33.294411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454319, 32.561325, 33.313042>,  <41.684719, 32.495056, 33.324219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454319, 32.561325, 33.313042>,  <41.070320, 32.671772, 33.294411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454319, 32.561325, 33.313042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000793, 0.163651, 0.986518,
		-0.280015, -0.947090, 0.156885,
		0.959995, -0.276115, 0.046575,
		41.742317, 32.478489, 33.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074780, 32.136139, 33.789936>,  <41.070320, 32.671772, 33.294411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074780, 32.136139, 33.789936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439320, 32.299168, 33.766857>,  <41.658043, 32.396984, 33.753010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439320, 32.299168, 33.766857>,  <41.074780, 32.136139, 33.789936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439320, 32.299168, 33.766857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074299, -0.025006, 0.996922,
		0.404877, -0.912830, -0.053072,
		0.911348, 0.407574, -0.057698,
		41.712723, 32.421440, 33.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470726, 31.966908, 34.480988>,  <41.074780, 32.136139, 33.789936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470726, 31.966908, 34.480988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705189, 32.249943, 34.323132>,  <41.845867, 32.419765, 34.228416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705189, 32.249943, 34.323132>,  <41.470726, 31.966908, 34.480988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705189, 32.249943, 34.323132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294308, 0.267858, 0.917406,
		0.754854, -0.653888, -0.051242,
		0.586155, 0.707589, -0.394638,
		41.881035, 32.462219, 34.204739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192490, 31.874527, 34.790890>,  <41.470726, 31.966908, 34.480988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192490, 31.874527, 34.790890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168056, 32.253624, 34.665634>,  <42.153397, 32.481083, 34.590481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168056, 32.253624, 34.665634>,  <42.192490, 31.874527, 34.790890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168056, 32.253624, 34.665634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242016, 0.318423, 0.916534,
		0.968348, -0.019799, -0.248819,
		-0.061083, 0.947742, -0.313136,
		42.149731, 32.537945, 34.571693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878719, 32.151779, 34.829655>,  <42.192490, 31.874527, 34.790890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878719, 32.151779, 34.829655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581593, 32.419380, 34.839928>,  <42.403316, 32.579941, 34.846092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581593, 32.419380, 34.839928>,  <42.878719, 32.151779, 34.829655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581593, 32.419380, 34.839928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283075, 0.279088, 0.917594,
		0.606703, 0.688875, -0.396689,
		-0.742819, 0.669000, 0.025679,
		42.358746, 32.620079, 34.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138817, 32.634239, 35.268044>,  <42.878719, 32.151779, 34.829655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138817, 32.634239, 35.268044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772930, 32.791992, 35.232822>,  <42.553398, 32.886646, 35.211689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772930, 32.791992, 35.232822>,  <43.138817, 32.634239, 35.268044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772930, 32.791992, 35.232822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032112, 0.288152, 0.957046,
		0.402818, 0.872598, -0.276242,
		-0.914716, 0.394386, -0.088052,
		42.498516, 32.910309, 35.206406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180492, 33.324795, 35.644806>,  <43.138817, 32.634239, 35.268044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180492, 33.324795, 35.644806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794323, 33.220860, 35.636383>,  <42.562622, 33.158497, 35.631329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794323, 33.220860, 35.636383>,  <43.180492, 33.324795, 35.644806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794323, 33.220860, 35.636383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083100, 0.230164, 0.969597,
		-0.247092, 0.937821, -0.243798,
		-0.965422, -0.259840, -0.021061,
		42.504696, 33.142906, 35.630066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670246, 33.873394, 35.992359>,  <43.180492, 33.324795, 35.644806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670246, 33.873394, 35.992359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516888, 33.507042, 36.039974>,  <42.424873, 33.287231, 36.068542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516888, 33.507042, 36.039974>,  <42.670246, 33.873394, 35.992359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516888, 33.507042, 36.039974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175228, 0.198680, 0.964273,
		-0.906809, 0.348839, -0.236661,
		-0.383396, -0.915881, 0.119038,
		42.401871, 33.232277, 36.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968311, 33.979786, 36.339085>,  <42.670246, 33.873394, 35.992359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968311, 33.979786, 36.339085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162094, 33.632847, 36.384724>,  <42.278362, 33.424683, 36.412106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162094, 33.632847, 36.384724>,  <41.968311, 33.979786, 36.339085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162094, 33.632847, 36.384724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198534, 0.018015, 0.979928,
		-0.851990, -0.497383, -0.163470,
		0.484455, -0.867344, 0.114096,
		42.307430, 33.372643, 36.418953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078304, 34.722210, 36.489567>,  <41.968311, 33.979786, 36.339085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078304, 34.722210, 36.489567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987751, 35.110722, 36.518890>,  <41.933418, 35.343826, 36.536484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987751, 35.110722, 36.518890>,  <42.078304, 34.722210, 36.489567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987751, 35.110722, 36.518890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285663, 0.005753, -0.958313,
		-0.931208, -0.237889, 0.276155,
		-0.226383, 0.971276, 0.073313,
		41.919834, 35.402103, 36.540886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347923, 34.721874, 36.393051>,  <42.078304, 34.722210, 36.489567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347923, 34.721874, 36.393051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457100, 35.102608, 36.337173>,  <41.522606, 35.331047, 36.303646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457100, 35.102608, 36.337173>,  <41.347923, 34.721874, 36.393051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457100, 35.102608, 36.337173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483871, 0.010326, -0.875078,
		-0.831487, 0.306438, 0.463383,
		0.272942, 0.951834, -0.139691,
		41.538982, 35.388157, 36.295265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657204, 35.066093, 36.133820>,  <41.347923, 34.721874, 36.393051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657204, 35.066093, 36.133820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972927, 35.287663, 36.027863>,  <41.162361, 35.420605, 35.964291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972927, 35.287663, 36.027863>,  <40.657204, 35.066093, 36.133820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972927, 35.287663, 36.027863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384692, 0.109898, -0.916480,
		-0.478549, 0.825282, 0.299833,
		0.789305, 0.553924, -0.264888,
		41.209717, 35.453838, 35.948395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434372, 35.550465, 35.674717>,  <40.657204, 35.066093, 36.133820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434372, 35.550465, 35.674717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829670, 35.546860, 35.613670>,  <41.066849, 35.544697, 35.577042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829670, 35.546860, 35.613670>,  <40.434372, 35.550465, 35.674717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829670, 35.546860, 35.613670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152359, 0.024493, -0.988022,
		0.012638, 0.999659, 0.022833,
		0.988244, -0.009008, -0.152617,
		41.126144, 35.544159, 35.567886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504936, 36.143192, 35.253880>,  <40.434372, 35.550465, 35.674717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504936, 36.143192, 35.253880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808449, 35.885616, 35.214725>,  <40.990559, 35.731071, 35.191235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808449, 35.885616, 35.214725>,  <40.504936, 36.143192, 35.253880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808449, 35.885616, 35.214725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068272, 0.070819, -0.995150,
		0.647753, 0.761788, 0.009774,
		0.758785, -0.643944, -0.097882,
		41.036083, 35.692432, 35.185360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070770, 36.481544, 34.803753>,  <40.504936, 36.143192, 35.253880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070770, 36.481544, 34.803753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124893, 36.085560, 34.787453>,  <41.157368, 35.847969, 34.777672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124893, 36.085560, 34.787453>,  <41.070770, 36.481544, 34.803753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124893, 36.085560, 34.787453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102868, 0.054939, -0.993177,
		0.985449, 0.130197, 0.109269,
		0.135312, -0.989965, -0.040746,
		41.165485, 35.788570, 34.775230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591824, 36.401878, 34.407780>,  <41.070770, 36.481544, 34.803753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591824, 36.401878, 34.407780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421299, 36.040054, 34.409645>,  <41.318985, 35.822960, 34.410767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421299, 36.040054, 34.409645>,  <41.591824, 36.401878, 34.407780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421299, 36.040054, 34.409645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008497, -0.001154, -0.999963,
		0.904535, -0.426339, -0.007194,
		-0.426315, -0.904563, 0.004666,
		41.293404, 35.768684, 34.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021301, 35.912113, 34.129501>,  <41.591824, 36.401878, 34.407780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021301, 35.912113, 34.129501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647358, 35.786804, 34.062683>,  <41.422993, 35.711617, 34.022591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647358, 35.786804, 34.062683>,  <42.021301, 35.912113, 34.129501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647358, 35.786804, 34.062683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246626, -0.234573, -0.940293,
		0.255385, -0.920236, 0.296554,
		-0.934855, -0.313275, -0.167048,
		41.366901, 35.692822, 34.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131985, 35.752865, 33.484943>,  <42.021301, 35.912113, 34.129501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131985, 35.752865, 33.484943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 35.642891, 33.544353>,  <41.524033, 35.576908, 33.580002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 35.642891, 33.544353>,  <42.131985, 35.752865, 33.484943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752014, 35.642891, 33.544353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071205, -0.272371, -0.959554,
		0.304266, -0.922078, 0.239155,
		-0.949922, -0.274930, 0.148530,
		41.467037, 35.560413, 33.588913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069515, 35.002750, 33.399822>,  <42.131985, 35.752865, 33.484943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069515, 35.002750, 33.399822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720558, 35.184109, 33.326752>,  <41.511185, 35.292923, 33.282909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720558, 35.184109, 33.326752>,  <42.069515, 35.002750, 33.399822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720558, 35.184109, 33.326752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003353, -0.368146, -0.929762,
		-0.488801, -0.811727, 0.319646,
		-0.872389, 0.453396, -0.182672,
		41.458843, 35.320129, 33.271950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654312, 34.580399, 32.955368>,  <42.069515, 35.002750, 33.399822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654312, 34.580399, 32.955368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500801, 34.942257, 32.881252>,  <41.408695, 35.159370, 32.836784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500801, 34.942257, 32.881252>,  <41.654312, 34.580399, 32.955368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500801, 34.942257, 32.881252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056768, -0.177157, -0.982544,
		-0.921678, -0.387598, 0.016634,
		-0.383779, 0.904645, -0.185285,
		41.385666, 35.213650, 32.825668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250214, 34.471798, 32.472801>,  <41.654312, 34.580399, 32.955368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250214, 34.471798, 32.472801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305977, 34.865601, 32.430271>,  <41.339436, 35.101883, 32.404751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305977, 34.865601, 32.430271>,  <41.250214, 34.471798, 32.472801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305977, 34.865601, 32.430271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177595, -0.080778, -0.980783,
		-0.974179, 0.155616, 0.163582,
		0.139412, 0.984509, -0.106329,
		41.347801, 35.160954, 32.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734455, 34.668049, 31.935755>,  <41.250214, 34.471798, 32.472801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734455, 34.668049, 31.935755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011856, 34.955811, 31.951340>,  <41.178295, 35.128468, 31.960690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011856, 34.955811, 31.951340>,  <40.734455, 34.668049, 31.935755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011856, 34.955811, 31.951340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074512, -0.017832, -0.997061,
		-0.716593, 0.694364, -0.065971,
		0.693500, 0.719403, 0.038961,
		41.219906, 35.171631, 31.963028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558949, 35.094597, 31.489847>,  <40.734455, 34.668049, 31.935755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558949, 35.094597, 31.489847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953678, 35.145454, 31.529860>,  <41.190517, 35.175968, 31.553867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953678, 35.145454, 31.529860>,  <40.558949, 35.094597, 31.489847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953678, 35.145454, 31.529860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120339, -0.163655, -0.979151,
		-0.108122, 0.978290, -0.176799,
		0.986827, 0.127144, 0.100032,
		41.249725, 35.183598, 31.559870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111237, 35.725559, 31.374348>,  <40.558949, 35.094597, 31.489847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111237, 35.725559, 31.374348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741474, 35.625942, 31.258799>,  <39.519615, 35.566174, 31.189470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741474, 35.625942, 31.258799>,  <40.111237, 35.725559, 31.374348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741474, 35.625942, 31.258799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307738, 0.039597, 0.950647,
		-0.225313, 0.967683, -0.113244,
		-0.924409, -0.249043, -0.288871,
		39.464153, 35.551228, 31.172136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620281, 36.157951, 31.796642>,  <40.111237, 35.725559, 31.374348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620281, 36.157951, 31.796642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369442, 35.888176, 31.640755>,  <39.218937, 35.726311, 31.547222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369442, 35.888176, 31.640755>,  <39.620281, 36.157951, 31.796642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369442, 35.888176, 31.640755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466591, -0.075387, 0.881254,
		-0.623728, 0.734476, -0.267409,
		-0.627101, -0.674434, -0.389721,
		39.181313, 35.685844, 31.523838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891850, 36.250397, 32.136482>,  <39.620281, 36.157951, 31.796642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891850, 36.250397, 32.136482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908085, 35.876465, 31.995377>,  <38.917828, 35.652107, 31.910713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908085, 35.876465, 31.995377>,  <38.891850, 36.250397, 32.136482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908085, 35.876465, 31.995377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395937, -0.339204, 0.853331,
		-0.917380, 0.105034, -0.383904,
		0.040593, -0.934831, -0.352766,
		38.920261, 35.596016, 31.889547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198662, 35.973797, 32.311272>,  <38.891850, 36.250397, 32.136482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198662, 35.973797, 32.311272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442299, 35.669506, 32.221561>,  <38.588482, 35.486931, 32.167736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442299, 35.669506, 32.221561>,  <38.198662, 35.973797, 32.311272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442299, 35.669506, 32.221561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255107, -0.455679, 0.852805,
		-0.750952, -0.462221, -0.471618,
		0.609091, -0.760728, -0.224277,
		38.625027, 35.441288, 32.154278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836735, 35.329399, 32.375916>,  <38.198662, 35.973797, 32.311272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836735, 35.329399, 32.375916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203182, 35.170692, 32.352940>,  <38.423050, 35.075466, 32.339153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203182, 35.170692, 32.352940>,  <37.836735, 35.329399, 32.375916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203182, 35.170692, 32.352940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209470, -0.595887, 0.775268,
		-0.341830, -0.698206, -0.629015,
		0.916119, -0.396770, -0.057439,
		38.478020, 35.051662, 32.335709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770206, 34.517124, 32.390095>,  <37.836735, 35.329399, 32.375916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770206, 34.517124, 32.390095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118031, 34.641357, 32.543663>,  <38.326725, 34.715897, 32.635803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118031, 34.641357, 32.543663>,  <37.770206, 34.517124, 32.390095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118031, 34.641357, 32.543663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158722, -0.560419, 0.812858,
		0.467620, -0.767768, -0.438023,
		0.869562, 0.310585, 0.383925,
		38.378899, 34.734531, 32.658840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093788, 33.917046, 32.689964>,  <37.770206, 34.517124, 32.390095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093788, 33.917046, 32.689964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269821, 34.220985, 32.881363>,  <38.375443, 34.403351, 32.996201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269821, 34.220985, 32.881363>,  <38.093788, 33.917046, 32.689964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269821, 34.220985, 32.881363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104079, -0.486114, 0.867675,
		0.891906, -0.431649, -0.134845,
		0.440082, 0.759850, 0.478494,
		38.401844, 34.448940, 33.024910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364323, 33.633610, 33.204456>,  <38.093788, 33.917046, 32.689964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364323, 33.633610, 33.204456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407978, 34.010906, 33.329922>,  <38.434174, 34.237282, 33.405201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407978, 34.010906, 33.329922>,  <38.364323, 33.633610, 33.204456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407978, 34.010906, 33.329922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279005, -0.273799, 0.920429,
		0.954067, -0.187973, 0.233286,
		0.109142, 0.943239, 0.313668,
		38.440720, 34.293877, 33.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921993, 33.630302, 33.700306>,  <38.364323, 33.633610, 33.204456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921993, 33.630302, 33.700306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719971, 33.966125, 33.780373>,  <38.598755, 34.167618, 33.828411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719971, 33.966125, 33.780373>,  <38.921993, 33.630302, 33.700306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719971, 33.966125, 33.780373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178985, -0.328759, 0.927298,
		0.844322, 0.432513, 0.316310,
		-0.505058, 0.839553, 0.200165,
		38.568455, 34.217991, 33.840424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165398, 33.764313, 34.297863>,  <38.921993, 33.630302, 33.700306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165398, 33.764313, 34.297863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854210, 34.015133, 34.282063>,  <38.667496, 34.165627, 34.272583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854210, 34.015133, 34.282063>,  <39.165398, 33.764313, 34.297863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854210, 34.015133, 34.282063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070054, -0.024095, 0.997252,
		0.624380, 0.778603, 0.062673,
		-0.777973, 0.627055, -0.039500,
		38.620819, 34.203251, 34.270214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212345, 34.162132, 34.931686>,  <39.165398, 33.764313, 34.297863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212345, 34.162132, 34.931686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839828, 34.156784, 34.786072>,  <38.616318, 34.153576, 34.698704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839828, 34.156784, 34.786072>,  <39.212345, 34.162132, 34.931686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839828, 34.156784, 34.786072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361148, -0.096974, 0.927452,
		-0.047707, 0.995197, 0.085481,
		-0.931287, -0.013375, -0.364040,
		38.560444, 34.152771, 34.676861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789238, 34.695507, 35.246494>,  <39.212345, 34.162132, 34.931686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789238, 34.695507, 35.246494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.530880, 34.411991, 35.133053>,  <38.375866, 34.241882, 35.064987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.530880, 34.411991, 35.133053>,  <38.789238, 34.695507, 35.246494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530880, 34.411991, 35.133053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449214, 0.052490, 0.891881,
		-0.617273, 0.703461, -0.352302,
		-0.645896, -0.708793, -0.283604,
		38.337112, 34.199352, 35.047970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.262589, 36.149731, 27.291149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020031, 35.873966, 27.449640>,  <39.874496, 35.708508, 27.544735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020031, 35.873966, 27.449640>,  <40.262589, 36.149731, 27.291149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020031, 35.873966, 27.449640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190808, 0.609896, 0.769168,
		-0.771932, 0.390816, -0.501383,
		-0.606394, -0.689413, 0.396227,
		39.838112, 35.667141, 27.568508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603680, 36.483372, 27.611246>,  <40.262589, 36.149731, 27.291149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603680, 36.483372, 27.611246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660347, 36.134575, 27.798674>,  <39.694347, 35.925297, 27.911131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660347, 36.134575, 27.798674>,  <39.603680, 36.483372, 27.611246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660347, 36.134575, 27.798674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282343, 0.418088, 0.863414,
		-0.948795, -0.254620, -0.186969,
		0.141673, -0.871992, 0.468570,
		39.702850, 35.872978, 27.939245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352127, 36.612389, 28.227806>,  <39.603680, 36.483372, 27.611246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352127, 36.612389, 28.227806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487545, 36.241833, 28.293758>,  <39.568798, 36.019501, 28.333330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487545, 36.241833, 28.293758>,  <39.352127, 36.612389, 28.227806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487545, 36.241833, 28.293758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265306, 0.074139, 0.961309,
		-0.902772, -0.369194, -0.220678,
		0.338549, -0.926390, 0.164880,
		39.589111, 35.963917, 28.343222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838188, 36.399384, 28.636393>,  <39.352127, 36.612389, 28.227806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838188, 36.399384, 28.636393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146664, 36.149899, 28.687372>,  <39.331749, 36.000206, 28.717960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146664, 36.149899, 28.687372>,  <38.838188, 36.399384, 28.636393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146664, 36.149899, 28.687372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197396, -0.043954, 0.979338,
		-0.605224, -0.780416, -0.157015,
		0.771193, -0.623714, 0.127449,
		39.378021, 35.962784, 28.725607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612152, 35.748379, 29.013222>,  <38.838188, 36.399384, 28.636393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612152, 35.748379, 29.013222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998631, 35.822529, 29.084894>,  <39.230518, 35.867020, 29.127897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998631, 35.822529, 29.084894>,  <38.612152, 35.748379, 29.013222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998631, 35.822529, 29.084894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175932, -0.033979, 0.983816,
		0.188462, -0.982080, -0.000217,
		0.966193, 0.185374, 0.179183,
		39.288490, 35.878139, 29.138649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861595, 35.188335, 29.430717>,  <38.612152, 35.748379, 29.013222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861595, 35.188335, 29.430717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163406, 35.447079, 29.474993>,  <39.344494, 35.602325, 29.501558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163406, 35.447079, 29.474993>,  <38.861595, 35.188335, 29.430717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163406, 35.447079, 29.474993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082311, -0.260617, 0.961927,
		0.651080, -0.716694, -0.249888,
		0.754533, 0.646860, 0.110690,
		39.389767, 35.641136, 29.508200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409649, 34.840057, 29.792858>,  <38.861595, 35.188335, 29.430717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409649, 34.840057, 29.792858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465984, 35.227947, 29.872665>,  <39.499786, 35.460682, 29.920549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465984, 35.227947, 29.872665>,  <39.409649, 34.840057, 29.792858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465984, 35.227947, 29.872665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148597, -0.219948, 0.964128,
		0.978818, -0.106136, -0.175074,
		0.140836, 0.969721, 0.199517,
		39.508236, 35.518864, 29.932520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907764, 34.831547, 30.300831>,  <39.409649, 34.840057, 29.792858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907764, 34.831547, 30.300831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722710, 35.185959, 30.312983>,  <39.611679, 35.398605, 30.320274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722710, 35.185959, 30.312983>,  <39.907764, 34.831547, 30.300831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722710, 35.185959, 30.312983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022124, -0.045794, 0.998706,
		0.886274, 0.461363, 0.040788,
		-0.462633, 0.886029, 0.030379,
		39.583920, 35.451767, 30.322096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293015, 35.146637, 30.799973>,  <39.907764, 34.831547, 30.300831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293015, 35.146637, 30.799973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931240, 35.315670, 30.776609>,  <39.714176, 35.417091, 30.762592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931240, 35.315670, 30.776609>,  <40.293015, 35.146637, 30.799973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931240, 35.315670, 30.776609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125428, -0.132552, 0.983208,
		0.407748, 0.896577, 0.172889,
		-0.904438, 0.422586, -0.058408,
		39.659908, 35.442448, 30.759087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775604, 35.659752, 30.871946>,  <40.293015, 35.146637, 30.799973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775604, 35.659752, 30.871946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091488, 35.471756, 31.029667>,  <41.281017, 35.358959, 31.124298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091488, 35.471756, 31.029667>,  <40.775604, 35.659752, 30.871946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091488, 35.471756, 31.029667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259608, -0.326323, -0.908910,
		0.555846, 0.820137, -0.135687,
		0.789708, -0.469989, 0.394299,
		41.328400, 35.330761, 31.147957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278851, 35.844982, 30.554852>,  <40.775604, 35.659752, 30.871946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278851, 35.844982, 30.554852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395046, 35.494312, 30.708242>,  <41.464764, 35.283909, 30.800278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395046, 35.494312, 30.708242>,  <41.278851, 35.844982, 30.554852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395046, 35.494312, 30.708242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386475, -0.259124, -0.885151,
		0.875357, 0.405336, 0.263539,
		0.290494, -0.876674, 0.383478,
		41.482193, 35.231312, 30.823286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873615, 35.760201, 30.263023>,  <41.278851, 35.844982, 30.554852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873615, 35.760201, 30.263023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800587, 35.390823, 30.398033>,  <41.756771, 35.169197, 30.479038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800587, 35.390823, 30.398033>,  <41.873615, 35.760201, 30.263023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800587, 35.390823, 30.398033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449606, -0.383709, -0.806611,
		0.874370, 0.004489, 0.485239,
		-0.182569, -0.923443, 0.337522,
		41.745815, 35.113789, 30.499290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431435, 35.304153, 30.102573>,  <41.873615, 35.760201, 30.263023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431435, 35.304153, 30.102573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144421, 35.031628, 30.160463>,  <41.972210, 34.868111, 30.195196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144421, 35.031628, 30.160463>,  <42.431435, 35.304153, 30.102573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144421, 35.031628, 30.160463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360470, -0.541036, -0.759830,
		0.595985, -0.493040, 0.633809,
		-0.717540, -0.681316, 0.144724,
		41.929157, 34.827232, 30.203880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787956, 34.637432, 30.298111>,  <42.431435, 35.304153, 30.102573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787956, 34.637432, 30.298111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438183, 34.560772, 30.119837>,  <42.228317, 34.514774, 30.012873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438183, 34.560772, 30.119837>,  <42.787956, 34.637432, 30.298111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438183, 34.560772, 30.119837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476859, -0.508597, -0.716892,
		-0.089282, -0.839404, 0.536125,
		-0.874434, -0.191650, -0.445686,
		42.175854, 34.503277, 29.986132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754501, 33.917629, 30.181406>,  <42.787956, 34.637432, 30.298111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754501, 33.917629, 30.181406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513294, 34.075207, 29.903940>,  <42.368568, 34.169754, 29.737461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513294, 34.075207, 29.903940>,  <42.754501, 33.917629, 30.181406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513294, 34.075207, 29.903940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387851, -0.615075, -0.686480,
		-0.697095, -0.682999, 0.218108,
		-0.603018, 0.393948, -0.693667,
		42.332390, 34.193390, 29.695841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649181, 33.328716, 29.804811>,  <42.754501, 33.917629, 30.181406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649181, 33.328716, 29.804811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493568, 33.611801, 29.568913>,  <42.400200, 33.781651, 29.427374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493568, 33.611801, 29.568913>,  <42.649181, 33.328716, 29.804811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493568, 33.611801, 29.568913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170335, -0.573878, -0.801031,
		-0.905340, -0.412081, 0.102709,
		-0.389032, 0.707710, -0.589746,
		42.376858, 33.824116, 29.391989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495029, 32.965542, 29.193445>,  <42.649181, 33.328716, 29.804811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495029, 32.965542, 29.193445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453732, 33.341423, 29.063034>,  <42.428955, 33.566952, 28.984787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453732, 33.341423, 29.063034>,  <42.495029, 32.965542, 29.193445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453732, 33.341423, 29.063034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123726, -0.313100, -0.941626,
		-0.986931, -0.137552, -0.083942,
		-0.103241, 0.939706, -0.326027,
		42.422760, 33.623337, 28.965225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980461, 32.971649, 28.606176>,  <42.495029, 32.965542, 29.193445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980461, 32.971649, 28.606176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208588, 33.299229, 28.580704>,  <42.345463, 33.495777, 28.565420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208588, 33.299229, 28.580704>,  <41.980461, 32.971649, 28.606176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208588, 33.299229, 28.580704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236777, -0.238135, -0.941928,
		-0.786559, 0.522120, -0.329721,
		0.570318, 0.818952, -0.063681,
		42.379684, 33.544914, 28.561600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963455, 33.055031, 27.960350>,  <41.980461, 32.971649, 28.606176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963455, 33.055031, 27.960350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281204, 33.268646, 28.076130>,  <42.471851, 33.396816, 28.145597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281204, 33.268646, 28.076130>,  <41.963455, 33.055031, 27.960350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281204, 33.268646, 28.076130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484513, -0.269660, -0.832184,
		-0.366364, 0.801305, -0.472957,
		0.794371, 0.534036, 0.289449,
		42.519516, 33.428856, 28.162964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119286, 33.568604, 27.413462>,  <41.963455, 33.055031, 27.960350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119286, 33.568604, 27.413462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462730, 33.503235, 27.607813>,  <42.668797, 33.464012, 27.724422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462730, 33.503235, 27.607813>,  <42.119286, 33.568604, 27.413462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462730, 33.503235, 27.607813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398554, -0.383278, -0.833219,
		0.322395, 0.909060, -0.263953,
		0.858613, -0.163426, 0.485876,
		42.720314, 33.454208, 27.753576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721970, 33.841576, 27.121569>,  <42.119286, 33.568604, 27.413462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721970, 33.841576, 27.121569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882580, 33.540794, 27.330696>,  <42.978947, 33.360325, 27.456173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882580, 33.540794, 27.330696>,  <42.721970, 33.841576, 27.121569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882580, 33.540794, 27.330696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500054, -0.298254, -0.813014,
		0.767284, 0.587882, 0.256263,
		0.401525, -0.751957, 0.522818,
		43.003036, 33.315208, 27.487541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491798, 33.746868, 26.834040>,  <42.721970, 33.841576, 27.121569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491798, 33.746868, 26.834040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401703, 33.411415, 27.032421>,  <43.347645, 33.210144, 27.151451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401703, 33.411415, 27.032421>,  <43.491798, 33.746868, 26.834040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401703, 33.411415, 27.032421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363006, -0.544616, -0.756055,
		0.904155, 0.009744, 0.427094,
		-0.225236, -0.838629, 0.495955,
		43.334133, 33.159828, 27.181208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111847, 33.298740, 26.868706>,  <43.491798, 33.746868, 26.834040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111847, 33.298740, 26.868706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801357, 33.050404, 26.912571>,  <43.615063, 32.901402, 26.938890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801357, 33.050404, 26.912571>,  <44.111847, 33.298740, 26.868706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801357, 33.050404, 26.912571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337267, -0.555885, -0.759765,
		0.532654, -0.552765, 0.640883,
		-0.776229, -0.620840, 0.109665,
		43.568489, 32.864151, 26.945471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.409088, 26.237970, 25.923725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457958, 26.610939, 26.059763>,  <38.487282, 26.834721, 26.141386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457958, 26.610939, 26.059763>,  <38.409088, 26.237970, 25.923725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457958, 26.610939, 26.059763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054101, -0.348408, 0.935780,
		0.991032, -0.095934, -0.093013,
		0.122179, 0.932421, 0.340094,
		38.494614, 26.890665, 26.161791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958035, 26.188908, 26.440006>,  <38.409088, 26.237970, 25.923725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958035, 26.188908, 26.440006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752422, 26.524679, 26.510586>,  <38.629055, 26.726143, 26.552933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752422, 26.524679, 26.510586>,  <38.958035, 26.188908, 26.440006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752422, 26.524679, 26.510586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091750, -0.150719, 0.984310,
		0.852853, 0.522151, 0.000456,
		-0.514027, 0.839430, 0.176449,
		38.598213, 26.776508, 26.563520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424095, 26.564932, 26.922943>,  <38.958035, 26.188908, 26.440006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424095, 26.564932, 26.922943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059879, 26.730043, 26.932140>,  <38.841351, 26.829111, 26.937658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059879, 26.730043, 26.932140>,  <39.424095, 26.564932, 26.922943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059879, 26.730043, 26.932140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080983, 0.123542, 0.989029,
		0.405410, 0.902414, -0.145918,
		-0.910541, 0.412780, 0.022994,
		38.786716, 26.853878, 26.939039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549019, 27.026939, 27.438454>,  <39.424095, 26.564932, 26.922943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549019, 27.026939, 27.438454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149303, 27.014212, 27.446470>,  <38.909473, 27.006575, 27.451281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149303, 27.014212, 27.446470>,  <39.549019, 27.026939, 27.438454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149303, 27.014212, 27.446470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006842, 0.370220, 0.928919,
		-0.036977, 0.928399, -0.369740,
		-0.999293, -0.031819, 0.020042,
		38.849514, 27.004665, 27.452482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300480, 27.656248, 27.825777>,  <39.549019, 27.026939, 27.438454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300480, 27.656248, 27.825777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.007706, 27.384302, 27.843891>,  <38.832043, 27.221134, 27.854759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.007706, 27.384302, 27.843891>,  <39.300480, 27.656248, 27.825777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007706, 27.384302, 27.843891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235055, 0.314323, 0.919755,
		-0.639546, 0.662557, -0.389870,
		-0.731936, -0.679867, 0.045287,
		38.788124, 27.180342, 27.857477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735558, 28.032249, 28.051811>,  <39.300480, 27.656248, 27.825777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735558, 28.032249, 28.051811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632195, 27.649315, 28.103552>,  <38.570179, 27.419554, 28.134596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632195, 27.649315, 28.103552>,  <38.735558, 28.032249, 28.051811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632195, 27.649315, 28.103552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452356, 0.238223, 0.859432,
		-0.853581, 0.163569, -0.494615,
		-0.258405, -0.957337, 0.129351,
		38.554672, 27.362114, 28.142357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996632, 28.036005, 28.358927>,  <38.735558, 28.032249, 28.051811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996632, 28.036005, 28.358927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123734, 27.663925, 28.432421>,  <38.199993, 27.440678, 28.476517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123734, 27.663925, 28.432421>,  <37.996632, 28.036005, 28.358927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123734, 27.663925, 28.432421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273910, 0.095462, 0.957006,
		-0.907748, -0.354420, -0.224458,
		0.317755, -0.930201, 0.183735,
		38.219059, 27.384865, 28.487541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457745, 27.629370, 28.647253>,  <37.996632, 28.036005, 28.358927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457745, 27.629370, 28.647253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801994, 27.450752, 28.745173>,  <38.008545, 27.343582, 28.803925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801994, 27.450752, 28.745173>,  <37.457745, 27.629370, 28.647253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801994, 27.450752, 28.745173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228734, 0.090526, 0.969271,
		-0.454983, -0.890170, -0.024231,
		0.860623, -0.446544, 0.244800,
		38.060181, 27.316790, 28.818613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333466, 27.240791, 29.233961>,  <37.457745, 27.629370, 28.647253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333466, 27.240791, 29.233961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733009, 27.259865, 29.233950>,  <37.972736, 27.271309, 29.233942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733009, 27.259865, 29.233950>,  <37.333466, 27.240791, 29.233961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733009, 27.259865, 29.233950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016121, 0.338310, 0.940897,
		0.044874, -0.939826, 0.338693,
		0.998862, 0.047682, -0.000030,
		38.032669, 27.274170, 29.233940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617523, 27.071604, 29.937391>,  <37.333466, 27.240791, 29.233961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617523, 27.071604, 29.937391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940731, 27.258085, 29.793301>,  <38.134655, 27.369974, 29.706846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940731, 27.258085, 29.793301>,  <37.617523, 27.071604, 29.937391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940731, 27.258085, 29.793301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130609, 0.454465, 0.881137,
		0.574500, -0.759022, 0.306325,
		0.808017, 0.466204, -0.360225,
		38.183136, 27.397945, 29.685232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262398, 26.907326, 30.346821>,  <37.617523, 27.071604, 29.937391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262398, 26.907326, 30.346821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353127, 27.254869, 30.170805>,  <38.407566, 27.463396, 30.065195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353127, 27.254869, 30.170805>,  <38.262398, 26.907326, 30.346821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353127, 27.254869, 30.170805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154837, 0.413901, 0.897057,
		0.961549, -0.271609, -0.040648,
		0.226825, 0.868858, -0.440042,
		38.421173, 27.515526, 30.038792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800560, 27.149467, 30.726471>,  <38.262398, 26.907326, 30.346821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800560, 27.149467, 30.726471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659653, 27.483515, 30.557482>,  <38.575108, 27.683943, 30.456087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659653, 27.483515, 30.557482>,  <38.800560, 27.149467, 30.726471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659653, 27.483515, 30.557482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064738, 0.472072, 0.879180,
		0.933658, 0.282356, -0.220359,
		-0.352267, 0.835119, -0.422475,
		38.553974, 27.734051, 30.430738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304989, 27.625128, 30.933645>,  <38.800560, 27.149467, 30.726471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304989, 27.625128, 30.933645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972427, 27.817633, 30.822536>,  <38.772892, 27.933136, 30.755871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972427, 27.817633, 30.822536>,  <39.304989, 27.625128, 30.933645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972427, 27.817633, 30.822536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017161, 0.521885, 0.852843,
		0.555408, 0.704288, -0.442155,
		-0.831401, 0.481264, -0.277773,
		38.723007, 27.962011, 30.739204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445019, 28.378824, 31.112268>,  <39.304989, 27.625128, 30.933645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445019, 28.378824, 31.112268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047333, 28.352535, 31.078299>,  <38.808720, 28.336761, 31.057917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047333, 28.352535, 31.078299>,  <39.445019, 28.378824, 31.112268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047333, 28.352535, 31.078299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107378, 0.617626, 0.779107,
		0.001245, 0.783721, -0.621112,
		-0.994218, -0.065724, -0.084923,
		38.749069, 28.332819, 31.052822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879631, 28.947256, 31.036440>,  <39.445019, 28.378824, 31.112268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879631, 28.947256, 31.036440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.244545, 28.955626, 31.200047>,  <40.463493, 28.960648, 31.298210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.244545, 28.955626, 31.200047>,  <39.879631, 28.947256, 31.036440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244545, 28.955626, 31.200047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350480, -0.556578, -0.753250,
		0.211888, 0.830532, -0.515092,
		0.912287, 0.020924, 0.409017,
		40.518230, 28.961903, 31.322752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361885, 29.206738, 30.558807>,  <39.879631, 28.947256, 31.036440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361885, 29.206738, 30.558807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589420, 29.004663, 30.818411>,  <40.725941, 28.883419, 30.974173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589420, 29.004663, 30.818411>,  <40.361885, 29.206738, 30.558807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589420, 29.004663, 30.818411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517595, -0.393357, -0.759845,
		0.639156, 0.768151, 0.037726,
		0.568836, -0.505187, 0.649008,
		40.760071, 28.853107, 31.013113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091228, 29.227556, 30.293499>,  <40.361885, 29.206738, 30.558807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091228, 29.227556, 30.293499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095245, 28.907526, 30.533424>,  <41.097656, 28.715508, 30.677380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095245, 28.907526, 30.533424>,  <41.091228, 29.227556, 30.293499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095245, 28.907526, 30.533424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654488, -0.448249, -0.608867,
		0.756006, 0.398687, 0.519137,
		0.010045, -0.800076, 0.599815,
		41.098259, 28.667503, 30.713369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797421, 28.991369, 30.462830>,  <41.091228, 29.227556, 30.293499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797421, 28.991369, 30.462830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566433, 28.669134, 30.515825>,  <41.427841, 28.475792, 30.547623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566433, 28.669134, 30.515825>,  <41.797421, 28.991369, 30.462830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566433, 28.669134, 30.515825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619994, -0.538309, -0.570816,
		0.531164, -0.247486, 0.810318,
		-0.577470, -0.805589, 0.132490,
		41.393192, 28.427458, 30.555573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251469, 28.435587, 30.336033>,  <41.797421, 28.991369, 30.462830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251469, 28.435587, 30.336033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884453, 28.277750, 30.316362>,  <41.664242, 28.183048, 30.304560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884453, 28.277750, 30.316362>,  <42.251469, 28.435587, 30.336033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884453, 28.277750, 30.316362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285386, -0.567333, -0.772456,
		0.276906, -0.722793, 0.633162,
		-0.917539, -0.394593, -0.049177,
		41.609192, 28.159372, 30.301609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438244, 27.761234, 30.235489>,  <42.251469, 28.435587, 30.336033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438244, 27.761234, 30.235489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063347, 27.828739, 30.113445>,  <41.838409, 27.869242, 30.040218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063347, 27.828739, 30.113445>,  <42.438244, 27.761234, 30.235489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063347, 27.828739, 30.113445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215791, -0.406587, -0.887762,
		-0.273873, -0.897890, 0.344654,
		-0.937245, 0.168761, -0.305110,
		41.782173, 27.879368, 30.021912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187637, 27.095922, 29.958538>,  <42.438244, 27.761234, 30.235489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187637, 27.095922, 29.958538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942982, 27.380630, 29.820391>,  <41.796188, 27.551456, 29.737503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942982, 27.380630, 29.820391>,  <42.187637, 27.095922, 29.958538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942982, 27.380630, 29.820391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131157, -0.339277, -0.931498,
		-0.780190, -0.615037, 0.114161,
		-0.611639, 0.711772, -0.345367,
		41.759491, 27.594162, 29.716780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864155, 26.735672, 29.501368>,  <42.187637, 27.095922, 29.958538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864155, 26.735672, 29.501368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799187, 27.117409, 29.401085>,  <41.760208, 27.346451, 29.340916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799187, 27.117409, 29.401085>,  <41.864155, 26.735672, 29.501368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799187, 27.117409, 29.401085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125723, -0.272026, -0.954042,
		-0.978680, -0.123432, 0.164163,
		-0.162416, 0.954341, -0.250708,
		41.750462, 27.403711, 29.325872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378830, 26.676559, 28.969730>,  <41.864155, 26.735672, 29.501368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378830, 26.676559, 28.969730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524593, 27.047062, 28.931232>,  <41.612049, 27.269363, 28.908134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524593, 27.047062, 28.931232>,  <41.378830, 26.676559, 28.969730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524593, 27.047062, 28.931232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046520, -0.085114, -0.995285,
		-0.930078, 0.367164, 0.012073,
		0.364405, 0.926254, -0.096243,
		41.633915, 27.324938, 28.902359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948231, 27.010544, 28.432905>,  <41.378830, 26.676559, 28.969730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948231, 27.010544, 28.432905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.278107, 27.236282, 28.447870>,  <41.476032, 27.371725, 28.456850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.278107, 27.236282, 28.447870>,  <40.948231, 27.010544, 28.432905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278107, 27.236282, 28.447870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065829, -0.030076, -0.997377,
		-0.561739, 0.824992, -0.061954,
		0.824692, 0.564344, 0.037413,
		41.525513, 27.405586, 28.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877636, 27.573986, 27.970667>,  <40.948231, 27.010544, 28.432905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877636, 27.573986, 27.970667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272228, 27.524622, 28.013783>,  <41.508984, 27.495003, 28.039652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272228, 27.524622, 28.013783>,  <40.877636, 27.573986, 27.970667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272228, 27.524622, 28.013783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107375, -0.010028, -0.994168,
		0.123772, 0.992305, 0.003359,
		0.986484, -0.123411, 0.107790,
		41.568172, 27.487598, 28.046120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167110, 28.148457, 27.773787>,  <40.877636, 27.573986, 27.970667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167110, 28.148457, 27.773787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.437637, 27.856541, 27.733782>,  <41.599953, 27.681391, 27.709780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.437637, 27.856541, 27.733782>,  <41.167110, 28.148457, 27.773787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437637, 27.856541, 27.733782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035569, 0.167968, -0.985151,
		0.735753, 0.662715, 0.139557,
		0.676315, -0.729792, -0.100011,
		41.640533, 27.637604, 27.703779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703018, 28.473068, 27.403463>,  <41.167110, 28.148457, 27.773787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703018, 28.473068, 27.403463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.787216, 28.083900, 27.365263>,  <41.837734, 27.850399, 27.342342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.787216, 28.083900, 27.365263>,  <41.703018, 28.473068, 27.403463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787216, 28.083900, 27.365263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225753, 0.143427, -0.963569,
		0.951172, 0.181266, 0.249830,
		0.210495, -0.972919, -0.095502,
		41.850365, 27.792025, 27.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275024, 28.466043, 26.863468>,  <41.703018, 28.473068, 27.403463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275024, 28.466043, 26.863468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120144, 28.097260, 26.866697>,  <42.027218, 27.875988, 26.868635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120144, 28.097260, 26.866697>,  <42.275024, 28.466043, 26.863468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120144, 28.097260, 26.866697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053513, 0.013730, -0.998473,
		0.920442, -0.387039, -0.054653,
		-0.387198, -0.921961, 0.008074,
		42.003986, 27.820671, 26.869120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006794, 28.559586, 26.859751>,  <42.275024, 28.466043, 26.863468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006794, 28.559586, 26.859751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.257828, 28.844200, 26.733351>,  <43.408447, 29.014969, 26.657511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.257828, 28.844200, 26.733351>,  <43.006794, 28.559586, 26.859751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257828, 28.844200, 26.733351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139832, 0.502296, 0.853315,
		0.765892, -0.491336, 0.414727,
		0.627580, 0.711539, -0.316000,
		43.446102, 29.057661, 26.638552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333389, 28.785646, 27.403696>,  <43.006794, 28.559586, 26.859751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333389, 28.785646, 27.403696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.378555, 29.099846, 27.160305>,  <43.405655, 29.288364, 27.014271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.378555, 29.099846, 27.160305>,  <43.333389, 28.785646, 27.403696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378555, 29.099846, 27.160305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138383, 0.618857, 0.773218,
		0.983921, -0.003108, 0.178580,
		0.112919, 0.785497, -0.608477,
		43.412430, 29.335495, 26.977762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978741, 29.139681, 27.566965>,  <43.333389, 28.785646, 27.403696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978741, 29.139681, 27.566965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.709400, 29.380661, 27.395548>,  <43.547794, 29.525249, 27.292698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.709400, 29.380661, 27.395548>,  <43.978741, 29.139681, 27.566965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709400, 29.380661, 27.395548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044241, 0.545771, 0.836765,
		0.737999, 0.582395, -0.340842,
		-0.673350, 0.602453, -0.428544,
		43.507397, 29.561398, 27.266985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205936, 29.863474, 27.714653>,  <43.978741, 29.139681, 27.566965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205936, 29.863474, 27.714653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.818520, 29.896940, 27.620914>,  <43.586067, 29.917021, 27.564671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.818520, 29.896940, 27.620914>,  <44.205936, 29.863474, 27.714653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818520, 29.896940, 27.620914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142601, 0.585161, 0.798280,
		0.203921, 0.806589, -0.554825,
		-0.968546, 0.083667, -0.234347,
		43.527954, 29.922041, 27.550610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079960, 30.557081, 27.698174>,  <44.205936, 29.863474, 27.714653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079960, 30.557081, 27.698174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.719913, 30.386827, 27.735327>,  <43.503887, 30.284676, 27.757618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.719913, 30.386827, 27.735327>,  <44.079960, 30.557081, 27.698174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719913, 30.386827, 27.735327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169855, 0.539208, 0.824866,
		-0.401172, 0.726699, -0.557646,
		-0.900117, -0.425633, 0.092882,
		43.449879, 30.259138, 27.763191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675999, 31.082140, 27.955591>,  <44.079960, 30.557081, 27.698174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675999, 31.082140, 27.955591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.451530, 30.754507, 28.003231>,  <43.316849, 30.557926, 28.031815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.451530, 30.754507, 28.003231>,  <43.675999, 31.082140, 27.955591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451530, 30.754507, 28.003231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346979, 0.363442, 0.864590,
		-0.751458, 0.443860, -0.488159,
		-0.561174, -0.819084, 0.119101,
		43.283176, 30.508781, 28.038961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097630, 31.426096, 28.077190>,  <43.675999, 31.082140, 27.955591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097630, 31.426096, 28.077190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.044571, 31.055714, 28.218616>,  <43.012737, 30.833485, 28.303473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.044571, 31.055714, 28.218616>,  <43.097630, 31.426096, 28.077190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044571, 31.055714, 28.218616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408587, 0.376081, 0.831637,
		-0.903030, -0.034153, -0.428218,
		-0.132642, -0.925957, 0.353567,
		43.004780, 30.777927, 28.324686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277580, 31.259869, 28.177561>,  <43.097630, 31.426096, 28.077190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277580, 31.259869, 28.177561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525593, 31.058077, 28.417915>,  <42.674400, 30.937002, 28.562128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525593, 31.058077, 28.417915>,  <42.277580, 31.259869, 28.177561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525593, 31.058077, 28.417915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335469, 0.521866, 0.784294,
		-0.709242, -0.687864, 0.154335,
		0.620030, -0.504479, 0.600886,
		42.711601, 30.906733, 28.598181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954639, 31.065853, 28.751543>,  <42.277580, 31.259869, 28.177561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954639, 31.065853, 28.751543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.316254, 31.024162, 28.917366>,  <42.533222, 30.999147, 29.016859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.316254, 31.024162, 28.917366>,  <41.954639, 31.065853, 28.751543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316254, 31.024162, 28.917366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363892, 0.321205, 0.874305,
		-0.224283, -0.941257, 0.252454,
		0.904035, -0.104225, 0.414557,
		42.587463, 30.992895, 29.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753719, 30.959347, 29.295095>,  <41.954639, 31.065853, 28.751543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753719, 30.959347, 29.295095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.140228, 31.036783, 29.363028>,  <42.372135, 31.083244, 29.403788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.140228, 31.036783, 29.363028>,  <41.753719, 30.959347, 29.295095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140228, 31.036783, 29.363028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186558, 0.071599, 0.979832,
		0.177530, -0.978466, 0.105300,
		0.966271, 0.193594, 0.169830,
		42.430111, 31.094860, 29.413977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896290, 30.589718, 29.935249>,  <41.753719, 30.959347, 29.295095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896290, 30.589718, 29.935249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.171268, 30.879786, 29.919537>,  <42.336258, 31.053825, 29.910109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.171268, 30.879786, 29.919537>,  <41.896290, 30.589718, 29.935249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171268, 30.879786, 29.919537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148769, 0.193561, 0.969743,
		0.710832, -0.660805, 0.240946,
		0.687449, 0.725170, -0.039282,
		42.377502, 31.097336, 29.907753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217373, 30.537806, 30.520170>,  <41.896290, 30.589718, 29.935249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217373, 30.537806, 30.520170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318733, 30.911045, 30.418098>,  <42.379551, 31.134989, 30.356855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318733, 30.911045, 30.418098>,  <42.217373, 30.537806, 30.520170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318733, 30.911045, 30.418098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143264, 0.297080, 0.944044,
		0.956694, -0.202662, 0.208960,
		0.253399, 0.933098, -0.255181,
		42.394753, 31.190975, 30.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627583, 30.736420, 31.120758>,  <42.217373, 30.537806, 30.520170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627583, 30.736420, 31.120758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.535183, 31.070358, 30.920891>,  <42.479744, 31.270721, 30.800970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.535183, 31.070358, 30.920891>,  <42.627583, 30.736420, 31.120758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535183, 31.070358, 30.920891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200672, 0.461637, 0.864073,
		0.952034, 0.299871, 0.060892,
		-0.231000, 0.834846, -0.499670,
		42.465881, 31.320812, 30.770990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025051, 31.217171, 31.506781>,  <42.627583, 30.736420, 31.120758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025051, 31.217171, 31.506781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.750141, 31.436060, 31.315701>,  <42.585194, 31.567392, 31.201052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.750141, 31.436060, 31.315701>,  <43.025051, 31.217171, 31.506781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750141, 31.436060, 31.315701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270341, 0.417702, 0.867433,
		0.674216, 0.725309, -0.139140,
		-0.687276, 0.547222, -0.477702,
		42.543957, 31.600227, 31.172390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.376625, 32.693672, 26.612717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983829, 32.618111, 26.611769>,  <43.748150, 32.572773, 26.611200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983829, 32.618111, 26.611769>,  <44.376625, 32.693672, 26.612717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983829, 32.618111, 26.611769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086022, -0.435939, -0.895856,
		0.168194, -0.879928, 0.444339,
		-0.981993, -0.188901, -0.002370,
		43.689232, 32.561440, 26.611057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333488, 31.977825, 26.562494>,  <44.376625, 32.693672, 26.612717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333488, 31.977825, 26.562494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966125, 32.100239, 26.462193>,  <43.745708, 32.173687, 26.402012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966125, 32.100239, 26.462193>,  <44.333488, 31.977825, 26.562494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966125, 32.100239, 26.462193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039852, -0.559004, -0.828206,
		-0.393630, -0.770622, 0.501196,
		-0.918405, 0.306034, -0.250752,
		43.690605, 32.192051, 26.386967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960377, 31.317833, 26.363216>,  <44.333488, 31.977825, 26.562494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960377, 31.317833, 26.363216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.759712, 31.622282, 26.198765>,  <43.639313, 31.804951, 26.100094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.759712, 31.622282, 26.198765>,  <43.960377, 31.317833, 26.363216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759712, 31.622282, 26.198765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175171, -0.376033, -0.909898,
		-0.847142, -0.528480, 0.055316,
		-0.501663, 0.761123, -0.411128,
		43.609215, 31.850618, 26.075426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410896, 31.046818, 26.014414>,  <43.960377, 31.317833, 26.363216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410896, 31.046818, 26.014414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484879, 31.388586, 25.820194>,  <43.529270, 31.593647, 25.703663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484879, 31.388586, 25.820194>,  <43.410896, 31.046818, 26.014414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484879, 31.388586, 25.820194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040430, -0.487039, -0.872444,
		-0.981914, 0.180997, -0.055538,
		0.184958, 0.854420, -0.485548,
		43.540367, 31.644913, 25.674530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910721, 31.063009, 25.428446>,  <43.410896, 31.046818, 26.014414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910721, 31.063009, 25.428446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204208, 31.320532, 25.341564>,  <43.380299, 31.475046, 25.289436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204208, 31.320532, 25.341564>,  <42.910721, 31.063009, 25.428446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204208, 31.320532, 25.341564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026758, -0.346800, -0.937557,
		-0.678930, 0.682088, -0.271679,
		0.733715, 0.643806, -0.217202,
		43.424324, 31.513674, 25.276403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763874, 31.212021, 24.665409>,  <42.910721, 31.063009, 25.428446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763874, 31.212021, 24.665409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128128, 31.365406, 24.726995>,  <43.346680, 31.457438, 24.763948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128128, 31.365406, 24.726995>,  <42.763874, 31.212021, 24.665409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128128, 31.365406, 24.726995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248145, -0.209530, -0.945791,
		-0.330416, 0.899474, -0.285959,
		0.910632, 0.383464, 0.153968,
		43.401318, 31.480446, 24.773186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863678, 31.779913, 24.209930>,  <42.763874, 31.212021, 24.665409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863678, 31.779913, 24.209930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.223202, 31.627907, 24.297327>,  <43.438915, 31.536703, 24.349766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.223202, 31.627907, 24.297327>,  <42.863678, 31.779913, 24.209930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223202, 31.627907, 24.297327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157567, -0.185040, -0.970017,
		0.409051, 0.906283, -0.106437,
		0.898805, -0.380015, 0.218492,
		43.492844, 31.513903, 24.362875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270657, 32.075047, 23.717934>,  <42.863678, 31.779913, 24.209930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270657, 32.075047, 23.717934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485836, 31.766605, 23.854179>,  <43.614944, 31.581541, 23.935926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485836, 31.766605, 23.854179>,  <43.270657, 32.075047, 23.717934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485836, 31.766605, 23.854179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443711, -0.084546, -0.892173,
		0.716754, 0.631073, 0.296665,
		0.537944, -0.771102, 0.340613,
		43.647221, 31.535275, 23.956364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877628, 32.160324, 23.446825>,  <43.270657, 32.075047, 23.717934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877628, 32.160324, 23.446825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891312, 31.777351, 23.561476>,  <43.899521, 31.547567, 23.630266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891312, 31.777351, 23.561476>,  <43.877628, 32.160324, 23.446825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891312, 31.777351, 23.561476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440083, -0.243063, -0.864435,
		0.897305, 0.155713, 0.413034,
		0.034210, -0.957431, 0.286628,
		43.901573, 31.490122, 23.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459625, 31.997259, 23.173237>,  <43.877628, 32.160324, 23.446825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459625, 31.997259, 23.173237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.297321, 31.642233, 23.260492>,  <44.199940, 31.429218, 23.312845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.297321, 31.642233, 23.260492>,  <44.459625, 31.997259, 23.173237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297321, 31.642233, 23.260492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322915, -0.362495, -0.874256,
		0.855033, -0.284301, 0.433695,
		-0.405764, -0.887565, 0.218140,
		44.175591, 31.375963, 23.325935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987568, 31.536459, 23.085804>,  <44.459625, 31.997259, 23.173237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987568, 31.536459, 23.085804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.632370, 31.359589, 23.035303>,  <44.419250, 31.253466, 23.005003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.632370, 31.359589, 23.035303>,  <44.987568, 31.536459, 23.085804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632370, 31.359589, 23.035303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299501, -0.347798, -0.888446,
		0.348939, -0.826751, 0.441277,
		-0.887998, -0.442177, -0.126252,
		44.365971, 31.226936, 22.997427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094284, 30.765984, 22.870020>,  <44.987568, 31.536459, 23.085804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094284, 30.765984, 22.870020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.735477, 30.883398, 22.737844>,  <44.520191, 30.953846, 22.658539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.735477, 30.883398, 22.737844>,  <45.094284, 30.765984, 22.870020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735477, 30.883398, 22.737844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183372, -0.433086, -0.882503,
		-0.402150, -0.852219, 0.334663,
		-0.897023, 0.293531, -0.330438,
		44.466370, 30.971458, 22.638712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803032, 30.149342, 22.419773>,  <45.094284, 30.765984, 22.870020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803032, 30.149342, 22.419773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.568401, 30.445255, 22.287928>,  <44.427624, 30.622805, 22.208820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.568401, 30.445255, 22.287928>,  <44.803032, 30.149342, 22.419773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568401, 30.445255, 22.287928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224940, -0.242156, -0.943802,
		-0.778029, -0.627755, -0.024364,
		-0.586577, 0.739786, -0.329612,
		44.392429, 30.667191, 22.189045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287708, 29.999876, 21.918896>,  <44.803032, 30.149342, 22.419773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287708, 29.999876, 21.918896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.410069, 30.365803, 21.813423>,  <44.483486, 30.585360, 21.750139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.410069, 30.365803, 21.813423>,  <44.287708, 29.999876, 21.918896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410069, 30.365803, 21.813423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047786, -0.291365, -0.955418,
		-0.950862, 0.279667, -0.132846,
		0.305905, 0.914819, -0.263684,
		44.501839, 30.640249, 21.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181057, 29.541683, 21.303583>,  <44.287708, 29.999876, 21.918896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181057, 29.541683, 21.303583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.280994, 29.154367, 21.303808>,  <44.340958, 28.921978, 21.303944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.280994, 29.154367, 21.303808>,  <44.181057, 29.541683, 21.303583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280994, 29.154367, 21.303808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088633, -0.022293, 0.995815,
		-0.964222, -0.248843, -0.091391,
		0.249839, -0.968287, 0.000560,
		44.355946, 28.863882, 21.303976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792595, 29.404852, 21.888905>,  <44.181057, 29.541683, 21.303583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792595, 29.404852, 21.888905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011002, 29.074398, 21.833239>,  <44.142044, 28.876125, 21.799839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011002, 29.074398, 21.833239>,  <43.792595, 29.404852, 21.888905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011002, 29.074398, 21.833239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042102, -0.192963, 0.980302,
		-0.836717, -0.529400, -0.140142,
		0.546014, -0.826136, -0.139167,
		44.174805, 28.826557, 21.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444679, 28.856726, 22.316015>,  <43.792595, 29.404852, 21.888905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444679, 28.856726, 22.316015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817764, 28.726587, 22.253794>,  <44.041615, 28.648504, 22.216461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817764, 28.726587, 22.253794>,  <43.444679, 28.856726, 22.316015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817764, 28.726587, 22.253794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030206, -0.359353, 0.932713,
		-0.359353, -0.874652, -0.325346,
		-0.932713, 0.325346, 0.155554,
		44.097580, 28.628984, 22.207129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471577, 28.228985, 22.606548>,  <43.444679, 28.856726, 22.316015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471577, 28.228985, 22.606548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.851261, 28.352644, 22.583132>,  <44.079071, 28.426840, 22.569082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.851261, 28.352644, 22.583132>,  <43.471577, 28.228985, 22.606548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851261, 28.352644, 22.583132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178158, -0.374725, 0.909858,
		0.259343, -0.874076, -0.410770,
		0.949211, 0.309147, -0.058542,
		44.136024, 28.445389, 22.565569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789608, 27.676138, 23.003244>,  <43.471577, 28.228985, 22.606548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789608, 27.676138, 23.003244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032768, 27.992805, 22.978868>,  <44.178665, 28.182806, 22.964243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032768, 27.992805, 22.978868>,  <43.789608, 27.676138, 23.003244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032768, 27.992805, 22.978868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233215, -0.104662, 0.966776,
		0.758988, -0.601920, -0.248254,
		0.607905, 0.791668, -0.060940,
		44.215141, 28.230307, 22.960587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387814, 27.417021, 23.472004>,  <43.789608, 27.676138, 23.003244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387814, 27.417021, 23.472004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405624, 27.811598, 23.408827>,  <44.416313, 28.048344, 23.370920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405624, 27.811598, 23.408827>,  <44.387814, 27.417021, 23.472004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405624, 27.811598, 23.408827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034497, 0.156489, 0.987077,
		0.998412, -0.049403, -0.027061,
		0.044530, 0.986443, -0.157944,
		44.418983, 28.107531, 23.361443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990696, 27.777294, 23.883373>,  <44.387814, 27.417021, 23.472004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990696, 27.777294, 23.883373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.716026, 28.059093, 23.811638>,  <44.551224, 28.228172, 23.768597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.716026, 28.059093, 23.811638>,  <44.990696, 27.777294, 23.883373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716026, 28.059093, 23.811638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040136, 0.209576, 0.976968,
		0.725857, 0.678056, -0.115635,
		-0.686674, 0.704498, -0.179337,
		44.510025, 28.270443, 23.757837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211803, 28.381359, 24.156031>,  <44.990696, 27.777294, 23.883373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211803, 28.381359, 24.156031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.819366, 28.451584, 24.123425>,  <44.583904, 28.493719, 24.103861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.819366, 28.451584, 24.123425>,  <45.211803, 28.381359, 24.156031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819366, 28.451584, 24.123425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017081, 0.340957, 0.939924,
		0.192805, 0.923541, -0.331510,
		-0.981088, 0.175560, -0.081513,
		44.525040, 28.504251, 24.098970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119465, 29.053417, 24.383690>,  <45.211803, 28.381359, 24.156031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119465, 29.053417, 24.383690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.766129, 28.867350, 24.406780>,  <44.554127, 28.755709, 24.420635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.766129, 28.867350, 24.406780>,  <45.119465, 29.053417, 24.383690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766129, 28.867350, 24.406780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163624, 0.421413, 0.891985,
		-0.439249, 0.778480, -0.448363,
		-0.883339, -0.465167, 0.057727,
		44.501125, 28.727800, 24.424099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744507, 29.543535, 24.684334>,  <45.119465, 29.053417, 24.383690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744507, 29.543535, 24.684334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.508572, 29.221647, 24.711218>,  <44.367008, 29.028515, 24.727348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.508572, 29.221647, 24.711218>,  <44.744507, 29.543535, 24.684334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508572, 29.221647, 24.711218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283890, 0.284561, 0.915659,
		-0.755973, 0.521012, -0.396297,
		-0.589840, -0.804718, 0.067210,
		44.331619, 28.980232, 24.731380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980885, 29.750303, 24.756029>,  <44.744507, 29.543535, 24.684334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980885, 29.750303, 24.756029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011173, 29.384443, 24.914867>,  <44.029346, 29.164928, 25.010170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011173, 29.384443, 24.914867>,  <43.980885, 29.750303, 24.756029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011173, 29.384443, 24.914867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526832, 0.301414, 0.794731,
		-0.846589, -0.269383, -0.459042,
		0.075725, -0.914649, 0.397094,
		44.033890, 29.110048, 25.033995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258762, 29.571215, 24.962725>,  <43.980885, 29.750303, 24.756029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258762, 29.571215, 24.962725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531178, 29.345821, 25.149776>,  <43.694626, 29.210585, 25.262009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531178, 29.345821, 25.149776>,  <43.258762, 29.571215, 24.962725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531178, 29.345821, 25.149776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406848, 0.239797, 0.881460,
		-0.608825, -0.790559, -0.065942,
		0.681034, -0.563483, 0.467632,
		43.735489, 29.176777, 25.290066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890457, 29.161020, 25.383734>,  <43.258762, 29.571215, 24.962725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890457, 29.161020, 25.383734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259373, 29.145008, 25.537506>,  <43.480721, 29.135401, 25.629768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259373, 29.145008, 25.537506>,  <42.890457, 29.161020, 25.383734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259373, 29.145008, 25.537506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381377, 0.067272, 0.921969,
		-0.062768, -0.996931, 0.046778,
		0.922286, -0.040030, 0.384429,
		43.536060, 29.132999, 25.652834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886211, 28.589146, 25.966444>,  <42.890457, 29.161020, 25.383734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886211, 28.589146, 25.966444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.212120, 28.814058, 26.022989>,  <43.407665, 28.949007, 26.056915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.212120, 28.814058, 26.022989>,  <42.886211, 28.589146, 25.966444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212120, 28.814058, 26.022989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199785, 0.043402, 0.978878,
		0.544272, -0.825805, 0.147699,
		0.814773, 0.562283, 0.141361,
		43.456551, 28.982742, 26.065397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555885, 28.097305, 26.291220>,  <42.886211, 28.589146, 25.966444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555885, 28.097305, 26.291220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224823, 27.895422, 26.389410>,  <42.026188, 27.774292, 26.448324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224823, 27.895422, 26.389410>,  <42.555885, 28.097305, 26.291220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224823, 27.895422, 26.389410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315227, 0.056158, -0.947353,
		0.464354, -0.861460, -0.205578,
		-0.827652, -0.504710, 0.245478,
		41.976528, 27.744009, 26.463053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542107, 27.513983, 25.871799>,  <42.555885, 28.097305, 26.291220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542107, 27.513983, 25.871799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.162407, 27.564619, 25.986973>,  <41.934589, 27.595001, 26.056076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.162407, 27.564619, 25.986973>,  <42.542107, 27.513983, 25.871799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162407, 27.564619, 25.986973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281263, 0.068127, -0.957209,
		-0.140789, -0.989613, -0.029064,
		-0.949247, 0.126590, 0.287933,
		41.877632, 27.602596, 26.073353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161079, 27.049116, 25.494244>,  <42.542107, 27.513983, 25.871799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161079, 27.049116, 25.494244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.851429, 27.280275, 25.597593>,  <41.665638, 27.418972, 25.659603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.851429, 27.280275, 25.597593>,  <42.161079, 27.049116, 25.494244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851429, 27.280275, 25.597593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276878, 0.057935, -0.959157,
		-0.569265, -0.814049, 0.115159,
		-0.774129, 0.577900, 0.258372,
		41.619190, 27.453646, 25.675104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508770, 26.759508, 25.211042>,  <42.161079, 27.049116, 25.494244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508770, 26.759508, 25.211042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.423725, 27.142351, 25.289774>,  <41.372696, 27.372057, 25.337013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.423725, 27.142351, 25.289774>,  <41.508770, 26.759508, 25.211042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423725, 27.142351, 25.289774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502920, 0.065516, -0.861846,
		-0.837775, -0.282229, 0.467418,
		-0.212615, 0.957107, 0.196827,
		41.359940, 27.429483, 25.348822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932598, 26.847267, 24.902349>,  <41.508770, 26.759508, 25.211042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932598, 26.847267, 24.902349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.040909, 27.226851, 24.967049>,  <41.105896, 27.454599, 25.005867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.040909, 27.226851, 24.967049>,  <40.932598, 26.847267, 24.902349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040909, 27.226851, 24.967049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405165, 0.264762, -0.875067,
		-0.873225, 0.171412, 0.456175,
		0.270775, 0.948957, 0.161747,
		41.122143, 27.511538, 25.015574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370136, 27.213627, 24.627619>,  <40.932598, 26.847267, 24.902349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370136, 27.213627, 24.627619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704338, 27.433420, 24.627327>,  <40.904858, 27.565296, 24.627151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704338, 27.433420, 24.627327>,  <40.370136, 27.213627, 24.627619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704338, 27.433420, 24.627327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239322, 0.362699, -0.900653,
		-0.494630, 0.752673, 0.434540,
		0.835504, 0.549484, -0.000730,
		40.954990, 27.598265, 24.627108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222458, 27.822823, 24.236948>,  <40.370136, 27.213627, 24.627619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222458, 27.822823, 24.236948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.621174, 27.791758, 24.229208>,  <40.860405, 27.773119, 24.224564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.621174, 27.791758, 24.229208>,  <40.222458, 27.822823, 24.236948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621174, 27.791758, 24.229208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000376, 0.246288, -0.969197,
		0.080036, 0.966080, 0.245527,
		0.996792, -0.077663, -0.019349,
		40.920212, 27.768459, 24.223404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981262, 28.491264, 24.430372>,  <40.222458, 27.822823, 24.236948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981262, 28.491264, 24.430372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628971, 28.539196, 24.247087>,  <39.417595, 28.567955, 24.137115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628971, 28.539196, 24.247087>,  <39.981262, 28.491264, 24.430372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628971, 28.539196, 24.247087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470064, -0.339529, 0.814715,
		-0.057950, 0.932932, 0.355360,
		-0.880728, 0.119829, -0.458213,
		39.364754, 28.575146, 24.109623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606194, 28.835800, 24.930595>,  <39.981262, 28.491264, 24.430372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606194, 28.835800, 24.930595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343266, 28.676386, 24.674753>,  <39.185509, 28.580736, 24.521248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343266, 28.676386, 24.674753>,  <39.606194, 28.835800, 24.930595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343266, 28.676386, 24.674753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504307, -0.398057, 0.766306,
		-0.560001, 0.826268, 0.060668,
		-0.657324, -0.398537, -0.639605,
		39.146069, 28.556826, 24.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916790, 28.926144, 25.226925>,  <39.606194, 28.835800, 24.930595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916790, 28.926144, 25.226925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913330, 28.633295, 24.954477>,  <38.911255, 28.457586, 24.791008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913330, 28.633295, 24.954477>,  <38.916790, 28.926144, 25.226925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913330, 28.633295, 24.954477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342748, -0.637712, 0.689816,
		-0.939387, 0.239422, -0.245415,
		-0.008653, -0.732120, -0.681121,
		38.910732, 28.413658, 24.750141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208443, 28.654284, 25.352007>,  <38.916790, 28.926144, 25.226925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208443, 28.654284, 25.352007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446613, 28.376804, 25.189894>,  <38.589516, 28.210318, 25.092627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446613, 28.376804, 25.189894>,  <38.208443, 28.654284, 25.352007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446613, 28.376804, 25.189894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288012, -0.655225, 0.698376,
		-0.750014, -0.299102, -0.589929,
		0.595422, -0.693698, -0.405284,
		38.625240, 28.168695, 25.068308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779888, 28.079535, 25.264980>,  <38.208443, 28.654284, 25.352007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779888, 28.079535, 25.264980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157501, 27.947609, 25.263237>,  <38.384071, 27.868454, 25.262192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157501, 27.947609, 25.263237>,  <37.779888, 28.079535, 25.264980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157501, 27.947609, 25.263237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228533, -0.663550, 0.712372,
		-0.237842, -0.671509, -0.701788,
		0.944036, -0.329814, -0.004358,
		38.440712, 27.848665, 25.261930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680084, 27.357965, 25.303413>,  <37.779888, 28.079535, 25.264980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680084, 27.357965, 25.303413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064819, 27.406118, 25.401693>,  <38.295662, 27.435009, 25.460661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064819, 27.406118, 25.401693>,  <37.680084, 27.357965, 25.303413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064819, 27.406118, 25.401693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100634, -0.679410, 0.726825,
		0.254427, -0.723816, -0.641371,
		0.961842, 0.120380, 0.245701,
		38.353371, 27.442232, 25.475403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981724, 26.680138, 25.413050>,  <37.680084, 27.357965, 25.303413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981724, 26.680138, 25.413050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206345, 26.939629, 25.618500>,  <38.341118, 27.095324, 25.741770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206345, 26.939629, 25.618500>,  <37.981724, 26.680138, 25.413050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206345, 26.939629, 25.618500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, -0.624742, 0.780795,
		0.827407, -0.434567, -0.355737,
		0.561552, 0.648729, 0.513625,
		38.374809, 27.134247, 25.772587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.557175, 32.187168, 22.515209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931923, 32.047493, 22.507883>,  <41.156773, 31.963688, 22.503489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931923, 32.047493, 22.507883>,  <40.557175, 32.187168, 22.515209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931923, 32.047493, 22.507883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209007, 0.517243, 0.829925,
		-0.280325, -0.781364, 0.557574,
		0.936875, -0.349185, -0.018314,
		41.212986, 31.942738, 22.502388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666771, 31.958723, 23.170422>,  <40.557175, 32.187168, 22.515209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666771, 31.958723, 23.170422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018909, 32.031582, 22.995237>,  <41.230194, 32.075298, 22.890127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018909, 32.031582, 22.995237>,  <40.666771, 31.958723, 23.170422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018909, 32.031582, 22.995237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287702, 0.529045, 0.798335,
		0.377115, -0.828815, 0.413340,
		0.880348, 0.182145, -0.437962,
		41.283012, 32.086227, 22.863848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098034, 31.658775, 23.629679>,  <40.666771, 31.958723, 23.170422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098034, 31.658775, 23.629679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.327442, 31.905315, 23.413832>,  <41.465088, 32.053238, 23.284323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.327442, 31.905315, 23.413832>,  <41.098034, 31.658775, 23.629679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327442, 31.905315, 23.413832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204416, 0.530207, 0.822858,
		0.793280, -0.582229, 0.178090,
		0.573517, 0.616352, -0.539619,
		41.499496, 32.090221, 23.251945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712681, 31.811712, 24.014364>,  <41.098034, 31.658775, 23.629679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712681, 31.811712, 24.014364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.703362, 32.097942, 23.735106>,  <41.697769, 32.269680, 23.567551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.703362, 32.097942, 23.735106>,  <41.712681, 31.811712, 24.014364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703362, 32.097942, 23.735106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178454, 0.690099, 0.701369,
		0.983672, -0.108246, -0.143776,
		-0.023299, 0.715575, -0.698148,
		41.696373, 32.312614, 23.525661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324165, 32.231075, 24.087364>,  <41.712681, 31.811712, 24.014364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324165, 32.231075, 24.087364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056816, 32.462658, 23.900564>,  <41.896408, 32.601608, 23.788485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056816, 32.462658, 23.900564>,  <42.324165, 32.231075, 24.087364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056816, 32.462658, 23.900564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, 0.715566, 0.683973,
		0.730160, 0.390862, -0.560440,
		-0.668370, 0.578958, -0.466999,
		41.856304, 32.636345, 23.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546967, 32.911137, 24.279196>,  <42.324165, 32.231075, 24.087364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546967, 32.911137, 24.279196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.187408, 32.982483, 24.119106>,  <41.971676, 33.025291, 24.023052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.187408, 32.982483, 24.119106>,  <42.546967, 32.911137, 24.279196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187408, 32.982483, 24.119106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157405, 0.720974, 0.674848,
		0.408922, 0.669613, -0.620002,
		-0.898892, 0.178369, -0.400222,
		41.917740, 33.035995, 23.999039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490952, 33.616329, 24.159184>,  <42.546967, 32.911137, 24.279196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490952, 33.616329, 24.159184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.111446, 33.492371, 24.183861>,  <41.883743, 33.417995, 24.198668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.111446, 33.492371, 24.183861>,  <42.490952, 33.616329, 24.159184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111446, 33.492371, 24.183861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149352, 0.611880, 0.776721,
		-0.278451, 0.727714, -0.626815,
		-0.948767, -0.309895, 0.061693,
		41.826817, 33.399403, 24.202368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984123, 34.323673, 24.100750>,  <42.490952, 33.616329, 24.159184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984123, 34.323673, 24.100750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810757, 34.017448, 24.290937>,  <41.706738, 33.833714, 24.405050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810757, 34.017448, 24.290937>,  <41.984123, 34.323673, 24.100750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810757, 34.017448, 24.290937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383587, 0.634130, 0.671372,
		-0.815485, 0.108598, -0.568499,
		-0.433412, -0.765562, 0.475467,
		41.680733, 33.787781, 24.433577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331425, 34.596828, 24.236050>,  <41.984123, 34.323673, 24.100750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331425, 34.596828, 24.236050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352737, 34.287495, 24.488750>,  <41.365524, 34.101894, 24.640371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352737, 34.287495, 24.488750>,  <41.331425, 34.596828, 24.236050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352737, 34.287495, 24.488750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478753, 0.535416, 0.695791,
		-0.876331, -0.339525, -0.341711,
		0.053281, -0.773338, 0.631750,
		41.368721, 34.055492, 24.678276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791317, 34.706955, 24.636221>,  <41.331425, 34.596828, 24.236050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791317, 34.706955, 24.636221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956017, 34.420319, 24.861420>,  <41.054836, 34.248337, 24.996538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956017, 34.420319, 24.861420>,  <40.791317, 34.706955, 24.636221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956017, 34.420319, 24.861420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533016, 0.311725, 0.786588,
		-0.739161, -0.623960, -0.253603,
		0.411746, -0.716590, 0.562996,
		41.079540, 34.205341, 25.030319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344868, 34.354065, 25.029432>,  <40.791317, 34.706955, 24.636221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344868, 34.354065, 25.029432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.676498, 34.276501, 25.239204>,  <40.875477, 34.229961, 25.365067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.676498, 34.276501, 25.239204>,  <40.344868, 34.354065, 25.029432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676498, 34.276501, 25.239204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502765, 0.151856, 0.850980,
		-0.244648, -0.969195, 0.028411,
		0.829080, -0.193907, 0.524429,
		40.925224, 34.218330, 25.396534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058628, 33.872295, 25.518978>,  <40.344868, 34.354065, 25.029432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058628, 33.872295, 25.518978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384769, 34.061867, 25.652002>,  <40.580452, 34.175610, 25.731817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384769, 34.061867, 25.652002>,  <40.058628, 33.872295, 25.518978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384769, 34.061867, 25.652002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542646, 0.425309, 0.724325,
		0.201837, -0.771042, 0.603951,
		0.815351, 0.473927, 0.332560,
		40.629375, 34.204044, 25.751770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604034, 33.508133, 25.118504>,  <40.058628, 33.872295, 25.518978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604034, 33.508133, 25.118504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245224, 33.350273, 25.198088>,  <39.029938, 33.255558, 25.245838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245224, 33.350273, 25.198088>,  <39.604034, 33.508133, 25.118504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245224, 33.350273, 25.198088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130448, -0.193695, -0.972351,
		0.422278, -0.898182, 0.122268,
		-0.897031, -0.394653, 0.198959,
		38.976116, 33.231876, 25.257776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610157, 32.827045, 24.842665>,  <39.604034, 33.508133, 25.118504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610157, 32.827045, 24.842665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224133, 32.924686, 24.880768>,  <38.992519, 32.983273, 24.903629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224133, 32.924686, 24.880768>,  <39.610157, 32.827045, 24.842665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224133, 32.924686, 24.880768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147081, -0.203778, -0.967906,
		-0.216866, -0.948095, 0.232561,
		-0.965058, 0.244111, 0.095254,
		38.934616, 32.997917, 24.909344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223793, 32.299992, 24.645306>,  <39.610157, 32.827045, 24.842665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223793, 32.299992, 24.645306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966789, 32.595787, 24.564959>,  <38.812588, 32.773262, 24.516750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966789, 32.595787, 24.564959>,  <39.223793, 32.299992, 24.645306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966789, 32.595787, 24.564959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184834, -0.403954, -0.895912,
		-0.743655, -0.538501, 0.396224,
		-0.642506, 0.739485, -0.200869,
		38.774036, 32.817631, 24.504698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696423, 31.976240, 24.378304>,  <39.223793, 32.299992, 24.645306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696423, 31.976240, 24.378304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677723, 32.358418, 24.261723>,  <38.666504, 32.587723, 24.191774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677723, 32.358418, 24.261723>,  <38.696423, 31.976240, 24.378304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677723, 32.358418, 24.261723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174361, -0.295097, -0.939423,
		-0.983571, 0.006897, 0.180388,
		-0.046753, 0.955442, -0.291451,
		38.663696, 32.645050, 24.174288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188812, 31.995064, 23.872070>,  <38.696423, 31.976240, 24.378304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188812, 31.995064, 23.872070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367016, 32.350124, 23.825426>,  <38.473938, 32.563160, 23.797440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367016, 32.350124, 23.825426>,  <38.188812, 31.995064, 23.872070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367016, 32.350124, 23.825426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090136, -0.085119, -0.992285,
		-0.890728, 0.452585, 0.042087,
		0.445511, 0.887650, -0.116612,
		38.500668, 32.616421, 23.790442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754749, 32.388287, 23.521038>,  <38.188812, 31.995064, 23.872070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754749, 32.388287, 23.521038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101433, 32.576141, 23.453796>,  <38.309444, 32.688854, 23.413452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101433, 32.576141, 23.453796>,  <37.754749, 32.388287, 23.521038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101433, 32.576141, 23.453796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158299, -0.060623, -0.985529,
		-0.473032, 0.880776, 0.021800,
		0.866708, 0.469637, -0.168102,
		38.361446, 32.717033, 23.403366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617771, 32.899387, 22.945732>,  <37.754749, 32.388287, 23.521038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617771, 32.899387, 22.945732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013412, 32.841148, 22.937056>,  <38.250797, 32.806206, 22.931850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013412, 32.841148, 22.937056>,  <37.617771, 32.899387, 22.945732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013412, 32.841148, 22.937056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039790, -0.122582, -0.991660,
		0.141723, 0.981721, -0.127039,
		0.989106, -0.145596, -0.021690,
		38.310143, 32.797470, 22.930548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943253, 33.339355, 22.451933>,  <37.617771, 32.899387, 22.945732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943253, 33.339355, 22.451933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203236, 33.043118, 22.520130>,  <38.359226, 32.865376, 22.561049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203236, 33.043118, 22.520130>,  <37.943253, 33.339355, 22.451933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203236, 33.043118, 22.520130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123188, -0.118705, -0.985258,
		0.749920, 0.661379, 0.014080,
		0.649957, -0.740599, 0.170494,
		38.398224, 32.820938, 22.571278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538471, 33.604824, 22.070690>,  <37.943253, 33.339355, 22.451933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538471, 33.604824, 22.070690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558392, 33.206646, 22.103197>,  <38.570343, 32.967739, 22.122702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558392, 33.206646, 22.103197>,  <38.538471, 33.604824, 22.070690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558392, 33.206646, 22.103197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161164, -0.072293, -0.984277,
		0.985671, 0.062115, 0.156830,
		0.049801, -0.995448, 0.081267,
		38.573334, 32.908012, 22.127577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129009, 33.316883, 21.485424>,  <38.538471, 33.604824, 22.070690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129009, 33.316883, 21.485424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946770, 32.981922, 21.606213>,  <38.837425, 32.780945, 21.678686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946770, 32.981922, 21.606213>,  <39.129009, 33.316883, 21.485424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946770, 32.981922, 21.606213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061945, -0.368228, -0.927670,
		0.888027, -0.403940, 0.219637,
		-0.455600, -0.837401, 0.301974,
		38.810089, 32.730701, 21.696804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528545, 32.770111, 21.173033>,  <39.129009, 33.316883, 21.485424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528545, 32.770111, 21.173033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170258, 32.622681, 21.272501>,  <38.955284, 32.534222, 21.332182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170258, 32.622681, 21.272501>,  <39.528545, 32.770111, 21.173033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170258, 32.622681, 21.272501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134074, -0.309343, -0.941451,
		0.423923, -0.876616, 0.227668,
		-0.895719, -0.368579, 0.248669,
		38.901543, 32.512108, 21.347101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577126, 32.120678, 20.933311>,  <39.528545, 32.770111, 21.173033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577126, 32.120678, 20.933311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.180187, 32.154285, 20.969513>,  <38.942024, 32.174450, 20.991234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.180187, 32.154285, 20.969513>,  <39.577126, 32.120678, 20.933311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180187, 32.154285, 20.969513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115661, -0.375485, -0.919583,
		-0.043283, -0.923012, 0.382329,
		-0.992345, 0.084023, 0.090505,
		38.882484, 32.179493, 20.996664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310638, 31.436396, 20.667152>,  <39.577126, 32.120678, 20.933311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310638, 31.436396, 20.667152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046585, 31.735950, 20.643873>,  <38.888153, 31.915684, 20.629906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046585, 31.735950, 20.643873>,  <39.310638, 31.436396, 20.667152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046585, 31.735950, 20.643873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364959, -0.387495, -0.846553,
		-0.656524, -0.537602, 0.529113,
		-0.660137, 0.748887, -0.058197,
		38.848545, 31.960617, 20.626413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458275, 30.825809, 21.103010>,  <39.310638, 31.436396, 20.667152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458275, 30.825809, 21.103010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449467, 30.448414, 20.970741>,  <39.444183, 30.221977, 20.891380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449467, 30.448414, 20.970741>,  <39.458275, 30.825809, 21.103010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449467, 30.448414, 20.970741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302984, -0.308903, 0.901543,
		-0.952741, 0.120040, -0.279061,
		-0.022018, -0.943488, -0.330675,
		39.442860, 30.165367, 20.871538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957088, 30.563261, 21.486210>,  <39.458275, 30.825809, 21.103010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957088, 30.563261, 21.486210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.134403, 30.233719, 21.344925>,  <39.240791, 30.035994, 21.260155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.134403, 30.233719, 21.344925>,  <38.957088, 30.563261, 21.486210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134403, 30.233719, 21.344925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141950, -0.453589, 0.879834,
		-0.885069, -0.339880, -0.318016,
		0.443287, -0.823856, -0.353212,
		39.267387, 29.986563, 21.238962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502979, 30.094545, 21.716284>,  <38.957088, 30.563261, 21.486210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502979, 30.094545, 21.716284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833767, 29.881708, 21.643627>,  <39.032242, 29.754005, 21.600033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833767, 29.881708, 21.643627>,  <38.502979, 30.094545, 21.716284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833767, 29.881708, 21.643627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171322, -0.546179, 0.819962,
		-0.535493, -0.646974, -0.542837,
		0.826980, -0.532084, -0.181634,
		39.081860, 29.722080, 21.589134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309227, 29.364086, 21.860109>,  <38.502979, 30.094545, 21.716284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309227, 29.364086, 21.860109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708099, 29.373684, 21.888521>,  <38.947422, 29.379442, 21.905569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708099, 29.373684, 21.888521>,  <38.309227, 29.364086, 21.860109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708099, 29.373684, 21.888521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039918, -0.632055, 0.773894,
		0.063465, -0.774552, -0.629318,
		0.997185, 0.023994, 0.071032,
		39.007256, 29.380882, 21.909830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557617, 28.623529, 21.887751>,  <38.309227, 29.364086, 21.860109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557617, 28.623529, 21.887751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.830490, 28.866610, 22.050392>,  <38.994213, 29.012459, 22.147976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.830490, 28.866610, 22.050392>,  <38.557617, 28.623529, 21.887751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830490, 28.866610, 22.050392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046119, -0.590744, 0.805540,
		0.729726, -0.530773, -0.431022,
		0.682183, 0.607702, 0.406602,
		39.035145, 29.048920, 22.172373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971485, 28.209412, 22.181973>,  <38.557617, 28.623529, 21.887751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971485, 28.209412, 22.181973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057854, 28.554230, 22.365389>,  <39.109673, 28.761120, 22.475439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057854, 28.554230, 22.365389>,  <38.971485, 28.209412, 22.181973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057854, 28.554230, 22.365389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096018, -0.486087, 0.868620,
		0.971679, -0.143524, -0.187727,
		0.215919, 0.862044, 0.458539,
		39.122631, 28.812843, 22.502951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449986, 27.943129, 22.705727>,  <38.971485, 28.209412, 22.181973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449986, 27.943129, 22.705727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346928, 28.309933, 22.827522>,  <39.285091, 28.530014, 22.900599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346928, 28.309933, 22.827522>,  <39.449986, 27.943129, 22.705727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346928, 28.309933, 22.827522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123818, -0.281195, 0.951629,
		0.958273, 0.282886, -0.041093,
		-0.257647, 0.917009, 0.304488,
		39.269634, 28.585035, 22.918869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908642, 28.140429, 23.152241>,  <39.449986, 27.943129, 22.705727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908642, 28.140429, 23.152241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605026, 28.379587, 23.255299>,  <39.422855, 28.523083, 23.317133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605026, 28.379587, 23.255299>,  <39.908642, 28.140429, 23.152241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605026, 28.379587, 23.255299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222535, -0.133634, 0.965723,
		0.611831, 0.790356, -0.031619,
		-0.759040, 0.597895, 0.257643,
		39.377316, 28.558956, 23.332592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413589, 28.355185, 23.737305>,  <39.908642, 28.140429, 23.152241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413589, 28.355185, 23.737305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.742363, 28.138817, 23.808668>,  <40.939629, 28.008997, 23.851486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.742363, 28.138817, 23.808668>,  <40.413589, 28.355185, 23.737305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742363, 28.138817, 23.808668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228565, 0.026331, -0.973173,
		0.521709, 0.840663, 0.145277,
		0.821935, -0.540918, 0.178409,
		40.988945, 27.976542, 23.862190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036453, 28.799839, 23.586889>,  <40.413589, 28.355185, 23.737305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036453, 28.799839, 23.586889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.116238, 28.410269, 23.543652>,  <41.164108, 28.176527, 23.517710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.116238, 28.410269, 23.543652>,  <41.036453, 28.799839, 23.586889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116238, 28.410269, 23.543652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388116, 0.179810, -0.903900,
		0.899766, 0.138344, 0.413862,
		0.199465, -0.973925, -0.108093,
		41.176079, 28.118092, 23.511223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641884, 28.793648, 23.315668>,  <41.036453, 28.799839, 23.586889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641884, 28.793648, 23.315668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496384, 28.429426, 23.237101>,  <41.409084, 28.210894, 23.189960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496384, 28.429426, 23.237101>,  <41.641884, 28.793648, 23.315668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496384, 28.429426, 23.237101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287227, 0.090947, -0.953536,
		0.886108, -0.403263, 0.228453,
		-0.363748, -0.910554, -0.196416,
		41.387260, 28.156260, 23.178175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201332, 28.558750, 22.928627>,  <41.641884, 28.793648, 23.315668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201332, 28.558750, 22.928627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.896599, 28.325689, 22.815399>,  <41.713760, 28.185854, 22.747463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.896599, 28.325689, 22.815399>,  <42.201332, 28.558750, 22.928627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896599, 28.325689, 22.815399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358970, -0.015985, -0.933212,
		0.539212, -0.812565, 0.221332,
		-0.761833, -0.582651, -0.283068,
		41.668049, 28.150894, 22.730478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547516, 28.013691, 22.570190>,  <42.201332, 28.558750, 22.928627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547516, 28.013691, 22.570190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165909, 28.026197, 22.450945>,  <41.936943, 28.033701, 22.379396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165909, 28.026197, 22.450945>,  <42.547516, 28.013691, 22.570190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165909, 28.026197, 22.450945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295414, -0.070490, -0.952765,
		-0.050793, -0.997023, 0.058016,
		-0.954018, 0.031255, -0.298115,
		41.879704, 28.035576, 22.361509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527527, 27.486555, 22.100412>,  <42.547516, 28.013691, 22.570190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527527, 27.486555, 22.100412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.214756, 27.714884, 22.000204>,  <42.027096, 27.851881, 21.940079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.214756, 27.714884, 22.000204>,  <42.527527, 27.486555, 22.100412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214756, 27.714884, 22.000204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297113, -0.012033, -0.954767,
		-0.548016, -0.820986, -0.160189,
		-0.781922, 0.570822, -0.250520,
		41.980179, 27.886129, 21.925049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233532, 27.161518, 21.529621>,  <42.527527, 27.486555, 22.100412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233532, 27.161518, 21.529621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.102852, 27.539282, 21.514889>,  <42.024445, 27.765940, 21.506050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.102852, 27.539282, 21.514889>,  <42.233532, 27.161518, 21.529621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102852, 27.539282, 21.514889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276113, 0.058104, -0.959367,
		-0.903895, -0.323599, -0.279747,
		-0.326704, 0.944409, -0.036830,
		42.004841, 27.822605, 21.503839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934093, 27.180231, 20.919624>,  <42.233532, 27.161518, 21.529621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934093, 27.180231, 20.919624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.008621, 27.565119, 20.999039>,  <42.053337, 27.796051, 21.046686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.008621, 27.565119, 20.999039>,  <41.934093, 27.180231, 20.919624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008621, 27.565119, 20.999039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345758, 0.124929, -0.929970,
		-0.919640, 0.241915, -0.309419,
		0.186318, 0.962221, 0.198534,
		42.064518, 27.853785, 21.058599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704453, 27.482008, 20.372330>,  <41.934093, 27.180231, 20.919624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704453, 27.482008, 20.372330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964096, 27.729969, 20.548679>,  <42.119884, 27.878746, 20.654490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964096, 27.729969, 20.548679>,  <41.704453, 27.482008, 20.372330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964096, 27.729969, 20.548679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440656, 0.165997, -0.882195,
		-0.620060, 0.766918, -0.165414,
		0.649113, 0.619904, 0.440875,
		42.158829, 27.915941, 20.680943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.237206, 31.245632, 35.231918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.505390, 31.541832, 35.213379>,  <39.666302, 31.719551, 35.202255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.505390, 31.541832, 35.213379>,  <39.237206, 31.245632, 35.231918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505390, 31.541832, 35.213379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104112, -0.155746, -0.982295,
		-0.734607, 0.653762, -0.181515,
		0.670458, 0.740499, -0.046348,
		39.706528, 31.763981, 35.199474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086010, 31.647051, 34.670601>,  <39.237206, 31.245632, 35.231918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086010, 31.647051, 34.670601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467323, 31.743231, 34.743740>,  <39.696110, 31.800938, 34.787624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467323, 31.743231, 34.743740>,  <39.086010, 31.647051, 34.670601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467323, 31.743231, 34.743740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241751, -0.244348, -0.939069,
		-0.181120, 0.939403, -0.291062,
		0.953285, 0.240449, 0.182845,
		39.753307, 31.815365, 34.798595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316246, 32.042950, 34.052189>,  <39.086010, 31.647051, 34.670601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316246, 32.042950, 34.052189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635738, 31.880011, 34.229321>,  <39.827435, 31.782246, 34.335598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635738, 31.880011, 34.229321>,  <39.316246, 32.042950, 34.052189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635738, 31.880011, 34.229321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260357, -0.429515, -0.864715,
		0.542444, 0.805966, -0.237009,
		0.798730, -0.407352, 0.442827,
		39.875359, 31.757805, 34.362167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755260, 32.278782, 33.592670>,  <39.316246, 32.042950, 34.052189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755260, 32.278782, 33.592670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890938, 31.950653, 33.776852>,  <39.972343, 31.753777, 33.887360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890938, 31.950653, 33.776852>,  <39.755260, 32.278782, 33.592670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890938, 31.950653, 33.776852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256223, -0.390407, -0.884269,
		0.905151, 0.417916, 0.077763,
		0.339192, -0.820322, 0.460457,
		39.992695, 31.704556, 33.914989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386387, 32.090614, 33.181309>,  <39.755260, 32.278782, 33.592670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386387, 32.090614, 33.181309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290825, 31.770918, 33.401905>,  <40.233486, 31.579102, 33.534264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290825, 31.770918, 33.401905>,  <40.386387, 32.090614, 33.181309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290825, 31.770918, 33.401905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217876, -0.597576, -0.771643,
		0.946285, -0.064193, 0.316899,
		-0.238905, -0.799238, 0.551491,
		40.219154, 31.531147, 33.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018303, 31.612892, 33.153740>,  <40.386387, 32.090614, 33.181309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018303, 31.612892, 33.153740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.713017, 31.382509, 33.270893>,  <40.529846, 31.244280, 33.341183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.713017, 31.382509, 33.270893>,  <41.018303, 31.612892, 33.153740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713017, 31.382509, 33.270893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155553, -0.603719, -0.781874,
		0.627142, -0.551179, 0.550359,
		-0.763215, -0.575956, 0.292879,
		40.484051, 31.209723, 33.358757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269150, 30.955923, 33.251202>,  <41.018303, 31.612892, 33.153740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269150, 30.955923, 33.251202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876415, 30.904404, 33.195488>,  <40.640774, 30.873491, 33.162060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876415, 30.904404, 33.195488>,  <41.269150, 30.955923, 33.251202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876415, 30.904404, 33.195488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186398, -0.791548, -0.581985,
		-0.035291, -0.597379, 0.801182,
		-0.981840, -0.128800, -0.139285,
		40.581863, 30.865763, 33.153702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189583, 30.220430, 33.353325>,  <41.269150, 30.955923, 33.251202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189583, 30.220430, 33.353325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869579, 30.313395, 33.132065>,  <40.677578, 30.369173, 32.999310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869579, 30.313395, 33.132065>,  <41.189583, 30.220430, 33.353325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869579, 30.313395, 33.132065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144529, -0.820137, -0.553612,
		-0.582323, -0.522839, 0.622526,
		-0.800007, 0.232408, -0.553150,
		40.629578, 30.383118, 32.966118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022694, 29.625153, 33.203690>,  <41.189583, 30.220430, 33.353325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022694, 29.625153, 33.203690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.849979, 29.840612, 32.914299>,  <40.746349, 29.969889, 32.740665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.849979, 29.840612, 32.914299>,  <41.022694, 29.625153, 33.203690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849979, 29.840612, 32.914299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208594, -0.720725, -0.661093,
		-0.877525, -0.436362, 0.198838,
		-0.431784, 0.538650, -0.723477,
		40.720444, 30.002207, 32.697254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456188, 29.212189, 32.960968>,  <41.022694, 29.625153, 33.203690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456188, 29.212189, 32.960968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.530663, 29.478436, 32.671890>,  <40.575348, 29.638184, 32.498444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.530663, 29.478436, 32.671890>,  <40.456188, 29.212189, 32.960968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530663, 29.478436, 32.671890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046419, -0.740697, -0.670233,
		-0.981418, 0.091239, -0.168802,
		0.186182, 0.665615, -0.722699,
		40.586517, 29.678120, 32.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021652, 28.977932, 32.499805>,  <40.456188, 29.212189, 32.960968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021652, 28.977932, 32.499805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270462, 29.214445, 32.294491>,  <40.419746, 29.356354, 32.171303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270462, 29.214445, 32.294491>,  <40.021652, 28.977932, 32.499805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270462, 29.214445, 32.294491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043875, -0.680837, -0.731120,
		-0.781767, 0.432254, -0.449440,
		0.622025, 0.591285, -0.513291,
		40.457069, 29.391830, 32.140503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697941, 28.972733, 31.804800>,  <40.021652, 28.977932, 32.499805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697941, 28.972733, 31.804800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.084209, 29.072763, 31.776667>,  <40.315971, 29.132782, 31.759787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.084209, 29.072763, 31.776667>,  <39.697941, 28.972733, 31.804800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084209, 29.072763, 31.776667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089012, -0.572867, -0.814801,
		-0.244055, 0.780566, -0.575459,
		0.965668, 0.250079, -0.070332,
		40.373909, 29.147787, 31.755568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166080, 29.119171, 31.234192>,  <39.697941, 28.972733, 31.804800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166080, 29.119171, 31.234192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.865036, 28.868694, 31.315636>,  <38.684410, 28.718409, 31.364502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.865036, 28.868694, 31.315636>,  <39.166080, 29.119171, 31.234192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865036, 28.868694, 31.315636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352142, 0.644052, 0.679112,
		-0.556390, 0.439409, -0.705231,
		-0.752613, -0.626192, 0.203609,
		38.639252, 28.680836, 31.376719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584007, 29.539930, 31.475712>,  <39.166080, 29.119171, 31.234192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584007, 29.539930, 31.475712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468826, 29.176483, 31.596703>,  <38.399719, 28.958414, 31.669298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468826, 29.176483, 31.596703>,  <38.584007, 29.539930, 31.475712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468826, 29.176483, 31.596703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220505, 0.370278, 0.902370,
		-0.931912, 0.193142, -0.306978,
		-0.287953, -0.908620, 0.302478,
		38.382439, 28.903896, 31.687447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069221, 29.705915, 31.853371>,  <38.584007, 29.539930, 31.475712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069221, 29.705915, 31.853371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162022, 29.334572, 31.969524>,  <38.217705, 29.111765, 32.039215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162022, 29.334572, 31.969524>,  <38.069221, 29.705915, 31.853371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162022, 29.334572, 31.969524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126002, 0.267333, 0.955331,
		-0.964519, -0.258231, -0.054953,
		0.232005, -0.928359, 0.290385,
		38.231625, 29.056065, 32.056641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563946, 29.584404, 32.358734>,  <38.069221, 29.705915, 31.853371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563946, 29.584404, 32.358734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838840, 29.306063, 32.442162>,  <38.003777, 29.139059, 32.492218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838840, 29.306063, 32.442162>,  <37.563946, 29.584404, 32.358734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838840, 29.306063, 32.442162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100141, 0.193624, 0.975952,
		-0.719501, -0.691593, 0.063382,
		0.687234, -0.695851, 0.208570,
		38.045010, 29.097307, 32.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236366, 29.070887, 32.845081>,  <37.563946, 29.584404, 32.358734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236366, 29.070887, 32.845081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634537, 29.079426, 32.882320>,  <37.873440, 29.084549, 32.904663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634537, 29.079426, 32.882320>,  <37.236366, 29.070887, 32.845081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634537, 29.079426, 32.882320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094960, 0.116468, 0.988644,
		0.010262, -0.992965, 0.117963,
		0.995428, 0.021347, 0.093097,
		37.933167, 29.085831, 32.910248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394341, 28.621864, 33.424145>,  <37.236366, 29.070887, 32.845081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394341, 28.621864, 33.424145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727604, 28.839588, 33.385010>,  <37.927563, 28.970222, 33.361530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727604, 28.839588, 33.385010>,  <37.394341, 28.621864, 33.424145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727604, 28.839588, 33.385010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082399, 0.297109, 0.951281,
		0.546858, -0.784509, 0.292390,
		0.833161, 0.544309, -0.097834,
		37.977551, 29.002880, 33.355659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672401, 28.553604, 34.016670>,  <37.394341, 28.621864, 33.424145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672401, 28.553604, 34.016670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856247, 28.884033, 33.886223>,  <37.966557, 29.082291, 33.807953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856247, 28.884033, 33.886223>,  <37.672401, 28.553604, 34.016670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856247, 28.884033, 33.886223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132442, 0.299345, 0.944908,
		0.878186, -0.477488, 0.028177,
		0.459617, 0.826074, -0.326120,
		37.994133, 29.131855, 33.788387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358429, 28.600760, 34.449024>,  <37.672401, 28.553604, 34.016670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358429, 28.600760, 34.449024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265663, 28.962183, 34.304913>,  <38.210003, 29.179037, 34.218445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265663, 28.962183, 34.304913>,  <38.358429, 28.600760, 34.449024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265663, 28.962183, 34.304913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283298, 0.417059, 0.863600,
		0.930570, 0.098212, -0.352696,
		-0.231911, 0.903558, -0.360279,
		38.196091, 29.233250, 34.196831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839176, 28.965822, 34.763496>,  <38.358429, 28.600760, 34.449024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839176, 28.965822, 34.763496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561584, 29.222862, 34.633598>,  <38.395027, 29.377087, 34.555660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561584, 29.222862, 34.633598>,  <38.839176, 28.965822, 34.763496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561584, 29.222862, 34.633598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081619, 0.377912, 0.922237,
		0.715352, 0.666520, -0.209815,
		-0.693981, 0.642599, -0.324741,
		38.353390, 29.415642, 34.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041367, 29.582186, 35.102104>,  <38.839176, 28.965822, 34.763496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041367, 29.582186, 35.102104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670670, 29.642927, 34.964653>,  <38.448250, 29.679373, 34.882183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670670, 29.642927, 34.964653>,  <39.041367, 29.582186, 35.102104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670670, 29.642927, 34.964653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284526, 0.313598, 0.905926,
		0.245332, 0.937335, -0.247418,
		-0.926746, 0.151856, -0.343631,
		38.392647, 29.688484, 34.861565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868797, 30.155315, 35.434719>,  <39.041367, 29.582186, 35.102104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868797, 30.155315, 35.434719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.504379, 30.024187, 35.334702>,  <38.285728, 29.945509, 35.274693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.504379, 30.024187, 35.334702>,  <38.868797, 30.155315, 35.434719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504379, 30.024187, 35.334702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373200, 0.397910, 0.838087,
		-0.175249, 0.856855, -0.484859,
		-0.911049, -0.327823, -0.250045,
		38.231064, 29.925840, 35.259689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402859, 30.663839, 35.625748>,  <38.868797, 30.155315, 35.434719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402859, 30.663839, 35.625748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.171597, 30.339632, 35.588238>,  <38.032837, 30.145107, 35.565731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.171597, 30.339632, 35.588238>,  <38.402859, 30.663839, 35.625748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171597, 30.339632, 35.588238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510852, 0.269971, 0.816177,
		-0.636211, 0.519784, -0.570141,
		-0.578157, -0.810519, -0.093774,
		37.998150, 30.096476, 35.560104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772228, 30.817568, 36.001530>,  <38.402859, 30.663839, 35.625748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772228, 30.817568, 36.001530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751659, 30.418844, 35.977116>,  <37.739319, 30.179609, 35.962467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751659, 30.418844, 35.977116>,  <37.772228, 30.817568, 36.001530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751659, 30.418844, 35.977116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385484, -0.036571, 0.921990,
		-0.921281, 0.070942, -0.382373,
		-0.051424, -0.996810, -0.061039,
		37.736233, 30.119801, 35.958805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098293, 30.693960, 36.085384>,  <37.772228, 30.817568, 36.001530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098293, 30.693960, 36.085384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276321, 30.358509, 36.210999>,  <37.383137, 30.157238, 36.286366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276321, 30.358509, 36.210999>,  <37.098293, 30.693960, 36.085384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276321, 30.358509, 36.210999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489602, 0.065741, 0.869464,
		-0.749801, -0.540724, -0.381334,
		0.445071, -0.838627, 0.314033,
		37.409843, 30.106920, 36.305210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638187, 30.942656, 35.515671>,  <37.098293, 30.693960, 36.085384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638187, 30.942656, 35.515671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291012, 31.129797, 35.448975>,  <36.082706, 31.242083, 35.408955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291012, 31.129797, 35.448975>,  <36.638187, 30.942656, 35.515671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291012, 31.129797, 35.448975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422553, 0.519108, -0.742951,
		-0.261034, -0.715290, -0.648245,
		-0.867934, 0.467853, -0.166743,
		36.030632, 31.270153, 35.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326801, 31.048107, 34.777500>,  <36.638187, 30.942656, 35.515671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326801, 31.048107, 34.777500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186333, 31.366226, 34.975159>,  <36.102051, 31.557098, 35.093754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186333, 31.366226, 34.975159>,  <36.326801, 31.048107, 34.777500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186333, 31.366226, 34.975159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294481, 0.594788, -0.748003,
		-0.888798, -0.117158, -0.443071,
		-0.351168, 0.795300, 0.494146,
		36.080982, 31.604816, 35.123402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774300, 31.564089, 34.441994>,  <36.326801, 31.048107, 34.777500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774300, 31.564089, 34.441994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944916, 31.819010, 34.698715>,  <36.047283, 31.971962, 34.852749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944916, 31.819010, 34.698715>,  <35.774300, 31.564089, 34.441994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944916, 31.819010, 34.698715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070757, 0.683906, -0.726130,
		-0.901698, 0.355133, 0.246617,
		0.426536, 0.637301, 0.641806,
		36.072876, 32.010201, 34.891258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493935, 32.327782, 34.474400>,  <35.774300, 31.564089, 34.441994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493935, 32.327782, 34.474400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879509, 32.319355, 34.580524>,  <36.110851, 32.314297, 34.644199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879509, 32.319355, 34.580524>,  <35.493935, 32.327782, 34.474400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879509, 32.319355, 34.580524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238360, 0.511838, -0.825353,
		-0.118407, 0.858824, 0.498399,
		0.963932, -0.021071, 0.265315,
		36.168690, 32.313034, 34.660118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740269, 33.007984, 34.377335>,  <35.493935, 32.327782, 34.474400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740269, 33.007984, 34.377335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042122, 32.746002, 34.361526>,  <36.223236, 32.588814, 34.352043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042122, 32.746002, 34.361526>,  <35.740269, 33.007984, 34.377335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042122, 32.746002, 34.361526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416978, 0.525204, -0.741815,
		0.506607, 0.543323, 0.669439,
		0.754638, -0.654951, -0.039518,
		36.268513, 32.549519, 34.349670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264088, 33.393932, 34.097382>,  <35.740269, 33.007984, 34.377335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264088, 33.393932, 34.097382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402790, 33.020180, 34.064663>,  <36.486012, 32.795929, 34.045033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402790, 33.020180, 34.064663>,  <36.264088, 33.393932, 34.097382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402790, 33.020180, 34.064663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425187, 0.234320, -0.874248,
		0.836047, 0.268375, 0.478539,
		0.346758, -0.934382, -0.081793,
		36.506817, 32.739864, 34.040127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823643, 33.512672, 33.710308>,  <36.264088, 33.393932, 34.097382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823643, 33.512672, 33.710308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779842, 33.116302, 33.679108>,  <36.753563, 32.878483, 33.660389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779842, 33.116302, 33.679108>,  <36.823643, 33.512672, 33.710308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779842, 33.116302, 33.679108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336804, 0.036842, -0.940854,
		0.935186, -0.129297, 0.329712,
		-0.109502, -0.990921, -0.078002,
		36.746990, 32.819027, 33.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471474, 33.143864, 33.518101>,  <36.823643, 33.512672, 33.710308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471474, 33.143864, 33.518101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145679, 32.943813, 33.400467>,  <36.950203, 32.823784, 33.329887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145679, 32.943813, 33.400467>,  <37.471474, 33.143864, 33.518101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145679, 32.943813, 33.400467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252239, 0.151232, -0.955774,
		0.522480, -0.852647, 0.002974,
		-0.814488, -0.500123, -0.294087,
		36.901333, 32.793777, 33.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711212, 32.647327, 33.037102>,  <37.471474, 33.143864, 33.518101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711212, 32.647327, 33.037102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318695, 32.700714, 32.981594>,  <37.083187, 32.732746, 32.948288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318695, 32.700714, 32.981594>,  <37.711212, 32.647327, 33.037102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318695, 32.700714, 32.981594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151732, 0.092367, -0.984096,
		-0.118530, -0.986739, -0.110890,
		-0.981289, 0.133471, -0.138771,
		37.024307, 32.740753, 32.939964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504898, 32.264336, 32.502136>,  <37.711212, 32.647327, 33.037102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504898, 32.264336, 32.502136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200699, 32.523899, 32.492668>,  <37.018181, 32.679638, 32.486988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200699, 32.523899, 32.492668>,  <37.504898, 32.264336, 32.502136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200699, 32.523899, 32.492668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103022, 0.084594, -0.991075,
		-0.641119, -0.756146, -0.131185,
		-0.760495, 0.648912, -0.023665,
		36.972549, 32.718571, 32.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101543, 32.058693, 31.892136>,  <37.504898, 32.264336, 32.502136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101543, 32.058693, 31.892136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000786, 32.436787, 31.975163>,  <36.940331, 32.663643, 32.024979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000786, 32.436787, 31.975163>,  <37.101543, 32.058693, 31.892136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000786, 32.436787, 31.975163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061980, 0.229801, -0.971262,
		-0.965769, -0.231787, -0.116470,
		-0.251891, 0.945234, 0.207568,
		36.925217, 32.720356, 32.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622707, 32.229103, 31.372972>,  <37.101543, 32.058693, 31.892136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622707, 32.229103, 31.372972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706841, 32.595688, 31.509123>,  <36.757320, 32.815639, 31.590813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706841, 32.595688, 31.509123>,  <36.622707, 32.229103, 31.372972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706841, 32.595688, 31.509123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080906, 0.330652, -0.940278,
		-0.974277, 0.225308, -0.004601,
		0.210331, 0.916463, 0.340376,
		36.769939, 32.870628, 31.611235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306274, 32.688023, 30.913626>,  <36.622707, 32.229103, 31.372972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306274, 32.688023, 30.913626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599670, 32.887806, 31.098030>,  <36.775707, 33.007675, 31.208673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599670, 32.887806, 31.098030>,  <36.306274, 32.688023, 30.913626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599670, 32.887806, 31.098030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335356, 0.324028, -0.884614,
		-0.591207, 0.803461, 0.070177,
		0.733492, 0.499456, 0.461013,
		36.819717, 33.037643, 31.236334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384853, 33.311283, 30.566236>,  <36.306274, 32.688023, 30.913626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384853, 33.311283, 30.566236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742695, 33.263420, 30.738453>,  <36.957401, 33.234703, 30.841784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742695, 33.263420, 30.738453>,  <36.384853, 33.311283, 30.566236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742695, 33.263420, 30.738453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446728, 0.262805, -0.855200,
		-0.010818, 0.957400, 0.288561,
		0.894604, -0.119657, 0.430541,
		37.011078, 33.227524, 30.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850983, 33.830914, 30.250111>,  <36.384853, 33.311283, 30.566236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850983, 33.830914, 30.250111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109665, 33.572891, 30.412922>,  <37.264874, 33.418076, 30.510609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109665, 33.572891, 30.412922>,  <36.850983, 33.830914, 30.250111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109665, 33.572891, 30.412922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571756, 0.056773, -0.818457,
		0.504845, 0.762020, 0.405532,
		0.646704, -0.645059, 0.407029,
		37.303677, 33.379372, 30.535030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514187, 34.192917, 30.306501>,  <36.850983, 33.830914, 30.250111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514187, 34.192917, 30.306501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562798, 33.795963, 30.298372>,  <37.591965, 33.557793, 30.293495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562798, 33.795963, 30.298372>,  <37.514187, 34.192917, 30.306501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562798, 33.795963, 30.298372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577045, 0.087293, -0.812034,
		0.807621, 0.086952, 0.583256,
		0.121523, -0.992380, -0.020325,
		37.599255, 33.498249, 30.292274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142788, 34.127697, 29.832729>,  <37.514187, 34.192917, 30.306501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142788, 34.127697, 29.832729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035019, 33.745571, 29.881378>,  <37.970356, 33.516296, 29.910568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035019, 33.745571, 29.881378>,  <38.142788, 34.127697, 29.832729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035019, 33.745571, 29.881378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624638, -0.269480, -0.732945,
		0.732965, -0.121503, 0.669327,
		-0.269425, -0.955310, 0.121624,
		37.954193, 33.458977, 29.917866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781906, 33.689358, 29.827742>,  <38.142788, 34.127697, 29.832729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781906, 33.689358, 29.827742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478306, 33.448540, 29.728571>,  <38.296146, 33.304050, 29.669069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478306, 33.448540, 29.728571>,  <38.781906, 33.689358, 29.827742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478306, 33.448540, 29.728571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524288, -0.339350, -0.781002,
		0.386062, -0.722763, 0.573209,
		-0.758998, -0.602042, -0.247926,
		38.250607, 33.267925, 29.654194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006638, 33.037086, 29.654751>,  <38.781906, 33.689358, 29.827742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006638, 33.037086, 29.654751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649109, 33.030575, 29.475498>,  <38.434593, 33.026669, 29.367947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649109, 33.030575, 29.475498>,  <39.006638, 33.037086, 29.654751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649109, 33.030575, 29.475498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440477, -0.219212, -0.870589,
		-0.084061, -0.975541, 0.203108,
		-0.893820, -0.016282, -0.448131,
		38.380962, 33.025692, 29.341059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064606, 32.562416, 29.156334>,  <39.006638, 33.037086, 29.654751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064606, 32.562416, 29.156334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752399, 32.777569, 29.028908>,  <38.565075, 32.906662, 28.952452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752399, 32.777569, 29.028908>,  <39.064606, 32.562416, 29.156334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752399, 32.777569, 29.028908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311946, -0.106497, -0.944112,
		-0.541749, -0.836265, -0.084668,
		-0.780511, 0.537884, -0.318564,
		38.518246, 32.938934, 28.933338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793743, 32.177101, 28.576780>,  <39.064606, 32.562416, 29.156334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793743, 32.177101, 28.576780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651627, 32.547047, 28.522522>,  <38.566357, 32.769012, 28.489967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651627, 32.547047, 28.522522>,  <38.793743, 32.177101, 28.576780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651627, 32.547047, 28.522522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057049, -0.166296, -0.984424,
		-0.933014, -0.342017, 0.111846,
		-0.355289, 0.924862, -0.135645,
		38.545040, 32.824505, 28.481829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177246, 32.101379, 28.080282>,  <38.793743, 32.177101, 28.576780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177246, 32.101379, 28.080282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259514, 32.491364, 28.046453>,  <38.308872, 32.725353, 28.026155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259514, 32.491364, 28.046453>,  <38.177246, 32.101379, 28.080282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259514, 32.491364, 28.046453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124110, -0.111709, -0.985960,
		-0.970721, 0.192281, -0.143977,
		0.205665, 0.974961, -0.084574,
		38.321213, 32.783852, 28.021082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806114, 32.405399, 27.480251>,  <38.177246, 32.101379, 28.080282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806114, 32.405399, 27.480251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112206, 32.651791, 27.555088>,  <38.295860, 32.799625, 27.599991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112206, 32.651791, 27.555088>,  <37.806114, 32.405399, 27.480251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112206, 32.651791, 27.555088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306696, -0.093303, -0.947223,
		-0.566012, 0.782219, -0.260316,
		0.765224, 0.615977, 0.187092,
		38.341774, 32.836582, 27.611216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675285, 32.946709, 27.128918>,  <37.806114, 32.405399, 27.480251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675285, 32.946709, 27.128918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069149, 32.970280, 27.194605>,  <38.305470, 32.984421, 27.234018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069149, 32.970280, 27.194605>,  <37.675285, 32.946709, 27.128918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069149, 32.970280, 27.194605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143269, 0.264079, -0.953801,
		-0.099572, 0.962699, 0.251586,
		0.984662, 0.058927, 0.164220,
		38.364548, 32.987957, 27.243872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783600, 33.408161, 26.671421>,  <37.675285, 32.946709, 27.128918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783600, 33.408161, 26.671421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151535, 33.303154, 26.788023>,  <38.372295, 33.240150, 26.857985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151535, 33.303154, 26.788023>,  <37.783600, 33.408161, 26.671421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151535, 33.303154, 26.788023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379366, 0.406132, -0.831347,
		0.099856, 0.875295, 0.473168,
		0.919842, -0.262519, 0.291503,
		38.427486, 33.224400, 26.875473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237316, 33.942783, 26.531950>,  <37.783600, 33.408161, 26.671421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237316, 33.942783, 26.531950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461201, 33.611771, 26.549416>,  <38.595531, 33.413162, 26.559895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461201, 33.611771, 26.549416>,  <38.237316, 33.942783, 26.531950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461201, 33.611771, 26.549416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292547, 0.148024, -0.944725,
		0.775329, 0.541550, 0.324944,
		0.559716, -0.827534, 0.043662,
		38.629116, 33.363510, 26.562513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850658, 34.145599, 26.208378>,  <38.237316, 33.942783, 26.531950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850658, 34.145599, 26.208378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827133, 33.746460, 26.196802>,  <38.813019, 33.506977, 26.189857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827133, 33.746460, 26.196802>,  <38.850658, 34.145599, 26.208378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827133, 33.746460, 26.196802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080463, 0.024155, -0.996465,
		0.995021, -0.060938, 0.078869,
		-0.058817, -0.997849, -0.028938,
		38.809486, 33.447105, 26.188120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354771, 33.952061, 25.782541>,  <38.850658, 34.145599, 26.208378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354771, 33.952061, 25.782541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112732, 33.633617, 25.779125>,  <38.967510, 33.442551, 25.777075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112732, 33.633617, 25.779125>,  <39.354771, 33.952061, 25.782541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112732, 33.633617, 25.779125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079710, -0.049904, -0.995568,
		0.792151, -0.603096, 0.093655,
		-0.605097, -0.796106, -0.008542,
		38.931202, 33.394787, 25.776564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993832, 33.785240, 26.264368>,  <39.354771, 33.952061, 25.782541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993832, 33.785240, 26.264368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284504, 34.052628, 26.201017>,  <40.458908, 34.213058, 26.163008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284504, 34.052628, 26.201017>,  <39.993832, 33.785240, 26.264368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284504, 34.052628, 26.201017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327276, 0.539571, 0.775728,
		0.604004, -0.511876, 0.610870,
		0.726685, 0.668466, -0.158378,
		40.502510, 34.253166, 26.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259853, 33.827579, 26.949503>,  <39.993832, 33.785240, 26.264368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259853, 33.827579, 26.949503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339111, 34.168159, 26.755274>,  <40.386665, 34.372505, 26.638737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339111, 34.168159, 26.755274>,  <40.259853, 33.827579, 26.949503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339111, 34.168159, 26.755274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294273, 0.524215, 0.799126,
		0.934956, -0.015451, 0.354427,
		0.198143, 0.851446, -0.485571,
		40.398556, 34.423592, 26.609602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701733, 34.233273, 27.406424>,  <40.259853, 33.827579, 26.949503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701733, 34.233273, 27.406424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486126, 34.471882, 27.168560>,  <40.356762, 34.615047, 27.025841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486126, 34.471882, 27.168560>,  <40.701733, 34.233273, 27.406424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486126, 34.471882, 27.168560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466481, 0.376427, 0.800436,
		0.701325, 0.708846, 0.075367,
		-0.539016, 0.596523, -0.594661,
		40.324421, 34.650841, 26.990162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878929, 34.875381, 27.608881>,  <40.701733, 34.233273, 27.406424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878929, 34.875381, 27.608881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.523247, 34.898811, 27.427382>,  <40.309837, 34.912868, 27.318481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.523247, 34.898811, 27.427382>,  <40.878929, 34.875381, 27.608881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523247, 34.898811, 27.427382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383888, 0.444016, 0.809617,
		0.248898, 0.894102, -0.372333,
		-0.889202, 0.058578, -0.453750,
		40.256485, 34.916386, 27.291256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690033, 35.588482, 27.801975>,  <40.878929, 34.875381, 27.608881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690033, 35.588482, 27.801975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.352551, 35.408352, 27.685106>,  <40.150063, 35.300274, 27.614985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.352551, 35.408352, 27.685106>,  <40.690033, 35.588482, 27.801975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352551, 35.408352, 27.685106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503058, 0.473355, 0.723096,
		-0.187329, 0.757061, -0.625914,
		-0.843706, -0.450328, -0.292172,
		40.099438, 35.273254, 27.597454>
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
