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
	<24.342592, 34.519703, 35.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294197, 34.916100, 35.149963>,  <24.265160, 35.153938, 35.163746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294197, 34.916100, 35.149963>,  <24.342592, 34.519703, 35.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294197, 34.916100, 35.149963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703030, 0.126386, -0.699839,
		-0.700793, -0.044297, -0.711988,
		-0.120986, 0.990992, 0.057429,
		24.257902, 35.213398, 35.167191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203728, 34.836746, 34.494186>,  <24.342592, 34.519703, 35.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203728, 34.836746, 34.494186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344522, 35.158710, 34.685280>,  <24.428999, 35.351891, 34.799934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344522, 35.158710, 34.685280>,  <24.203728, 34.836746, 34.494186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344522, 35.158710, 34.685280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597167, 0.199909, -0.776806,
		-0.720762, 0.558710, -0.410300,
		0.351986, 0.804910, 0.477730,
		24.450119, 35.400185, 34.828598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440310, 34.922699, 33.792725>,  <24.203728, 34.836746, 34.494186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440310, 34.922699, 33.792725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598528, 34.659565, 33.536350>,  <24.693459, 34.501686, 33.382526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598528, 34.659565, 33.536350>,  <24.440310, 34.922699, 33.792725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598528, 34.659565, 33.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433476, 0.748948, -0.501174,
		0.809716, -0.079593, 0.581398,
		0.395547, -0.657831, -0.640937,
		24.717192, 34.462215, 33.344070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219984, 34.930653, 33.766724>,  <24.440310, 34.922699, 33.792725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219984, 34.930653, 33.766724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081623, 34.810894, 33.411034>,  <24.998606, 34.739040, 33.197620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081623, 34.810894, 33.411034>,  <25.219984, 34.930653, 33.766724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081623, 34.810894, 33.411034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431038, 0.791092, -0.434028,
		0.833400, -0.533420, -0.144592,
		-0.345904, -0.299394, -0.889221,
		24.977852, 34.721077, 33.144268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418228, 35.432625, 33.434944>,  <25.219984, 34.930653, 33.766724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418228, 35.432625, 33.434944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216875, 35.248844, 33.142231>,  <25.096064, 35.138577, 32.966602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216875, 35.248844, 33.142231>,  <25.418228, 35.432625, 33.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216875, 35.248844, 33.142231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209416, 0.756793, -0.619201,
		0.838302, -0.464943, -0.284741,
		-0.503383, -0.459448, -0.731788,
		25.065861, 35.111012, 32.922695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988565, 35.743763, 33.218296>,  <25.418228, 35.432625, 33.434944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988565, 35.743763, 33.218296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229372, 35.720688, 33.536854>,  <26.373856, 35.706841, 33.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229372, 35.720688, 33.536854>,  <25.988565, 35.743763, 33.218296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229372, 35.720688, 33.536854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247667, 0.961687, -0.117553,
		-0.759102, 0.268010, 0.593241,
		0.602017, -0.057691, 0.796396,
		26.409977, 35.703381, 33.775772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881760, 36.395561, 33.675068>,  <25.988565, 35.743763, 33.218296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881760, 36.395561, 33.675068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257040, 36.260197, 33.704071>,  <26.482208, 36.178978, 33.721474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257040, 36.260197, 33.704071>,  <25.881760, 36.395561, 33.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257040, 36.260197, 33.704071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339986, 0.940375, -0.010224,
		-0.064723, 0.034243, 0.997315,
		0.938201, -0.338412, 0.072506,
		26.538500, 36.158672, 33.725822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313046, 36.932613, 34.117256>,  <25.881760, 36.395561, 33.675068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313046, 36.932613, 34.117256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604448, 36.730469, 33.932266>,  <26.779289, 36.609180, 33.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604448, 36.730469, 33.932266>,  <26.313046, 36.932613, 34.117256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604448, 36.730469, 33.932266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547665, 0.835205, -0.049957,
		0.411511, -0.216889, 0.885222,
		0.728507, -0.505363, -0.462479,
		26.823000, 36.578861, 33.793522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939320, 37.157089, 34.404213>,  <26.313046, 36.932613, 34.117256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939320, 37.157089, 34.404213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067596, 36.992298, 34.063053>,  <27.144564, 36.893425, 33.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067596, 36.992298, 34.063053>,  <26.939320, 37.157089, 34.404213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067596, 36.992298, 34.063053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733165, 0.678071, -0.051855,
		0.599687, -0.608684, 0.519499,
		0.320694, -0.411976, -0.852896,
		27.163805, 36.868706, 33.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658539, 37.259007, 34.386047>,  <26.939320, 37.157089, 34.404213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658539, 37.259007, 34.386047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552271, 37.203156, 34.004486>,  <27.488510, 37.169647, 33.775551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552271, 37.203156, 34.004486>,  <27.658539, 37.259007, 34.386047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552271, 37.203156, 34.004486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634469, 0.719653, -0.282042,
		0.725856, -0.680150, -0.102605,
		-0.265671, -0.139622, -0.953900,
		27.472570, 37.161270, 33.718315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309422, 37.180279, 34.061440>,  <27.658539, 37.259007, 34.386047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309422, 37.180279, 34.061440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048624, 37.276775, 33.773911>,  <27.892145, 37.334675, 33.601395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048624, 37.276775, 33.773911>,  <28.309422, 37.180279, 34.061440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048624, 37.276775, 33.773911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652229, 0.661894, -0.369452,
		0.386655, -0.709716, -0.588898,
		-0.651994, 0.241246, -0.718822,
		27.853025, 37.349148, 33.558266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697529, 37.167675, 33.391415>,  <28.309422, 37.180279, 34.061440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697529, 37.167675, 33.391415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375656, 37.387211, 33.300850>,  <28.182533, 37.518932, 33.246513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375656, 37.387211, 33.300850>,  <28.697529, 37.167675, 33.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375656, 37.387211, 33.300850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568122, 0.601080, -0.562086,
		-0.172406, -0.580928, -0.795486,
		-0.804682, 0.548841, -0.226408,
		28.134251, 37.551865, 33.232929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932095, 37.471455, 32.798359>,  <28.697529, 37.167675, 33.391415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932095, 37.471455, 32.798359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616903, 37.690937, 32.910084>,  <28.427788, 37.822628, 32.977119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616903, 37.690937, 32.910084>,  <28.932095, 37.471455, 32.798359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616903, 37.690937, 32.910084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391264, 0.796518, -0.460946,
		-0.475399, -0.253931, -0.842327,
		-0.787977, 0.548705, 0.279310,
		28.380510, 37.855549, 32.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573217, 37.788197, 32.214870>,  <28.932095, 37.471455, 32.798359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573217, 37.788197, 32.214870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505033, 38.017609, 32.535374>,  <28.464123, 38.155254, 32.727676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505033, 38.017609, 32.535374>,  <28.573217, 37.788197, 32.214870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505033, 38.017609, 32.535374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356875, 0.793883, -0.492331,
		-0.918468, 0.202025, -0.340003,
		-0.170460, 0.573529, 0.801254,
		28.453896, 38.189667, 32.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520084, 38.435997, 31.910250>,  <28.573217, 37.788197, 32.214870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520084, 38.435997, 31.910250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512419, 38.541656, 32.295967>,  <28.507820, 38.605053, 32.527397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512419, 38.541656, 32.295967>,  <28.520084, 38.435997, 31.910250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512419, 38.541656, 32.295967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352692, 0.904254, -0.240692,
		-0.935543, 0.335486, -0.110492,
		-0.019164, 0.264148, 0.964292,
		28.506670, 38.620899, 32.585255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172798, 39.106785, 31.918829>,  <28.520084, 38.435997, 31.910250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172798, 39.106785, 31.918829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409977, 39.065281, 32.238239>,  <28.552284, 39.040379, 32.429886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409977, 39.065281, 32.238239>,  <28.172798, 39.106785, 31.918829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409977, 39.065281, 32.238239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422379, 0.884367, -0.198724,
		-0.685571, 0.455114, 0.568211,
		0.592949, -0.103761, 0.798527,
		28.587862, 39.034153, 32.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132221, 39.746033, 32.251328>,  <28.172798, 39.106785, 31.918829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132221, 39.746033, 32.251328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481277, 39.576477, 32.348339>,  <28.690710, 39.474743, 32.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481277, 39.576477, 32.348339>,  <28.132221, 39.746033, 32.251328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481277, 39.576477, 32.348339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469680, 0.864504, -0.178978,
		-0.133801, 0.270095, 0.953492,
		0.872639, -0.423888, 0.242529,
		28.743069, 39.449310, 32.421097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500648, 40.288544, 32.604301>,  <28.132221, 39.746033, 32.251328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500648, 40.288544, 32.604301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791252, 40.017185, 32.560566>,  <28.965614, 39.854370, 32.534325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791252, 40.017185, 32.560566>,  <28.500648, 40.288544, 32.604301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791252, 40.017185, 32.560566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666149, 0.734371, -0.130173,
		0.168607, 0.021734, 0.985444,
		0.726510, -0.678401, -0.109342,
		29.009205, 39.813663, 32.527763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023918, 40.499340, 33.031857>,  <28.500648, 40.288544, 32.604301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023918, 40.499340, 33.031857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210012, 40.264000, 32.767311>,  <29.321669, 40.122795, 32.608585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210012, 40.264000, 32.767311>,  <29.023918, 40.499340, 33.031857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210012, 40.264000, 32.767311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700888, 0.701187, -0.130737,
		0.540659, -0.402719, 0.738583,
		0.465234, -0.588348, -0.661365,
		29.349583, 40.087494, 32.568901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721849, 40.451107, 33.265331>,  <29.023918, 40.499340, 33.031857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721849, 40.451107, 33.265331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692974, 40.362301, 32.876385>,  <29.675650, 40.309017, 32.643017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692974, 40.362301, 32.876385>,  <29.721849, 40.451107, 33.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692974, 40.362301, 32.876385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688972, 0.693831, -0.209564,
		0.721184, -0.685062, 0.102875,
		-0.072187, -0.222012, -0.972368,
		29.671318, 40.295696, 32.584675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382290, 40.513256, 33.025055>,  <29.721849, 40.451107, 33.265331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382290, 40.513256, 33.025055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147154, 40.540150, 32.702583>,  <30.006071, 40.556286, 32.509102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147154, 40.540150, 32.702583>,  <30.382290, 40.513256, 33.025055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147154, 40.540150, 32.702583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654034, 0.625999, -0.424694,
		0.476112, -0.776920, -0.411962,
		-0.587841, 0.067236, -0.806178,
		29.970802, 40.560322, 32.460732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719250, 40.336521, 32.352791>,  <30.382290, 40.513256, 33.025055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719250, 40.336521, 32.352791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419710, 40.585484, 32.261719>,  <30.239986, 40.734859, 32.207077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419710, 40.585484, 32.261719>,  <30.719250, 40.336521, 32.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419710, 40.585484, 32.261719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610535, 0.514233, -0.602338,
		-0.257818, -0.590067, -0.765083,
		-0.748850, 0.622403, -0.227678,
		30.195055, 40.772205, 32.193417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956753, 40.571415, 31.752098>,  <30.719250, 40.336521, 32.352791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956753, 40.571415, 31.752098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660501, 40.827171, 31.834709>,  <30.482752, 40.980625, 31.884275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660501, 40.827171, 31.834709>,  <30.956753, 40.571415, 31.752098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660501, 40.827171, 31.834709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452997, 0.702161, -0.549330,
		-0.496252, -0.313292, -0.809680,
		-0.740626, 0.639389, 0.206529,
		30.438314, 41.018990, 31.896667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106600, 41.151062, 31.279551>,  <30.956753, 40.571415, 31.752098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106600, 41.151062, 31.279551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794558, 41.296448, 31.483248>,  <30.607332, 41.383678, 31.605467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794558, 41.296448, 31.483248>,  <31.106600, 41.151062, 31.279551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794558, 41.296448, 31.483248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022891, 0.829984, -0.557317,
		-0.625226, -0.423110, -0.655797,
		-0.780108, 0.363461, 0.509243,
		30.560526, 41.405487, 31.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608580, 41.389545, 30.784222>,  <31.106600, 41.151062, 31.279551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608580, 41.389545, 30.784222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597477, 41.572201, 31.139910>,  <30.590816, 41.681793, 31.353323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597477, 41.572201, 31.139910>,  <30.608580, 41.389545, 30.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597477, 41.572201, 31.139910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336944, 0.841778, -0.421756,
		-0.941115, 0.287912, -0.177224,
		-0.027755, 0.456636, 0.889221,
		30.589151, 41.709190, 31.406675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171228, 42.081478, 30.747765>,  <30.608580, 41.389545, 30.784222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171228, 42.081478, 30.747765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464424, 42.102001, 31.019087>,  <30.640341, 42.114315, 31.181879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464424, 42.102001, 31.019087>,  <30.171228, 42.081478, 30.747765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464424, 42.102001, 31.019087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278093, 0.887414, -0.367643,
		-0.620801, 0.458109, 0.636194,
		0.732987, 0.051312, 0.678304,
		30.684320, 42.117393, 31.222578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054203, 42.617840, 31.158417>,  <30.171228, 42.081478, 30.747765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054203, 42.617840, 31.158417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445272, 42.537266, 31.134497>,  <30.679914, 42.488922, 31.120146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445272, 42.537266, 31.134497>,  <30.054203, 42.617840, 31.158417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445272, 42.537266, 31.134497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174878, 0.937812, -0.299877,
		0.116485, 0.282725, 0.952102,
		0.977675, -0.201433, -0.059799,
		30.738575, 42.476837, 31.116556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461147, 42.901142, 31.626198>,  <30.054203, 42.617840, 31.158417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461147, 42.901142, 31.626198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671638, 42.862408, 31.288275>,  <30.797934, 42.839165, 31.085520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671638, 42.862408, 31.288275>,  <30.461147, 42.901142, 31.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671638, 42.862408, 31.288275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322386, 0.942046, 0.092828,
		0.786860, -0.321204, 0.526953,
		0.526231, -0.096840, -0.844810,
		30.829508, 42.833355, 31.034832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465906, 43.641117, 31.649986>,  <30.461147, 42.901142, 31.626198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465906, 43.641117, 31.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513851, 43.459648, 32.003216>,  <30.542618, 43.350769, 32.215153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513851, 43.459648, 32.003216>,  <30.465906, 43.641117, 31.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513851, 43.459648, 32.003216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125974, 0.875346, 0.466797,
		-0.984766, -0.167195, 0.047769,
		0.119861, -0.453668, 0.883074,
		30.549809, 43.323547, 32.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366137, 44.125160, 32.109341>,  <30.465906, 43.641117, 31.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366137, 44.125160, 32.109341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439606, 43.830662, 32.369865>,  <30.483688, 43.653965, 32.526180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439606, 43.830662, 32.369865>,  <30.366137, 44.125160, 32.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439606, 43.830662, 32.369865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102816, 0.644563, 0.757606,
		-0.977595, -0.206119, 0.042692,
		0.183675, -0.736243, 0.651315,
		30.494709, 43.609791, 32.565258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060354, 44.634541, 32.651432>,  <30.366137, 44.125160, 32.109341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060354, 44.634541, 32.651432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041231, 44.948181, 32.403915>,  <30.029757, 45.136364, 32.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041231, 44.948181, 32.403915>,  <30.060354, 44.634541, 32.651432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041231, 44.948181, 32.403915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709452, -0.409431, -0.573623,
		-0.703130, -0.466425, -0.536708,
		-0.047807, 0.784101, -0.618790,
		30.026890, 45.183411, 32.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522388, 44.119942, 32.399689>,  <30.060354, 44.634541, 32.651432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522388, 44.119942, 32.399689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481327, 44.233513, 32.018353>,  <29.456690, 44.301655, 31.789553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481327, 44.233513, 32.018353>,  <29.522388, 44.119942, 32.399689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481327, 44.233513, 32.018353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370240, -0.900443, -0.228305,
		-0.923247, 0.329527, 0.197554,
		-0.102653, 0.283924, -0.953336,
		29.450531, 44.318691, 31.732351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972233, 43.915829, 32.994122>,  <29.522388, 44.119942, 32.399689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972233, 43.915829, 32.994122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831919, 44.154778, 33.282593>,  <29.747730, 44.298145, 33.455677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831919, 44.154778, 33.282593>,  <29.972233, 43.915829, 32.994122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831919, 44.154778, 33.282593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658023, 0.390711, -0.643701,
		-0.666299, -0.700354, 0.256026,
		-0.350786, 0.597368, 0.721180,
		29.726683, 44.333988, 33.498947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335567, 43.592697, 33.450836>,  <29.972233, 43.915829, 32.994122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335567, 43.592697, 33.450836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595623, 43.698544, 33.735737>,  <30.751656, 43.762051, 33.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595623, 43.698544, 33.735737>,  <30.335567, 43.592697, 33.450836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595623, 43.698544, 33.735737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188347, -0.852014, 0.488465,
		0.736101, -0.451720, -0.504088,
		0.650139, 0.264616, 0.712248,
		30.790665, 43.777927, 33.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988165, 43.257992, 33.522827>,  <30.335567, 43.592697, 33.450836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988165, 43.257992, 33.522827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887577, 43.386822, 33.887909>,  <30.827225, 43.464119, 34.106956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887577, 43.386822, 33.887909>,  <30.988165, 43.257992, 33.522827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887577, 43.386822, 33.887909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004257, -0.943368, 0.331722,
		0.967855, 0.079533, 0.238602,
		-0.251472, 0.322074, 0.912705,
		30.812136, 43.483444, 34.161720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585773, 43.102917, 34.015770>,  <30.988165, 43.257992, 33.522827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585773, 43.102917, 34.015770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203871, 43.100670, 34.134705>,  <30.974730, 43.099323, 34.206066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203871, 43.100670, 34.134705>,  <31.585773, 43.102917, 34.015770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203871, 43.100670, 34.134705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058166, -0.984039, 0.168178,
		0.291647, 0.177864, 0.939844,
		-0.954756, -0.005619, 0.297338,
		30.917444, 43.098984, 34.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519323, 42.692707, 34.747368>,  <31.585773, 43.102917, 34.015770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519323, 42.692707, 34.747368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141113, 42.677612, 34.618027>,  <30.914186, 42.668556, 34.540421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141113, 42.677612, 34.618027>,  <31.519323, 42.692707, 34.747368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141113, 42.677612, 34.618027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118443, -0.885308, 0.449668,
		-0.303241, 0.463471, 0.832610,
		-0.945524, -0.037741, -0.323356,
		30.857456, 42.666290, 34.521019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057076, 42.524845, 35.390102>,  <31.519323, 42.692707, 34.747368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057076, 42.524845, 35.390102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896244, 42.395065, 35.047623>,  <30.799746, 42.317200, 34.842136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896244, 42.395065, 35.047623>,  <31.057076, 42.524845, 35.390102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896244, 42.395065, 35.047623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142630, -0.901503, 0.408594,
		-0.904428, 0.286405, 0.316198,
		-0.402077, -0.324445, -0.856195,
		30.775621, 42.297733, 34.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627811, 42.041260, 35.564861>,  <31.057076, 42.524845, 35.390102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627811, 42.041260, 35.564861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609224, 41.956127, 35.174469>,  <30.598072, 41.905048, 34.940231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609224, 41.956127, 35.174469>,  <30.627811, 42.041260, 35.564861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609224, 41.956127, 35.174469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305017, -0.927354, 0.216745,
		-0.951213, 0.307764, -0.021824,
		-0.046468, -0.212827, -0.975984,
		30.595284, 41.892281, 34.881672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007973, 41.696945, 35.517151>,  <30.627811, 42.041260, 35.564861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007973, 41.696945, 35.517151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199287, 41.623020, 35.173737>,  <30.314075, 41.578663, 34.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199287, 41.623020, 35.173737>,  <30.007973, 41.696945, 35.517151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199287, 41.623020, 35.173737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340582, -0.940130, 0.012643,
		-0.809472, 0.286356, -0.512596,
		0.478287, -0.184815, -0.858537,
		30.342773, 41.567577, 34.916176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516916, 41.423206, 34.983761>,  <30.007973, 41.696945, 35.517151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516916, 41.423206, 34.983761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880993, 41.292923, 34.881413>,  <30.099438, 41.214752, 34.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880993, 41.292923, 34.881413>,  <29.516916, 41.423206, 34.983761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880993, 41.292923, 34.881413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304163, -0.944922, 0.120860,
		-0.281141, -0.032179, -0.959127,
		0.910189, -0.325710, -0.255869,
		30.154049, 41.195210, 34.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344522, 40.795998, 34.547863>,  <29.516916, 41.423206, 34.983761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344522, 40.795998, 34.547863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726830, 40.779263, 34.664314>,  <29.956213, 40.769222, 34.734184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726830, 40.779263, 34.664314>,  <29.344522, 40.795998, 34.547863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726830, 40.779263, 34.664314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095506, -0.980340, 0.172661,
		0.278183, -0.192828, -0.940973,
		0.955768, -0.041837, 0.291130,
		30.013559, 40.766712, 34.751652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551685, 40.275536, 34.218876>,  <29.344522, 40.795998, 34.547863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551685, 40.275536, 34.218876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813622, 40.302101, 34.520012>,  <29.970783, 40.318039, 34.700695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813622, 40.302101, 34.520012>,  <29.551685, 40.275536, 34.218876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813622, 40.302101, 34.520012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138292, -0.968784, 0.205751,
		0.743008, -0.238846, -0.625213,
		0.654839, 0.066413, 0.752845,
		30.010073, 40.322025, 34.745865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015791, 39.789196, 34.111786>,  <29.551685, 40.275536, 34.218876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015791, 39.789196, 34.111786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072865, 39.863113, 34.500732>,  <30.107109, 39.907463, 34.734100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072865, 39.863113, 34.500732>,  <30.015791, 39.789196, 34.111786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072865, 39.863113, 34.500732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102656, -0.974355, 0.200237,
		0.984431, -0.128389, -0.120053,
		0.142682, 0.184796, 0.972364,
		30.115669, 39.918552, 34.792442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325769, 39.261562, 34.269371>,  <30.015791, 39.789196, 34.111786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325769, 39.261562, 34.269371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209576, 39.382088, 34.632652>,  <30.139860, 39.454403, 34.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209576, 39.382088, 34.632652>,  <30.325769, 39.261562, 34.269371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209576, 39.382088, 34.632652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152983, -0.951543, 0.266763,
		0.944571, -0.061449, 0.322504,
		-0.290484, 0.301314, 0.908201,
		30.122431, 39.472481, 34.905113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794378, 38.959572, 34.739079>,  <30.325769, 39.261562, 34.269371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794378, 38.959572, 34.739079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441784, 39.046535, 34.906754>,  <30.230228, 39.098713, 35.007359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441784, 39.046535, 34.906754>,  <30.794378, 38.959572, 34.739079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441784, 39.046535, 34.906754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046929, -0.923643, 0.380369,
		0.469876, 0.315617, 0.824380,
		-0.881484, 0.217414, 0.419186,
		30.177338, 39.111759, 35.032509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734230, 38.447315, 35.466904>,  <30.794378, 38.959572, 34.739079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734230, 38.447315, 35.466904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360867, 38.581421, 35.415764>,  <30.136848, 38.661884, 35.385082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360867, 38.581421, 35.415764>,  <30.734230, 38.447315, 35.466904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360867, 38.581421, 35.415764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357667, -0.897798, 0.256970,
		-0.028629, 0.285585, 0.957926,
		-0.933410, 0.335262, -0.127847,
		30.080843, 38.681999, 35.377411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407663, 38.127281, 35.964417>,  <30.734230, 38.447315, 35.466904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407663, 38.127281, 35.964417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122553, 38.220627, 35.699844>,  <29.951487, 38.276634, 35.541100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122553, 38.220627, 35.699844>,  <30.407663, 38.127281, 35.964417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122553, 38.220627, 35.699844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513736, -0.815732, 0.265812,
		-0.477519, 0.529266, 0.701323,
		-0.712776, 0.233365, -0.661431,
		29.908720, 38.290638, 35.501415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811813, 37.986481, 36.399364>,  <30.407663, 38.127281, 35.964417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811813, 37.986481, 36.399364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710199, 37.960876, 36.013336>,  <29.649231, 37.945515, 35.781719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710199, 37.960876, 36.013336>,  <29.811813, 37.986481, 36.399364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710199, 37.960876, 36.013336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622878, -0.752518, 0.213869,
		-0.739926, 0.655454, 0.151295,
		-0.254034, -0.064009, -0.965075,
		29.633989, 37.941673, 35.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027538, 37.837303, 36.435387>,  <29.811813, 37.986481, 36.399364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027538, 37.837303, 36.435387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173191, 37.734489, 36.077316>,  <29.260584, 37.672802, 35.862473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173191, 37.734489, 36.077316>,  <29.027538, 37.837303, 36.435387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173191, 37.734489, 36.077316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519842, -0.853600, 0.033642,
		-0.772769, 0.453099, -0.444443,
		0.364134, -0.257037, -0.895175,
		29.282431, 37.657379, 35.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417912, 37.703701, 36.157341>,  <29.027538, 37.837303, 36.435387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417912, 37.703701, 36.157341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722061, 37.549545, 35.948223>,  <28.904551, 37.457054, 35.822754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722061, 37.549545, 35.948223>,  <28.417912, 37.703701, 36.157341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722061, 37.549545, 35.948223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508551, -0.853957, -0.110151,
		-0.403991, 0.349622, -0.845314,
		0.760373, -0.385386, -0.522792,
		28.950172, 37.433929, 35.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147923, 37.388577, 35.677948>,  <28.417912, 37.703701, 36.157341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147923, 37.388577, 35.677948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506363, 37.219398, 35.731804>,  <28.721426, 37.117893, 35.764118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506363, 37.219398, 35.731804>,  <28.147923, 37.388577, 35.677948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506363, 37.219398, 35.731804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408741, -0.904575, -0.121145,
		0.173026, 0.053527, -0.983462,
		0.896099, -0.422942, 0.134636,
		28.775192, 37.092514, 35.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268070, 37.064274, 35.039066>,  <28.147923, 37.388577, 35.677948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268070, 37.064274, 35.039066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449158, 36.873310, 35.340298>,  <28.557810, 36.758732, 35.521038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449158, 36.873310, 35.340298>,  <28.268070, 37.064274, 35.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449158, 36.873310, 35.340298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409398, -0.861591, -0.300091,
		0.792112, -0.172452, -0.585508,
		0.452717, -0.477411, 0.753077,
		28.584972, 36.730087, 35.566219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413589, 36.427380, 34.646904>,  <28.268070, 37.064274, 35.039066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413589, 36.427380, 34.646904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511744, 36.346561, 35.026157>,  <28.570637, 36.298073, 35.253712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511744, 36.346561, 35.026157>,  <28.413589, 36.427380, 34.646904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511744, 36.346561, 35.026157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333773, -0.935851, -0.113042,
		0.910155, -0.288723, -0.297081,
		0.245385, -0.202043, 0.948137,
		28.585360, 36.285950, 35.310600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013760, 36.000042, 34.615673>,  <28.413589, 36.427380, 34.646904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013760, 36.000042, 34.615673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843821, 35.941559, 34.973026>,  <28.741858, 35.906471, 35.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843821, 35.941559, 34.973026>,  <29.013760, 36.000042, 34.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843821, 35.941559, 34.973026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240437, -0.933203, -0.267060,
		0.872752, -0.328262, 0.361315,
		-0.424846, -0.146204, 0.893382,
		28.716368, 35.897697, 35.241039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404034, 35.452946, 34.940811>,  <29.013760, 36.000042, 34.615673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404034, 35.452946, 34.940811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041807, 35.464775, 35.110081>,  <28.824471, 35.471874, 35.211643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041807, 35.464775, 35.110081>,  <29.404034, 35.452946, 34.940811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041807, 35.464775, 35.110081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164694, -0.943827, -0.286472,
		0.390927, -0.329113, 0.859570,
		-0.905568, 0.029577, 0.423170,
		28.770138, 35.473648, 35.237030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373777, 34.775921, 35.312138>,  <29.404034, 35.452946, 34.940811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373777, 34.775921, 35.312138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004457, 34.922955, 35.267601>,  <28.782866, 35.011177, 35.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004457, 34.922955, 35.267601>,  <29.373777, 34.775921, 35.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004457, 34.922955, 35.267601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272943, -0.831916, -0.483134,
		-0.270224, -0.415686, 0.868438,
		-0.923299, 0.367588, -0.111345,
		28.727468, 35.033230, 35.234196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794329, 35.190178, 35.842129>,  <29.373777, 34.775921, 35.312138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794329, 35.190178, 35.842129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755310, 35.100708, 36.230038>,  <29.731899, 35.047028, 36.462784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755310, 35.100708, 36.230038>,  <29.794329, 35.190178, 35.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755310, 35.100708, 36.230038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955739, -0.292822, 0.028597,
		0.277574, 0.929638, 0.242335,
		-0.097546, -0.223672, 0.969771,
		29.726046, 35.033607, 36.520969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304047, 35.609123, 36.139668>,  <29.794329, 35.190178, 35.842129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304047, 35.609123, 36.139668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199944, 35.254185, 36.291916>,  <30.137482, 35.041222, 36.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199944, 35.254185, 36.291916>,  <30.304047, 35.609123, 36.139668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199944, 35.254185, 36.291916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930927, -0.335212, -0.144943,
		0.256205, 0.316611, 0.913300,
		-0.260258, -0.887350, 0.380625,
		30.121866, 34.987980, 36.406105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700420, 35.356197, 36.641899>,  <30.304047, 35.609123, 36.139668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700420, 35.356197, 36.641899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539753, 35.014736, 36.509266>,  <30.443354, 34.809860, 36.429688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539753, 35.014736, 36.509266>,  <30.700420, 35.356197, 36.641899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539753, 35.014736, 36.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773773, -0.510019, 0.375706,
		-0.489835, -0.105663, 0.865388,
		-0.401667, -0.853648, -0.331584,
		30.419252, 34.758640, 36.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538681, 34.774189, 37.143864>,  <30.700420, 35.356197, 36.641899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538681, 34.774189, 37.143864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654503, 34.638824, 36.785728>,  <30.723997, 34.557606, 36.570847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654503, 34.638824, 36.785728>,  <30.538681, 34.774189, 37.143864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654503, 34.638824, 36.785728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873860, -0.288208, 0.391542,
		-0.390546, -0.895776, 0.212271,
		0.289556, -0.338410, -0.895341,
		30.741369, 34.537300, 36.517128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798182, 34.014614, 37.109425>,  <30.538681, 34.774189, 37.143864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798182, 34.014614, 37.109425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974163, 34.246155, 36.834801>,  <31.079752, 34.385078, 36.670025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974163, 34.246155, 36.834801>,  <30.798182, 34.014614, 37.109425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974163, 34.246155, 36.834801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896860, -0.244376, 0.368677,
		0.045631, -0.777951, -0.626665,
		0.439955, 0.578854, -0.686562,
		31.106150, 34.419811, 36.628834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356432, 33.756054, 36.782127>,  <30.798182, 34.014614, 37.109425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356432, 33.756054, 36.782127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451490, 34.143559, 36.753784>,  <31.508526, 34.376060, 36.736778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451490, 34.143559, 36.753784>,  <31.356432, 33.756054, 36.782127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451490, 34.143559, 36.753784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935426, -0.208592, 0.285425,
		0.261729, -0.134111, -0.955778,
		0.237646, 0.968764, -0.070857,
		31.522785, 34.434189, 36.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993944, 33.929546, 36.314945>,  <31.356432, 33.756054, 36.782127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993944, 33.929546, 36.314945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943098, 34.172543, 36.628582>,  <31.912590, 34.318340, 36.816765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943098, 34.172543, 36.628582>,  <31.993944, 33.929546, 36.314945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943098, 34.172543, 36.628582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856097, -0.332037, 0.396042,
		0.500939, 0.721599, -0.477865,
		-0.127114, 0.607492, 0.784089,
		31.904964, 34.354790, 36.863808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309284, 33.470657, 35.800259>,  <31.993944, 33.929546, 36.314945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309284, 33.470657, 35.800259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638874, 33.360332, 35.602272>,  <32.836628, 33.294136, 35.483482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638874, 33.360332, 35.602272>,  <32.309284, 33.470657, 35.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638874, 33.360332, 35.602272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506193, -0.034223, 0.861741,
		-0.254617, -0.960602, 0.111415,
		0.823977, -0.275812, -0.494964,
		32.886066, 33.277588, 35.453781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574226, 32.945614, 36.149761>,  <32.309284, 33.470657, 35.800259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574226, 32.945614, 36.149761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883911, 33.101273, 35.950100>,  <33.069721, 33.194668, 35.830303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883911, 33.101273, 35.950100>,  <32.574226, 32.945614, 36.149761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883911, 33.101273, 35.950100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534389, 0.020679, 0.844986,
		0.339143, -0.920945, -0.191944,
		0.774216, 0.389144, -0.499156,
		33.116177, 33.218014, 35.800354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130653, 32.763954, 36.618164>,  <32.574226, 32.945614, 36.149761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130653, 32.763954, 36.618164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309547, 33.012329, 36.360664>,  <33.416885, 33.161354, 36.206165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309547, 33.012329, 36.360664>,  <33.130653, 32.763954, 36.618164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309547, 33.012329, 36.360664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641873, 0.278418, 0.714480,
		0.622879, -0.732750, -0.274043,
		0.447236, 0.620936, -0.643754,
		33.443718, 33.198608, 36.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822674, 32.618858, 36.532326>,  <33.130653, 32.763954, 36.618164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822674, 32.618858, 36.532326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797791, 33.011059, 36.457764>,  <33.782860, 33.246380, 36.413025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797791, 33.011059, 36.457764>,  <33.822674, 32.618858, 36.532326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797791, 33.011059, 36.457764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748933, 0.169316, 0.640649,
		0.659719, -0.099752, -0.744863,
		-0.062211, 0.980501, -0.186409,
		33.779129, 33.305210, 36.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535641, 32.811485, 36.491982>,  <33.822674, 32.618858, 36.532326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535641, 32.811485, 36.491982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341724, 33.159641, 36.526379>,  <34.225372, 33.368534, 36.547016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341724, 33.159641, 36.526379>,  <34.535641, 32.811485, 36.491982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341724, 33.159641, 36.526379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547249, 0.225168, 0.806113,
		0.682270, 0.437858, -0.585480,
		-0.484795, 0.870390, 0.085992,
		34.196285, 33.420757, 36.552177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001934, 33.246864, 36.446102>,  <34.535641, 32.811485, 36.491982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001934, 33.246864, 36.446102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721325, 33.449081, 36.647018>,  <34.552959, 33.570412, 36.767567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721325, 33.449081, 36.647018>,  <35.001934, 33.246864, 36.446102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721325, 33.449081, 36.647018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668991, 0.224262, 0.708631,
		0.245597, 0.833148, -0.495527,
		-0.701522, 0.505541, 0.502290,
		34.510868, 33.600742, 36.797707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296078, 33.913120, 36.702816>,  <35.001934, 33.246864, 36.446102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296078, 33.913120, 36.702816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970669, 33.847256, 36.925911>,  <34.775425, 33.807739, 37.059769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970669, 33.847256, 36.925911>,  <35.296078, 33.913120, 36.702816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970669, 33.847256, 36.925911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466801, 0.387074, 0.795154,
		-0.346815, 0.907227, -0.238030,
		-0.813521, -0.164659, 0.557738,
		34.726612, 33.797859, 37.093231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406990, 34.360245, 37.177605>,  <35.296078, 33.913120, 36.702816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406990, 34.360245, 37.177605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101990, 34.166512, 37.349190>,  <34.918987, 34.050270, 37.452141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101990, 34.166512, 37.349190>,  <35.406990, 34.360245, 37.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101990, 34.166512, 37.349190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414863, 0.142750, 0.898616,
		-0.496465, 0.863159, 0.092086,
		-0.762503, -0.484335, 0.428963,
		34.873238, 34.021210, 37.477879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204601, 34.790970, 37.736935>,  <35.406990, 34.360245, 37.177605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204601, 34.790970, 37.736935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094471, 34.414715, 37.816326>,  <35.028393, 34.188961, 37.863960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094471, 34.414715, 37.816326>,  <35.204601, 34.790970, 37.736935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094471, 34.414715, 37.816326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520190, 0.027856, 0.853596,
		-0.808455, 0.338264, 0.481642,
		-0.275324, -0.940639, 0.198482,
		35.011875, 34.132523, 37.875870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054668, 34.844524, 38.378887>,  <35.204601, 34.790970, 37.736935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054668, 34.844524, 38.378887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092945, 34.448746, 38.335373>,  <35.115910, 34.211277, 38.309265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092945, 34.448746, 38.335373>,  <35.054668, 34.844524, 38.378887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092945, 34.448746, 38.335373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501588, -0.046471, 0.863858,
		-0.859799, -0.137226, 0.491849,
		0.095687, -0.989449, -0.108786,
		35.121651, 34.151913, 38.302738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609306, 34.465450, 38.900932>,  <35.054668, 34.844524, 38.378887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609306, 34.465450, 38.900932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899231, 34.218822, 38.777977>,  <35.073185, 34.070847, 38.704205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899231, 34.218822, 38.777977>,  <34.609306, 34.465450, 38.900932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899231, 34.218822, 38.777977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204489, -0.233528, 0.950604,
		-0.657898, -0.751868, -0.043182,
		0.724814, -0.616570, -0.307387,
		35.116676, 34.033852, 38.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603348, 33.914078, 39.459003>,  <34.609306, 34.465450, 38.900932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603348, 33.914078, 39.459003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948902, 33.888271, 39.259190>,  <35.156235, 33.872787, 39.139301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948902, 33.888271, 39.259190>,  <34.603348, 33.914078, 39.459003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948902, 33.888271, 39.259190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463705, -0.285368, 0.838775,
		-0.196669, -0.956244, -0.216608,
		0.863886, -0.064518, -0.499538,
		35.208069, 33.868916, 39.109329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962914, 33.406891, 39.725456>,  <34.603348, 33.914078, 39.459003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962914, 33.406891, 39.725456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279156, 33.599472, 39.574120>,  <35.468903, 33.715023, 39.483318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279156, 33.599472, 39.574120>,  <34.962914, 33.406891, 39.725456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279156, 33.599472, 39.574120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552292, -0.293872, 0.780136,
		0.264418, -0.825735, -0.498242,
		0.790605, 0.481457, -0.378342,
		35.516338, 33.743908, 39.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563953, 32.900017, 39.691963>,  <34.962914, 33.406891, 39.725456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563953, 32.900017, 39.691963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705940, 33.273849, 39.682491>,  <35.791130, 33.498150, 39.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705940, 33.273849, 39.682491>,  <35.563953, 32.900017, 39.691963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705940, 33.273849, 39.682491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622686, -0.217456, 0.751648,
		0.697326, -0.281553, -0.659139,
		0.354962, 0.934581, -0.023682,
		35.812428, 33.554222, 39.675388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251656, 32.699970, 39.862183>,  <35.563953, 32.900017, 39.691963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251656, 32.699970, 39.862183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224945, 33.098740, 39.878620>,  <36.208920, 33.338001, 39.888481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224945, 33.098740, 39.878620>,  <36.251656, 32.699970, 39.862183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224945, 33.098740, 39.878620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493727, -0.002771, 0.869612,
		0.867049, 0.078356, -0.492022,
		-0.066776, 0.996922, 0.041089,
		36.204910, 33.397816, 39.890945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983288, 32.931229, 39.948196>,  <36.251656, 32.699970, 39.862183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983288, 32.931229, 39.948196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729153, 33.205036, 40.091187>,  <36.576672, 33.369320, 40.176979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729153, 33.205036, 40.091187>,  <36.983288, 32.931229, 39.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729153, 33.205036, 40.091187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392187, -0.112755, 0.912949,
		0.665234, 0.720226, -0.196821,
		-0.635337, 0.684515, 0.357472,
		36.538551, 33.410389, 40.198429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347363, 33.365398, 40.403336>,  <36.983288, 32.931229, 39.948196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347363, 33.365398, 40.403336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960178, 33.387409, 40.501331>,  <36.727867, 33.400616, 40.560127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960178, 33.387409, 40.501331>,  <37.347363, 33.365398, 40.403336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960178, 33.387409, 40.501331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229772, -0.199317, 0.952616,
		0.101249, 0.978389, 0.180288,
		-0.967964, 0.055026, 0.244987,
		36.669788, 33.403915, 40.574829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347519, 33.809982, 40.917305>,  <37.347363, 33.365398, 40.403336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347519, 33.809982, 40.917305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006981, 33.604145, 40.958111>,  <36.802658, 33.480644, 40.982594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006981, 33.604145, 40.958111>,  <37.347519, 33.809982, 40.917305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006981, 33.604145, 40.958111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204469, -0.146410, 0.967862,
		-0.483116, 0.844844, 0.229863,
		-0.851347, -0.514590, 0.102011,
		36.751575, 33.449768, 40.988716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115650, 33.998516, 41.608570>,  <37.347519, 33.809982, 40.917305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115650, 33.998516, 41.608570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872845, 33.693066, 41.520561>,  <36.727161, 33.509796, 41.467754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872845, 33.693066, 41.520561>,  <37.115650, 33.998516, 41.608570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872845, 33.693066, 41.520561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036638, -0.303466, 0.952138,
		-0.793847, 0.569898, 0.212185,
		-0.607012, -0.763626, -0.220026,
		36.690742, 33.463978, 41.454552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659004, 33.940178, 42.185280>,  <37.115650, 33.998516, 41.608570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659004, 33.940178, 42.185280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652058, 33.570389, 42.032940>,  <36.647888, 33.348515, 41.941536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652058, 33.570389, 42.032940>,  <36.659004, 33.940178, 42.185280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652058, 33.570389, 42.032940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270445, -0.371050, 0.888359,
		-0.962579, -0.087567, 0.256465,
		-0.017370, -0.924475, -0.380847,
		36.646847, 33.293045, 41.918686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328156, 33.637428, 42.626236>,  <36.659004, 33.940178, 42.185280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328156, 33.637428, 42.626236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521656, 33.347694, 42.429737>,  <36.637756, 33.173855, 42.311840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521656, 33.347694, 42.429737>,  <36.328156, 33.637428, 42.626236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521656, 33.347694, 42.429737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090869, -0.516688, 0.851338,
		-0.870475, -0.456476, -0.184130,
		0.483753, -0.724336, -0.491244,
		36.666782, 33.130394, 42.282364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105259, 33.011639, 42.829220>,  <36.328156, 33.637428, 42.626236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105259, 33.011639, 42.829220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470207, 32.921890, 42.692261>,  <36.689175, 32.868042, 42.610085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470207, 32.921890, 42.692261>,  <36.105259, 33.011639, 42.829220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470207, 32.921890, 42.692261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199765, -0.486050, 0.850793,
		-0.357315, -0.844639, -0.398637,
		0.912371, -0.224368, -0.342402,
		36.743919, 32.854580, 42.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366325, 32.386429, 43.105694>,  <36.105259, 33.011639, 42.829220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366325, 32.386429, 43.105694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714443, 32.552067, 42.999027>,  <36.923313, 32.651447, 42.935028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714443, 32.552067, 42.999027>,  <36.366325, 32.386429, 43.105694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714443, 32.552067, 42.999027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359983, -0.165261, 0.918206,
		0.336151, -0.895107, -0.292891,
		0.870296, 0.414092, -0.266671,
		36.975533, 32.676292, 42.919025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822136, 31.902954, 43.408680>,  <36.366325, 32.386429, 43.105694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822136, 31.902954, 43.408680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056690, 32.217812, 43.332195>,  <37.197422, 32.406727, 43.286304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056690, 32.217812, 43.332195>,  <36.822136, 31.902954, 43.408680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056690, 32.217812, 43.332195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488409, -0.155249, 0.858693,
		0.646229, -0.596912, -0.475483,
		0.586383, 0.787143, -0.191211,
		37.232605, 32.453953, 43.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540939, 31.542610, 43.433914>,  <36.822136, 31.902954, 43.408680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540939, 31.542610, 43.433914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545204, 31.939939, 43.479855>,  <37.547764, 32.178337, 43.507420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545204, 31.939939, 43.479855>,  <37.540939, 31.542610, 43.433914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545204, 31.939939, 43.479855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459680, -0.106874, 0.881631,
		0.888021, 0.043397, -0.457751,
		0.010661, 0.993325, 0.114855,
		37.548401, 32.237938, 43.514313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193539, 31.658615, 43.667862>,  <37.540939, 31.542610, 43.433914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193539, 31.658615, 43.667862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957558, 31.962450, 43.777393>,  <37.815968, 32.144753, 43.843113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957558, 31.962450, 43.777393>,  <38.193539, 31.658615, 43.667862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957558, 31.962450, 43.777393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478084, 0.055313, 0.876571,
		0.650687, 0.648048, -0.395779,
		-0.589952, 0.759588, 0.273830,
		37.780571, 32.190327, 43.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679203, 32.178375, 43.951939>,  <38.193539, 31.658615, 43.667862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679203, 32.178375, 43.951939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310387, 32.251755, 44.088287>,  <38.089096, 32.295780, 44.170097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310387, 32.251755, 44.088287>,  <38.679203, 32.178375, 43.951939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310387, 32.251755, 44.088287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375738, 0.212333, 0.902073,
		0.093103, 0.959824, -0.264707,
		-0.922037, 0.183446, 0.340874,
		38.033775, 32.306789, 44.190548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831272, 32.684536, 44.330734>,  <38.679203, 32.178375, 43.951939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831272, 32.684536, 44.330734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480503, 32.536736, 44.453682>,  <38.270042, 32.448055, 44.527451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480503, 32.536736, 44.453682>,  <38.831272, 32.684536, 44.330734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480503, 32.536736, 44.453682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270005, 0.150327, 0.951051,
		-0.397617, 0.916991, -0.032059,
		-0.876925, -0.369498, 0.307365,
		38.217426, 32.425884, 44.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465103, 33.235191, 44.647831>,  <38.831272, 32.684536, 44.330734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465103, 33.235191, 44.647831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333248, 32.888962, 44.798626>,  <38.254135, 32.681225, 44.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333248, 32.888962, 44.798626>,  <38.465103, 33.235191, 44.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333248, 32.888962, 44.798626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097319, 0.366029, 0.925501,
		-0.939077, 0.341771, -0.036422,
		-0.329641, -0.865572, 0.376990,
		38.234356, 32.629292, 44.911724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216785, 33.483299, 45.232994>,  <38.465103, 33.235191, 44.647831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216785, 33.483299, 45.232994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226650, 33.085827, 45.276783>,  <38.232571, 32.847343, 45.303055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226650, 33.085827, 45.276783>,  <38.216785, 33.483299, 45.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226650, 33.085827, 45.276783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082581, 0.111156, 0.990366,
		-0.996279, -0.015384, 0.084801,
		0.024661, -0.993684, 0.109472,
		38.234047, 32.787724, 45.309624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067631, 33.433235, 45.851406>,  <38.216785, 33.483299, 45.232994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067631, 33.433235, 45.851406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214470, 33.066715, 45.787369>,  <38.302574, 32.846802, 45.748947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214470, 33.066715, 45.787369>,  <38.067631, 33.433235, 45.851406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214470, 33.066715, 45.787369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106161, -0.129711, 0.985852,
		-0.924103, -0.378902, 0.049658,
		0.367101, -0.916301, -0.160091,
		38.324600, 32.791824, 45.739342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627972, 32.941582, 46.141212>,  <38.067631, 33.433235, 45.851406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627972, 32.941582, 46.141212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979321, 32.754574, 46.101460>,  <38.190132, 32.642368, 46.077606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979321, 32.754574, 46.101460>,  <37.627972, 32.941582, 46.141212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979321, 32.754574, 46.101460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004743, -0.216444, 0.976283,
		-0.477947, -0.857073, -0.192337,
		0.878376, -0.467524, -0.099383,
		38.242832, 32.614315, 46.071644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635887, 32.301704, 46.490791>,  <37.627972, 32.941582, 46.141212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635887, 32.301704, 46.490791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027271, 32.381851, 46.470924>,  <38.262100, 32.429939, 46.459003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027271, 32.381851, 46.470924>,  <37.635887, 32.301704, 46.490791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027271, 32.381851, 46.470924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109777, -0.301281, 0.947195,
		0.174819, -0.932247, -0.316787,
		0.978462, 0.200364, -0.049670,
		38.320808, 32.441959, 46.456024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042133, 31.704865, 46.831547>,  <37.635887, 32.301704, 46.490791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042133, 31.704865, 46.831547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275730, 32.029182, 46.847385>,  <38.415890, 32.223774, 46.856888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275730, 32.029182, 46.847385>,  <38.042133, 31.704865, 46.831547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275730, 32.029182, 46.847385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305645, -0.264810, 0.914580,
		0.752021, -0.522005, -0.402461,
		0.583992, 0.810793, 0.039595,
		38.450928, 32.272419, 46.859264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354153, 31.532951, 47.433628>,  <38.042133, 31.704865, 46.831547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354153, 31.532951, 47.433628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495483, 31.902187, 47.372879>,  <38.580280, 32.123730, 47.336430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495483, 31.902187, 47.372879>,  <38.354153, 31.532951, 47.433628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495483, 31.902187, 47.372879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348697, 0.020692, 0.937007,
		0.868086, -0.384022, -0.314569,
		0.353322, 0.923092, -0.151870,
		38.601479, 32.179115, 47.327316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078590, 31.646296, 47.582634>,  <38.354153, 31.532951, 47.433628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078590, 31.646296, 47.582634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923996, 32.009499, 47.647316>,  <38.831238, 32.227421, 47.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923996, 32.009499, 47.647316>,  <39.078590, 31.646296, 47.582634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923996, 32.009499, 47.647316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376795, -0.004581, 0.926286,
		0.841815, 0.418929, -0.340362,
		-0.386489, 0.908007, 0.161707,
		38.808048, 32.281902, 47.695827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524445, 31.930590, 47.997734>,  <39.078590, 31.646296, 47.582634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524445, 31.930590, 47.997734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202259, 32.156700, 48.068939>,  <39.008945, 32.292366, 48.111660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202259, 32.156700, 48.068939>,  <39.524445, 31.930590, 47.997734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202259, 32.156700, 48.068939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241819, 0.039260, 0.969527,
		0.541061, 0.823967, -0.168317,
		-0.805467, 0.565275, 0.178009,
		38.960621, 32.326283, 48.122341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701057, 32.262363, 48.528606>,  <39.524445, 31.930590, 47.997734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701057, 32.262363, 48.528606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304966, 32.314400, 48.548679>,  <39.067310, 32.345623, 48.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304966, 32.314400, 48.548679>,  <39.701057, 32.262363, 48.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304966, 32.314400, 48.548679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049089, -0.011567, 0.998727,
		0.130507, 0.991435, 0.005068,
		-0.990231, 0.130092, 0.050178,
		39.007896, 32.353428, 48.563732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605289, 32.763931, 49.034397>,  <39.701057, 32.262363, 48.528606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605289, 32.763931, 49.034397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250526, 32.580212, 49.014633>,  <39.037670, 32.469982, 49.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250526, 32.580212, 49.014633>,  <39.605289, 32.763931, 49.034397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250526, 32.580212, 49.014633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073284, 0.034278, 0.996722,
		-0.456097, 0.887622, -0.064060,
		-0.886908, -0.459296, -0.049414,
		38.984455, 32.442421, 48.999809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148384, 33.206131, 49.421432>,  <39.605289, 32.763931, 49.034397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148384, 33.206131, 49.421432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987446, 32.840199, 49.407536>,  <38.890884, 32.620640, 49.399197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987446, 32.840199, 49.407536>,  <39.148384, 33.206131, 49.421432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987446, 32.840199, 49.407536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064697, -0.009445, 0.997860,
		-0.913199, 0.403733, -0.055386,
		-0.402346, -0.914828, -0.034746,
		38.866741, 32.565750, 49.397110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708179, 33.235630, 50.041706>,  <39.148384, 33.206131, 49.421432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708179, 33.235630, 50.041706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737091, 32.848202, 49.946499>,  <38.754436, 32.615746, 49.889374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737091, 32.848202, 49.946499>,  <38.708179, 33.235630, 50.041706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737091, 32.848202, 49.946499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334411, -0.248362, 0.909113,
		-0.939652, 0.013890, -0.341850,
		0.072275, -0.968567, -0.238019,
		38.758774, 32.557632, 49.875092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263664, 32.914661, 50.396210>,  <38.708179, 33.235630, 50.041706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263664, 32.914661, 50.396210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470669, 32.586800, 50.297947>,  <38.594872, 32.390083, 50.238991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470669, 32.586800, 50.297947>,  <38.263664, 32.914661, 50.396210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470669, 32.586800, 50.297947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282965, -0.434872, 0.854879,
		-0.807535, -0.372898, -0.456985,
		0.517512, -0.819655, -0.245658,
		38.625923, 32.340904, 50.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870750, 32.267971, 50.383385>,  <38.263664, 32.914661, 50.396210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870750, 32.267971, 50.383385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248085, 32.158802, 50.458881>,  <38.474487, 32.093300, 50.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248085, 32.158802, 50.458881>,  <37.870750, 32.267971, 50.383385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248085, 32.158802, 50.458881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299022, -0.452581, 0.840093,
		-0.143856, -0.848932, -0.508547,
		0.943340, -0.272919, 0.188743,
		38.531086, 32.076927, 50.515503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084286, 31.522419, 50.470936>,  <37.870750, 32.267971, 50.383385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084286, 31.522419, 50.470936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275082, 31.797668, 50.689644>,  <38.389561, 31.962818, 50.820869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275082, 31.797668, 50.689644>,  <38.084286, 31.522419, 50.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275082, 31.797668, 50.689644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161081, -0.543125, 0.824056,
		0.864020, -0.481145, -0.148223,
		0.476994, 0.688125, 0.546774,
		38.418179, 32.004105, 50.853676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382755, 31.189272, 51.095692>,  <38.084286, 31.522419, 50.470936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382755, 31.189272, 51.095692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408474, 31.569284, 51.217876>,  <38.423904, 31.797293, 51.291187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408474, 31.569284, 51.217876>,  <38.382755, 31.189272, 51.095692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408474, 31.569284, 51.217876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038386, -0.303511, 0.952054,
		0.997192, -0.072940, 0.016953,
		0.064297, 0.950032, 0.305459,
		38.427765, 31.854294, 51.309513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877575, 31.245220, 51.564880>,  <38.382755, 31.189272, 51.095692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877575, 31.245220, 51.564880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610615, 31.532261, 51.644508>,  <38.450439, 31.704485, 51.692284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610615, 31.532261, 51.644508>,  <38.877575, 31.245220, 51.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610615, 31.532261, 51.644508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091023, -0.343913, 0.934579,
		0.739118, 0.605617, 0.294845,
		-0.667398, 0.717602, 0.199067,
		38.410397, 31.747541, 51.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168488, 30.545895, 51.530418>,  <38.877575, 31.245220, 51.564880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168488, 30.545895, 51.530418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935757, 30.271336, 51.704926>,  <38.796120, 30.106600, 51.809631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935757, 30.271336, 51.704926>,  <39.168488, 30.545895, 51.530418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935757, 30.271336, 51.704926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813006, 0.505593, -0.288785,
		-0.022354, -0.522715, -0.852215,
		-0.581827, -0.686400, 0.436272,
		38.761208, 30.065416, 51.835808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825443, 30.592514, 51.692459>,  <39.168488, 30.545895, 51.530418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825443, 30.592514, 51.692459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168659, 30.388512, 51.716660>,  <40.374588, 30.266109, 51.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168659, 30.388512, 51.716660>,  <39.825443, 30.592514, 51.692459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168659, 30.388512, 51.716660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177455, -0.404949, -0.896954,
		0.481953, 0.758886, -0.437966,
		0.858039, -0.510008, 0.060498,
		40.426071, 30.235510, 51.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418217, 30.803268, 51.183186>,  <39.825443, 30.592514, 51.692459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418217, 30.803268, 51.183186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370689, 30.423225, 51.298546>,  <40.342175, 30.195200, 51.367764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370689, 30.423225, 51.298546>,  <40.418217, 30.803268, 51.183186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370689, 30.423225, 51.298546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185018, -0.264187, -0.946559,
		0.975526, -0.165825, -0.144397,
		-0.118816, -0.950109, 0.288402,
		40.335045, 30.138193, 51.385067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863033, 30.322975, 50.846901>,  <40.418217, 30.803268, 51.183186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863033, 30.322975, 50.846901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514530, 30.137043, 50.909946>,  <40.305428, 30.025484, 50.947773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514530, 30.137043, 50.909946>,  <40.863033, 30.322975, 50.846901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514530, 30.137043, 50.909946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044377, -0.245198, -0.968457,
		0.488815, -0.850770, 0.193003,
		-0.871258, -0.464831, 0.157611,
		40.253151, 29.997593, 50.957230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945992, 29.690517, 50.486752>,  <40.863033, 30.322975, 50.846901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945992, 29.690517, 50.486752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554111, 29.766125, 50.513462>,  <40.318985, 29.811489, 50.529488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554111, 29.766125, 50.513462>,  <40.945992, 29.690517, 50.486752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554111, 29.766125, 50.513462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103513, -0.191701, -0.975980,
		-0.171669, -0.963081, 0.207375,
		-0.979702, 0.189011, 0.066782,
		40.260201, 29.822830, 50.533497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586727, 29.115150, 50.332050>,  <40.945992, 29.690517, 50.486752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586727, 29.115150, 50.332050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346565, 29.421099, 50.238678>,  <40.202469, 29.604668, 50.182655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346565, 29.421099, 50.238678>,  <40.586727, 29.115150, 50.332050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346565, 29.421099, 50.238678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137702, -0.386418, -0.911986,
		-0.787753, -0.515416, 0.337331,
		-0.600403, 0.764871, -0.233428,
		40.166443, 29.650560, 50.168648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142349, 28.835154, 49.875206>,  <40.586727, 29.115150, 50.332050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142349, 28.835154, 49.875206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119324, 29.230469, 49.818672>,  <40.105507, 29.467657, 49.784752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119324, 29.230469, 49.818672>,  <40.142349, 28.835154, 49.875206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119324, 29.230469, 49.818672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012917, -0.142299, -0.989739,
		-0.998258, -0.055149, 0.020957,
		-0.057565, 0.988286, -0.141338,
		40.102055, 29.526955, 49.776272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500496, 28.830345, 49.446068>,  <40.142349, 28.835154, 49.875206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500496, 28.830345, 49.446068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732311, 29.152220, 49.394508>,  <39.871403, 29.345345, 49.363575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732311, 29.152220, 49.394508>,  <39.500496, 28.830345, 49.446068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732311, 29.152220, 49.394508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193746, -0.017583, -0.980894,
		-0.791578, 0.593441, 0.145714,
		0.579541, 0.804685, -0.128895,
		39.906174, 29.393625, 49.355839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176727, 29.166212, 48.899223>,  <39.500496, 28.830345, 49.446068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176727, 29.166212, 48.899223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525089, 29.362358, 48.912323>,  <39.734104, 29.480045, 48.920181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525089, 29.362358, 48.912323>,  <39.176727, 29.166212, 48.899223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525089, 29.362358, 48.912323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041058, 0.138994, -0.989442,
		-0.489741, 0.860361, 0.141183,
		0.870901, 0.490367, 0.032747,
		39.786358, 29.509468, 48.922146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044647, 29.759346, 48.573303>,  <39.176727, 29.166212, 48.899223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044647, 29.759346, 48.573303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439236, 29.714737, 48.525242>,  <39.675987, 29.687971, 48.496407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439236, 29.714737, 48.525242>,  <39.044647, 29.759346, 48.573303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439236, 29.714737, 48.525242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076193, 0.337054, -0.938397,
		0.145149, 0.934857, 0.323997,
		0.986472, -0.111521, -0.120153,
		39.735176, 29.681280, 48.489197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415321, 30.385714, 48.242317>,  <39.044647, 29.759346, 48.573303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415321, 30.385714, 48.242317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647278, 30.073086, 48.150341>,  <39.786453, 29.885509, 48.095154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647278, 30.073086, 48.150341>,  <39.415321, 30.385714, 48.242317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647278, 30.073086, 48.150341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042801, 0.311079, -0.949420,
		0.813569, 0.540718, 0.213844,
		0.579891, -0.781571, -0.229941,
		39.821243, 29.838614, 48.081360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119156, 30.571836, 47.884411>,  <39.415321, 30.385714, 48.242317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119156, 30.571836, 47.884411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050297, 30.196074, 47.765831>,  <40.008980, 29.970615, 47.694683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050297, 30.196074, 47.765831>,  <40.119156, 30.571836, 47.884411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050297, 30.196074, 47.765831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197758, 0.261856, -0.944628,
		0.965016, -0.221245, 0.140696,
		-0.172152, -0.939405, -0.296448,
		39.998650, 29.914251, 47.676895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458633, 30.645372, 47.295361>,  <40.119156, 30.571836, 47.884411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458633, 30.645372, 47.295361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268440, 30.295341, 47.259247>,  <40.154324, 30.085323, 47.237579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268440, 30.295341, 47.259247>,  <40.458633, 30.645372, 47.295361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268440, 30.295341, 47.259247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086388, 0.148577, -0.985120,
		0.875472, -0.460610, -0.146242,
		-0.475484, -0.875079, -0.090284,
		40.125793, 30.032818, 47.232162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893902, 30.354559, 46.740135>,  <40.458633, 30.645372, 47.295361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893902, 30.354559, 46.740135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532333, 30.185600, 46.766979>,  <40.315392, 30.084225, 46.783085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532333, 30.185600, 46.766979>,  <40.893902, 30.354559, 46.740135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532333, 30.185600, 46.766979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047222, -0.057396, -0.997234,
		0.425080, -0.904593, 0.031935,
		-0.903923, -0.422396, 0.067114,
		40.261158, 30.058882, 46.787113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923332, 29.855536, 46.376209>,  <40.893902, 30.354559, 46.740135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923332, 29.855536, 46.376209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528023, 29.913839, 46.394371>,  <40.290836, 29.948822, 46.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528023, 29.913839, 46.394371>,  <40.923332, 29.855536, 46.376209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528023, 29.913839, 46.394371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052155, -0.042809, -0.997721,
		-0.143486, -0.988393, 0.049909,
		-0.988277, 0.145762, 0.045407,
		40.231541, 29.957567, 46.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728531, 29.564329, 45.859196>,  <40.923332, 29.855536, 46.376209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728531, 29.564329, 45.859196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395378, 29.767527, 45.947060>,  <40.195488, 29.889446, 45.999779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395378, 29.767527, 45.947060>,  <40.728531, 29.564329, 45.859196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395378, 29.767527, 45.947060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144900, 0.182907, -0.972394,
		-0.534150, -0.841716, -0.078731,
		-0.832879, 0.507996, 0.219664,
		40.145515, 29.919926, 46.012959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245502, 29.313391, 45.351933>,  <40.728531, 29.564329, 45.859196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245502, 29.313391, 45.351933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074100, 29.654325, 45.471867>,  <39.971260, 29.858887, 45.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074100, 29.654325, 45.471867>,  <40.245502, 29.313391, 45.351933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074100, 29.654325, 45.471867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241278, 0.211852, -0.947050,
		-0.870727, -0.478162, 0.114870,
		-0.428508, 0.852338, 0.299835,
		39.945549, 29.910027, 45.561817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557934, 29.319334, 45.115101>,  <40.245502, 29.313391, 45.351933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557934, 29.319334, 45.115101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672905, 29.702032, 45.133068>,  <39.741890, 29.931652, 45.143848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672905, 29.702032, 45.133068>,  <39.557934, 29.319334, 45.115101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672905, 29.702032, 45.133068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261788, 0.123590, -0.957179,
		-0.921330, 0.263364, 0.285989,
		0.287432, 0.956747, 0.044922,
		39.759136, 29.989056, 45.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125622, 29.654785, 44.619587>,  <39.557934, 29.319334, 45.115101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125622, 29.654785, 44.619587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372803, 29.956366, 44.708752>,  <39.521111, 30.137314, 44.762249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372803, 29.956366, 44.708752>,  <39.125622, 29.654785, 44.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372803, 29.956366, 44.708752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004968, 0.279773, -0.960053,
		-0.786197, 0.594379, 0.169142,
		0.617956, 0.753950, 0.222910,
		39.558189, 30.182550, 44.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852871, 30.311829, 44.462627>,  <39.125622, 29.654785, 44.619587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852871, 30.311829, 44.462627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242905, 30.398249, 44.442509>,  <39.476925, 30.450100, 44.430439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242905, 30.398249, 44.442509>,  <38.852871, 30.311829, 44.462627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242905, 30.398249, 44.442509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112954, 0.288454, -0.950808,
		-0.190915, 0.932800, 0.305671,
		0.975086, 0.216050, -0.050293,
		39.535431, 30.463064, 44.427422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899429, 30.971729, 44.132439>,  <38.852871, 30.311829, 44.462627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899429, 30.971729, 44.132439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256779, 30.805485, 44.064133>,  <39.471188, 30.705738, 44.023151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256779, 30.805485, 44.064133>,  <38.899429, 30.971729, 44.132439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256779, 30.805485, 44.064133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134139, 0.116022, -0.984147,
		0.428834, 0.902112, 0.047901,
		0.893369, -0.415610, -0.170763,
		39.524788, 30.680801, 44.012905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925549, 31.038263, 43.447544>,  <38.899429, 30.971729, 44.132439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925549, 31.038263, 43.447544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263142, 30.826887, 43.484299>,  <39.465698, 30.700062, 43.506351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263142, 30.826887, 43.484299>,  <38.925549, 31.038263, 43.447544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263142, 30.826887, 43.484299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064682, -0.270329, -0.960593,
		0.532456, 0.804780, -0.262334,
		0.843983, -0.528442, 0.091884,
		39.516335, 30.668354, 43.511864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321323, 31.335037, 42.873810>,  <38.925549, 31.038263, 43.447544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321323, 31.335037, 42.873810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446705, 30.971117, 42.982632>,  <39.521935, 30.752766, 43.047924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446705, 30.971117, 42.982632>,  <39.321323, 31.335037, 42.873810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446705, 30.971117, 42.982632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040820, -0.273316, -0.961058,
		0.948725, 0.312355, -0.048535,
		0.313456, -0.909798, 0.272052,
		39.540741, 30.698177, 43.064247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870457, 31.191069, 42.465630>,  <39.321323, 31.335037, 42.873810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870457, 31.191069, 42.465630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713642, 30.844542, 42.589439>,  <39.619553, 30.636625, 42.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713642, 30.844542, 42.589439>,  <39.870457, 31.191069, 42.465630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713642, 30.844542, 42.589439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032246, -0.323311, -0.945743,
		0.919385, -0.380746, 0.098814,
		-0.392035, -0.866316, 0.309525,
		39.596031, 30.584646, 42.682297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257774, 30.581568, 42.094719>,  <39.870457, 31.191069, 42.465630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257774, 30.581568, 42.094719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888695, 30.458162, 42.187183>,  <39.667244, 30.384119, 42.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888695, 30.458162, 42.187183>,  <40.257774, 30.581568, 42.094719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888695, 30.458162, 42.187183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061609, -0.473910, -0.878415,
		0.380555, -0.824759, 0.418271,
		-0.922703, -0.308516, 0.231162,
		39.611885, 30.365608, 42.256531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161751, 29.932198, 41.753502>,  <40.257774, 30.581568, 42.094719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161751, 29.932198, 41.753502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781380, 30.004107, 41.854237>,  <39.553158, 30.047253, 41.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781380, 30.004107, 41.854237>,  <40.161751, 29.932198, 41.753502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781380, 30.004107, 41.854237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302456, -0.368374, -0.879102,
		-0.065269, -0.912131, 0.404670,
		-0.950926, 0.179773, 0.251836,
		39.496101, 30.058039, 41.929787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746536, 29.313616, 41.502922>,  <40.161751, 29.932198, 41.753502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746536, 29.313616, 41.502922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479679, 29.610168, 41.531982>,  <39.319565, 29.788101, 41.549419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479679, 29.610168, 41.531982>,  <39.746536, 29.313616, 41.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479679, 29.610168, 41.531982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497673, -0.371010, -0.784011,
		-0.554299, -0.559199, 0.616481,
		-0.667139, 0.741383, 0.072647,
		39.279537, 29.832582, 41.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123573, 29.033064, 41.555103>,  <39.746536, 29.313616, 41.502922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123573, 29.033064, 41.555103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031639, 29.409187, 41.454708>,  <38.976479, 29.634861, 41.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031639, 29.409187, 41.454708>,  <39.123573, 29.033064, 41.555103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031639, 29.409187, 41.454708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509960, -0.336012, -0.791856,
		-0.828926, -0.053997, 0.556746,
		-0.229832, 0.940308, -0.250993,
		38.962688, 29.691280, 41.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411461, 29.129999, 41.481369>,  <39.123573, 29.033064, 41.555103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411461, 29.129999, 41.481369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597321, 29.402624, 41.255245>,  <38.708836, 29.566198, 41.119572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597321, 29.402624, 41.255245>,  <38.411461, 29.129999, 41.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597321, 29.402624, 41.255245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610609, -0.215742, -0.761979,
		-0.641297, 0.699235, 0.315923,
		0.464645, 0.681561, -0.565314,
		38.736713, 29.607092, 41.085651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933838, 29.223555, 41.012875>,  <38.411461, 29.129999, 41.481369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933838, 29.223555, 41.012875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211594, 29.464914, 40.856041>,  <38.378246, 29.609730, 40.761940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211594, 29.464914, 40.856041>,  <37.933838, 29.223555, 41.012875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211594, 29.464914, 40.856041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602349, 0.189287, -0.775465,
		-0.393697, 0.774649, 0.494895,
		0.694391, 0.603398, -0.392087,
		38.419910, 29.645933, 40.738415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570599, 29.895422, 40.756596>,  <37.933838, 29.223555, 41.012875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570599, 29.895422, 40.756596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917313, 29.900864, 40.557198>,  <38.125340, 29.904129, 40.437557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917313, 29.900864, 40.557198>,  <37.570599, 29.895422, 40.756596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917313, 29.900864, 40.557198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494853, 0.147132, -0.856430,
		0.061694, 0.989023, 0.134264,
		0.866784, 0.013605, -0.498498,
		38.177349, 29.904945, 40.407646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556496, 30.471256, 40.356770>,  <37.570599, 29.895422, 40.756596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556496, 30.471256, 40.356770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798309, 30.201038, 40.187923>,  <37.943398, 30.038908, 40.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798309, 30.201038, 40.187923>,  <37.556496, 30.471256, 40.356770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798309, 30.201038, 40.187923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533783, 0.049797, -0.844154,
		0.591284, 0.735635, -0.330491,
		0.604532, -0.675545, -0.422114,
		37.979668, 29.998375, 40.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625401, 30.753899, 39.739738>,  <37.556496, 30.471256, 40.356770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625401, 30.753899, 39.739738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774418, 30.387852, 39.678066>,  <37.863827, 30.168224, 39.641064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774418, 30.387852, 39.678066>,  <37.625401, 30.753899, 39.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774418, 30.387852, 39.678066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115958, 0.118935, -0.986107,
		0.920741, 0.385248, -0.061806,
		0.372545, -0.915117, -0.154181,
		37.886181, 30.113317, 39.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134834, 30.760067, 39.298523>,  <37.625401, 30.753899, 39.739738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134834, 30.760067, 39.298523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036781, 30.375034, 39.252312>,  <37.977947, 30.144014, 39.224586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036781, 30.375034, 39.252312>,  <38.134834, 30.760067, 39.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036781, 30.375034, 39.252312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277744, 0.183894, -0.942890,
		0.928852, -0.199050, -0.312431,
		-0.245137, -0.962581, -0.115525,
		37.963242, 30.086260, 39.217655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347572, 30.622868, 38.615402>,  <38.134834, 30.760067, 39.298523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347572, 30.622868, 38.615402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086475, 30.328024, 38.685375>,  <37.929817, 30.151117, 38.727360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086475, 30.328024, 38.685375>,  <38.347572, 30.622868, 38.615402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086475, 30.328024, 38.685375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437276, 0.178018, -0.881532,
		0.618647, -0.651902, -0.438520,
		-0.652738, -0.737111, 0.174931,
		37.890656, 30.106890, 38.737854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324390, 30.162615, 37.978798>,  <38.347572, 30.622868, 38.615402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324390, 30.162615, 37.978798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978313, 30.086597, 38.164410>,  <37.770668, 30.040987, 38.275776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978313, 30.086597, 38.164410>,  <38.324390, 30.162615, 37.978798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978313, 30.086597, 38.164410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488698, 0.112310, -0.865194,
		0.112310, -0.975330, -0.190045,
		0.865194, 0.190045, -0.464029,
		37.718754, 30.029585, 38.303619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885113, 29.681746, 37.487846>,  <38.324390, 30.162615, 37.978798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885113, 29.681746, 37.487846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631115, 29.843306, 37.751251>,  <37.478714, 29.940241, 37.909294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631115, 29.843306, 37.751251>,  <37.885113, 29.681746, 37.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631115, 29.843306, 37.751251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577474, 0.318035, -0.751916,
		-0.513129, -0.857741, 0.031290,
		-0.634997, 0.403899, 0.658517,
		37.440617, 29.964476, 37.948807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191795, 29.401968, 37.299774>,  <37.885113, 29.681746, 37.487846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191795, 29.401968, 37.299774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143768, 29.733665, 37.518108>,  <37.114952, 29.932684, 37.649109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143768, 29.733665, 37.518108>,  <37.191795, 29.401968, 37.299774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143768, 29.733665, 37.518108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483864, 0.431210, -0.761533,
		-0.866867, -0.355547, 0.349467,
		-0.120067, 0.829243, 0.545839,
		37.107750, 29.982439, 37.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478096, 29.513168, 37.081070>,  <37.191795, 29.401968, 37.299774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478096, 29.513168, 37.081070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656425, 29.831882, 37.244225>,  <36.763424, 30.023111, 37.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656425, 29.831882, 37.244225>,  <36.478096, 29.513168, 37.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656425, 29.831882, 37.244225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437141, 0.591450, -0.677565,
		-0.781121, 0.123769, 0.611990,
		0.445823, 0.796786, 0.407889,
		36.790173, 30.070919, 37.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964050, 29.940571, 37.133591>,  <36.478096, 29.513168, 37.081070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964050, 29.940571, 37.133591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306576, 30.145786, 37.109837>,  <36.512089, 30.268915, 37.095585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306576, 30.145786, 37.109837>,  <35.964050, 29.940571, 37.133591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306576, 30.145786, 37.109837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416101, 0.617220, -0.667757,
		-0.305932, 0.596516, 0.742007,
		0.856309, 0.513038, -0.059384,
		36.563469, 30.299698, 37.092022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738628, 30.685614, 37.217197>,  <35.964050, 29.940571, 37.133591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738628, 30.685614, 37.217197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096588, 30.675182, 37.038994>,  <36.311363, 30.668924, 36.932072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096588, 30.675182, 37.038994>,  <35.738628, 30.685614, 37.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096588, 30.675182, 37.038994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288477, 0.727881, -0.622070,
		0.340500, 0.685208, 0.643856,
		0.894897, -0.026077, -0.445510,
		36.365059, 30.667358, 36.905342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705204, 31.374266, 37.181648>,  <35.738628, 30.685614, 37.217197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705204, 31.374266, 37.181648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998131, 31.236271, 36.946808>,  <36.173889, 31.153473, 36.805904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998131, 31.236271, 36.946808>,  <35.705204, 31.374266, 37.181648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998131, 31.236271, 36.946808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225874, 0.690296, -0.687366,
		0.642409, 0.635983, 0.427594,
		0.732320, -0.344988, -0.587104,
		36.217827, 31.132774, 36.770676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200817, 31.892876, 37.053280>,  <35.705204, 31.374266, 37.181648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200817, 31.892876, 37.053280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184090, 31.636789, 36.746456>,  <36.174053, 31.483137, 36.562363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184090, 31.636789, 36.746456>,  <36.200817, 31.892876, 37.053280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184090, 31.636789, 36.746456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286932, 0.743084, -0.604563,
		0.957038, 0.194810, -0.214774,
		-0.041820, -0.640215, -0.767057,
		36.171543, 31.444725, 36.516338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341400, 32.288139, 36.552265>,  <36.200817, 31.892876, 37.053280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341400, 32.288139, 36.552265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209648, 31.967247, 36.353096>,  <36.130596, 31.774712, 36.233593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209648, 31.967247, 36.353096>,  <36.341400, 32.288139, 36.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209648, 31.967247, 36.353096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540478, 0.592604, -0.597247,
		0.774204, 0.072397, -0.628782,
		-0.329379, -0.802234, -0.497925,
		36.110832, 31.726576, 36.203720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640308, 32.666908, 37.269211>,  <36.341400, 32.288139, 36.552265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640308, 32.666908, 37.269211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269356, 32.520931, 37.302166>,  <36.046783, 32.433346, 37.321941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269356, 32.520931, 37.302166>,  <36.640308, 32.666908, 37.269211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269356, 32.520931, 37.302166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032092, -0.297009, -0.954335,
		0.372746, -0.882386, 0.287151,
		-0.927378, -0.364939, 0.082391,
		35.991142, 32.411449, 37.326885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389381, 32.597630, 36.961857>,  <36.640308, 32.666908, 37.269211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389381, 32.597630, 36.961857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689571, 32.792210, 36.782902>,  <37.869686, 32.908958, 36.675529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689571, 32.792210, 36.782902>,  <37.389381, 32.597630, 36.961857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689571, 32.792210, 36.782902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607811, -0.242185, 0.756248,
		0.259528, -0.839471, -0.477424,
		0.750474, 0.486452, -0.447386,
		37.914715, 32.938145, 36.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939411, 32.244797, 37.073624>,  <37.389381, 32.597630, 36.961857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939411, 32.244797, 37.073624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154549, 32.555149, 36.941727>,  <38.283630, 32.741360, 36.862591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154549, 32.555149, 36.941727>,  <37.939411, 32.244797, 37.073624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154549, 32.555149, 36.941727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706816, -0.201828, 0.677995,
		0.459495, -0.597720, -0.656959,
		0.537844, 0.775884, -0.329739,
		38.315903, 32.787914, 36.842804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564735, 31.986969, 36.836594>,  <37.939411, 32.244797, 37.073624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564735, 31.986969, 36.836594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635250, 32.367840, 36.936420>,  <38.677559, 32.596363, 36.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635250, 32.367840, 36.936420>,  <38.564735, 31.986969, 36.836594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635250, 32.367840, 36.936420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731189, -0.296410, 0.614413,
		0.659003, 0.074165, -0.748475,
		0.176287, 0.952177, 0.249564,
		38.688137, 32.653492, 37.011292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271221, 32.069328, 36.923161>,  <38.564735, 31.986969, 36.836594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271221, 32.069328, 36.923161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145405, 32.403118, 37.104145>,  <39.069916, 32.603390, 37.212738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145405, 32.403118, 37.104145>,  <39.271221, 32.069328, 36.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145405, 32.403118, 37.104145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702433, -0.115994, 0.702234,
		0.638477, 0.538707, -0.549675,
		-0.314539, 0.834470, 0.452465,
		39.051044, 32.653458, 37.239883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852051, 32.443947, 36.963394>,  <39.271221, 32.069328, 36.923161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852051, 32.443947, 36.963394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601379, 32.595181, 37.235962>,  <39.450977, 32.685921, 37.399502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601379, 32.595181, 37.235962>,  <39.852051, 32.443947, 36.963394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601379, 32.595181, 37.235962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710735, -0.081295, 0.698746,
		0.319583, 0.922194, -0.217775,
		-0.626675, 0.378087, 0.681416,
		39.413376, 32.708607, 37.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295002, 32.742634, 37.317917>,  <39.852051, 32.443947, 36.963394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295002, 32.742634, 37.317917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972000, 32.753067, 37.553631>,  <39.778198, 32.759327, 37.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972000, 32.753067, 37.553631>,  <40.295002, 32.742634, 37.317917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972000, 32.753067, 37.553631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576000, -0.180425, 0.797289,
		0.127115, 0.983243, 0.130672,
		-0.807506, 0.026080, 0.589283,
		39.729748, 32.760891, 37.730415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495922, 33.145409, 37.811501>,  <40.295002, 32.742634, 37.317917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495922, 33.145409, 37.811501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195400, 32.931091, 37.965626>,  <40.015087, 32.802502, 38.058102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195400, 32.931091, 37.965626>,  <40.495922, 33.145409, 37.811501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195400, 32.931091, 37.965626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544271, -0.172838, 0.820912,
		-0.373245, 0.826468, 0.421472,
		-0.751303, -0.535797, 0.385312,
		39.970009, 32.770351, 38.081219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181389, 33.449162, 38.455711>,  <40.495922, 33.145409, 37.811501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181389, 33.449162, 38.455711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130394, 33.052731, 38.440132>,  <40.099796, 32.814873, 38.430782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130394, 33.052731, 38.440132>,  <40.181389, 33.449162, 38.455711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130394, 33.052731, 38.440132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563584, -0.104700, 0.819396,
		-0.816162, 0.082509, 0.571902,
		-0.127486, -0.991075, -0.038951,
		40.092148, 32.755409, 38.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168304, 33.239849, 39.153782>,  <40.181389, 33.449162, 38.455711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168304, 33.239849, 39.153782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210609, 32.890480, 38.963650>,  <40.235992, 32.680859, 38.849571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210609, 32.890480, 38.963650>,  <40.168304, 33.239849, 39.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210609, 32.890480, 38.963650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510346, -0.362581, 0.779795,
		-0.853441, -0.325054, 0.407405,
		0.105758, -0.873427, -0.475332,
		40.242336, 32.628452, 38.821049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006329, 32.771713, 39.557102>,  <40.168304, 33.239849, 39.153782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006329, 32.771713, 39.557102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233639, 32.549450, 39.314346>,  <40.370026, 32.416092, 39.168694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233639, 32.549450, 39.314346>,  <40.006329, 32.771713, 39.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233639, 32.549450, 39.314346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507255, -0.344163, 0.790091,
		-0.647888, -0.756833, 0.086282,
		0.568271, -0.555658, -0.606887,
		40.404121, 32.382751, 39.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092819, 32.152817, 39.923077>,  <40.006329, 32.771713, 39.557102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092819, 32.152817, 39.923077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382431, 32.105202, 39.651310>,  <40.556198, 32.076633, 39.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382431, 32.105202, 39.651310>,  <40.092819, 32.152817, 39.923077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382431, 32.105202, 39.651310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657033, -0.180810, 0.731857,
		-0.209966, -0.976287, -0.052699,
		0.724031, -0.119040, -0.679418,
		40.599640, 32.069492, 39.447483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413719, 31.536404, 40.064247>,  <40.092819, 32.152817, 39.923077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413719, 31.536404, 40.064247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671444, 31.764601, 39.860523>,  <40.826080, 31.901520, 39.738289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671444, 31.764601, 39.860523>,  <40.413719, 31.536404, 40.064247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671444, 31.764601, 39.860523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760381, -0.406712, 0.506366,
		0.081736, -0.713528, -0.695842,
		0.644314, 0.570493, -0.509311,
		40.864738, 31.935749, 39.707729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871460, 31.087967, 39.796867>,  <40.413719, 31.536404, 40.064247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871460, 31.087967, 39.796867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042877, 31.448799, 39.817284>,  <41.145725, 31.665298, 39.829533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042877, 31.448799, 39.817284>,  <40.871460, 31.087967, 39.796867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042877, 31.448799, 39.817284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734930, -0.380880, 0.561079,
		0.525577, -0.202936, -0.826188,
		0.428541, 0.902080, 0.051038,
		41.171440, 31.719423, 39.832596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562237, 30.950371, 39.692822>,  <40.871460, 31.087967, 39.796867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562237, 30.950371, 39.692822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536686, 31.305267, 39.875565>,  <41.521355, 31.518206, 39.985210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536686, 31.305267, 39.875565>,  <41.562237, 30.950371, 39.692822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536686, 31.305267, 39.875565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777101, -0.243004, 0.580572,
		0.626127, 0.392112, -0.673954,
		-0.063875, 0.887241, 0.456862,
		41.517525, 31.571440, 40.012623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343529, 31.065680, 39.964836>,  <41.562237, 30.950371, 39.692822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343529, 31.065680, 39.964836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119770, 31.339567, 40.151699>,  <41.985516, 31.503901, 40.263817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119770, 31.339567, 40.151699>,  <42.343529, 31.065680, 39.964836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119770, 31.339567, 40.151699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545536, -0.120190, 0.829424,
		0.624071, 0.718827, -0.306306,
		-0.559398, 0.684721, 0.467153,
		41.951950, 31.544983, 40.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850224, 31.509855, 40.355968>,  <42.343529, 31.065680, 39.964836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850224, 31.509855, 40.355968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481632, 31.506138, 40.511295>,  <42.260475, 31.503908, 40.604492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481632, 31.506138, 40.511295>,  <42.850224, 31.509855, 40.355968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481632, 31.506138, 40.511295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385683, -0.140469, 0.911876,
		0.046073, 0.990041, 0.133022,
		-0.921480, -0.009291, 0.388314,
		42.205189, 31.503351, 40.627789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946682, 31.732899, 40.987408>,  <42.850224, 31.509855, 40.355968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946682, 31.732899, 40.987408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573296, 31.592905, 41.018772>,  <42.349262, 31.508909, 41.037590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573296, 31.592905, 41.018772>,  <42.946682, 31.732899, 40.987408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573296, 31.592905, 41.018772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105744, -0.059665, 0.992602,
		-0.342717, 0.934853, 0.092704,
		-0.933468, -0.349984, 0.078407,
		42.293255, 31.487909, 41.042294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715202, 32.087364, 41.552925>,  <42.946682, 31.732899, 40.987408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715202, 32.087364, 41.552925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494896, 31.756334, 41.509502>,  <42.362713, 31.557716, 41.483448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494896, 31.756334, 41.509502>,  <42.715202, 32.087364, 41.552925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494896, 31.756334, 41.509502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041506, -0.102742, 0.993842,
		-0.833630, 0.551875, 0.022238,
		-0.550761, -0.827574, -0.108555,
		42.329666, 31.508062, 41.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070198, 32.169052, 41.957630>,  <42.715202, 32.087364, 41.552925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070198, 32.169052, 41.957630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136086, 31.779078, 41.897808>,  <42.175617, 31.545094, 41.861916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136086, 31.779078, 41.897808>,  <42.070198, 32.169052, 41.957630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136086, 31.779078, 41.897808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150385, -0.174679, 0.973074,
		-0.974808, -0.137796, -0.175389,
		0.164723, -0.974936, -0.149556,
		42.185501, 31.486597, 41.852940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619915, 31.824507, 42.398792>,  <42.070198, 32.169052, 41.957630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619915, 31.824507, 42.398792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875286, 31.529890, 42.309425>,  <42.028507, 31.353121, 42.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875286, 31.529890, 42.309425>,  <41.619915, 31.824507, 42.398792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875286, 31.529890, 42.309425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148024, -0.402344, 0.903442,
		-0.755313, -0.543713, -0.365894,
		0.638429, -0.736543, -0.223413,
		42.066814, 31.308928, 42.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332169, 31.239380, 42.654606>,  <41.619915, 31.824507, 42.398792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332169, 31.239380, 42.654606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722820, 31.160820, 42.619690>,  <41.957211, 31.113684, 42.598740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722820, 31.160820, 42.619690>,  <41.332169, 31.239380, 42.654606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722820, 31.160820, 42.619690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006195, -0.431714, 0.901989,
		-0.214836, -0.880369, -0.422842,
		0.976630, -0.196399, -0.087294,
		42.015808, 31.101900, 42.593502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428604, 30.610662, 42.791630>,  <41.332169, 31.239380, 42.654606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428604, 30.610662, 42.791630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795967, 30.744528, 42.876026>,  <42.016384, 30.824848, 42.926666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795967, 30.744528, 42.876026>,  <41.428604, 30.610662, 42.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795967, 30.744528, 42.876026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074794, -0.376827, 0.923259,
		0.388491, -0.863713, -0.321051,
		0.918412, 0.334665, 0.210995,
		42.071491, 30.844927, 42.939323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660191, 30.108124, 43.323059>,  <41.428604, 30.610662, 42.791630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660191, 30.108124, 43.323059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942265, 30.390873, 43.345119>,  <42.111511, 30.560522, 43.358356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942265, 30.390873, 43.345119>,  <41.660191, 30.108124, 43.323059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942265, 30.390873, 43.345119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043504, -0.034505, 0.998457,
		0.707684, -0.706500, 0.006419,
		0.705188, 0.706871, 0.055154,
		42.153820, 30.602934, 43.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962635, 30.062616, 43.977856>,  <41.660191, 30.108124, 43.323059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962635, 30.062616, 43.977856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128220, 30.411188, 43.872601>,  <42.227570, 30.620331, 43.809448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128220, 30.411188, 43.872601>,  <41.962635, 30.062616, 43.977856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128220, 30.411188, 43.872601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296331, 0.144319, 0.944119,
		0.860711, -0.468806, -0.198489,
		0.413963, 0.871432, -0.263138,
		42.252407, 30.672617, 43.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574623, 30.132980, 44.453217>,  <41.962635, 30.062616, 43.977856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574623, 30.132980, 44.453217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459354, 30.493689, 44.324368>,  <42.390194, 30.710114, 44.247059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459354, 30.493689, 44.324368>,  <42.574623, 30.132980, 44.453217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459354, 30.493689, 44.324368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315051, 0.406952, 0.857399,
		0.904267, 0.145595, -0.401377,
		-0.288174, 0.901772, -0.322124,
		42.372902, 30.764219, 44.227730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051727, 30.652100, 44.743393>,  <42.574623, 30.132980, 44.453217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051727, 30.652100, 44.743393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716915, 30.853365, 44.657413>,  <42.516026, 30.974123, 44.605827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716915, 30.853365, 44.657413>,  <43.051727, 30.652100, 44.743393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716915, 30.853365, 44.657413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060465, 0.475501, 0.877635,
		0.543799, 0.721614, -0.428434,
		-0.837034, 0.503162, -0.214944,
		42.465805, 31.004314, 44.592930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177486, 31.349503, 44.941574>,  <43.051727, 30.652100, 44.743393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177486, 31.349503, 44.941574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778904, 31.316355, 44.947266>,  <42.539753, 31.296467, 44.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778904, 31.316355, 44.947266>,  <43.177486, 31.349503, 44.941574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778904, 31.316355, 44.947266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019495, 0.392305, 0.919629,
		-0.081789, 0.916095, -0.392531,
		-0.996459, -0.082868, 0.014227,
		42.479965, 31.291494, 44.951534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888222, 31.990934, 45.202728>,  <43.177486, 31.349503, 44.941574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888222, 31.990934, 45.202728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585968, 31.736217, 45.264065>,  <42.404617, 31.583387, 45.300869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585968, 31.736217, 45.264065>,  <42.888222, 31.990934, 45.202728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585968, 31.736217, 45.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129388, 0.374624, 0.918104,
		-0.642088, 0.673909, -0.365471,
		-0.755633, -0.636792, 0.153345,
		42.359280, 31.545179, 45.310070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416912, 32.376778, 45.415028>,  <42.888222, 31.990934, 45.202728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416912, 32.376778, 45.415028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297871, 32.017189, 45.543571>,  <42.226444, 31.801435, 45.620697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297871, 32.017189, 45.543571>,  <42.416912, 32.376778, 45.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297871, 32.017189, 45.543571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248993, 0.398054, 0.882925,
		-0.921647, 0.182747, -0.342302,
		-0.297607, -0.898975, 0.321362,
		42.208588, 31.747496, 45.639980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703781, 32.431816, 45.732300>,  <42.416912, 32.376778, 45.415028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703781, 32.431816, 45.732300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876362, 32.104736, 45.884731>,  <41.979908, 31.908489, 45.976189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876362, 32.104736, 45.884731>,  <41.703781, 32.431816, 45.732300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876362, 32.104736, 45.884731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278030, 0.281330, 0.918451,
		-0.858225, -0.502216, -0.105965,
		0.431450, -0.817699, 0.381076,
		42.005798, 31.859426, 45.999054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288361, 32.118217, 46.317310>,  <41.703781, 32.431816, 45.732300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288361, 32.118217, 46.317310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623196, 31.914705, 46.397736>,  <41.824097, 31.792597, 46.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623196, 31.914705, 46.397736>,  <41.288361, 32.118217, 46.317310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623196, 31.914705, 46.397736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158729, 0.125846, 0.979269,
		-0.523539, -0.851647, 0.024585,
		0.837085, -0.508783, 0.201066,
		41.874321, 31.762070, 46.458057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183277, 31.724010, 46.950970>,  <41.288361, 32.118217, 46.317310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183277, 31.724010, 46.950970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581074, 31.693905, 46.921783>,  <41.819752, 31.675842, 46.904270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581074, 31.693905, 46.921783>,  <41.183277, 31.724010, 46.950970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581074, 31.693905, 46.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077059, 0.052989, 0.995617,
		-0.071070, -0.995754, 0.058497,
		0.994490, -0.075266, -0.072966,
		41.879421, 31.671326, 46.899895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437054, 31.218973, 47.515488>,  <41.183277, 31.724010, 46.950970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437054, 31.218973, 47.515488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752750, 31.450596, 47.433716>,  <41.942169, 31.589569, 47.384655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752750, 31.450596, 47.433716>,  <41.437054, 31.218973, 47.515488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752750, 31.450596, 47.433716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240431, 0.014932, 0.970551,
		0.565057, -0.815150, -0.127438,
		0.789242, 0.579057, -0.204425,
		41.989525, 31.624313, 47.372387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003033, 30.973427, 47.976406>,  <41.437054, 31.218973, 47.515488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003033, 30.973427, 47.976406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074814, 31.353863, 47.875824>,  <42.117882, 31.582125, 47.815475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074814, 31.353863, 47.875824>,  <42.003033, 30.973427, 47.976406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074814, 31.353863, 47.875824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152943, 0.225520, 0.962158,
		0.971806, -0.211115, -0.104993,
		0.179448, 0.951089, -0.251451,
		42.128647, 31.639189, 47.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723412, 31.144777, 48.251675>,  <42.003033, 30.973427, 47.976406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723412, 31.144777, 48.251675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556683, 31.499836, 48.173347>,  <42.456646, 31.712872, 48.126350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556683, 31.499836, 48.173347>,  <42.723412, 31.144777, 48.251675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556683, 31.499836, 48.173347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338283, 0.351432, 0.872960,
		0.843697, 0.297624, -0.446760,
		-0.416820, 0.887646, -0.195821,
		42.431637, 31.766130, 48.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321030, 31.745922, 48.411938>,  <42.723412, 31.144777, 48.251675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321030, 31.745922, 48.411938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961124, 31.919058, 48.434097>,  <42.745182, 32.022938, 48.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961124, 31.919058, 48.434097>,  <43.321030, 31.745922, 48.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961124, 31.919058, 48.434097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229134, 0.360598, 0.904139,
		0.371371, 0.826208, -0.423632,
		-0.899768, 0.432839, 0.055397,
		42.691193, 32.048908, 48.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479454, 32.441597, 48.491848>,  <43.321030, 31.745922, 48.411938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479454, 32.441597, 48.491848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106258, 32.369225, 48.616299>,  <42.882343, 32.325802, 48.690971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106258, 32.369225, 48.616299>,  <43.479454, 32.441597, 48.491848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106258, 32.369225, 48.616299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227097, 0.374710, 0.898899,
		-0.279220, 0.909317, -0.308511,
		-0.932986, -0.180928, 0.311130,
		42.826363, 32.314945, 48.709637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259174, 33.104927, 48.960800>,  <43.479454, 32.441597, 48.491848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259174, 33.104927, 48.960800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015938, 32.807541, 49.072144>,  <42.869995, 32.629108, 49.138950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015938, 32.807541, 49.072144>,  <43.259174, 33.104927, 48.960800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015938, 32.807541, 49.072144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125422, 0.256261, 0.958436,
		-0.783894, 0.617732, -0.062584,
		-0.608094, -0.743463, 0.278359,
		42.833511, 32.584503, 49.155651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582039, 33.481869, 49.020889>,  <43.259174, 33.104927, 48.960800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582039, 33.481869, 49.020889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734669, 33.850536, 49.048988>,  <42.826248, 34.071735, 49.065849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734669, 33.850536, 49.048988>,  <42.582039, 33.481869, 49.020889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734669, 33.850536, 49.048988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208309, -0.011702, -0.977993,
		-0.900560, 0.387811, -0.196457,
		0.381575, 0.921665, 0.070246,
		42.849140, 34.127037, 49.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170341, 33.934483, 48.654480>,  <42.582039, 33.481869, 49.020889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170341, 33.934483, 48.654480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525959, 34.115501, 48.682190>,  <42.739330, 34.224113, 48.698814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525959, 34.115501, 48.682190>,  <42.170341, 33.934483, 48.654480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525959, 34.115501, 48.682190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098523, -0.041351, -0.994275,
		-0.447090, 0.890782, -0.081349,
		0.889047, 0.452545, 0.069275,
		42.792671, 34.251266, 48.702972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201015, 34.372246, 48.140099>,  <42.170341, 33.934483, 48.654480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201015, 34.372246, 48.140099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593819, 34.365795, 48.215363>,  <42.829498, 34.361923, 48.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593819, 34.365795, 48.215363>,  <42.201015, 34.372246, 48.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593819, 34.365795, 48.215363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188675, 0.126517, -0.973856,
		-0.008099, 0.991833, 0.127283,
		0.982006, -0.016128, 0.188158,
		42.888420, 34.360958, 48.271809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494900, 35.024616, 47.854298>,  <42.201015, 34.372246, 48.140099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494900, 35.024616, 47.854298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802887, 34.772034, 47.890999>,  <42.987679, 34.620483, 47.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802887, 34.772034, 47.890999>,  <42.494900, 35.024616, 47.854298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802887, 34.772034, 47.890999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267743, 0.189197, -0.944732,
		0.579196, 0.751976, 0.314743,
		0.769965, -0.631455, 0.091754,
		43.033875, 34.582596, 47.918526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064587, 35.363972, 47.470100>,  <42.494900, 35.024616, 47.854298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064587, 35.363972, 47.470100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163643, 34.977703, 47.501476>,  <43.223076, 34.745941, 47.520302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163643, 34.977703, 47.501476>,  <43.064587, 35.363972, 47.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163643, 34.977703, 47.501476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288345, -0.003837, -0.957519,
		0.924950, 0.259737, 0.277496,
		0.247638, -0.965672, 0.078443,
		43.237934, 34.688000, 47.525009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794441, 35.264187, 47.183540>,  <43.064587, 35.363972, 47.470100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794441, 35.264187, 47.183540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644783, 34.894104, 47.158222>,  <43.554989, 34.672054, 47.143032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644783, 34.894104, 47.158222>,  <43.794441, 35.264187, 47.183540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644783, 34.894104, 47.158222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351752, -0.078431, -0.932802,
		0.858071, -0.371268, 0.354788,
		-0.374146, -0.925207, -0.063295,
		43.532539, 34.616543, 47.139233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230881, 35.089840, 46.707539>,  <43.794441, 35.264187, 47.183540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230881, 35.089840, 46.707539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924133, 34.833496, 46.693604>,  <43.740086, 34.679688, 46.685242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924133, 34.833496, 46.693604>,  <44.230881, 35.089840, 46.707539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924133, 34.833496, 46.693604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034941, 0.012518, -0.999311,
		0.640857, -0.767553, 0.012793,
		-0.766865, -0.640863, -0.034842,
		43.694073, 34.641239, 46.683151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361851, 34.499119, 46.196796>,  <44.230881, 35.089840, 46.707539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361851, 34.499119, 46.196796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965427, 34.473427, 46.243587>,  <43.727573, 34.458012, 46.271664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965427, 34.473427, 46.243587>,  <44.361851, 34.499119, 46.196796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965427, 34.473427, 46.243587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117491, 0.004254, -0.993065,
		0.063285, -0.997926, -0.011763,
		-0.991056, -0.064228, 0.116978,
		43.668110, 34.454159, 46.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105995, 34.044739, 45.763371>,  <44.361851, 34.499119, 46.196796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105995, 34.044739, 45.763371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768147, 34.250420, 45.822987>,  <43.565437, 34.373829, 45.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768147, 34.250420, 45.822987>,  <44.105995, 34.044739, 45.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768147, 34.250420, 45.822987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236493, -0.108597, -0.965545,
		-0.480301, -0.850765, 0.213328,
		-0.844619, 0.514203, 0.149041,
		43.514759, 34.404682, 45.867699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661106, 33.781986, 45.281208>,  <44.105995, 34.044739, 45.763371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661106, 33.781986, 45.281208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509903, 34.143902, 45.359657>,  <43.419182, 34.361050, 45.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509903, 34.143902, 45.359657>,  <43.661106, 33.781986, 45.281208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509903, 34.143902, 45.359657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121581, 0.161496, -0.979355,
		-0.917784, -0.394049, 0.048958,
		-0.378007, 0.904790, 0.196128,
		43.396500, 34.415340, 45.418495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972763, 33.775105, 45.105877>,  <43.661106, 33.781986, 45.281208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972763, 33.775105, 45.105877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063362, 34.164707, 45.105049>,  <43.117722, 34.398468, 45.104553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063362, 34.164707, 45.105049>,  <42.972763, 33.775105, 45.105877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063362, 34.164707, 45.105049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313368, 0.070854, -0.946985,
		-0.922226, 0.215136, 0.321272,
		0.226494, 0.974010, -0.002073,
		43.131310, 34.456909, 45.104427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457581, 34.125370, 44.791527>,  <42.972763, 33.775105, 45.105877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457581, 34.125370, 44.791527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778854, 34.360371, 44.752056>,  <42.971619, 34.501369, 44.728374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778854, 34.360371, 44.752056>,  <42.457581, 34.125370, 44.791527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778854, 34.360371, 44.752056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256434, 0.191449, -0.947412,
		-0.537714, 0.786250, 0.304424,
		0.803185, 0.587501, -0.098676,
		43.019810, 34.536621, 44.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268360, 34.782059, 44.539757>,  <42.457581, 34.125370, 44.791527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268360, 34.782059, 44.539757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654846, 34.779247, 44.436703>,  <42.886738, 34.777561, 44.374870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654846, 34.779247, 44.436703>,  <42.268360, 34.782059, 44.539757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654846, 34.779247, 44.436703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248313, 0.242397, -0.937861,
		0.069046, 0.970152, 0.232462,
		0.966216, -0.007032, -0.257638,
		42.944710, 34.777138, 44.359413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277676, 35.298756, 44.107433>,  <42.268360, 34.782059, 44.539757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277676, 35.298756, 44.107433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601151, 35.075966, 44.031750>,  <42.795235, 34.942291, 43.986340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601151, 35.075966, 44.031750>,  <42.277676, 35.298756, 44.107433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601151, 35.075966, 44.031750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005196, 0.314886, -0.949115,
		0.588211, 0.768524, 0.251751,
		0.808691, -0.556972, -0.189213,
		42.843758, 34.908875, 43.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615910, 35.661144, 43.669724>,  <42.277676, 35.298756, 44.107433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615910, 35.661144, 43.669724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811855, 35.315239, 43.625504>,  <42.929424, 35.107697, 43.598972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811855, 35.315239, 43.625504>,  <42.615910, 35.661144, 43.669724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811855, 35.315239, 43.625504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061395, 0.092275, -0.993839,
		0.869632, 0.493637, -0.007889,
		0.489868, -0.864759, -0.110552,
		42.958817, 35.055813, 43.592339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214657, 35.752289, 43.270325>,  <42.615910, 35.661144, 43.669724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214657, 35.752289, 43.270325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117275, 35.366096, 43.233276>,  <43.058846, 35.134380, 43.211048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117275, 35.366096, 43.233276>,  <43.214657, 35.752289, 43.270325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117275, 35.366096, 43.233276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089154, 0.117366, -0.989079,
		0.965805, -0.232540, -0.114650,
		-0.243457, -0.965479, -0.092620,
		43.044239, 35.076454, 43.205490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424644, 35.562164, 42.538818>,  <43.214657, 35.752289, 43.270325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424644, 35.562164, 42.538818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203556, 35.245968, 42.644367>,  <43.070904, 35.056252, 42.707695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203556, 35.245968, 42.644367>,  <43.424644, 35.562164, 42.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203556, 35.245968, 42.644367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189467, -0.189146, -0.963497,
		0.811542, -0.582541, -0.045226,
		-0.552722, -0.790487, 0.263872,
		43.037739, 35.008823, 42.723530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633228, 34.946831, 42.123638>,  <43.424644, 35.562164, 42.538818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633228, 34.946831, 42.123638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259373, 34.872803, 42.245098>,  <43.035061, 34.828384, 42.317974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259373, 34.872803, 42.245098>,  <43.633228, 34.946831, 42.123638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259373, 34.872803, 42.245098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255694, -0.243665, -0.935547,
		0.247130, -0.952038, 0.180418,
		-0.934638, -0.185070, 0.303648,
		42.978981, 34.817284, 42.336193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500355, 34.279884, 41.795391>,  <43.633228, 34.946831, 42.123638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500355, 34.279884, 41.795391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163181, 34.472439, 41.891495>,  <42.960876, 34.587971, 41.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163181, 34.472439, 41.891495>,  <43.500355, 34.279884, 41.795391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163181, 34.472439, 41.891495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357338, -0.167093, -0.918907,
		-0.402204, -0.860434, 0.312866,
		-0.842936, 0.481387, 0.240260,
		42.910301, 34.616856, 41.963573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014862, 33.889839, 41.595665>,  <43.500355, 34.279884, 41.795391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014862, 33.889839, 41.595665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800091, 34.226059, 41.624489>,  <42.671230, 34.427792, 41.641781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800091, 34.226059, 41.624489>,  <43.014862, 33.889839, 41.595665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800091, 34.226059, 41.624489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528552, -0.268596, -0.805288,
		-0.657529, -0.470463, 0.588489,
		-0.536924, 0.840548, 0.072055,
		42.639015, 34.478222, 41.646107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329536, 33.638779, 41.515533>,  <43.014862, 33.889839, 41.595665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329536, 33.638779, 41.515533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325790, 34.029041, 41.427891>,  <42.323544, 34.263199, 41.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325790, 34.029041, 41.427891>,  <42.329536, 33.638779, 41.515533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325790, 34.029041, 41.427891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411855, -0.203430, -0.888252,
		-0.911201, 0.081924, 0.403734,
		-0.009363, 0.975656, -0.219107,
		42.322983, 34.321739, 41.362160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673180, 33.802956, 41.188557>,  <42.329536, 33.638779, 41.515533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673180, 33.802956, 41.188557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910728, 34.104317, 41.075634>,  <42.053257, 34.285133, 41.007881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910728, 34.104317, 41.075634>,  <41.673180, 33.802956, 41.188557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910728, 34.104317, 41.075634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336027, -0.086549, -0.937867,
		-0.731025, 0.651838, 0.201764,
		0.593875, 0.753403, -0.282305,
		42.088890, 34.330338, 40.990944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249138, 34.271233, 40.680664>,  <41.673180, 33.802956, 41.188557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249138, 34.271233, 40.680664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639420, 34.333923, 40.619438>,  <41.873589, 34.371536, 40.582703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639420, 34.333923, 40.619438>,  <41.249138, 34.271233, 40.680664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639420, 34.333923, 40.619438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165657, 0.070625, -0.983651,
		-0.143352, 0.985114, 0.094872,
		0.975709, 0.156725, -0.153067,
		41.932133, 34.380939, 40.573517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297619, 34.922230, 40.257336>,  <41.249138, 34.271233, 40.680664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297619, 34.922230, 40.257336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634991, 34.724407, 40.173389>,  <41.837414, 34.605713, 40.123024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634991, 34.724407, 40.173389>,  <41.297619, 34.922230, 40.257336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634991, 34.724407, 40.173389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083326, 0.265482, -0.960508,
		0.530740, 0.827607, 0.182706,
		0.843428, -0.494556, -0.209863,
		41.888020, 34.576042, 40.110432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567642, 35.327660, 39.743126>,  <41.297619, 34.922230, 40.257336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567642, 35.327660, 39.743126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766300, 34.981781, 39.713089>,  <41.885494, 34.774254, 39.695068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766300, 34.981781, 39.713089>,  <41.567642, 35.327660, 39.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766300, 34.981781, 39.713089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153881, 0.172861, -0.972851,
		0.854205, 0.471605, 0.218911,
		0.496643, -0.864701, -0.075088,
		41.915295, 34.722370, 39.690563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041977, 35.408756, 39.162796>,  <41.567642, 35.327660, 39.743126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041977, 35.408756, 39.162796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056198, 35.010456, 39.196793>,  <42.064732, 34.771477, 39.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056198, 35.010456, 39.196793>,  <42.041977, 35.408756, 39.162796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056198, 35.010456, 39.196793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239675, -0.074064, -0.968024,
		0.970202, 0.054782, 0.236023,
		0.035550, -0.995748, 0.084987,
		42.066864, 34.711731, 39.222290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611351, 35.197464, 38.831902>,  <42.041977, 35.408756, 39.162796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611351, 35.197464, 38.831902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395100, 34.861107, 38.841846>,  <42.265347, 34.659294, 38.847813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395100, 34.861107, 38.841846>,  <42.611351, 35.197464, 38.831902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395100, 34.861107, 38.841846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198458, -0.156200, -0.967582,
		0.817516, -0.518171, 0.251328,
		-0.540631, -0.840893, 0.024861,
		42.232910, 34.608841, 38.849304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959286, 34.887432, 38.364902>,  <42.611351, 35.197464, 38.831902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959286, 34.887432, 38.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621971, 34.677216, 38.409943>,  <42.419582, 34.551086, 38.436966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621971, 34.677216, 38.409943>,  <42.959286, 34.887432, 38.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621971, 34.677216, 38.409943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034885, -0.262581, -0.964279,
		0.536332, -0.809235, 0.239764,
		-0.843286, -0.525538, 0.112600,
		42.368984, 34.519554, 38.443722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160419, 34.170822, 38.075928>,  <42.959286, 34.887432, 38.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160419, 34.170822, 38.075928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762444, 34.203823, 38.053001>,  <42.523659, 34.223621, 38.039246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762444, 34.203823, 38.053001>,  <43.160419, 34.170822, 38.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762444, 34.203823, 38.053001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032126, -0.279281, -0.959672,
		-0.095177, -0.956659, 0.275218,
		-0.994942, 0.082497, -0.057314,
		42.463963, 34.228573, 38.035809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852589, 33.539902, 37.872494>,  <43.160419, 34.170822, 38.075928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852589, 33.539902, 37.872494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606251, 33.840996, 37.779438>,  <42.458447, 34.021652, 37.723602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606251, 33.840996, 37.779438>,  <42.852589, 33.539902, 37.872494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606251, 33.840996, 37.779438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008627, -0.301707, -0.953362,
		-0.787818, -0.585119, 0.192299,
		-0.615848, 0.752735, -0.232642,
		42.421497, 34.066814, 37.709644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361088, 33.180054, 37.378014>,  <42.852589, 33.539902, 37.872494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361088, 33.180054, 37.378014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289532, 33.569679, 37.322601>,  <42.246597, 33.803455, 37.289356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289532, 33.569679, 37.322601>,  <42.361088, 33.180054, 37.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289532, 33.569679, 37.322601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134612, -0.163706, -0.977282,
		-0.974617, -0.156180, 0.160407,
		-0.178892, 0.974068, -0.138526,
		42.235863, 33.861900, 37.281044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803360, 33.158100, 36.870079>,  <42.361088, 33.180054, 37.378014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803360, 33.158100, 36.870079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927162, 33.538368, 36.861717>,  <42.001442, 33.766529, 36.856701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927162, 33.538368, 36.861717>,  <41.803360, 33.158100, 36.870079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927162, 33.538368, 36.861717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028713, -0.031315, -0.999097,
		-0.950464, 0.308625, -0.036989,
		0.309505, 0.950668, -0.020903,
		42.020012, 33.823570, 36.855446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298923, 33.493629, 36.437206>,  <41.803360, 33.158100, 36.870079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298923, 33.493629, 36.437206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650063, 33.685040, 36.429157>,  <41.860744, 33.799885, 36.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650063, 33.685040, 36.429157>,  <41.298923, 33.493629, 36.437206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650063, 33.685040, 36.429157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000400, -0.041289, -0.999147,
		-0.478947, 0.877103, -0.036054,
		0.877844, 0.478524, -0.020126,
		41.913414, 33.828598, 36.423119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191757, 34.060917, 35.894566>,  <41.298923, 33.493629, 36.437206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191757, 34.060917, 35.894566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584183, 33.998253, 35.940117>,  <41.819637, 33.960655, 35.967449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584183, 33.998253, 35.940117>,  <41.191757, 34.060917, 35.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584183, 33.998253, 35.940117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099484, -0.096874, -0.990312,
		0.166179, 0.982889, -0.079454,
		0.981064, -0.156665, 0.113880,
		41.878502, 33.951252, 35.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577309, 34.681164, 35.499310>,  <41.191757, 34.060917, 35.894566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577309, 34.681164, 35.499310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808605, 34.357582, 35.541698>,  <41.947384, 34.163433, 35.567131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808605, 34.357582, 35.541698>,  <41.577309, 34.681164, 35.499310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808605, 34.357582, 35.541698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043359, -0.099240, -0.994119,
		0.814710, 0.579439, -0.022310,
		0.578246, -0.808951, 0.105976,
		41.982079, 34.114899, 35.573490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018780, 34.720520, 34.942688>,  <41.577309, 34.681164, 35.499310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018780, 34.720520, 34.942688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118118, 34.341366, 35.022526>,  <42.177719, 34.113873, 35.070431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118118, 34.341366, 35.022526>,  <42.018780, 34.720520, 34.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118118, 34.341366, 35.022526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091247, -0.182244, -0.979010,
		0.964365, 0.261342, 0.041233,
		0.248342, -0.947886, 0.199597,
		42.192619, 34.056999, 35.082405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720837, 34.517765, 34.568935>,  <42.018780, 34.720520, 34.942688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720837, 34.517765, 34.568935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514172, 34.183010, 34.641247>,  <42.390171, 33.982159, 34.684635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514172, 34.183010, 34.641247>,  <42.720837, 34.517765, 34.568935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514172, 34.183010, 34.641247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089366, -0.262702, -0.960729,
		0.851512, -0.480218, 0.210518,
		-0.516663, -0.836886, 0.180778,
		42.359173, 33.931946, 34.695480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061035, 34.062309, 34.117626>,  <42.720837, 34.517765, 34.568935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061035, 34.062309, 34.117626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724583, 33.873806, 34.223770>,  <42.522713, 33.760704, 34.287457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724583, 33.873806, 34.223770>,  <43.061035, 34.062309, 34.117626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724583, 33.873806, 34.223770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197059, -0.189862, -0.961831,
		0.503653, -0.861317, 0.066833,
		-0.841131, -0.471259, 0.265355,
		42.472244, 33.732430, 34.303375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093117, 33.451374, 33.742157>,  <43.061035, 34.062309, 34.117626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093117, 33.451374, 33.742157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708817, 33.520790, 33.828724>,  <42.478237, 33.562439, 33.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708817, 33.520790, 33.828724>,  <43.093117, 33.451374, 33.742157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708817, 33.520790, 33.828724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242879, -0.149329, -0.958494,
		-0.134006, -0.973442, 0.185615,
		-0.960756, 0.173526, 0.216417,
		42.420589, 33.572853, 33.893646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722191, 32.872620, 33.665169>,  <43.093117, 33.451374, 33.742157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722191, 32.872620, 33.665169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503647, 33.201290, 33.600246>,  <42.372520, 33.398491, 33.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503647, 33.201290, 33.600246>,  <42.722191, 32.872620, 33.665169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503647, 33.201290, 33.600246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026935, -0.176451, -0.983941,
		-0.837119, -0.541954, 0.074274,
		-0.546357, 0.821675, -0.162307,
		42.339741, 33.447792, 33.551556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185566, 32.672153, 33.259663>,  <42.722191, 32.872620, 33.665169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185566, 32.672153, 33.259663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247200, 33.062153, 33.195629>,  <42.284180, 33.296154, 33.157207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247200, 33.062153, 33.195629>,  <42.185566, 32.672153, 33.259663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247200, 33.062153, 33.195629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294047, -0.109431, -0.949506,
		-0.943289, 0.193380, 0.269834,
		0.154087, 0.975002, -0.160088,
		42.293427, 33.354652, 33.147602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774788, 32.727562, 32.875107>,  <42.185566, 32.672153, 33.259663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774788, 32.727562, 32.875107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028473, 32.433254, 32.780098>,  <43.180683, 32.256668, 32.723095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028473, 32.433254, 32.780098>,  <42.774788, 32.727562, 32.875107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028473, 32.433254, 32.780098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294581, 0.513994, -0.805625,
		0.714837, 0.440972, 0.542726,
		0.634216, -0.735768, -0.237520,
		43.218739, 32.212524, 32.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403183, 32.995251, 32.786919>,  <42.774788, 32.727562, 32.875107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403183, 32.995251, 32.786919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348255, 32.689884, 32.534462>,  <43.315300, 32.506664, 32.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348255, 32.689884, 32.534462>,  <43.403183, 32.995251, 32.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348255, 32.689884, 32.534462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226951, 0.595982, -0.770258,
		0.964177, -0.249008, 0.091420,
		-0.137316, -0.763413, -0.631145,
		43.307060, 32.460861, 32.345119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026150, 32.710384, 32.476440>,  <43.403183, 32.995251, 32.786919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026150, 32.710384, 32.476440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692104, 32.679066, 32.258652>,  <43.491676, 32.660275, 32.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692104, 32.679066, 32.258652>,  <44.026150, 32.710384, 32.476440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692104, 32.679066, 32.258652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277739, 0.794364, -0.540229,
		0.474805, -0.602375, -0.641642,
		-0.835118, -0.078294, -0.544471,
		43.441570, 32.655579, 32.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276604, 32.633121, 31.770731>,  <44.026150, 32.710384, 32.476440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276604, 32.633121, 31.770731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920559, 32.810162, 31.814192>,  <43.706932, 32.916386, 31.840269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920559, 32.810162, 31.814192>,  <44.276604, 32.633121, 31.770731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920559, 32.810162, 31.814192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291424, 0.736066, -0.610966,
		-0.350391, -0.512163, -0.784165,
		-0.890111, 0.442601, 0.108654,
		43.653526, 32.942944, 31.846788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937164, 32.754612, 31.237972>,  <44.276604, 32.633121, 31.770731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937164, 32.754612, 31.237972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753468, 33.037609, 31.452841>,  <43.643250, 33.207405, 31.581762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753468, 33.037609, 31.452841>,  <43.937164, 32.754612, 31.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753468, 33.037609, 31.452841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115475, 0.647128, -0.753585,
		-0.880773, -0.284049, -0.378886,
		-0.459243, 0.707489, 0.537173,
		43.615696, 33.249855, 31.613993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694267, 33.155334, 30.761553>,  <43.937164, 32.754612, 31.237972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694267, 33.155334, 30.761553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657135, 33.408684, 31.068857>,  <43.634853, 33.560692, 31.253239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657135, 33.408684, 31.068857>,  <43.694267, 33.155334, 30.761553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657135, 33.408684, 31.068857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162796, 0.770864, -0.615846,
		-0.982283, 0.067899, -0.174673,
		-0.092834, 0.633371, 0.768260,
		43.629284, 33.598694, 31.299335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146305, 33.700249, 30.645832>,  <43.694267, 33.155334, 30.761553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146305, 33.700249, 30.645832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469814, 33.790813, 30.862951>,  <43.663918, 33.845154, 30.993223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469814, 33.790813, 30.862951>,  <43.146305, 33.700249, 30.645832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469814, 33.790813, 30.862951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204926, 0.756604, -0.620931,
		-0.551270, 0.613423, 0.565520,
		0.808768, 0.226411, 0.542800,
		43.712444, 33.858738, 31.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127174, 34.438854, 30.915447>,  <43.146305, 33.700249, 30.645832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127174, 34.438854, 30.915447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510914, 34.326920, 30.900757>,  <43.741158, 34.259758, 30.891943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510914, 34.326920, 30.900757>,  <43.127174, 34.438854, 30.915447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510914, 34.326920, 30.900757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205863, 0.782803, -0.587230,
		0.193078, 0.555796, 0.808586,
		0.959344, -0.279839, -0.036724,
		43.798717, 34.242970, 30.889740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530338, 35.050961, 31.121124>,  <43.127174, 34.438854, 30.915447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530338, 35.050961, 31.121124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792557, 34.821392, 30.924809>,  <43.949886, 34.683651, 30.807018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792557, 34.821392, 30.924809>,  <43.530338, 35.050961, 31.121124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792557, 34.821392, 30.924809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156060, 0.738853, -0.655547,
		0.738853, 0.353149, 0.573918,
		0.655547, -0.573918, -0.490791,
		43.989220, 34.649216, 30.777571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133682, 35.465611, 31.006680>,  <43.530338, 35.050961, 31.121124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133682, 35.465611, 31.006680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152260, 35.167767, 30.740328>,  <44.163406, 34.989059, 30.580517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152260, 35.167767, 30.740328>,  <44.133682, 35.465611, 31.006680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152260, 35.167767, 30.740328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106634, 0.666484, -0.737854,
		0.993213, -0.036733, 0.110358,
		0.046448, -0.744614, -0.665878,
		44.166195, 34.944382, 30.540565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520275, 35.757820, 30.544554>,  <44.133682, 35.465611, 31.006680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520275, 35.757820, 30.544554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353699, 35.455605, 30.342274>,  <44.253754, 35.274277, 30.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353699, 35.455605, 30.342274>,  <44.520275, 35.757820, 30.544554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353699, 35.455605, 30.342274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060930, 0.578170, -0.813639,
		0.907117, -0.308023, -0.286811,
		-0.416445, -0.755540, -0.505699,
		44.228764, 35.228943, 30.190563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814285, 35.784607, 29.949306>,  <44.520275, 35.757820, 30.544554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814285, 35.784607, 29.949306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472538, 35.594349, 29.865582>,  <44.267490, 35.480194, 29.815346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472538, 35.594349, 29.865582>,  <44.814285, 35.784607, 29.949306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472538, 35.594349, 29.865582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009194, 0.416562, -0.909061,
		0.519582, -0.774751, -0.360271,
		-0.854371, -0.475644, -0.209315,
		44.216225, 35.451656, 29.802788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866215, 35.534039, 29.300350>,  <44.814285, 35.784607, 29.949306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866215, 35.534039, 29.300350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468800, 35.554535, 29.340866>,  <44.230350, 35.566833, 29.365175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468800, 35.554535, 29.340866>,  <44.866215, 35.534039, 29.300350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468800, 35.554535, 29.340866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071238, 0.413251, -0.907826,
		-0.088379, -0.909174, -0.406930,
		-0.993536, 0.051244, 0.101290,
		44.170738, 35.569908, 29.371254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644775, 35.515564, 28.636671>,  <44.866215, 35.534039, 29.300350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644775, 35.515564, 28.636671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317394, 35.630672, 28.835598>,  <44.120968, 35.699738, 28.954954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317394, 35.630672, 28.835598>,  <44.644775, 35.515564, 28.636671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317394, 35.630672, 28.835598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317743, 0.494464, -0.809039,
		-0.478727, -0.820177, -0.313256,
		-0.818449, 0.287774, 0.497319,
		44.071861, 35.717003, 28.984795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160664, 35.464233, 28.132780>,  <44.644775, 35.515564, 28.636671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160664, 35.464233, 28.132780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987202, 35.707150, 28.399057>,  <43.883125, 35.852898, 28.558823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987202, 35.707150, 28.399057>,  <44.160664, 35.464233, 28.132780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987202, 35.707150, 28.399057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448991, 0.494896, -0.743965,
		-0.781249, -0.621514, 0.058052,
		-0.433656, 0.607287, 0.665691,
		43.857105, 35.889336, 28.598764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552204, 35.658688, 27.880877>,  <44.160664, 35.464233, 28.132780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552204, 35.658688, 27.880877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615948, 35.964180, 28.131102>,  <43.654194, 36.147476, 28.281237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615948, 35.964180, 28.131102>,  <43.552204, 35.658688, 27.880877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615948, 35.964180, 28.131102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278075, 0.642726, -0.713847,
		-0.947249, -0.060197, 0.314796,
		0.159356, 0.763728, 0.625561,
		43.663754, 36.193298, 28.318769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978600, 36.173634, 27.806507>,  <43.552204, 35.658688, 27.880877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978600, 36.173634, 27.806507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234680, 36.413658, 27.998367>,  <43.388329, 36.557674, 28.113483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234680, 36.413658, 27.998367>,  <42.978600, 36.173634, 27.806507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234680, 36.413658, 27.998367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407687, 0.794588, -0.449913,
		-0.651102, 0.092487, 0.753334,
		0.640201, 0.600064, 0.479652,
		43.426739, 36.593678, 28.142263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620483, 36.729820, 28.070604>,  <42.978600, 36.173634, 27.806507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620483, 36.729820, 28.070604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993233, 36.874935, 28.071030>,  <43.216881, 36.962002, 28.071285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993233, 36.874935, 28.071030>,  <42.620483, 36.729820, 28.070604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993233, 36.874935, 28.071030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331468, 0.852620, -0.403941,
		-0.147452, 0.376068, 0.914784,
		0.931873, 0.362784, 0.001065,
		43.272793, 36.983768, 28.071350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526051, 37.433426, 28.270376>,  <42.620483, 36.729820, 28.070604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526051, 37.433426, 28.270376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879433, 37.406082, 28.084976>,  <43.091461, 37.389675, 27.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879433, 37.406082, 28.084976>,  <42.526051, 37.433426, 28.270376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879433, 37.406082, 28.084976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238742, 0.785538, -0.570904,
		0.403122, 0.615026, 0.677670,
		0.883456, -0.068356, -0.463500,
		43.144470, 37.385574, 27.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731911, 38.118900, 28.121588>,  <42.526051, 37.433426, 28.270376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731911, 38.118900, 28.121588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991497, 37.912651, 27.897810>,  <43.147247, 37.788902, 27.763544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991497, 37.912651, 27.897810>,  <42.731911, 38.118900, 28.121588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991497, 37.912651, 27.897810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026705, 0.750305, -0.660552,
		0.760348, 0.413737, 0.500692,
		0.648967, -0.515620, -0.559444,
		43.186188, 37.757965, 27.729977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287216, 38.533249, 28.041662>,  <42.731911, 38.118900, 28.121588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287216, 38.533249, 28.041662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285038, 38.283699, 27.729059>,  <43.283730, 38.133968, 27.541498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285038, 38.283699, 27.729059>,  <43.287216, 38.533249, 28.041662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285038, 38.283699, 27.729059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048676, 0.780425, -0.623352,
		0.998800, -0.041436, 0.026117,
		-0.005447, -0.623875, -0.781505,
		43.283405, 38.096535, 27.494608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782063, 38.829800, 27.643158>,  <43.287216, 38.533249, 28.041662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782063, 38.829800, 27.643158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524948, 38.616848, 27.422829>,  <43.370678, 38.489079, 27.290632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524948, 38.616848, 27.422829>,  <43.782063, 38.829800, 27.643158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524948, 38.616848, 27.422829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040922, 0.694154, -0.718663,
		0.764955, -0.484485, -0.424404,
		-0.642783, -0.532377, -0.550822,
		43.332111, 38.457134, 27.257582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214294, 38.785000, 27.026539>,  <43.782063, 38.829800, 27.643158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214294, 38.785000, 27.026539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829075, 38.724823, 26.937180>,  <43.597942, 38.688717, 26.883564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829075, 38.724823, 26.937180>,  <44.214294, 38.785000, 27.026539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829075, 38.724823, 26.937180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081565, 0.627593, -0.774257,
		0.256681, -0.763868, -0.592132,
		-0.963048, -0.150440, -0.223396,
		43.540161, 38.679691, 26.870161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282181, 39.115265, 26.340340>,  <44.214294, 38.785000, 27.026539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282181, 39.115265, 26.340340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889679, 39.039268, 26.353262>,  <43.654179, 38.993671, 26.361015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889679, 39.039268, 26.353262>,  <44.282181, 39.115265, 26.340340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889679, 39.039268, 26.353262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147734, 0.633926, -0.759152,
		0.123754, -0.749694, -0.650111,
		-0.981254, -0.189992, 0.032304,
		43.595303, 38.982269, 26.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073593, 39.061783, 25.621574>,  <44.282181, 39.115265, 26.340340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073593, 39.061783, 25.621574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754959, 39.174870, 25.835308>,  <43.563778, 39.242722, 25.963549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754959, 39.174870, 25.835308>,  <44.073593, 39.061783, 25.621574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754959, 39.174870, 25.835308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135194, 0.778198, -0.613295,
		-0.589210, -0.560783, -0.581682,
		-0.796589, 0.282720, 0.534336,
		43.515984, 39.259686, 25.995609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548080, 39.101837, 25.193151>,  <44.073593, 39.061783, 25.621574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548080, 39.101837, 25.193151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484493, 39.338566, 25.509247>,  <43.446342, 39.480602, 25.698904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484493, 39.338566, 25.509247>,  <43.548080, 39.101837, 25.193151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484493, 39.338566, 25.509247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063470, 0.792637, -0.606381,
		-0.985242, -0.146551, -0.088441,
		-0.158967, 0.591819, 0.790241,
		43.436802, 39.516113, 25.746319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984222, 39.534546, 24.955402>,  <43.548080, 39.101837, 25.193151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984222, 39.534546, 24.955402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132721, 39.696072, 25.289854>,  <43.221821, 39.792988, 25.490524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132721, 39.696072, 25.289854>,  <42.984222, 39.534546, 24.955402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132721, 39.696072, 25.289854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045010, 0.907250, -0.418176,
		-0.927443, 0.117612, 0.354988,
		0.371246, 0.403813, 0.836129,
		43.244095, 39.817215, 25.540693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602478, 40.206078, 25.052576>,  <42.984222, 39.534546, 24.955402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602478, 40.206078, 25.052576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930073, 40.234924, 25.280281>,  <43.126629, 40.252232, 25.416904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930073, 40.234924, 25.280281>,  <42.602478, 40.206078, 25.052576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930073, 40.234924, 25.280281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056006, 0.977287, -0.204387,
		-0.571073, 0.199272, 0.796346,
		0.818987, 0.072120, 0.569262,
		43.175770, 40.256561, 25.451059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701679, 40.912571, 25.037708>,  <42.602478, 40.206078, 25.052576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701679, 40.912571, 25.037708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008347, 40.783783, 25.259901>,  <43.192345, 40.706512, 25.393217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008347, 40.783783, 25.259901>,  <42.701679, 40.912571, 25.037708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008347, 40.783783, 25.259901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360517, 0.931784, 0.042502,
		-0.531275, 0.167676, 0.830440,
		0.766664, -0.321968, 0.555484,
		43.238346, 40.687191, 25.426546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938873, 41.475605, 25.179375>,  <42.701679, 40.912571, 25.037708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938873, 41.475605, 25.179375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247196, 41.228012, 25.239672>,  <43.432190, 41.079456, 25.275850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247196, 41.228012, 25.239672>,  <42.938873, 41.475605, 25.179375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247196, 41.228012, 25.239672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634086, 0.722527, -0.275481,
		0.061600, 0.307927, 0.949414,
		0.770805, -0.618980, 0.150744,
		43.478439, 41.042316, 25.284895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461117, 41.536774, 25.758675>,  <42.938873, 41.475605, 25.179375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461117, 41.536774, 25.758675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606754, 41.404987, 25.410219>,  <43.694138, 41.325916, 25.201145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606754, 41.404987, 25.410219>,  <43.461117, 41.536774, 25.758675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606754, 41.404987, 25.410219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394238, 0.901933, -0.176336,
		0.843806, -0.279233, 0.458279,
		0.364098, -0.329464, -0.871141,
		43.715984, 41.306149, 25.148876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351788, 41.464500, 25.652737>,  <43.461117, 41.536774, 25.758675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351788, 41.464500, 25.652737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070625, 41.591515, 25.398148>,  <43.901928, 41.667725, 25.245394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070625, 41.591515, 25.398148>,  <44.351788, 41.464500, 25.652737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070625, 41.591515, 25.398148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263396, 0.947408, 0.181772,
		0.660719, -0.039876, -0.749573,
		-0.702903, 0.317535, -0.636474,
		43.859753, 41.686775, 25.207205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820488, 40.970959, 25.422472>,  <44.351788, 41.464500, 25.652737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820488, 40.970959, 25.422472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067307, 40.709610, 25.597902>,  <45.215397, 40.552799, 25.703161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067307, 40.709610, 25.597902>,  <44.820488, 40.970959, 25.422472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067307, 40.709610, 25.597902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726402, 0.687267, 0.001863,
		-0.302637, 0.317433, 0.898692,
		0.617050, -0.653376, 0.438577,
		45.252422, 40.513596, 25.729475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197029, 41.257729, 26.008289>,  <44.820488, 40.970959, 25.422472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197029, 41.257729, 26.008289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400620, 40.935715, 25.886393>,  <45.522774, 40.742508, 25.813253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400620, 40.935715, 25.886393>,  <45.197029, 41.257729, 26.008289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400620, 40.935715, 25.886393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826852, 0.555666, -0.086896,
		0.239289, -0.207750, 0.948462,
		0.508975, -0.805031, -0.304743,
		45.553310, 40.694206, 25.794970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862881, 41.264702, 26.361923>,  <45.197029, 41.257729, 26.008289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862881, 41.264702, 26.361923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922020, 41.018436, 26.052319>,  <45.957504, 40.870678, 25.866554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922020, 41.018436, 26.052319>,  <45.862881, 41.264702, 26.361923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922020, 41.018436, 26.052319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898359, 0.410913, -0.155247,
		0.413633, -0.672389, 0.613841,
		0.147849, -0.615665, -0.774014,
		45.966373, 40.833736, 25.820114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581284, 41.068497, 26.380419>,  <45.862881, 41.264702, 26.361923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581284, 41.068497, 26.380419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471806, 41.016899, 25.999168>,  <46.406120, 40.985939, 25.770418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471806, 41.016899, 25.999168>,  <46.581284, 41.068497, 26.380419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471806, 41.016899, 25.999168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833942, 0.461894, -0.301984,
		0.479198, -0.877504, -0.018843,
		-0.273696, -0.128996, -0.953127,
		46.389698, 40.978199, 25.713230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008526, 40.604900, 25.850899>,  <46.581284, 41.068497, 26.380419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008526, 40.604900, 25.850899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835922, 40.928829, 25.691908>,  <46.732361, 41.123184, 25.596512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835922, 40.928829, 25.691908>,  <47.008526, 40.604900, 25.850899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835922, 40.928829, 25.691908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883021, 0.289017, -0.369788,
		-0.184583, -0.510550, -0.839802,
		-0.431512, 0.809819, -0.397479,
		46.706470, 41.171776, 25.572664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177734, 40.267010, 26.511557>,  <47.008526, 40.604900, 25.850899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177734, 40.267010, 26.511557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923958, 39.967377, 26.435284>,  <46.771690, 39.787598, 26.389519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923958, 39.967377, 26.435284>,  <47.177734, 40.267010, 26.511557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923958, 39.967377, 26.435284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107287, -0.329642, 0.937990,
		-0.765487, 0.574645, 0.289505,
		-0.634445, -0.749079, -0.190685,
		46.733624, 39.742653, 26.378078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618019, 40.342010, 26.988108>,  <47.177734, 40.267010, 26.511557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618019, 40.342010, 26.988108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632267, 39.965130, 26.854847>,  <46.640816, 39.739002, 26.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632267, 39.965130, 26.854847>,  <46.618019, 40.342010, 26.988108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632267, 39.965130, 26.854847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002425, -0.333283, 0.942824,
		-0.999362, -0.034394, -0.009587,
		0.035623, -0.942199, -0.333154,
		46.642952, 39.682468, 26.754900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269947, 39.948360, 27.568781>,  <46.618019, 40.342010, 26.988108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269947, 39.948360, 27.568781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449608, 39.667427, 27.347879>,  <46.557404, 39.498867, 27.215338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449608, 39.667427, 27.347879>,  <46.269947, 39.948360, 27.568781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449608, 39.667427, 27.347879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102161, -0.573686, 0.812679,
		-0.887593, -0.421439, -0.185924,
		0.449156, -0.702335, -0.552254,
		46.584354, 39.456726, 27.182203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916515, 39.301025, 27.766186>,  <46.269947, 39.948360, 27.568781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916515, 39.301025, 27.766186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273384, 39.209091, 27.610641>,  <46.487503, 39.153931, 27.517315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273384, 39.209091, 27.610641>,  <45.916515, 39.301025, 27.766186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273384, 39.209091, 27.610641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202998, -0.565044, 0.799698,
		-0.403520, -0.792403, -0.457459,
		0.892168, -0.229831, -0.388863,
		46.541035, 39.140141, 27.493982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896488, 38.611179, 27.926659>,  <45.916515, 39.301025, 27.766186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896488, 38.611179, 27.926659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283096, 38.642365, 27.828871>,  <46.515060, 38.661076, 27.770197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283096, 38.642365, 27.828871>,  <45.896488, 38.611179, 27.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283096, 38.642365, 27.828871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238605, -0.623547, 0.744484,
		-0.094400, -0.777889, -0.621270,
		0.966517, 0.077959, -0.244471,
		46.573051, 38.665752, 27.755529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186363, 37.909939, 27.875597>,  <45.896488, 38.611179, 27.926659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186363, 37.909939, 27.875597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498348, 38.146130, 27.958542>,  <46.685539, 38.287846, 28.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498348, 38.146130, 27.958542>,  <46.186363, 37.909939, 27.875597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498348, 38.146130, 27.958542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129076, -0.475994, 0.869925,
		0.612372, -0.651743, -0.447473,
		0.779962, 0.590476, 0.207361,
		46.732338, 38.323273, 28.020750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766216, 37.533398, 27.945379>,  <46.186363, 37.909939, 27.875597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766216, 37.533398, 27.945379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865524, 37.852253, 28.165539>,  <46.925110, 38.043564, 28.297634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865524, 37.852253, 28.165539>,  <46.766216, 37.533398, 27.945379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865524, 37.852253, 28.165539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162792, -0.594441, 0.787489,
		0.954914, -0.105909, -0.277349,
		0.248270, 0.797134, 0.550399,
		46.940006, 38.091393, 28.330658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.429207, 37.422058, 28.341356>,  <46.766216, 37.533398, 27.945379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.429207, 37.422058, 28.341356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239655, 37.708660, 28.546122>,  <47.125923, 37.880623, 28.668982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239655, 37.708660, 28.546122>,  <47.429207, 37.422058, 28.341356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239655, 37.708660, 28.546122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132103, -0.516909, 0.845786,
		0.870622, 0.468430, 0.150303,
		-0.473884, 0.716504, 0.511913,
		47.097488, 37.923611, 28.699696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799610, 37.518948, 29.002453>,  <47.429207, 37.422058, 28.341356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799610, 37.518948, 29.002453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430817, 37.670563, 29.034147>,  <47.209541, 37.761532, 29.053164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430817, 37.670563, 29.034147>,  <47.799610, 37.518948, 29.002453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430817, 37.670563, 29.034147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107710, -0.447568, 0.887740,
		0.371954, 0.809944, 0.453476,
		-0.921981, 0.379042, 0.079236,
		47.154221, 37.784275, 29.057919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740166, 37.485004, 29.709446>,  <47.799610, 37.518948, 29.002453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740166, 37.485004, 29.709446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.374065, 37.593258, 29.590069>,  <47.154404, 37.658211, 29.518442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.374065, 37.593258, 29.590069>,  <47.740166, 37.485004, 29.709446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.374065, 37.593258, 29.590069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397878, -0.490845, 0.775090,
		0.063274, 0.828148, 0.556927,
		-0.915254, 0.270633, -0.298444,
		47.099491, 37.674446, 29.500536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417873, 37.853230, 30.274967>,  <47.740166, 37.485004, 29.709446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417873, 37.853230, 30.274967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118721, 37.705318, 30.054443>,  <46.939232, 37.616573, 29.922129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118721, 37.705318, 30.054443>,  <47.417873, 37.853230, 30.274967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118721, 37.705318, 30.054443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318436, -0.528869, 0.786699,
		-0.582476, 0.763911, 0.277778,
		-0.747877, -0.369779, -0.551311,
		46.894360, 37.594383, 29.889050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710842, 37.929718, 30.652657>,  <47.417873, 37.853230, 30.274967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710842, 37.929718, 30.652657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692047, 37.633732, 30.384256>,  <46.680771, 37.456139, 30.223217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692047, 37.633732, 30.384256>,  <46.710842, 37.929718, 30.652657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692047, 37.633732, 30.384256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236185, -0.644464, 0.727243,
		-0.970571, 0.192654, -0.144485,
		-0.046991, -0.739966, -0.671000,
		46.677948, 37.411743, 30.182957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127563, 37.704788, 30.882656>,  <46.710842, 37.929718, 30.652657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127563, 37.704788, 30.882656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279808, 37.410725, 30.658272>,  <46.371155, 37.234287, 30.523642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279808, 37.410725, 30.658272>,  <46.127563, 37.704788, 30.882656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279808, 37.410725, 30.658272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183452, -0.654585, 0.733392,
		-0.906357, -0.176226, -0.384007,
		0.380608, -0.735162, -0.560959,
		46.393990, 37.190178, 30.489985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674389, 37.208046, 30.855274>,  <46.127563, 37.704788, 30.882656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674389, 37.208046, 30.855274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003815, 37.008324, 30.747620>,  <46.201469, 36.888489, 30.683027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003815, 37.008324, 30.747620>,  <45.674389, 37.208046, 30.855274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003815, 37.008324, 30.747620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205777, -0.705154, 0.678538,
		-0.528583, -0.503437, -0.683485,
		0.823563, -0.499309, -0.269136,
		46.250885, 36.858532, 30.666880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495262, 36.534931, 30.789953>,  <45.674389, 37.208046, 30.855274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495262, 36.534931, 30.789953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891857, 36.494408, 30.822676>,  <46.129814, 36.470093, 30.842310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891857, 36.494408, 30.822676>,  <45.495262, 36.534931, 30.789953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891857, 36.494408, 30.822676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129981, -0.807596, 0.575233,
		0.007792, -0.580969, -0.813888,
		0.991486, -0.101308, 0.081808,
		46.189304, 36.464016, 30.847218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682079, 35.924580, 30.568457>,  <45.495262, 36.534931, 30.789953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682079, 35.924580, 30.568457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991596, 36.003334, 30.809284>,  <46.177307, 36.050587, 30.953781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991596, 36.003334, 30.809284>,  <45.682079, 35.924580, 30.568457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991596, 36.003334, 30.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300435, -0.722695, 0.622456,
		0.557662, -0.662532, -0.500064,
		0.773791, 0.196883, 0.602067,
		46.223732, 36.062401, 30.989904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967861, 35.276360, 30.748987>,  <45.682079, 35.924580, 30.568457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967861, 35.276360, 30.748987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114616, 35.492691, 31.051748>,  <46.202667, 35.622490, 31.233406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114616, 35.492691, 31.051748>,  <45.967861, 35.276360, 30.748987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114616, 35.492691, 31.051748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122106, -0.778607, 0.615518,
		0.922217, -0.318247, -0.219622,
		0.366886, 0.540824, 0.756904,
		46.224682, 35.654938, 31.278820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514893, 34.875324, 31.058538>,  <45.967861, 35.276360, 30.748987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514893, 34.875324, 31.058538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395069, 35.119354, 31.351952>,  <46.323174, 35.265774, 31.528000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395069, 35.119354, 31.351952>,  <46.514893, 34.875324, 31.058538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395069, 35.119354, 31.351952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211935, -0.792180, 0.572307,
		0.930241, 0.015978, 0.366601,
		-0.299558, 0.610079, 0.733532,
		46.305202, 35.302380, 31.572012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659077, 34.503922, 31.663433>,  <46.514893, 34.875324, 31.058538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659077, 34.503922, 31.663433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395748, 34.773712, 31.797113>,  <46.237751, 34.935585, 31.877321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395748, 34.773712, 31.797113>,  <46.659077, 34.503922, 31.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395748, 34.773712, 31.797113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231431, -0.603838, 0.762771,
		0.716273, 0.424807, 0.553617,
		-0.658326, 0.674476, 0.334199,
		46.198250, 34.976055, 31.897373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742741, 34.505604, 32.444550>,  <46.659077, 34.503922, 31.663433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742741, 34.505604, 32.444550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396214, 34.689201, 32.365746>,  <46.188297, 34.799362, 32.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396214, 34.689201, 32.365746>,  <46.742741, 34.505604, 32.444550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396214, 34.689201, 32.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398657, -0.397738, 0.826364,
		0.300939, 0.794435, 0.527550,
		-0.866319, 0.458997, -0.197012,
		46.136318, 34.826900, 32.306641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536598, 34.853901, 33.054935>,  <46.742741, 34.505604, 32.444550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536598, 34.853901, 33.054935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187927, 34.827518, 32.860687>,  <45.978725, 34.811691, 32.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187927, 34.827518, 32.860687>,  <46.536598, 34.853901, 33.054935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187927, 34.827518, 32.860687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418612, -0.415057, 0.807770,
		-0.254835, 0.907402, 0.334188,
		-0.871679, -0.065953, -0.485620,
		45.926422, 34.807732, 32.715000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066910, 34.725594, 33.626747>,  <46.536598, 34.853901, 33.054935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066910, 34.725594, 33.626747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405907, 34.927177, 33.693424>,  <47.609303, 35.048126, 33.733429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405907, 34.927177, 33.693424>,  <47.066910, 34.725594, 33.626747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405907, 34.927177, 33.693424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122622, -0.119670, 0.985212,
		0.516456, -0.855397, -0.039622,
		0.847489, 0.503960, 0.166694,
		47.660152, 35.078365, 33.743431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707039, 34.282101, 33.993431>,  <47.066910, 34.725594, 33.626747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707039, 34.282101, 33.993431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693832, 34.676708, 34.057545>,  <47.685909, 34.913471, 34.096012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693832, 34.676708, 34.057545>,  <47.707039, 34.282101, 33.993431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693832, 34.676708, 34.057545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028456, -0.159380, 0.986807,
		0.999050, 0.037138, -0.022811,
		-0.033013, 0.986519, 0.160285,
		47.683929, 34.972664, 34.105629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.236698, 34.516186, 34.497604>,  <47.707039, 34.282101, 33.993431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.236698, 34.516186, 34.497604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.898014, 34.726196, 34.532108>,  <47.694805, 34.852203, 34.552811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.898014, 34.726196, 34.532108>,  <48.236698, 34.516186, 34.497604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.898014, 34.726196, 34.532108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033775, -0.214843, 0.976065,
		0.530989, 0.823526, 0.199641,
		-0.846706, 0.525022, 0.086264,
		47.644001, 34.883701, 34.557987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.233620, 34.976368, 35.031147>,  <48.236698, 34.516186, 34.497604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.233620, 34.976368, 35.031147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841293, 34.910461, 34.989460>,  <47.605900, 34.870918, 34.964447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841293, 34.910461, 34.989460>,  <48.233620, 34.976368, 35.031147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.841293, 34.910461, 34.989460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110296, 0.028149, 0.993500,
		-0.160762, 0.985931, -0.045782,
		-0.980811, -0.164766, -0.104219,
		47.547050, 34.861031, 34.958195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.916306, 36.549259, 42.521774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743160, 36.189034, 42.505661>,  <38.639275, 35.972900, 42.495991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743160, 36.189034, 42.505661>,  <38.916306, 36.549259, 42.521774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743160, 36.189034, 42.505661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293769, 0.183170, -0.938163,
		0.852251, -0.394260, -0.343843,
		-0.432862, -0.900560, -0.040286,
		38.613300, 35.918865, 42.493576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075687, 36.233715, 41.871338>,  <38.916306, 36.549259, 42.521774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075687, 36.233715, 41.871338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749557, 36.025414, 41.972580>,  <38.553879, 35.900433, 42.033325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749557, 36.025414, 41.972580>,  <39.075687, 36.233715, 41.871338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749557, 36.025414, 41.972580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304463, 0.013774, -0.952425,
		0.492496, -0.853594, -0.169781,
		-0.815322, -0.520757, 0.253104,
		38.504959, 35.869186, 42.048512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974682, 35.640137, 41.488739>,  <39.075687, 36.233715, 41.871338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974682, 35.640137, 41.488739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608013, 35.730049, 41.620911>,  <38.388012, 35.783997, 41.700214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608013, 35.730049, 41.620911>,  <38.974682, 35.640137, 41.488739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608013, 35.730049, 41.620911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359626, -0.103350, -0.927355,
		-0.174311, -0.968911, 0.175578,
		-0.916671, 0.224791, 0.330430,
		38.333012, 35.797485, 41.720039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573467, 35.105148, 41.183498>,  <38.974682, 35.640137, 41.488739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573467, 35.105148, 41.183498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337944, 35.415459, 41.274258>,  <38.196632, 35.601643, 41.328712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337944, 35.415459, 41.274258>,  <38.573467, 35.105148, 41.183498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337944, 35.415459, 41.274258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427889, -0.061009, -0.901770,
		-0.685726, -0.628055, 0.367867,
		-0.588804, 0.775773, 0.226903,
		38.161301, 35.648190, 41.342327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933315, 34.953091, 40.894215>,  <38.573467, 35.105148, 41.183498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933315, 34.953091, 40.894215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881390, 35.341400, 40.974964>,  <37.850235, 35.574387, 41.023415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881390, 35.341400, 40.974964>,  <37.933315, 34.953091, 40.894215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881390, 35.341400, 40.974964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537440, 0.102209, -0.837085,
		-0.833251, -0.217158, 0.508463,
		-0.129811, 0.970771, 0.201875,
		37.842445, 35.632633, 41.035526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200058, 35.019321, 40.902687>,  <37.933315, 34.953091, 40.894215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200058, 35.019321, 40.902687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374714, 35.369675, 40.820549>,  <37.479507, 35.579887, 40.771267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374714, 35.369675, 40.820549>,  <37.200058, 35.019321, 40.902687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374714, 35.369675, 40.820549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734506, 0.215283, -0.643547,
		-0.519466, 0.431830, 0.737345,
		0.436641, 0.875886, -0.205350,
		37.505707, 35.632439, 40.758945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583649, 35.423382, 40.805279>,  <37.200058, 35.019321, 40.902687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583649, 35.423382, 40.805279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888504, 35.632156, 40.652061>,  <37.071419, 35.757423, 40.560131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888504, 35.632156, 40.652061>,  <36.583649, 35.423382, 40.805279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888504, 35.632156, 40.652061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537215, 0.179664, -0.824088,
		-0.361305, 0.833847, 0.417323,
		0.762141, 0.521940, -0.383041,
		37.117146, 35.788738, 40.537148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281277, 36.027496, 40.454174>,  <36.583649, 35.423382, 40.805279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281277, 36.027496, 40.454174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647972, 35.990711, 40.298672>,  <36.867989, 35.968639, 40.205372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647972, 35.990711, 40.298672>,  <36.281277, 36.027496, 40.454174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647972, 35.990711, 40.298672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392274, -0.023212, -0.919556,
		0.075542, 0.995492, -0.057355,
		0.916741, -0.091964, -0.388752,
		36.922993, 35.963123, 40.182045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385025, 36.548382, 39.858109>,  <36.281277, 36.027496, 40.454174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385025, 36.548382, 39.858109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653770, 36.264790, 39.772381>,  <36.815018, 36.094635, 39.720943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653770, 36.264790, 39.772381>,  <36.385025, 36.548382, 39.858109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653770, 36.264790, 39.772381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355907, -0.055270, -0.932885,
		0.649556, 0.703055, -0.289467,
		0.671868, -0.708985, -0.214322,
		36.855331, 36.052094, 39.708084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762901, 36.826759, 39.261719>,  <36.385025, 36.548382, 39.858109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762901, 36.826759, 39.261719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856236, 36.438210, 39.279537>,  <36.912235, 36.205078, 39.290230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856236, 36.438210, 39.279537>,  <36.762901, 36.826759, 39.261719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856236, 36.438210, 39.279537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076632, -0.027302, -0.996686,
		0.969371, 0.235980, 0.068067,
		0.233340, -0.971374, 0.044549,
		36.926239, 36.146797, 39.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280849, 36.793846, 38.758221>,  <36.762901, 36.826759, 39.261719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280849, 36.793846, 38.758221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147518, 36.424492, 38.834385>,  <37.067520, 36.202881, 38.880085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147518, 36.424492, 38.834385>,  <37.280849, 36.793846, 38.758221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147518, 36.424492, 38.834385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085806, -0.230835, -0.969202,
		0.938899, -0.306720, 0.156175,
		-0.333325, -0.923384, 0.190412,
		37.047520, 36.147476, 38.891510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834827, 36.351238, 38.519371>,  <37.280849, 36.793846, 38.758221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834827, 36.351238, 38.519371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488316, 36.151630, 38.510090>,  <37.280407, 36.031864, 38.504520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488316, 36.151630, 38.510090>,  <37.834827, 36.351238, 38.519371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488316, 36.151630, 38.510090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157449, -0.228656, -0.960690,
		0.474101, -0.835879, 0.276651,
		-0.866278, -0.499023, -0.023202,
		37.228432, 36.001923, 38.503128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985287, 35.665184, 38.098587>,  <37.834827, 36.351238, 38.519371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985287, 35.665184, 38.098587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592777, 35.741833, 38.090794>,  <37.357269, 35.787823, 38.086117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592777, 35.741833, 38.090794>,  <37.985287, 35.665184, 38.098587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592777, 35.741833, 38.090794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026915, -0.236600, -0.971234,
		-0.190715, -0.952525, 0.237327,
		-0.981276, 0.191617, -0.019486,
		37.298393, 35.799320, 38.084949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731403, 35.129063, 37.746429>,  <37.985287, 35.665184, 38.098587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731403, 35.129063, 37.746429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442352, 35.404663, 37.724205>,  <37.268921, 35.570023, 37.710869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442352, 35.404663, 37.724205>,  <37.731403, 35.129063, 37.746429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442352, 35.404663, 37.724205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077753, -0.160890, -0.983905,
		-0.686852, -0.706676, 0.169835,
		-0.722627, 0.689002, -0.055561,
		37.225563, 35.611362, 37.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129868, 34.835308, 37.472031>,  <37.731403, 35.129063, 37.746429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129868, 34.835308, 37.472031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071709, 35.226601, 37.412807>,  <37.036816, 35.461376, 37.377274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071709, 35.226601, 37.412807>,  <37.129868, 34.835308, 37.472031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071709, 35.226601, 37.412807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132492, -0.167551, -0.976920,
		-0.980462, -0.122421, 0.153969,
		-0.145393, 0.978233, -0.148058,
		37.028091, 35.520069, 37.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621841, 34.875313, 36.931545>,  <37.129868, 34.835308, 37.472031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621841, 34.875313, 36.931545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799774, 35.233414, 36.941723>,  <36.906532, 35.448273, 36.947830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799774, 35.233414, 36.941723>,  <36.621841, 34.875313, 36.931545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799774, 35.233414, 36.941723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158274, -0.050614, -0.986097,
		-0.881518, 0.442675, -0.164210,
		0.444832, 0.895252, 0.025447,
		36.933224, 35.501991, 36.949356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250015, 35.138340, 36.467796>,  <36.621841, 34.875313, 36.931545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250015, 35.138340, 36.467796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589180, 35.347672, 36.501675>,  <36.792679, 35.473270, 36.522003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589180, 35.347672, 36.501675>,  <36.250015, 35.138340, 36.467796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589180, 35.347672, 36.501675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131829, -0.053400, -0.989833,
		-0.513485, 0.850456, -0.114268,
		0.847912, 0.523329, 0.084694,
		36.843552, 35.504669, 36.527084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269115, 35.668488, 35.995640>,  <36.250015, 35.138340, 36.467796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269115, 35.668488, 35.995640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654293, 35.597286, 36.076679>,  <36.885399, 35.554565, 36.125301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654293, 35.597286, 36.076679>,  <36.269115, 35.668488, 35.995640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654293, 35.597286, 36.076679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193950, -0.064898, -0.978862,
		0.187386, 0.981888, -0.027971,
		0.962949, -0.178000, 0.202599,
		36.943176, 35.543888, 36.137459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614822, 36.096031, 35.547874>,  <36.269115, 35.668488, 35.995640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614822, 36.096031, 35.547874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872288, 35.811951, 35.661934>,  <37.026768, 35.641502, 35.730370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872288, 35.811951, 35.661934>,  <36.614822, 36.096031, 35.547874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872288, 35.811951, 35.661934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443005, 0.041935, -0.895538,
		0.624051, 0.702753, 0.341613,
		0.643667, -0.710197, 0.285153,
		37.065388, 35.598892, 35.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205769, 36.370415, 35.277020>,  <36.614822, 36.096031, 35.547874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205769, 36.370415, 35.277020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311321, 35.989067, 35.335606>,  <37.374653, 35.760258, 35.370758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311321, 35.989067, 35.335606>,  <37.205769, 36.370415, 35.277020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311321, 35.989067, 35.335606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434842, -0.017961, -0.900328,
		0.860977, 0.301266, 0.409826,
		0.263877, -0.953371, 0.146467,
		37.390484, 35.703056, 35.379547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968353, 36.265747, 35.080185>,  <37.205769, 36.370415, 35.277020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968353, 36.265747, 35.080185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725708, 35.948769, 35.054741>,  <37.580120, 35.758579, 35.039474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725708, 35.948769, 35.054741>,  <37.968353, 36.265747, 35.080185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725708, 35.948769, 35.054741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360065, -0.202526, -0.910679,
		0.708785, -0.575332, 0.408188,
		-0.606611, -0.792450, -0.063610,
		37.543724, 35.711033, 35.035660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336994, 35.724442, 34.920441>,  <37.968353, 36.265747, 35.080185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336994, 35.724442, 34.920441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967472, 35.712791, 34.767742>,  <37.745758, 35.705799, 34.676125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967472, 35.712791, 34.767742>,  <38.336994, 35.724442, 34.920441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967472, 35.712791, 34.767742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373949, 0.145158, -0.916019,
		0.082094, -0.988979, -0.123207,
		-0.923809, -0.029126, -0.381744,
		37.690331, 35.704052, 34.653217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364056, 35.019035, 34.630306>,  <38.336994, 35.724442, 34.920441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364056, 35.019035, 34.630306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727772, 35.029221, 34.464153>,  <38.946003, 35.035332, 34.364460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727772, 35.029221, 34.464153>,  <38.364056, 35.019035, 34.630306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727772, 35.029221, 34.464153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380337, 0.354303, 0.854291,
		0.168925, -0.934784, 0.312479,
		0.909290, 0.025464, -0.415383,
		39.000557, 35.036861, 34.339539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870468, 34.626740, 35.009991>,  <38.364056, 35.019035, 34.630306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870468, 34.626740, 35.009991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096790, 34.890636, 34.812160>,  <39.232582, 35.048973, 34.693462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096790, 34.890636, 34.812160>,  <38.870468, 34.626740, 35.009991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096790, 34.890636, 34.812160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447075, 0.258523, 0.856323,
		0.692811, -0.705625, -0.148680,
		0.565807, 0.659742, -0.494575,
		39.266533, 35.088558, 34.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533970, 34.463608, 35.294422>,  <38.870468, 34.626740, 35.009991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533970, 34.463608, 35.294422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531307, 34.830757, 35.135696>,  <39.529709, 35.051048, 35.040462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531307, 34.830757, 35.135696>,  <39.533970, 34.463608, 35.294422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531307, 34.830757, 35.135696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636002, 0.310105, 0.706637,
		0.771658, -0.247670, -0.585835,
		-0.006658, 0.917875, -0.396814,
		39.529308, 35.106121, 35.016651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296406, 34.698395, 35.316750>,  <39.533970, 34.463608, 35.294422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296406, 34.698395, 35.316750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062893, 35.022209, 35.291916>,  <39.922783, 35.216496, 35.277016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062893, 35.022209, 35.291916>,  <40.296406, 34.698395, 35.316750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062893, 35.022209, 35.291916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586919, 0.473608, 0.656674,
		0.561000, 0.346921, -0.751615,
		-0.583785, 0.809531, -0.062080,
		39.887756, 35.265068, 35.273293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750546, 35.300034, 35.300655>,  <40.296406, 34.698395, 35.316750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750546, 35.300034, 35.300655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390755, 35.431171, 35.416214>,  <40.174881, 35.509853, 35.485550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390755, 35.431171, 35.416214>,  <40.750546, 35.300034, 35.300655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390755, 35.431171, 35.416214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411780, 0.414687, 0.811463,
		0.146229, 0.848854, -0.508000,
		-0.899475, 0.327844, 0.288901,
		40.120911, 35.529526, 35.502884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926899, 35.964882, 35.594208>,  <40.750546, 35.300034, 35.300655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926899, 35.964882, 35.594208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567574, 35.861752, 35.736511>,  <40.351978, 35.799873, 35.821892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567574, 35.861752, 35.736511>,  <40.926899, 35.964882, 35.594208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567574, 35.861752, 35.736511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211470, 0.456037, 0.864471,
		-0.385122, 0.851796, -0.355141,
		-0.898311, -0.257825, 0.355759,
		40.298080, 35.784405, 35.843239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745331, 36.578255, 35.940762>,  <40.926899, 35.964882, 35.594208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745331, 36.578255, 35.940762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498844, 36.306545, 36.100193>,  <40.350952, 36.143520, 36.195850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498844, 36.306545, 36.100193>,  <40.745331, 36.578255, 35.940762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498844, 36.306545, 36.100193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062056, 0.462634, 0.884375,
		-0.785126, 0.569703, -0.242931,
		-0.616219, -0.679271, 0.398580,
		40.313980, 36.102764, 36.219769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258938, 36.938820, 36.363159>,  <40.745331, 36.578255, 35.940762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258938, 36.938820, 36.363159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263046, 36.563808, 36.502258>,  <40.265511, 36.338802, 36.585716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263046, 36.563808, 36.502258>,  <40.258938, 36.938820, 36.363159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263046, 36.563808, 36.502258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068085, 0.347615, 0.935162,
		-0.997627, 0.014071, 0.067402,
		0.010272, -0.937532, 0.347748,
		40.266129, 36.282547, 36.606583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903484, 36.949474, 37.038445>,  <40.258938, 36.938820, 36.363159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903484, 36.949474, 37.038445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039822, 36.575199, 37.074913>,  <40.121624, 36.350636, 37.096794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039822, 36.575199, 37.074913>,  <39.903484, 36.949474, 37.038445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039822, 36.575199, 37.074913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033547, 0.084810, 0.995832,
		-0.939520, -0.342485, -0.002482,
		0.340847, -0.935688, 0.091170,
		40.142075, 36.294495, 37.102264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409485, 36.575649, 37.582031>,  <39.903484, 36.949474, 37.038445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409485, 36.575649, 37.582031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759480, 36.386238, 37.541691>,  <39.969475, 36.272591, 37.517487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759480, 36.386238, 37.541691>,  <39.409485, 36.575649, 37.582031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759480, 36.386238, 37.541691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127996, 0.025355, 0.991451,
		-0.466924, -0.880413, 0.082795,
		0.874985, -0.473530, -0.100851,
		40.021976, 36.244179, 37.511436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473301, 36.035831, 38.240974>,  <39.409485, 36.575649, 37.582031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473301, 36.035831, 38.240974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840065, 36.109730, 38.099468>,  <40.060123, 36.154068, 38.014565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840065, 36.109730, 38.099468>,  <39.473301, 36.035831, 38.240974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840065, 36.109730, 38.099468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346256, 0.072560, 0.935330,
		0.198468, -0.980104, 0.002561,
		0.916906, 0.184746, -0.353768,
		40.115135, 36.165154, 37.993340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875286, 35.516243, 38.547230>,  <39.473301, 36.035831, 38.240974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875286, 35.516243, 38.547230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090401, 35.838486, 38.447800>,  <40.219467, 36.031830, 38.388142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090401, 35.838486, 38.447800>,  <39.875286, 35.516243, 38.547230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090401, 35.838486, 38.447800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315769, 0.080917, 0.945380,
		0.781715, -0.586904, -0.210868,
		0.537785, 0.805603, -0.248580,
		40.251736, 36.080166, 38.373226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440708, 35.486408, 39.044498>,  <39.875286, 35.516243, 38.547230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440708, 35.486408, 39.044498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450253, 35.859135, 38.899643>,  <40.455978, 36.082771, 38.812729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450253, 35.859135, 38.899643>,  <40.440708, 35.486408, 39.044498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450253, 35.859135, 38.899643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421952, 0.319011, 0.848639,
		0.906304, -0.173059, -0.385570,
		0.023864, 0.931817, -0.362143,
		40.457413, 36.138680, 38.791000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037750, 35.681404, 39.320862>,  <40.440708, 35.486408, 39.044498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037750, 35.681404, 39.320862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810688, 35.994564, 39.219013>,  <40.674450, 36.182461, 39.157906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810688, 35.994564, 39.219013>,  <41.037750, 35.681404, 39.320862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810688, 35.994564, 39.219013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134781, 0.393485, 0.909398,
		0.812160, 0.481905, -0.328884,
		-0.567654, 0.782903, -0.254621,
		40.640392, 36.229435, 39.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426777, 36.251335, 39.491501>,  <41.037750, 35.681404, 39.320862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426777, 36.251335, 39.491501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.058510, 36.406059, 39.512440>,  <40.837547, 36.498894, 39.525002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.058510, 36.406059, 39.512440>,  <41.426777, 36.251335, 39.491501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058510, 36.406059, 39.512440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129918, 0.177198, 0.975563,
		0.368085, 0.904973, -0.213395,
		-0.920671, 0.386814, 0.052348,
		40.782310, 36.522102, 39.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457653, 36.900631, 39.776249>,  <41.426777, 36.251335, 39.491501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457653, 36.900631, 39.776249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076431, 36.791679, 39.829144>,  <40.847698, 36.726307, 39.860882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076431, 36.791679, 39.829144>,  <41.457653, 36.900631, 39.776249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076431, 36.791679, 39.829144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066587, 0.237499, 0.969103,
		-0.295373, 0.932417, -0.208214,
		-0.953059, -0.272382, 0.132238,
		40.790512, 36.709965, 39.868816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278488, 37.338810, 40.245918>,  <41.457653, 36.900631, 39.776249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278488, 37.338810, 40.245918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.983513, 37.069435, 40.266621>,  <40.806530, 36.907810, 40.279041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.983513, 37.069435, 40.266621>,  <41.278488, 37.338810, 40.245918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983513, 37.069435, 40.266621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096499, 0.180895, 0.978757,
		-0.668490, 0.716774, -0.198384,
		-0.737434, -0.673433, 0.051759,
		40.762283, 36.867405, 40.282146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902401, 37.609337, 40.867588>,  <41.278488, 37.338810, 40.245918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902401, 37.609337, 40.867588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778873, 37.233215, 40.810360>,  <40.704758, 37.007542, 40.776024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778873, 37.233215, 40.810360>,  <40.902401, 37.609337, 40.867588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778873, 37.233215, 40.810360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165346, -0.095057, 0.981644,
		-0.936639, 0.326805, -0.126120,
		-0.308818, -0.940299, -0.143070,
		40.686230, 36.951126, 40.767441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.304558, 37.469837, 41.322235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379803, 37.086735, 41.235226>,  <40.424950, 36.856873, 41.183018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379803, 37.086735, 41.235226>,  <40.304558, 37.469837, 41.322235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379803, 37.086735, 41.235226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047783, -0.212294, 0.976037,
		-0.980984, -0.194002, 0.005828,
		0.188116, -0.957755, -0.217527,
		40.436237, 36.799408, 41.169968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958637, 37.129887, 41.754139>,  <40.304558, 37.469837, 41.322235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958637, 37.129887, 41.754139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220711, 36.852455, 41.634350>,  <40.377956, 36.685997, 41.562477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220711, 36.852455, 41.634350>,  <39.958637, 37.129887, 41.754139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220711, 36.852455, 41.634350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086869, -0.324613, 0.941849,
		-0.750458, -0.643100, -0.152431,
		0.655185, -0.693577, -0.299474,
		40.417267, 36.644382, 41.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768173, 36.449631, 42.043297>,  <39.958637, 37.129887, 41.754139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768173, 36.449631, 42.043297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158249, 36.437366, 41.955597>,  <40.392292, 36.430008, 41.902977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158249, 36.437366, 41.955597>,  <39.768173, 36.449631, 42.043297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158249, 36.437366, 41.955597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211863, -0.158014, 0.964441,
		-0.064213, -0.986961, -0.147598,
		0.975188, -0.030659, -0.219247,
		40.450806, 36.428169, 41.889824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025822, 35.837605, 42.412918>,  <39.768173, 36.449631, 42.043297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025822, 35.837605, 42.412918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321518, 36.097729, 42.342915>,  <40.498936, 36.253803, 42.300911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321518, 36.097729, 42.342915>,  <40.025822, 35.837605, 42.412918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321518, 36.097729, 42.342915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261842, -0.038120, 0.964358,
		0.620457, -0.758715, -0.198457,
		0.739237, 0.650307, -0.175012,
		40.543289, 36.292820, 42.290413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613331, 35.530903, 42.778072>,  <40.025822, 35.837605, 42.412918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613331, 35.530903, 42.778072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728622, 35.911686, 42.736687>,  <40.797798, 36.140156, 42.711857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728622, 35.911686, 42.736687>,  <40.613331, 35.530903, 42.778072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728622, 35.911686, 42.736687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225280, 0.037601, 0.973568,
		0.930684, -0.303918, -0.203619,
		0.288228, 0.951956, -0.103462,
		40.815090, 36.197273, 42.705647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309765, 35.627888, 43.163773>,  <40.613331, 35.530903, 42.778072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309765, 35.627888, 43.163773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.119778, 35.977276, 43.120960>,  <41.005783, 36.186909, 43.095272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.119778, 35.977276, 43.120960>,  <41.309765, 35.627888, 43.163773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119778, 35.977276, 43.120960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121737, 0.185671, 0.975042,
		0.871540, 0.450088, -0.194522,
		-0.474972, 0.873468, -0.107027,
		40.977287, 36.239315, 43.088852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732098, 36.184357, 43.380161>,  <41.309765, 35.627888, 43.163773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732098, 36.184357, 43.380161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372292, 36.354202, 43.421276>,  <41.156406, 36.456112, 43.445946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372292, 36.354202, 43.421276>,  <41.732098, 36.184357, 43.380161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372292, 36.354202, 43.421276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138466, 0.053949, 0.988897,
		0.414357, 0.903764, -0.107323,
		-0.899520, 0.424617, 0.102787,
		41.102436, 36.481586, 43.452110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800030, 36.797688, 43.703876>,  <41.732098, 36.184357, 43.380161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800030, 36.797688, 43.703876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409618, 36.735725, 43.765018>,  <41.175369, 36.698547, 43.801704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409618, 36.735725, 43.765018>,  <41.800030, 36.797688, 43.703876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409618, 36.735725, 43.765018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141688, 0.080790, 0.986609,
		-0.165182, 0.984620, -0.056906,
		-0.976033, -0.154907, 0.152854,
		41.116810, 36.689255, 43.810875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642178, 37.246773, 44.179836>,  <41.800030, 36.797688, 43.703876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642178, 37.246773, 44.179836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346680, 36.979027, 44.211357>,  <41.169380, 36.818378, 44.230270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346680, 36.979027, 44.211357>,  <41.642178, 37.246773, 44.179836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346680, 36.979027, 44.211357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035324, 0.155209, 0.987250,
		-0.673056, 0.726544, -0.138305,
		-0.738747, -0.669360, 0.078800,
		41.125057, 36.778217, 44.234997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204388, 37.640160, 44.556377>,  <41.642178, 37.246773, 44.179836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204388, 37.640160, 44.556377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140316, 37.247055, 44.593319>,  <41.101871, 37.011192, 44.615486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140316, 37.247055, 44.593319>,  <41.204388, 37.640160, 44.556377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140316, 37.247055, 44.593319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089288, 0.107608, 0.990176,
		-0.983042, 0.150358, -0.104985,
		-0.160178, -0.982758, 0.092358,
		41.092262, 36.952229, 44.621025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556667, 37.519554, 44.916813>,  <41.204388, 37.640160, 44.556377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556667, 37.519554, 44.916813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778004, 37.191193, 44.973286>,  <40.910805, 36.994175, 45.007168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778004, 37.191193, 44.973286>,  <40.556667, 37.519554, 44.916813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778004, 37.191193, 44.973286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258896, -0.008397, 0.965869,
		-0.791701, -0.571003, -0.217175,
		0.553337, -0.820905, 0.141183,
		40.944004, 36.944920, 45.015640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077896, 37.088490, 45.323334>,  <40.556667, 37.519554, 44.916813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077896, 37.088490, 45.323334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443008, 36.935951, 45.381859>,  <40.662075, 36.844429, 45.416973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443008, 36.935951, 45.381859>,  <40.077896, 37.088490, 45.323334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443008, 36.935951, 45.381859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183463, -0.062726, 0.981024,
		-0.364933, -0.922301, -0.127218,
		0.912779, -0.381348, 0.146317,
		40.716843, 36.821548, 45.425755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975983, 36.584930, 45.815872>,  <40.077896, 37.088490, 45.323334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975983, 36.584930, 45.815872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374020, 36.600250, 45.852356>,  <40.612843, 36.609440, 45.874245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374020, 36.600250, 45.852356>,  <39.975983, 36.584930, 45.815872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374020, 36.600250, 45.852356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075776, -0.297605, 0.951677,
		0.063592, -0.953920, -0.293244,
		0.995095, 0.038298, 0.091210,
		40.672546, 36.611740, 45.879719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172482, 36.041901, 46.216297>,  <39.975983, 36.584930, 45.815872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172482, 36.041901, 46.216297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482609, 36.292591, 46.247528>,  <40.668686, 36.443005, 46.266266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482609, 36.292591, 46.247528>,  <40.172482, 36.041901, 46.216297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482609, 36.292591, 46.247528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248410, -0.416268, 0.874650,
		0.580668, -0.658736, -0.478425,
		0.775317, 0.626727, 0.078077,
		40.715202, 36.480610, 46.270950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735085, 35.710266, 46.364777>,  <40.172482, 36.041901, 46.216297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735085, 35.710266, 46.364777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823174, 36.080303, 46.488518>,  <40.876026, 36.302326, 46.562763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823174, 36.080303, 46.488518>,  <40.735085, 35.710266, 46.364777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823174, 36.080303, 46.488518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075723, -0.332396, 0.940095,
		0.972506, -0.183603, -0.143252,
		0.220221, 0.925096, 0.309354,
		40.889240, 36.357834, 46.581326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335312, 35.663826, 46.857311>,  <40.735085, 35.710266, 46.364777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335312, 35.663826, 46.857311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226318, 36.039036, 46.942982>,  <41.160923, 36.264160, 46.994385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226318, 36.039036, 46.942982>,  <41.335312, 35.663826, 46.857311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226318, 36.039036, 46.942982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144313, -0.180239, 0.972979,
		0.951277, 0.296026, -0.086257,
		-0.272480, 0.938021, 0.214177,
		41.144573, 36.320442, 47.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812775, 35.999481, 47.222351>,  <41.335312, 35.663826, 46.857311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812775, 35.999481, 47.222351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505417, 36.227341, 47.339020>,  <41.321003, 36.364056, 47.409019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505417, 36.227341, 47.339020>,  <41.812775, 35.999481, 47.222351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505417, 36.227341, 47.339020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367781, 0.020074, 0.929696,
		0.523749, 0.821641, -0.224932,
		-0.768391, 0.569652, 0.291670,
		41.274899, 36.398235, 47.426521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130211, 36.505749, 47.720055>,  <41.812775, 35.999481, 47.222351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130211, 36.505749, 47.720055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736450, 36.483276, 47.786739>,  <41.500195, 36.469791, 47.826752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736450, 36.483276, 47.786739>,  <42.130211, 36.505749, 47.720055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736450, 36.483276, 47.786739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165062, 0.032901, 0.985734,
		-0.060866, 0.997878, -0.023114,
		-0.984403, -0.056182, 0.166715,
		41.441128, 36.466423, 47.836754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015072, 36.936157, 48.290623>,  <42.130211, 36.505749, 47.720055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015072, 36.936157, 48.290623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701393, 36.688370, 48.276230>,  <41.513187, 36.539696, 48.267593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701393, 36.688370, 48.276230>,  <42.015072, 36.936157, 48.290623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701393, 36.688370, 48.276230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008115, -0.068226, 0.997637,
		-0.620463, 0.782048, 0.058529,
		-0.784193, -0.619472, -0.035985,
		41.466137, 36.502529, 48.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551449, 37.320400, 48.726315>,  <42.015072, 36.936157, 48.290623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551449, 37.320400, 48.726315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423344, 36.941727, 48.712315>,  <41.346481, 36.714523, 48.703915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423344, 36.941727, 48.712315>,  <41.551449, 37.320400, 48.726315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423344, 36.941727, 48.712315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062936, -0.058129, 0.996323,
		-0.945235, 0.316884, 0.078197,
		-0.320264, -0.946681, -0.035002,
		41.327263, 36.657722, 48.701813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019241, 37.145168, 49.293308>,  <41.551449, 37.320400, 48.726315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019241, 37.145168, 49.293308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157314, 36.781376, 49.200626>,  <41.240158, 36.563099, 49.145016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157314, 36.781376, 49.200626>,  <41.019241, 37.145168, 49.293308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157314, 36.781376, 49.200626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056083, -0.266431, 0.962221,
		-0.936858, -0.319149, -0.142975,
		0.345185, -0.909482, -0.231709,
		41.260868, 36.508530, 49.131115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596218, 36.661747, 49.542622>,  <41.019241, 37.145168, 49.293308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596218, 36.661747, 49.542622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943859, 36.464535, 49.526718>,  <41.152443, 36.346207, 49.517174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943859, 36.464535, 49.526718>,  <40.596218, 36.661747, 49.542622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943859, 36.464535, 49.526718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079351, -0.218317, 0.972647,
		-0.488225, -0.842175, -0.228862,
		0.869103, -0.493031, -0.039761,
		41.204590, 36.316628, 49.514790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667160, 35.924561, 49.651928>,  <40.596218, 36.661747, 49.542622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667160, 35.924561, 49.651928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015720, 36.059738, 49.794174>,  <41.224857, 36.140846, 49.879520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015720, 36.059738, 49.794174>,  <40.667160, 35.924561, 49.651928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015720, 36.059738, 49.794174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253402, -0.310634, 0.916130,
		0.420067, -0.888426, -0.185050,
		0.871396, 0.337944, 0.355616,
		41.277138, 36.161121, 49.900860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525005, 35.367706, 50.237930>,  <40.667160, 35.924561, 49.651928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525005, 35.367706, 50.237930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700966, 35.100769, 49.997551>,  <40.806541, 34.940605, 49.853325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700966, 35.100769, 49.997551>,  <40.525005, 35.367706, 50.237930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700966, 35.100769, 49.997551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204187, -0.577322, 0.790574,
		-0.874526, -0.470479, -0.117701,
		0.439899, -0.667345, -0.600949,
		40.832935, 34.900566, 49.817265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851700, 35.507439, 50.208675>,  <40.525005, 35.367706, 50.237930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851700, 35.507439, 50.208675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.552925, 35.242439, 50.231270>,  <39.373661, 35.083439, 50.244827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.552925, 35.242439, 50.231270>,  <39.851700, 35.507439, 50.208675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552925, 35.242439, 50.231270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095780, 0.023144, -0.995133,
		0.657965, -0.748707, -0.080741,
		-0.746932, -0.662496, 0.056483,
		39.328846, 35.043690, 50.248215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965839, 35.025993, 49.690193>,  <39.851700, 35.507439, 50.208675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965839, 35.025993, 49.690193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583706, 34.953529, 49.783592>,  <39.354427, 34.910049, 49.839630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583706, 34.953529, 49.783592>,  <39.965839, 35.025993, 49.690193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583706, 34.953529, 49.783592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215813, -0.112118, -0.969976,
		0.201902, -0.977041, 0.068012,
		-0.955332, -0.181163, 0.233495,
		39.297108, 34.899181, 49.853642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764282, 34.443886, 49.305260>,  <39.965839, 35.025993, 49.690193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764282, 34.443886, 49.305260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426144, 34.639568, 49.391102>,  <39.223259, 34.756977, 49.442608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426144, 34.639568, 49.391102>,  <39.764282, 34.443886, 49.305260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426144, 34.639568, 49.391102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317958, -0.137939, -0.938017,
		-0.429285, -0.861189, 0.272155,
		-0.845351, 0.489210, 0.214607,
		39.172539, 34.786331, 49.455482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174541, 34.061420, 48.961441>,  <39.764282, 34.443886, 49.305260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174541, 34.061420, 48.961441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028061, 34.430107, 49.012558>,  <38.940174, 34.651321, 49.043228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028061, 34.430107, 49.012558>,  <39.174541, 34.061420, 48.961441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028061, 34.430107, 49.012558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396872, -0.030486, -0.917368,
		-0.841659, -0.386660, 0.376968,
		-0.366202, 0.921718, 0.127796,
		38.918201, 34.706623, 49.050896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424240, 34.025917, 48.693279>,  <39.174541, 34.061420, 48.961441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424240, 34.025917, 48.693279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545502, 34.407093, 48.693241>,  <38.618259, 34.635799, 48.693218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545502, 34.407093, 48.693241>,  <38.424240, 34.025917, 48.693279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545502, 34.407093, 48.693241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268861, 0.085433, -0.959383,
		-0.914228, 0.290866, 0.282108,
		0.303153, 0.952942, -0.000097,
		38.636448, 34.692974, 48.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956585, 34.398865, 48.173512>,  <38.424240, 34.025917, 48.693279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956585, 34.398865, 48.173512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255566, 34.658340, 48.230812>,  <38.434956, 34.814026, 48.265194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255566, 34.658340, 48.230812>,  <37.956585, 34.398865, 48.173512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255566, 34.658340, 48.230812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042457, 0.261841, -0.964177,
		-0.662959, 0.714593, 0.223255,
		0.747451, 0.648688, 0.143250,
		38.479801, 34.852947, 48.273788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732151, 34.867985, 47.752087>,  <37.956585, 34.398865, 48.173512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732151, 34.867985, 47.752087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123543, 34.924751, 47.811993>,  <38.358379, 34.958809, 47.847939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123543, 34.924751, 47.811993>,  <37.732151, 34.867985, 47.752087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123543, 34.924751, 47.811993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137969, 0.089676, -0.986368,
		-0.153410, 0.985809, 0.068166,
		0.978483, 0.141914, 0.149768,
		38.417088, 34.967327, 47.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836102, 35.381252, 47.306847>,  <37.732151, 34.867985, 47.752087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836102, 35.381252, 47.306847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.200874, 35.232899, 47.377079>,  <38.419739, 35.143887, 47.419220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.200874, 35.232899, 47.377079>,  <37.836102, 35.381252, 47.306847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200874, 35.232899, 47.377079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222606, 0.087685, -0.970957,
		0.344715, 0.924531, 0.162523,
		0.911931, -0.370882, 0.175580,
		38.474453, 35.121635, 47.429752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310272, 35.815125, 47.021835>,  <37.836102, 35.381252, 47.306847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310272, 35.815125, 47.021835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520763, 35.478226, 47.068665>,  <38.647060, 35.276089, 47.096760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520763, 35.478226, 47.068665>,  <38.310272, 35.815125, 47.021835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520763, 35.478226, 47.068665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415460, 0.134536, -0.899607,
		0.741938, 0.522041, 0.420716,
		0.526233, -0.842243, 0.117070,
		38.678635, 35.225552, 47.103786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028145, 35.979176, 46.833984>,  <38.310272, 35.815125, 47.021835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028145, 35.979176, 46.833984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990803, 35.584606, 46.779945>,  <38.968399, 35.347866, 46.747520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990803, 35.584606, 46.779945>,  <39.028145, 35.979176, 46.833984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990803, 35.584606, 46.779945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297725, 0.101825, -0.949206,
		0.950076, -0.128833, 0.284178,
		-0.093352, -0.986425, -0.135098,
		38.962795, 35.288677, 46.739414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542671, 35.831306, 46.505497>,  <39.028145, 35.979176, 46.833984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542671, 35.831306, 46.505497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316364, 35.510098, 46.430592>,  <39.180580, 35.317371, 46.385651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316364, 35.510098, 46.430592>,  <39.542671, 35.831306, 46.505497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316364, 35.510098, 46.430592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358951, -0.035401, -0.932685,
		0.742338, -0.594896, 0.308275,
		-0.565763, -0.803023, -0.187260,
		39.146637, 35.269192, 46.374413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910679, 35.319550, 46.121899>,  <39.542671, 35.831306, 46.505497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910679, 35.319550, 46.121899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541225, 35.192448, 46.036175>,  <39.319553, 35.116184, 45.984741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541225, 35.192448, 46.036175>,  <39.910679, 35.319550, 46.121899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541225, 35.192448, 46.036175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210073, 0.047979, -0.976508,
		0.320575, -0.946957, 0.022437,
		-0.923635, -0.317758, -0.214311,
		39.264133, 35.097122, 45.971882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006157, 34.994789, 45.524055>,  <39.910679, 35.319550, 46.121899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006157, 34.994789, 45.524055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606850, 35.018284, 45.524906>,  <39.367264, 35.032379, 45.525417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606850, 35.018284, 45.524906>,  <40.006157, 34.994789, 45.524055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606850, 35.018284, 45.524906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005009, -0.048909, -0.998791,
		-0.058587, -0.997073, 0.049118,
		-0.998270, 0.058762, 0.002129,
		39.307369, 35.035904, 45.525547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754463, 34.517334, 45.005257>,  <40.006157, 34.994789, 45.524055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754463, 34.517334, 45.005257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458961, 34.779762, 45.066986>,  <39.281662, 34.937218, 45.104023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458961, 34.779762, 45.066986>,  <39.754463, 34.517334, 45.005257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458961, 34.779762, 45.066986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113715, 0.104360, -0.988017,
		-0.664315, -0.747448, -0.002491,
		-0.738752, 0.656071, 0.154324,
		39.237335, 34.976585, 45.113285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158924, 34.254524, 44.638996>,  <39.754463, 34.517334, 45.005257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158924, 34.254524, 44.638996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092022, 34.648151, 44.663143>,  <39.051880, 34.884327, 44.677631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092022, 34.648151, 44.663143>,  <39.158924, 34.254524, 44.638996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092022, 34.648151, 44.663143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292152, 0.009007, -0.956329,
		-0.941632, -0.177590, 0.285990,
		-0.167258, 0.984064, 0.060364,
		39.041843, 34.943371, 44.681252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578453, 34.283257, 44.210667>,  <39.158924, 34.254524, 44.638996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578453, 34.283257, 44.210667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695679, 34.661236, 44.268879>,  <38.766014, 34.888023, 44.303806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695679, 34.661236, 44.268879>,  <38.578453, 34.283257, 44.210667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695679, 34.661236, 44.268879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167757, 0.200675, -0.965188,
		-0.941260, 0.258449, 0.217333,
		0.293065, 0.944952, 0.145531,
		38.783600, 34.944721, 44.312538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108181, 34.678677, 43.857708>,  <38.578453, 34.283257, 44.210667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108181, 34.678677, 43.857708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424519, 34.922569, 43.878845>,  <38.614323, 35.068905, 43.891529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424519, 34.922569, 43.878845>,  <38.108181, 34.678677, 43.857708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424519, 34.922569, 43.878845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222807, 0.367260, -0.903038,
		-0.570016, 0.702390, 0.426298,
		0.790847, 0.609728, 0.052846,
		38.661774, 35.105488, 43.894699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831249, 35.376175, 43.717674>,  <38.108181, 34.678677, 43.857708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831249, 35.376175, 43.717674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225292, 35.358372, 43.651249>,  <38.461720, 35.347691, 43.611393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225292, 35.358372, 43.651249>,  <37.831249, 35.376175, 43.717674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225292, 35.358372, 43.651249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133473, 0.410849, -0.901880,
		0.108368, 0.910617, 0.398791,
		0.985110, -0.044507, -0.166066,
		38.520824, 35.345020, 43.601429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002953, 36.120651, 43.575489>,  <37.831249, 35.376175, 43.717674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002953, 36.120651, 43.575489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289486, 35.887318, 43.422344>,  <38.461407, 35.747318, 43.330456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289486, 35.887318, 43.422344>,  <38.002953, 36.120651, 43.575489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289486, 35.887318, 43.422344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083242, 0.616232, -0.783153,
		0.692774, 0.529130, 0.489986,
		0.716335, -0.583336, -0.382863,
		38.504387, 35.712318, 43.307484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353760, 36.612850, 43.147343>,  <38.002953, 36.120651, 43.575489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353760, 36.612850, 43.147343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444763, 36.238312, 43.040386>,  <38.499363, 36.013588, 42.976212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444763, 36.238312, 43.040386>,  <38.353760, 36.612850, 43.147343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444763, 36.238312, 43.040386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064497, 0.288474, -0.955313,
		0.971639, 0.200093, 0.126020,
		0.227505, -0.936347, -0.267387,
		38.513016, 35.957409, 42.960171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.559727, 40.500996, 26.631372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423126, 40.292336, 26.318640>,  <43.341164, 40.167141, 26.131001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423126, 40.292336, 26.318640>,  <43.559727, 40.500996, 26.631372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423126, 40.292336, 26.318640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069299, -0.843551, 0.532559,
		-0.937322, 0.127690, 0.324225,
		-0.341503, -0.521648, -0.781830,
		43.320675, 40.135841, 26.084091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916470, 40.068295, 26.812757>,  <43.559727, 40.500996, 26.631372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916470, 40.068295, 26.812757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074661, 39.916134, 26.478359>,  <43.169579, 39.824837, 26.277719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074661, 39.916134, 26.478359>,  <42.916470, 40.068295, 26.812757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074661, 39.916134, 26.478359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164679, -0.924820, 0.342912,
		-0.903590, 0.002055, -0.428393,
		0.395482, -0.380399, -0.835997,
		43.193306, 39.802013, 26.227560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422676, 39.626686, 26.648134>,  <42.916470, 40.068295, 26.812757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422676, 39.626686, 26.648134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758141, 39.500610, 26.470457>,  <42.959419, 39.424965, 26.363852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758141, 39.500610, 26.470457>,  <42.422676, 39.626686, 26.648134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758141, 39.500610, 26.470457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139386, -0.912588, 0.384388,
		-0.526518, -0.260457, -0.809284,
		0.838660, -0.315190, -0.444190,
		43.009739, 39.406052, 26.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287384, 38.862907, 26.420607>,  <42.422676, 39.626686, 26.648134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287384, 38.862907, 26.420607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.685951, 38.896706, 26.419254>,  <42.925091, 38.916985, 26.418442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.685951, 38.896706, 26.419254>,  <42.287384, 38.862907, 26.420607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685951, 38.896706, 26.419254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073922, -0.850933, 0.520046,
		0.041062, -0.518434, -0.854131,
		0.996418, 0.084493, -0.003383,
		42.984879, 38.922054, 26.418240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307003, 38.187126, 26.682819>,  <42.287384, 38.862907, 26.420607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307003, 38.187126, 26.682819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672298, 38.348503, 26.705542>,  <42.891476, 38.445328, 26.719175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672298, 38.348503, 26.705542>,  <42.307003, 38.187126, 26.682819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672298, 38.348503, 26.705542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317942, -0.792902, 0.519826,
		0.254760, -0.456666, -0.852381,
		0.913242, 0.403438, 0.056807,
		42.946270, 38.469536, 26.722584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674984, 37.704998, 26.438986>,  <42.307003, 38.187126, 26.682819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674984, 37.704998, 26.438986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886013, 37.938286, 26.686056>,  <43.012630, 38.078259, 26.834297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886013, 37.938286, 26.686056>,  <42.674984, 37.704998, 26.438986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886013, 37.938286, 26.686056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026811, -0.738163, 0.674089,
		0.849088, -0.339070, -0.405070,
		0.527571, 0.583221, 0.617675,
		43.044285, 38.113251, 26.871359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404922, 37.405651, 26.457914>,  <42.674984, 37.704998, 26.438986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404922, 37.405651, 26.457914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367744, 37.624966, 26.790358>,  <43.345436, 37.756554, 26.989824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367744, 37.624966, 26.790358>,  <43.404922, 37.405651, 26.457914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367744, 37.624966, 26.790358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298483, -0.780988, 0.548604,
		0.949878, 0.299063, -0.091064,
		-0.092947, 0.548288, 0.831109,
		43.339859, 37.789452, 27.039690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868874, 37.095943, 26.921284>,  <43.404922, 37.405651, 26.457914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868874, 37.095943, 26.921284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683361, 37.331970, 27.185623>,  <43.572052, 37.473587, 27.344227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683361, 37.331970, 27.185623>,  <43.868874, 37.095943, 26.921284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683361, 37.331970, 27.185623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110743, -0.701459, 0.704053,
		0.878999, 0.399714, 0.259980,
		-0.463785, 0.590071, 0.660847,
		43.544224, 37.508991, 27.383877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342766, 37.189556, 27.432886>,  <43.868874, 37.095943, 26.921284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342766, 37.189556, 27.432886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981087, 37.271420, 27.582842>,  <43.764080, 37.320538, 27.672815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981087, 37.271420, 27.582842>,  <44.342766, 37.189556, 27.432886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981087, 37.271420, 27.582842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167986, -0.636581, 0.752692,
		0.392697, 0.743557, 0.541214,
		-0.904196, 0.204663, 0.374891,
		43.709827, 37.332817, 27.695309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471973, 37.486286, 28.141750>,  <44.342766, 37.189556, 27.432886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471973, 37.486286, 28.141750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098316, 37.344814, 28.122641>,  <43.874123, 37.259933, 28.111176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098316, 37.344814, 28.122641>,  <44.471973, 37.486286, 28.141750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098316, 37.344814, 28.122641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197848, -0.624610, 0.755459,
		-0.297028, 0.696258, 0.653452,
		-0.934147, -0.353676, -0.047773,
		43.818073, 37.238712, 28.108309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282524, 37.309155, 28.766653>,  <44.471973, 37.486286, 28.141750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282524, 37.309155, 28.766653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022572, 37.084995, 28.561281>,  <43.866600, 36.950500, 28.438059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022572, 37.084995, 28.561281>,  <44.282524, 37.309155, 28.766653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022572, 37.084995, 28.561281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083213, -0.723931, 0.684835,
		-0.755468, 0.402337, 0.517100,
		-0.649879, -0.560401, -0.513427,
		43.827606, 36.916874, 28.407253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742744, 37.159981, 29.242792>,  <44.282524, 37.309155, 28.766653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742744, 37.159981, 29.242792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725624, 36.871544, 28.966185>,  <43.715351, 36.698483, 28.800220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725624, 36.871544, 28.966185>,  <43.742744, 37.159981, 29.242792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725624, 36.871544, 28.966185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084863, -0.692277, 0.716625,
		-0.995473, -0.028015, 0.090821,
		-0.042797, -0.721088, -0.691521,
		43.712784, 36.655216, 28.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428131, 36.696461, 29.548655>,  <43.742744, 37.159981, 29.242792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428131, 36.696461, 29.548655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541512, 36.450996, 29.253878>,  <43.609539, 36.303719, 29.077011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541512, 36.450996, 29.253878>,  <43.428131, 36.696461, 29.548655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541512, 36.450996, 29.253878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122112, -0.739108, 0.662427,
		-0.951182, -0.277752, -0.134562,
		0.283446, -0.613656, -0.736943,
		43.626545, 36.266899, 29.032795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988884, 36.119827, 29.674356>,  <43.428131, 36.696461, 29.548655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988884, 36.119827, 29.674356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307484, 36.003750, 29.462177>,  <43.498642, 35.934101, 29.334869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307484, 36.003750, 29.462177>,  <42.988884, 36.119827, 29.674356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307484, 36.003750, 29.462177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159609, -0.745268, 0.647380,
		-0.583193, -0.600302, -0.547288,
		0.796499, -0.290195, -0.530448,
		43.546432, 35.916691, 29.303043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896954, 35.446075, 29.565157>,  <42.988884, 36.119827, 29.674356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896954, 35.446075, 29.565157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289764, 35.501762, 29.514175>,  <43.525452, 35.535175, 29.483587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289764, 35.501762, 29.514175>,  <42.896954, 35.446075, 29.565157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289764, 35.501762, 29.514175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187648, -0.792924, 0.579706,
		-0.020355, -0.593203, -0.804796,
		0.982025, 0.139218, -0.127453,
		43.584373, 35.543530, 29.475939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154625, 34.772419, 29.508169>,  <42.896954, 35.446075, 29.565157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154625, 34.772419, 29.508169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485165, 34.973053, 29.610588>,  <43.683487, 35.093433, 29.672039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485165, 34.973053, 29.610588>,  <43.154625, 34.772419, 29.508169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485165, 34.973053, 29.610588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173073, -0.658853, 0.732092,
		0.535905, -0.560648, -0.631253,
		0.826349, 0.501584, 0.256049,
		43.733070, 35.123528, 29.687403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672592, 34.301270, 29.513914>,  <43.154625, 34.772419, 29.508169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672592, 34.301270, 29.513914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871223, 34.586769, 29.711487>,  <43.990402, 34.758068, 29.830030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871223, 34.586769, 29.711487>,  <43.672592, 34.301270, 29.513914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871223, 34.586769, 29.711487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351493, -0.685663, 0.637431,
		0.793639, -0.142919, -0.591364,
		0.496578, 0.713750, 0.493934,
		44.020195, 34.800896, 29.859667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406670, 33.987350, 29.764523>,  <43.672592, 34.301270, 29.513914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406670, 33.987350, 29.764523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308338, 34.308407, 29.981901>,  <44.249340, 34.501041, 30.112329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308338, 34.308407, 29.981901>,  <44.406670, 33.987350, 29.764523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308338, 34.308407, 29.981901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253697, -0.487832, 0.835259,
		0.935524, 0.343202, -0.083704,
		-0.245829, 0.802641, 0.543448,
		44.234589, 34.549198, 30.144936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812855, 33.846077, 30.203255>,  <44.406670, 33.987350, 29.764523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812855, 33.846077, 30.203255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572563, 34.106583, 30.388716>,  <44.428387, 34.262886, 30.499992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572563, 34.106583, 30.388716>,  <44.812855, 33.846077, 30.203255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572563, 34.106583, 30.388716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057186, -0.613483, 0.787635,
		0.797405, 0.446641, 0.405780,
		-0.600729, 0.651269, 0.463653,
		44.392345, 34.301964, 30.527811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062210, 33.941967, 30.851162>,  <44.812855, 33.846077, 30.203255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062210, 33.941967, 30.851162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676151, 34.044220, 30.873568>,  <44.444515, 34.105572, 30.887011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676151, 34.044220, 30.873568>,  <45.062210, 33.941967, 30.851162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676151, 34.044220, 30.873568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144965, -0.700453, 0.698822,
		0.217874, 0.666348, 0.713100,
		-0.965151, 0.255630, 0.056014,
		44.386604, 34.120911, 30.890371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940056, 33.951122, 31.604763>,  <45.062210, 33.941967, 30.851162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940056, 33.951122, 31.604763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568382, 33.945072, 31.457035>,  <44.345379, 33.941441, 31.368399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568382, 33.945072, 31.457035>,  <44.940056, 33.951122, 31.604763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568382, 33.945072, 31.457035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280437, -0.622038, 0.731043,
		-0.240790, 0.782841, 0.573742,
		-0.929180, -0.015129, -0.369318,
		44.289627, 33.940533, 31.346239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865894, 34.539364, 32.027382>,  <44.940056, 33.951122, 31.604763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865894, 34.539364, 32.027382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194736, 34.637459, 32.232906>,  <45.392040, 34.696316, 32.356220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194736, 34.637459, 32.232906>,  <44.865894, 34.539364, 32.027382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194736, 34.637459, 32.232906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231094, 0.681057, -0.694807,
		-0.520330, 0.689942, 0.503226,
		0.822103, 0.245236, 0.513816,
		45.441368, 34.711029, 32.387051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949890, 35.258026, 31.955164>,  <44.865894, 34.539364, 32.027382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949890, 35.258026, 31.955164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302143, 35.119522, 32.084522>,  <45.513496, 35.036419, 32.162136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302143, 35.119522, 32.084522>,  <44.949890, 35.258026, 31.955164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302143, 35.119522, 32.084522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458930, 0.793032, -0.400604,
		-0.117751, 0.501202, 0.857281,
		0.880635, -0.346261, 0.323397,
		45.566334, 35.015644, 32.181541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315781, 35.846268, 32.163124>,  <44.949890, 35.258026, 31.955164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315781, 35.846268, 32.163124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607681, 35.575504, 32.124638>,  <45.782822, 35.413048, 32.101547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607681, 35.575504, 32.124638>,  <45.315781, 35.846268, 32.163124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607681, 35.575504, 32.124638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589553, 0.694260, -0.412832,
		0.346246, 0.244542, 0.905711,
		0.729754, -0.676906, -0.096215,
		45.826607, 35.372433, 32.095772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982254, 36.069954, 32.552715>,  <45.315781, 35.846268, 32.163124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982254, 36.069954, 32.552715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089466, 35.842480, 32.241650>,  <46.153793, 35.705997, 32.055012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089466, 35.842480, 32.241650>,  <45.982254, 36.069954, 32.552715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089466, 35.842480, 32.241650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395623, 0.800968, -0.449370,
		0.878432, -0.187217, 0.439666,
		0.268028, -0.568683, -0.777664,
		46.169876, 35.671875, 32.008350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618374, 36.338795, 32.263149>,  <45.982254, 36.069954, 32.552715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618374, 36.338795, 32.263149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.487644, 36.134647, 31.944979>,  <46.409206, 36.012157, 31.754076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.487644, 36.134647, 31.944979>,  <46.618374, 36.338795, 32.263149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487644, 36.134647, 31.944979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451541, 0.655048, -0.605825,
		0.830238, -0.557169, 0.016365,
		-0.326827, -0.510368, -0.795430,
		46.389595, 35.981537, 31.706350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.148804, 36.423668, 31.781908>,  <46.618374, 36.338795, 32.263149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.148804, 36.423668, 31.781908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.861542, 36.300953, 31.532064>,  <46.689186, 36.227322, 31.382158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.861542, 36.300953, 31.532064>,  <47.148804, 36.423668, 31.781908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861542, 36.300953, 31.532064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349834, 0.616745, -0.705154,
		0.601557, -0.724918, -0.335593,
		-0.718154, -0.306789, -0.624608,
		46.646095, 36.208916, 31.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469791, 36.495945, 31.076088>,  <47.148804, 36.423668, 31.781908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469791, 36.495945, 31.076088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079727, 36.475540, 30.989868>,  <46.845688, 36.463299, 30.938137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079727, 36.475540, 30.989868>,  <47.469791, 36.495945, 31.076088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079727, 36.475540, 30.989868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142389, 0.601066, -0.786413,
		0.169673, -0.797570, -0.578872,
		-0.975159, -0.051008, -0.215549,
		46.787178, 36.460239, 30.925203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364746, 36.238762, 30.347919>,  <47.469791, 36.495945, 31.076088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364746, 36.238762, 30.347919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.021488, 36.421368, 30.441885>,  <46.815533, 36.530930, 30.498264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.021488, 36.421368, 30.441885>,  <47.364746, 36.238762, 30.347919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021488, 36.421368, 30.441885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072292, 0.560438, -0.825035,
		-0.508294, -0.691017, -0.513939,
		-0.858144, 0.456514, 0.234912,
		46.764046, 36.558323, 30.512358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092190, 36.323936, 29.766077>,  <47.364746, 36.238762, 30.347919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092190, 36.323936, 29.766077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.857273, 36.554073, 29.993786>,  <46.716324, 36.692158, 30.130411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.857273, 36.554073, 29.993786>,  <47.092190, 36.323936, 29.766077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857273, 36.554073, 29.993786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058439, 0.671368, -0.738816,
		-0.807265, -0.467166, -0.360665,
		-0.587289, 0.575344, 0.569273,
		46.681087, 36.726677, 30.164568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562294, 36.509605, 29.278570>,  <47.092190, 36.323936, 29.766077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562294, 36.509605, 29.278570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.584000, 36.788147, 29.564827>,  <46.597023, 36.955273, 29.736582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.584000, 36.788147, 29.564827>,  <46.562294, 36.509605, 29.278570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584000, 36.788147, 29.564827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066555, 0.717628, -0.693239,
		-0.996306, -0.010011, 0.085288,
		0.054265, 0.696354, 0.715644,
		46.600281, 36.997055, 29.779520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044178, 36.936050, 29.156939>,  <46.562294, 36.509605, 29.278570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044178, 36.936050, 29.156939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324596, 37.138641, 29.357746>,  <46.492847, 37.260197, 29.478230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324596, 37.138641, 29.357746>,  <46.044178, 36.936050, 29.156939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324596, 37.138641, 29.357746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025469, 0.685744, -0.727397,
		-0.712662, 0.522723, 0.467838,
		0.701045, 0.506473, 0.502017,
		46.534908, 37.290585, 29.508352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890865, 37.676842, 29.042044>,  <46.044178, 36.936050, 29.156939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890865, 37.676842, 29.042044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257275, 37.707680, 29.199503>,  <46.477119, 37.726185, 29.293978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257275, 37.707680, 29.199503>,  <45.890865, 37.676842, 29.042044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257275, 37.707680, 29.199503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210414, 0.743144, -0.635187,
		-0.341509, 0.664675, 0.664514,
		0.916023, 0.077099, 0.393647,
		46.532082, 37.730808, 29.317596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042160, 38.389118, 29.266108>,  <45.890865, 37.676842, 29.042044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042160, 38.389118, 29.266108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390873, 38.208836, 29.189312>,  <46.600101, 38.100666, 29.143234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390873, 38.208836, 29.189312>,  <46.042160, 38.389118, 29.266108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390873, 38.208836, 29.189312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186404, 0.667597, -0.720811,
		0.453044, 0.592603, 0.666012,
		0.871782, -0.450706, -0.191988,
		46.652409, 38.073624, 29.131716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509766, 38.932594, 29.309738>,  <46.042160, 38.389118, 29.266108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509766, 38.932594, 29.309738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664841, 38.621952, 29.111109>,  <46.757885, 38.435566, 28.991932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664841, 38.621952, 29.111109>,  <46.509766, 38.932594, 29.309738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664841, 38.621952, 29.111109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234450, 0.604060, -0.761672,
		0.891479, 0.178866, 0.416259,
		0.387683, -0.776607, -0.496572,
		46.781147, 38.388969, 28.962137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119534, 39.222576, 29.003756>,  <46.509766, 38.932594, 29.309738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119534, 39.222576, 29.003756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.053181, 38.878380, 28.811075>,  <47.013371, 38.671860, 28.695467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.053181, 38.878380, 28.811075>,  <47.119534, 39.222576, 29.003756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053181, 38.878380, 28.811075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133839, 0.464302, -0.875506,
		0.977021, -0.209700, 0.038148,
		-0.165881, -0.860494, -0.481699,
		47.003418, 38.620232, 28.666565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607563, 39.191391, 28.430513>,  <47.119534, 39.222576, 29.003756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607563, 39.191391, 28.430513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.342659, 38.923912, 28.295301>,  <47.183716, 38.763424, 28.214174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.342659, 38.923912, 28.295301>,  <47.607563, 39.191391, 28.430513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342659, 38.923912, 28.295301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034212, 0.423684, -0.905164,
		0.748495, -0.611016, -0.257711,
		-0.662258, -0.668693, -0.338029,
		47.143982, 38.723305, 28.193893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.848938, 38.991325, 27.762920>,  <47.607563, 39.191391, 28.430513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.848938, 38.991325, 27.762920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.457993, 38.907204, 27.753605>,  <47.223427, 38.856731, 27.748016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.457993, 38.907204, 27.753605>,  <47.848938, 38.991325, 27.762920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.457993, 38.907204, 27.753605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001075, 0.114997, -0.993365,
		0.211588, -0.970849, -0.112620,
		-0.977358, -0.210305, -0.023288,
		47.164783, 38.844112, 27.746618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.683071, 38.700226, 27.129301>,  <47.848938, 38.991325, 27.762920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.683071, 38.700226, 27.129301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.319626, 38.833778, 27.229652>,  <47.101559, 38.913910, 27.289864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.319626, 38.833778, 27.229652>,  <47.683071, 38.700226, 27.129301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319626, 38.833778, 27.229652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225871, 0.112411, -0.967650,
		-0.351279, -0.935889, -0.026726,
		-0.908618, 0.333878, 0.250878,
		47.047039, 38.933941, 27.304916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216324, 38.430641, 26.661022>,  <47.683071, 38.700226, 27.129301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216324, 38.430641, 26.661022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.024788, 38.749390, 26.808376>,  <46.909866, 38.940639, 26.896790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.024788, 38.749390, 26.808376>,  <47.216324, 38.430641, 26.661022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.024788, 38.749390, 26.808376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274033, 0.262983, -0.925065,
		-0.834038, -0.543907, 0.092443,
		-0.478838, 0.796872, 0.368387,
		46.881138, 38.988453, 26.918892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574116, 38.437187, 26.321089>,  <47.216324, 38.430641, 26.661022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574116, 38.437187, 26.321089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.595512, 38.810177, 26.463985>,  <46.608349, 39.033970, 26.549725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.595512, 38.810177, 26.463985>,  <46.574116, 38.437187, 26.321089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595512, 38.810177, 26.463985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262177, 0.358319, -0.896030,
		-0.963536, -0.045733, 0.263641,
		0.053489, 0.932478, 0.357244,
		46.611561, 39.089920, 26.571159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022827, 38.752934, 26.042433>,  <46.574116, 38.437187, 26.321089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022827, 38.752934, 26.042433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251038, 39.066669, 26.139851>,  <46.387962, 39.254910, 26.198301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251038, 39.066669, 26.139851>,  <46.022827, 38.752934, 26.042433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251038, 39.066669, 26.139851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290528, 0.470116, -0.833417,
		-0.768175, 0.404729, 0.496086,
		0.570526, 0.784337, 0.243547,
		46.422195, 39.301971, 26.212915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.003311, 37.026733, 37.872913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831722, 36.705902, 38.039120>,  <40.728771, 36.513401, 38.138844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831722, 36.705902, 38.039120>,  <41.003311, 37.026733, 37.872913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831722, 36.705902, 38.039120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291427, -0.312510, -0.904106,
		0.855019, -0.508925, -0.099691,
		-0.428968, -0.802080, 0.415516,
		40.703033, 36.465279, 38.163776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320004, 36.335564, 37.597309>,  <41.003311, 37.026733, 37.872913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320004, 36.335564, 37.597309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940773, 36.305710, 37.720974>,  <40.713234, 36.287796, 37.795174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940773, 36.305710, 37.720974>,  <41.320004, 36.335564, 37.597309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940773, 36.305710, 37.720974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282929, -0.246083, -0.927035,
		0.145271, -0.966371, 0.212188,
		-0.948076, -0.074637, 0.309163,
		40.656349, 36.283318, 37.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237862, 35.720284, 37.340679>,  <41.320004, 36.335564, 37.597309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237862, 35.720284, 37.340679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863148, 35.846115, 37.401966>,  <40.638321, 35.921612, 37.438736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863148, 35.846115, 37.401966>,  <41.237862, 35.720284, 37.340679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863148, 35.846115, 37.401966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235797, -0.244037, -0.940662,
		-0.258546, -0.917318, 0.302791,
		-0.936778, 0.314602, 0.153206,
		40.582111, 35.940487, 37.447929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737396, 35.166962, 37.122765>,  <41.237862, 35.720284, 37.340679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737396, 35.166962, 37.122765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550346, 35.520531, 37.122330>,  <40.438114, 35.732674, 37.122070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550346, 35.520531, 37.122330>,  <40.737396, 35.166962, 37.122765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550346, 35.520531, 37.122330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228606, -0.122125, -0.965828,
		-0.853852, -0.451400, 0.259180,
		-0.467627, 0.883925, -0.001084,
		40.410057, 35.785709, 37.122005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109932, 35.014652, 36.997940>,  <40.737396, 35.166962, 37.122765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109932, 35.014652, 36.997940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150471, 35.396339, 36.885368>,  <40.174793, 35.625351, 36.817825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150471, 35.396339, 36.885368>,  <40.109932, 35.014652, 36.997940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150471, 35.396339, 36.885368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387350, -0.222710, -0.894628,
		-0.916345, 0.199677, 0.347045,
		0.101346, 0.954216, -0.281425,
		40.180874, 35.682606, 36.800941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495148, 35.184376, 36.701950>,  <40.109932, 35.014652, 36.997940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495148, 35.184376, 36.701950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747459, 35.458321, 36.556030>,  <39.898846, 35.622688, 36.468479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747459, 35.458321, 36.556030>,  <39.495148, 35.184376, 36.701950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747459, 35.458321, 36.556030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310726, -0.207852, -0.927495,
		-0.711034, 0.698396, 0.081697,
		0.630777, 0.684866, -0.364800,
		39.936691, 35.663780, 36.446590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090469, 35.582195, 36.285786>,  <39.495148, 35.184376, 36.701950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090469, 35.582195, 36.285786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464844, 35.644348, 36.159374>,  <39.689468, 35.681641, 36.083527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464844, 35.644348, 36.159374>,  <39.090469, 35.582195, 36.285786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464844, 35.644348, 36.159374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308406, -0.071572, -0.948558,
		-0.170008, 0.985258, -0.019067,
		0.935940, 0.155382, -0.316028,
		39.745625, 35.690964, 36.064568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017662, 36.090099, 35.790569>,  <39.090469, 35.582195, 36.285786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017662, 36.090099, 35.790569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359180, 35.901100, 35.703129>,  <39.564091, 35.787701, 35.650665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359180, 35.901100, 35.703129>,  <39.017662, 36.090099, 35.790569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359180, 35.901100, 35.703129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323075, -0.151609, -0.934151,
		0.408241, 0.868195, -0.282094,
		0.853793, -0.472496, -0.218599,
		39.615318, 35.759350, 35.637550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217186, 36.328869, 35.078850>,  <39.017662, 36.090099, 35.790569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217186, 36.328869, 35.078850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433567, 35.999802, 35.148819>,  <39.563396, 35.802361, 35.190800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433567, 35.999802, 35.148819>,  <39.217186, 36.328869, 35.078850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433567, 35.999802, 35.148819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177563, -0.315002, -0.932333,
		0.822098, 0.473285, -0.316475,
		0.540949, -0.822664, 0.174925,
		39.595852, 35.753002, 35.201298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623020, 36.274487, 34.493809>,  <39.217186, 36.328869, 35.078850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623020, 36.274487, 34.493809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600658, 35.914757, 34.667282>,  <39.587242, 35.698917, 34.771366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600658, 35.914757, 34.667282>,  <39.623020, 36.274487, 34.493809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600658, 35.914757, 34.667282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202624, -0.415109, -0.886921,
		0.977660, -0.137455, -0.159020,
		-0.055902, -0.899328, 0.433687,
		39.583889, 35.644958, 34.797390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000805, 35.868622, 34.029663>,  <39.623020, 36.274487, 34.493809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000805, 35.868622, 34.029663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754723, 35.628819, 34.234451>,  <39.607075, 35.484936, 34.357323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754723, 35.628819, 34.234451>,  <40.000805, 35.868622, 34.029663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754723, 35.628819, 34.234451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134393, -0.560150, -0.817417,
		0.776830, -0.571682, 0.264036,
		-0.615202, -0.599510, 0.511971,
		39.570164, 35.448967, 34.388042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026035, 35.233227, 33.655567>,  <40.000805, 35.868622, 34.029663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026035, 35.233227, 33.655567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695091, 35.190975, 33.876228>,  <39.496525, 35.165623, 34.008625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695091, 35.190975, 33.876228>,  <40.026035, 35.233227, 33.655567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695091, 35.190975, 33.876228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352027, -0.667803, -0.655832,
		0.437676, -0.736804, 0.515324,
		-0.827355, -0.105634, 0.551656,
		39.446884, 35.159286, 34.041725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917862, 34.567795, 33.658268>,  <40.026035, 35.233227, 33.655567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917862, 34.567795, 33.658268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563042, 34.728188, 33.749794>,  <39.350151, 34.824421, 33.804710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563042, 34.728188, 33.749794>,  <39.917862, 34.567795, 33.658268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563042, 34.728188, 33.749794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447583, -0.625437, -0.639139,
		-0.113172, -0.669362, 0.734266,
		-0.887052, 0.400978, 0.228813,
		39.296925, 34.848480, 33.818439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724579, 34.655151, 33.787220>,  <39.917862, 34.567795, 33.658268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724579, 34.655151, 33.787220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510731, 34.733433, 33.458374>,  <40.382420, 34.780403, 33.261066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510731, 34.733433, 33.458374>,  <40.724579, 34.655151, 33.787220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510731, 34.733433, 33.458374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597067, -0.775933, 0.203565,
		-0.598069, 0.599690, 0.531681,
		-0.534625, 0.195704, -0.822117,
		40.350342, 34.792145, 33.211739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391987, 34.258675, 33.624840>,  <40.724579, 34.655151, 33.787220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391987, 34.258675, 33.624840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637970, 33.943253, 33.625809>,  <41.785561, 33.753998, 33.626392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637970, 33.943253, 33.625809>,  <41.391987, 34.258675, 33.624840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637970, 33.943253, 33.625809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057640, 0.048017, 0.997182,
		-0.786450, -0.613086, 0.074981,
		0.614959, -0.788556, 0.002425,
		41.822456, 33.706684, 33.626537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184628, 33.783512, 34.205685>,  <41.391987, 34.258675, 33.624840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184628, 33.783512, 34.205685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565769, 33.710045, 34.109077>,  <41.794456, 33.665962, 34.051113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565769, 33.710045, 34.109077>,  <41.184628, 33.783512, 34.205685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565769, 33.710045, 34.109077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241911, -0.020588, 0.970080,
		-0.183149, -0.982772, 0.024814,
		0.952857, -0.183672, -0.241514,
		41.851627, 33.654945, 34.036625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332310, 33.222488, 34.619530>,  <41.184628, 33.783512, 34.205685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332310, 33.222488, 34.619530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680763, 33.382404, 34.505482>,  <41.889835, 33.478355, 34.437054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680763, 33.382404, 34.505482>,  <41.332310, 33.222488, 34.619530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680763, 33.382404, 34.505482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338035, -0.067076, 0.938740,
		0.356177, -0.914148, -0.193576,
		0.871132, 0.399793, -0.285123,
		41.942104, 33.502342, 34.419945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792480, 32.765110, 34.868946>,  <41.332310, 33.222488, 34.619530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792480, 32.765110, 34.868946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942894, 33.132027, 34.816525>,  <42.033142, 33.352177, 34.785072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942894, 33.132027, 34.816525>,  <41.792480, 32.765110, 34.868946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942894, 33.132027, 34.816525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258652, 0.031898, 0.965444,
		0.889775, -0.396933, -0.225264,
		0.376031, 0.917293, -0.131050,
		42.055702, 33.407215, 34.777210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310501, 32.797615, 35.384483>,  <41.792480, 32.765110, 34.868946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310501, 32.797615, 35.384483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272396, 33.189594, 35.314472>,  <42.249535, 33.424782, 35.272465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272396, 33.189594, 35.314472>,  <42.310501, 32.797615, 35.384483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272396, 33.189594, 35.314472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119342, 0.185799, 0.975313,
		0.988273, 0.072018, -0.134648,
		-0.095258, 0.979945, -0.175025,
		42.243820, 33.483578, 35.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763977, 33.103092, 35.801098>,  <42.310501, 32.797615, 35.384483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763977, 33.103092, 35.801098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520344, 33.400734, 35.691311>,  <42.374165, 33.579319, 35.625439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520344, 33.400734, 35.691311>,  <42.763977, 33.103092, 35.801098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520344, 33.400734, 35.691311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071877, 0.396430, 0.915247,
		0.789843, 0.537733, -0.294942,
		-0.609082, 0.744102, -0.274466,
		42.337620, 33.623966, 35.608971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149548, 33.688393, 36.003593>,  <42.763977, 33.103092, 35.801098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149548, 33.688393, 36.003593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757099, 33.764736, 35.991043>,  <42.521629, 33.810543, 35.983513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757099, 33.764736, 35.991043>,  <43.149548, 33.688393, 36.003593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757099, 33.764736, 35.991043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053658, 0.424419, 0.903874,
		0.185827, 0.885123, -0.426646,
		-0.981116, 0.190857, -0.031375,
		42.462765, 33.821995, 35.981632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028160, 34.410091, 36.193661>,  <43.149548, 33.688393, 36.003593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028160, 34.410091, 36.193661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688919, 34.216717, 36.280388>,  <42.485374, 34.100693, 36.332424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688919, 34.216717, 36.280388>,  <43.028160, 34.410091, 36.193661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688919, 34.216717, 36.280388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063203, 0.313985, 0.947322,
		-0.526052, 0.817128, -0.235736,
		-0.848101, -0.483441, 0.216817,
		42.434490, 34.071686, 36.345432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620079, 34.931210, 36.516289>,  <43.028160, 34.410091, 36.193661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620079, 34.931210, 36.516289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464931, 34.589752, 36.655338>,  <42.371841, 34.384876, 36.738770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464931, 34.589752, 36.655338>,  <42.620079, 34.931210, 36.516289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464931, 34.589752, 36.655338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092015, 0.411130, 0.906921,
		-0.917109, 0.319782, -0.238014,
		-0.387872, -0.853646, 0.347626,
		42.348572, 34.333660, 36.759624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063881, 35.146400, 37.108864>,  <42.620079, 34.931210, 36.516289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063881, 35.146400, 37.108864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136890, 34.758820, 37.175575>,  <42.180695, 34.526272, 37.215603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136890, 34.758820, 37.175575>,  <42.063881, 35.146400, 37.108864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136890, 34.758820, 37.175575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280365, 0.111292, 0.953420,
		-0.942380, -0.220778, -0.251348,
		0.182521, -0.968953, 0.166778,
		42.191647, 34.468132, 37.225609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525055, 34.959877, 37.484970>,  <42.063881, 35.146400, 37.108864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525055, 34.959877, 37.484970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802410, 34.677082, 37.540657>,  <41.968822, 34.507404, 37.574070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802410, 34.677082, 37.540657>,  <41.525055, 34.959877, 37.484970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802410, 34.677082, 37.540657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097243, 0.099622, 0.990262,
		-0.713977, -0.700169, 0.000326,
		0.693384, -0.706993, 0.139215,
		42.010426, 34.464985, 37.582420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188766, 34.545570, 38.037197>,  <41.525055, 34.959877, 37.484970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188766, 34.545570, 38.037197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579712, 34.460960, 38.038746>,  <41.814281, 34.410194, 38.039673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579712, 34.460960, 38.038746>,  <41.188766, 34.545570, 38.037197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579712, 34.460960, 38.038746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007169, 0.051386, 0.998653,
		-0.211436, -0.976021, 0.051739,
		0.977366, -0.211522, 0.003867,
		41.872921, 34.397503, 38.039906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187389, 33.891224, 38.368767>,  <41.188766, 34.545570, 38.037197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187389, 33.891224, 38.368767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533123, 34.089691, 38.401608>,  <41.740562, 34.208771, 38.421310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533123, 34.089691, 38.401608>,  <41.187389, 33.891224, 38.368767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533123, 34.089691, 38.401608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068738, -0.278274, 0.958039,
		0.498196, -0.822423, -0.274628,
		0.864335, 0.496169, 0.082103,
		41.792423, 34.238541, 38.426239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488224, 33.525612, 38.891094>,  <41.187389, 33.891224, 38.368767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488224, 33.525612, 38.891094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728329, 33.845531, 38.890514>,  <41.872391, 34.037483, 38.890167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728329, 33.845531, 38.890514>,  <41.488224, 33.525612, 38.891094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728329, 33.845531, 38.890514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186407, -0.138141, 0.972712,
		0.777776, -0.584153, -0.232010,
		0.600263, 0.799801, -0.001448,
		41.908409, 34.085472, 38.890079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554020, 32.709560, 39.003208>,  <41.488224, 33.525612, 38.891094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554020, 32.709560, 39.003208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362335, 32.428516, 39.213612>,  <41.247322, 32.259888, 39.339855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362335, 32.428516, 39.213612>,  <41.554020, 32.709560, 39.003208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362335, 32.428516, 39.213612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674420, -0.088769, -0.732992,
		0.561704, -0.706012, -0.431318,
		-0.479214, -0.702614, 0.526011,
		41.218571, 32.217731, 39.371414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513790, 32.106243, 38.570305>,  <41.554020, 32.709560, 39.003208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513790, 32.106243, 38.570305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238800, 32.080605, 38.859653>,  <41.073807, 32.065220, 39.033260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238800, 32.080605, 38.859653>,  <41.513790, 32.106243, 38.570305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238800, 32.080605, 38.859653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709667, -0.152064, -0.687931,
		0.154092, -0.986290, 0.059054,
		-0.687480, -0.064096, 0.723370,
		41.032555, 32.061375, 39.076664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081657, 31.618021, 38.296936>,  <41.513790, 32.106243, 38.570305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081657, 31.618021, 38.296936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897003, 31.866898, 38.549847>,  <40.786209, 32.016224, 38.701591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897003, 31.866898, 38.549847>,  <41.081657, 31.618021, 38.296936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897003, 31.866898, 38.549847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738090, 0.125951, -0.662842,
		-0.492050, -0.772668, 0.401088,
		-0.461639, 0.622190, 0.632273,
		40.758511, 32.053555, 38.739529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424397, 31.468428, 38.173756>,  <41.081657, 31.618021, 38.296936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424397, 31.468428, 38.173756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377304, 31.804310, 38.385807>,  <40.349049, 32.005840, 38.513039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377304, 31.804310, 38.385807>,  <40.424397, 31.468428, 38.173756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377304, 31.804310, 38.385807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771091, 0.259088, -0.581629,
		-0.625746, -0.477252, 0.616986,
		-0.117730, 0.839704, 0.530128,
		40.341984, 32.056221, 38.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736618, 31.465448, 38.444866>,  <40.424397, 31.468428, 38.173756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736618, 31.465448, 38.444866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860180, 31.845356, 38.424789>,  <39.934319, 32.073299, 38.412743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860180, 31.845356, 38.424789>,  <39.736618, 31.465448, 38.444866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860180, 31.845356, 38.424789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811694, 0.235758, -0.534388,
		-0.495712, 0.205813, 0.843748,
		0.308904, 0.949768, -0.050189,
		39.952850, 32.130287, 38.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121113, 31.966988, 38.641640>,  <39.736618, 31.465448, 38.444866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121113, 31.966988, 38.641640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377087, 32.177525, 38.417694>,  <39.530670, 32.303848, 38.283325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377087, 32.177525, 38.417694>,  <39.121113, 31.966988, 38.641640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377087, 32.177525, 38.417694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767632, 0.404643, -0.496996,
		-0.035045, 0.747814, 0.662983,
		0.639932, 0.526344, -0.559866,
		39.569065, 32.335426, 38.249733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637775, 32.528713, 38.399345>,  <39.121113, 31.966988, 38.641640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637775, 32.528713, 38.399345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981518, 32.590828, 38.204453>,  <39.187763, 32.628098, 38.087517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981518, 32.590828, 38.204453>,  <38.637775, 32.528713, 38.399345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981518, 32.590828, 38.204453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494535, 0.494866, -0.714523,
		0.130158, 0.854982, 0.502060,
		0.859357, 0.155285, -0.487230,
		39.239326, 32.637413, 38.058285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622311, 33.234352, 38.346577>,  <38.637775, 32.528713, 38.399345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622311, 33.234352, 38.346577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855679, 33.078468, 38.061550>,  <38.995701, 32.984940, 37.890533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855679, 33.078468, 38.061550>,  <38.622311, 33.234352, 38.346577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855679, 33.078468, 38.061550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643879, 0.312812, -0.698261,
		0.495016, 0.866185, -0.068424,
		0.583420, -0.389708, -0.712565,
		39.030704, 32.961555, 37.847782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643181, 33.811337, 37.735180>,  <38.622311, 33.234352, 38.346577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643181, 33.811337, 37.735180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780014, 33.458923, 37.604488>,  <38.862114, 33.247475, 37.526073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780014, 33.458923, 37.604488>,  <38.643181, 33.811337, 37.735180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780014, 33.458923, 37.604488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475677, 0.137503, -0.868806,
		0.810377, 0.452622, -0.372052,
		0.342082, -0.881037, -0.326731,
		38.882637, 33.194611, 37.506470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967949, 33.942791, 37.111881>,  <38.643181, 33.811337, 37.735180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967949, 33.942791, 37.111881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836807, 33.564922, 37.115940>,  <38.758121, 33.338200, 37.118374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836807, 33.564922, 37.115940>,  <38.967949, 33.942791, 37.111881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836807, 33.564922, 37.115940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447594, 0.145863, -0.882261,
		0.831970, -0.293792, -0.470652,
		-0.327852, -0.944675, 0.010146,
		38.738453, 33.281521, 37.118984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829926, 33.884663, 36.433147>,  <38.967949, 33.942791, 37.111881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829926, 33.884663, 36.433147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676620, 33.535358, 36.553493>,  <38.584637, 33.325775, 36.625702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676620, 33.535358, 36.553493>,  <38.829926, 33.884663, 36.433147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676620, 33.535358, 36.553493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586427, -0.021599, -0.809714,
		0.713592, -0.486771, -0.503827,
		-0.383263, -0.873263, 0.300868,
		38.561642, 33.273380, 36.643753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899399, 33.351265, 35.886593>,  <38.829926, 33.884663, 36.433147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899399, 33.351265, 35.886593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593716, 33.265202, 36.129803>,  <38.410305, 33.213566, 36.275730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593716, 33.265202, 36.129803>,  <38.899399, 33.351265, 35.886593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593716, 33.265202, 36.129803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641673, 0.158397, -0.750444,
		0.065151, -0.963649, -0.259105,
		-0.764207, -0.215153, 0.608028,
		38.364452, 33.200657, 36.312210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.218731, 30.676989, 42.405647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.851894, 30.819733, 42.476738>,  <42.631790, 30.905380, 42.519394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.851894, 30.819733, 42.476738>,  <43.218731, 30.676989, 42.405647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851894, 30.819733, 42.476738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184901, 0.014208, -0.982654,
		-0.353197, -0.934049, 0.052954,
		-0.917095, 0.356862, 0.177725,
		42.576767, 30.926790, 42.530056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820572, 30.300959, 42.012512>,  <43.218731, 30.676989, 42.405647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820572, 30.300959, 42.012512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599941, 30.622807, 42.100468>,  <42.467564, 30.815916, 42.153240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599941, 30.622807, 42.100468>,  <42.820572, 30.300959, 42.012512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599941, 30.622807, 42.100468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144244, 0.167637, -0.975239,
		-0.821560, -0.569633, 0.023598,
		-0.551573, 0.804622, 0.219890,
		42.434471, 30.864193, 42.166435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212036, 30.169474, 41.604702>,  <42.820572, 30.300959, 42.012512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212036, 30.169474, 41.604702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.214458, 30.560863, 41.687210>,  <42.215912, 30.795698, 41.736713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.214458, 30.560863, 41.687210>,  <42.212036, 30.169474, 41.604702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214458, 30.560863, 41.687210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361843, 0.194439, -0.911736,
		-0.932219, -0.069115, 0.355233,
		0.006057, 0.978477, 0.206269,
		42.216274, 30.854406, 41.749092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644115, 30.413391, 41.360661>,  <42.212036, 30.169474, 41.604702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644115, 30.413391, 41.360661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845581, 30.754898, 41.413422>,  <41.966461, 30.959803, 41.445076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845581, 30.754898, 41.413422>,  <41.644115, 30.413391, 41.360661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845581, 30.754898, 41.413422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352460, 0.342475, -0.870909,
		-0.788728, 0.392158, 0.473413,
		0.503666, 0.853770, 0.131899,
		41.996681, 31.011028, 41.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183537, 30.908848, 41.148869>,  <41.644115, 30.413391, 41.360661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183537, 30.908848, 41.148869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.522091, 31.121687, 41.139915>,  <41.725224, 31.249390, 41.134544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.522091, 31.121687, 41.139915>,  <41.183537, 30.908848, 41.148869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522091, 31.121687, 41.139915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343408, 0.513159, -0.786600,
		-0.407063, 0.673454, 0.617057,
		0.846387, 0.532098, -0.022381,
		41.776009, 31.281317, 41.133202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024643, 31.662693, 41.088943>,  <41.183537, 30.908848, 41.148869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024643, 31.662693, 41.088943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401955, 31.647652, 40.956997>,  <41.628342, 31.638626, 40.877827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401955, 31.647652, 40.956997>,  <41.024643, 31.662693, 41.088943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401955, 31.647652, 40.956997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240043, 0.609153, -0.755852,
		0.229364, 0.792160, 0.565574,
		0.943277, -0.037603, -0.329870,
		41.684937, 31.636372, 40.858036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268890, 32.415672, 41.010143>,  <41.024643, 31.662693, 41.088943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268890, 32.415672, 41.010143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.475601, 32.161034, 40.781166>,  <41.599628, 32.008251, 40.643780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.475601, 32.161034, 40.781166>,  <41.268890, 32.415672, 41.010143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475601, 32.161034, 40.781166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393006, 0.417637, -0.819222,
		0.760587, 0.648326, -0.034361,
		0.516773, -0.636594, -0.572445,
		41.630634, 31.970055, 40.609432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699329, 32.770157, 40.448959>,  <41.268890, 32.415672, 41.010143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699329, 32.770157, 40.448959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618660, 32.400700, 40.318604>,  <41.570259, 32.179024, 40.240391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618660, 32.400700, 40.318604>,  <41.699329, 32.770157, 40.448959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618660, 32.400700, 40.318604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423041, 0.382234, -0.821544,
		0.883382, -0.027820, -0.467827,
		-0.201675, -0.923647, -0.325889,
		41.558159, 32.123604, 40.220837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812653, 32.845963, 39.700893>,  <41.699329, 32.770157, 40.448959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812653, 32.845963, 39.700893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620358, 32.496387, 39.729538>,  <41.504982, 32.286644, 39.746723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620358, 32.496387, 39.729538>,  <41.812653, 32.845963, 39.700893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620358, 32.496387, 39.729538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727633, 0.352014, -0.588759,
		0.489331, -0.335140, -0.805131,
		-0.480734, -0.873938, 0.071608,
		41.476135, 32.234207, 39.751022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141838, 33.431324, 39.274605>,  <41.812653, 32.845963, 39.700893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141838, 33.431324, 39.274605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.124577, 33.830944, 39.271931>,  <42.114220, 34.070717, 39.270325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.124577, 33.830944, 39.271931>,  <42.141838, 33.431324, 39.274605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124577, 33.830944, 39.271931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319924, 0.020160, 0.947229,
		0.946460, 0.038741, -0.320489,
		-0.043157, 0.999046, -0.006687,
		42.111629, 34.130657, 39.269924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657665, 33.658390, 39.627262>,  <42.141838, 33.431324, 39.274605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657665, 33.658390, 39.627262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448257, 33.999191, 39.625446>,  <42.322613, 34.203671, 39.624355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448257, 33.999191, 39.625446>,  <42.657665, 33.658390, 39.627262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448257, 33.999191, 39.625446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292735, 0.184870, 0.938152,
		0.800148, 0.489809, -0.346194,
		-0.523517, 0.852004, -0.004539,
		42.291203, 34.254791, 39.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050911, 34.130737, 39.865856>,  <42.657665, 33.658390, 39.627262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050911, 34.130737, 39.865856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.682858, 34.264652, 39.947117>,  <42.462025, 34.345001, 39.995872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.682858, 34.264652, 39.947117>,  <43.050911, 34.130737, 39.865856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682858, 34.264652, 39.947117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216581, 0.002863, 0.976260,
		0.326257, 0.942290, -0.075142,
		-0.920135, 0.334786, 0.203148,
		42.406818, 34.365089, 40.008060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203491, 34.638470, 40.383995>,  <43.050911, 34.130737, 39.865856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203491, 34.638470, 40.383995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818626, 34.546326, 40.442204>,  <42.587708, 34.491039, 40.477131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818626, 34.546326, 40.442204>,  <43.203491, 34.638470, 40.383995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818626, 34.546326, 40.442204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148485, 0.004532, 0.988904,
		-0.228468, 0.973094, 0.029845,
		-0.962161, -0.230364, 0.145525,
		42.529980, 34.477215, 40.485863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969574, 35.251347, 40.699627>,  <43.203491, 34.638470, 40.383995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969574, 35.251347, 40.699627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697308, 34.970242, 40.782391>,  <42.533947, 34.801579, 40.832050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697308, 34.970242, 40.782391>,  <42.969574, 35.251347, 40.699627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697308, 34.970242, 40.782391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148942, 0.143790, 0.978336,
		-0.717294, 0.696737, 0.006798,
		-0.680665, -0.702767, 0.206913,
		42.493107, 34.759411, 40.844463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436951, 35.630337, 41.142532>,  <42.969574, 35.251347, 40.699627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436951, 35.630337, 41.142532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458649, 35.232918, 41.182358>,  <42.471668, 34.994465, 41.206253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458649, 35.232918, 41.182358>,  <42.436951, 35.630337, 41.142532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458649, 35.232918, 41.182358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204623, 0.108656, 0.972792,
		-0.977337, -0.032397, 0.209197,
		0.054246, -0.993551, 0.099564,
		42.474922, 34.934853, 41.212227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063007, 35.603870, 41.762135>,  <42.436951, 35.630337, 41.142532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063007, 35.603870, 41.762135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.245026, 35.251476, 41.710285>,  <42.354237, 35.040039, 41.679176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.245026, 35.251476, 41.710285>,  <42.063007, 35.603870, 41.762135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245026, 35.251476, 41.710285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135980, -0.075114, 0.987860,
		-0.880026, -0.467145, 0.085616,
		0.455043, -0.880984, -0.129624,
		42.381538, 34.987183, 41.671398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831772, 35.256142, 42.316280>,  <42.063007, 35.603870, 41.762135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831772, 35.256142, 42.316280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.137089, 35.020050, 42.211197>,  <42.320278, 34.878395, 42.148148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.137089, 35.020050, 42.211197>,  <41.831772, 35.256142, 42.316280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137089, 35.020050, 42.211197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175145, -0.202364, 0.963521,
		-0.621859, -0.781461, -0.051088,
		0.763293, -0.590226, -0.262711,
		42.366077, 34.842983, 42.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789143, 34.697418, 42.718147>,  <41.831772, 35.256142, 42.316280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789143, 34.697418, 42.718147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172832, 34.696220, 42.605091>,  <42.403046, 34.695499, 42.537258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172832, 34.696220, 42.605091>,  <41.789143, 34.697418, 42.718147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172832, 34.696220, 42.605091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279686, -0.134601, 0.950609,
		-0.040894, -0.990895, -0.128273,
		0.959220, -0.002998, -0.282644,
		42.460598, 34.695320, 42.520298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163918, 34.090027, 42.995811>,  <41.789143, 34.697418, 42.718147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163918, 34.090027, 42.995811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.447769, 34.351871, 42.891579>,  <42.618080, 34.508980, 42.829037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.447769, 34.351871, 42.891579>,  <42.163918, 34.090027, 42.995811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447769, 34.351871, 42.891579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425358, -0.103185, 0.899124,
		0.561693, -0.748886, -0.351669,
		0.709628, 0.654616, -0.260586,
		42.660656, 34.548256, 42.813404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769783, 33.777954, 43.236561>,  <42.163918, 34.090027, 42.995811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769783, 33.777954, 43.236561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.872829, 34.162807, 43.200951>,  <42.934658, 34.393719, 43.179585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.872829, 34.162807, 43.200951>,  <42.769783, 33.777954, 43.236561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872829, 34.162807, 43.200951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440369, -0.034898, 0.897138,
		0.860062, -0.270327, -0.432686,
		0.257620, 0.962136, -0.089029,
		42.950115, 34.451447, 43.174240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521851, 33.853836, 43.361485>,  <42.769783, 33.777954, 43.236561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521851, 33.853836, 43.361485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.344135, 34.203384, 43.440430>,  <43.237507, 34.413113, 43.487797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.344135, 34.203384, 43.440430>,  <43.521851, 33.853836, 43.361485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344135, 34.203384, 43.440430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436037, 0.018482, 0.899739,
		0.782611, 0.485801, -0.389252,
		-0.444289, 0.873874, 0.197363,
		43.210850, 34.465546, 43.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961353, 34.183910, 43.919647>,  <43.521851, 33.853836, 43.361485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961353, 34.183910, 43.919647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.646893, 34.430981, 43.911179>,  <43.458218, 34.579224, 43.906097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.646893, 34.430981, 43.911179>,  <43.961353, 34.183910, 43.919647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646893, 34.430981, 43.911179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272531, 0.377205, 0.885123,
		0.554703, 0.690069, -0.464875,
		-0.786150, 0.617673, -0.021172,
		43.411049, 34.616283, 43.904827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219780, 34.857224, 44.187458>,  <43.961353, 34.183910, 43.919647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219780, 34.857224, 44.187458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.822617, 34.851646, 44.234684>,  <43.584320, 34.848301, 44.263020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.822617, 34.851646, 44.234684>,  <44.219780, 34.857224, 44.187458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822617, 34.851646, 44.234684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116540, 0.082270, 0.989773,
		-0.023511, 0.996512, -0.080062,
		-0.992908, -0.013940, 0.118068,
		43.524746, 34.847466, 44.270103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.900219, 32.720211, 44.619980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261997, 32.609291, 44.490311>,  <37.479065, 32.542740, 44.412510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261997, 32.609291, 44.490311>,  <36.900219, 32.720211, 44.619980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261997, 32.609291, 44.490311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323001, 0.051263, -0.945009,
		0.278667, 0.959416, -0.043203,
		0.904442, -0.277298, -0.324178,
		37.533329, 32.526100, 44.393059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193405, 33.294041, 44.221802>,  <36.900219, 32.720211, 44.619980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193405, 33.294041, 44.221802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365448, 32.953262, 44.102341>,  <37.468674, 32.748795, 44.030663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365448, 32.953262, 44.102341>,  <37.193405, 33.294041, 44.221802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365448, 32.953262, 44.102341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122653, 0.272601, -0.954277,
		0.894408, 0.447070, 0.012753,
		0.430105, -0.851949, -0.298652,
		37.494480, 32.697678, 44.012745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673771, 33.531067, 43.747131>,  <37.193405, 33.294041, 44.221802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673771, 33.531067, 43.747131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610470, 33.141510, 43.682037>,  <37.572491, 32.907776, 43.642982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610470, 33.141510, 43.682037>,  <37.673771, 33.531067, 43.747131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610470, 33.141510, 43.682037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073238, 0.175931, -0.981674,
		0.984679, -0.143435, -0.099168,
		-0.158253, -0.973897, -0.162731,
		37.562992, 32.849342, 43.633217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874802, 33.544018, 43.141594>,  <37.673771, 33.531067, 43.747131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874802, 33.544018, 43.141594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.708118, 33.181530, 43.170189>,  <37.608109, 32.964035, 43.187344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.708118, 33.181530, 43.170189>,  <37.874802, 33.544018, 43.141594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708118, 33.181530, 43.170189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126508, -0.020059, -0.991763,
		0.900193, -0.422323, -0.106286,
		-0.416712, -0.906223, 0.071484,
		37.583103, 32.909664, 43.191635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084648, 33.121281, 42.533466>,  <37.874802, 33.544018, 43.141594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084648, 33.121281, 42.533466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738544, 32.964088, 42.657978>,  <37.530884, 32.869774, 42.732685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738544, 32.964088, 42.657978>,  <38.084648, 33.121281, 42.533466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738544, 32.964088, 42.657978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398339, 0.161925, -0.902832,
		0.304394, -0.905177, -0.296647,
		-0.865257, -0.392983, 0.311278,
		37.478966, 32.846195, 42.751362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829163, 32.487766, 42.053551>,  <38.084648, 33.121281, 42.533466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829163, 32.487766, 42.053551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500813, 32.644234, 42.219994>,  <37.303802, 32.738113, 42.319859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500813, 32.644234, 42.219994>,  <37.829163, 32.487766, 42.053551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500813, 32.644234, 42.219994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421795, 0.075958, -0.903504,
		-0.385032, -0.917178, 0.102642,
		-0.820877, 0.391172, 0.416108,
		37.254551, 32.761585, 42.344826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285175, 32.142944, 41.735943>,  <37.829163, 32.487766, 42.053551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285175, 32.142944, 41.735943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111725, 32.470951, 41.885365>,  <37.007656, 32.667755, 41.975018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111725, 32.470951, 41.885365>,  <37.285175, 32.142944, 41.735943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111725, 32.470951, 41.885365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527241, 0.105291, -0.843167,
		-0.730744, -0.562568, 0.386691,
		-0.433624, 0.820019, 0.373550,
		36.981636, 32.716957, 41.997429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628521, 32.128040, 41.312996>,  <37.285175, 32.142944, 41.735943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628521, 32.128040, 41.312996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660561, 32.482407, 41.495750>,  <36.679783, 32.695026, 41.605404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660561, 32.482407, 41.495750>,  <36.628521, 32.128040, 41.312996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660561, 32.482407, 41.495750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554287, 0.420543, -0.718268,
		-0.828463, -0.195716, 0.524733,
		0.080097, 0.885911, 0.456887,
		36.684589, 32.748180, 41.632816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951286, 32.454216, 41.479301>,  <36.628521, 32.128040, 41.312996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951286, 32.454216, 41.479301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220570, 32.746784, 41.435825>,  <36.382141, 32.922325, 41.409740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220570, 32.746784, 41.435825>,  <35.951286, 32.454216, 41.479301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220570, 32.746784, 41.435825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535913, 0.381325, -0.753252,
		-0.509497, 0.565346, 0.648689,
		0.673209, 0.731420, -0.108693,
		36.422531, 32.966209, 41.403217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619507, 32.824276, 40.999870>,  <35.951286, 32.454216, 41.479301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619507, 32.824276, 40.999870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.956455, 33.039581, 41.010349>,  <36.158623, 33.168766, 41.016636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.956455, 33.039581, 41.010349>,  <35.619507, 32.824276, 40.999870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956455, 33.039581, 41.010349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303865, 0.514567, -0.801802,
		-0.445066, 0.667450, 0.597015,
		0.842367, 0.538267, 0.026202,
		36.209164, 33.201061, 41.018211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416794, 33.598343, 40.890499>,  <35.619507, 32.824276, 40.999870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416794, 33.598343, 40.890499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803665, 33.555714, 40.798229>,  <36.035789, 33.530136, 40.742867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803665, 33.555714, 40.798229>,  <35.416794, 33.598343, 40.890499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803665, 33.555714, 40.798229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157838, 0.459476, -0.874053,
		0.199139, 0.881774, 0.427573,
		0.967177, -0.106571, -0.230677,
		36.093819, 33.523743, 40.729027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652824, 34.256931, 40.673084>,  <35.416794, 33.598343, 40.890499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652824, 34.256931, 40.673084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922459, 34.000755, 40.525871>,  <36.084240, 33.847050, 40.437546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922459, 34.000755, 40.525871>,  <35.652824, 34.256931, 40.673084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922459, 34.000755, 40.525871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239606, 0.281713, -0.929100,
		0.698708, 0.714478, 0.036448,
		0.674089, -0.640437, -0.368028,
		36.124687, 33.808624, 40.415462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937023, 34.647995, 40.117424>,  <35.652824, 34.256931, 40.673084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937023, 34.647995, 40.117424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059605, 34.273556, 40.048370>,  <36.133156, 34.048893, 40.006939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059605, 34.273556, 40.048370>,  <35.937023, 34.647995, 40.117424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059605, 34.273556, 40.048370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134866, 0.136834, -0.981371,
		0.942282, 0.324031, -0.084314,
		0.306458, -0.936098, -0.172637,
		36.151543, 33.992725, 39.996578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550961, 34.655121, 39.684105>,  <35.937023, 34.647995, 40.117424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550961, 34.655121, 39.684105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301472, 34.342556, 39.676418>,  <36.151779, 34.155018, 39.671806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301472, 34.342556, 39.676418>,  <36.550961, 34.655121, 39.684105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301472, 34.342556, 39.676418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190212, 0.175578, -0.965915,
		0.758147, -0.598810, -0.258146,
		-0.623724, -0.781408, -0.019213,
		36.114353, 34.108135, 39.670654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190186, 34.878628, 39.321770>,  <36.550961, 34.655121, 39.684105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190186, 34.878628, 39.321770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123436, 35.272346, 39.298744>,  <37.083385, 35.508579, 39.284931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123436, 35.272346, 39.298744>,  <37.190186, 34.878628, 39.321770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123436, 35.272346, 39.298744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247410, 0.098314, 0.963910,
		0.954433, 0.146606, -0.259931,
		-0.166870, 0.984297, -0.057562,
		37.073376, 35.567635, 39.281475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809048, 35.171898, 39.448460>,  <37.190186, 34.878628, 39.321770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809048, 35.171898, 39.448460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.510483, 35.418724, 39.548138>,  <37.331345, 35.566818, 39.607944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.510483, 35.418724, 39.548138>,  <37.809048, 35.171898, 39.448460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510483, 35.418724, 39.548138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455662, 0.200981, 0.867167,
		0.485014, 0.760814, -0.431188,
		-0.746413, 0.617065, 0.249196,
		37.286560, 35.603844, 39.622898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132591, 35.844269, 39.699306>,  <37.809048, 35.171898, 39.448460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132591, 35.844269, 39.699306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762672, 35.873959, 39.848560>,  <37.540718, 35.891773, 39.938114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762672, 35.873959, 39.848560>,  <38.132591, 35.844269, 39.699306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762672, 35.873959, 39.848560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380226, 0.146699, 0.913186,
		0.013042, 0.986392, -0.163889,
		-0.924802, 0.074225, 0.373138,
		37.485233, 35.896225, 39.960503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006351, 36.509853, 39.994343>,  <38.132591, 35.844269, 39.699306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006351, 36.509853, 39.994343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737335, 36.265228, 40.161041>,  <37.575924, 36.118454, 40.261059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737335, 36.265228, 40.161041>,  <38.006351, 36.509853, 39.994343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737335, 36.265228, 40.161041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364729, 0.216076, 0.905695,
		-0.643938, 0.761118, 0.077734,
		-0.672544, -0.611564, 0.416742,
		37.535572, 36.081760, 40.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953766, 36.813557, 40.553101>,  <38.006351, 36.509853, 39.994343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953766, 36.813557, 40.553101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779148, 36.469284, 40.657913>,  <37.674377, 36.262722, 40.720802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779148, 36.469284, 40.657913>,  <37.953766, 36.813557, 40.553101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779148, 36.469284, 40.657913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436882, 0.051811, 0.898025,
		-0.786488, 0.506504, 0.353398,
		-0.436544, -0.860679, 0.262032,
		37.648186, 36.211079, 40.736523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734043, 36.932896, 41.191505>,  <37.953766, 36.813557, 40.553101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734043, 36.932896, 41.191505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748806, 36.536495, 41.140038>,  <37.757664, 36.298656, 41.109158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748806, 36.536495, 41.140038>,  <37.734043, 36.932896, 41.191505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748806, 36.536495, 41.140038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265258, -0.114423, 0.957364,
		-0.963471, -0.069459, 0.258648,
		0.036903, -0.991001, -0.128668,
		37.759876, 36.239197, 41.101437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339840, 36.616158, 41.856899>,  <37.734043, 36.932896, 41.191505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339840, 36.616158, 41.856899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562008, 36.321686, 41.702213>,  <37.695309, 36.145000, 41.609402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562008, 36.321686, 41.702213>,  <37.339840, 36.616158, 41.856899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562008, 36.321686, 41.702213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347605, -0.216921, 0.912204,
		-0.755434, -0.641078, 0.135418,
		0.555419, -0.736182, -0.386712,
		37.728634, 36.100830, 41.586201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152824, 36.003811, 42.151909>,  <37.339840, 36.616158, 41.856899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152824, 36.003811, 42.151909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528934, 35.974972, 42.018829>,  <37.754601, 35.957668, 41.938980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528934, 35.974972, 42.018829>,  <37.152824, 36.003811, 42.151909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528934, 35.974972, 42.018829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288314, -0.350972, 0.890895,
		-0.181001, -0.933606, -0.309223,
		0.940273, -0.072100, -0.332698,
		37.811016, 35.953342, 41.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402103, 35.363487, 42.446358>,  <37.152824, 36.003811, 42.151909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402103, 35.363487, 42.446358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751194, 35.522789, 42.333397>,  <37.960648, 35.618370, 42.265621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751194, 35.522789, 42.333397>,  <37.402103, 35.363487, 42.446358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751194, 35.522789, 42.333397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390726, -0.222933, 0.893103,
		0.292728, -0.889771, -0.350168,
		0.872722, 0.398257, -0.282398,
		38.013012, 35.642265, 42.248676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912323, 34.854641, 42.487877>,  <37.402103, 35.363487, 42.446358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912323, 34.854641, 42.487877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132202, 35.188786, 42.486801>,  <38.264130, 35.389271, 42.486156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132202, 35.188786, 42.486801>,  <37.912323, 34.854641, 42.487877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132202, 35.188786, 42.486801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495357, -0.323368, 0.806260,
		0.672651, -0.444526, -0.591556,
		0.549694, 0.835362, -0.002685,
		38.297112, 35.439396, 42.485996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692013, 34.658352, 42.595303>,  <37.912323, 34.854641, 42.487877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692013, 34.658352, 42.595303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606487, 35.035141, 42.698822>,  <38.555172, 35.261215, 42.760933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606487, 35.035141, 42.698822>,  <38.692013, 34.658352, 42.595303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606487, 35.035141, 42.698822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406614, -0.155068, 0.900343,
		0.888228, 0.297734, -0.349864,
		-0.213810, 0.941970, 0.258799,
		38.542343, 35.317734, 42.776463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363586, 34.885422, 42.815464>,  <38.692013, 34.658352, 42.595303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363586, 34.885422, 42.815464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107365, 35.153923, 42.964657>,  <38.953632, 35.315025, 43.054173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107365, 35.153923, 42.964657>,  <39.363586, 34.885422, 42.815464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107365, 35.153923, 42.964657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425817, -0.093715, 0.899943,
		0.639043, 0.735281, -0.225801,
		-0.640550, 0.671252, 0.372983,
		38.915199, 35.355297, 43.076553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765877, 35.387558, 43.232639>,  <39.363586, 34.885422, 42.815464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765877, 35.387558, 43.232639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392467, 35.367336, 43.374611>,  <39.168423, 35.355202, 43.459793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392467, 35.367336, 43.374611>,  <39.765877, 35.387558, 43.232639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392467, 35.367336, 43.374611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357450, -0.055046, 0.932308,
		-0.027594, 0.997203, 0.069457,
		-0.933524, -0.050553, 0.354932,
		39.112411, 35.352169, 43.481091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693222, 35.922203, 43.824600>,  <39.765877, 35.387558, 43.232639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693222, 35.922203, 43.824600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383327, 35.670998, 43.853954>,  <39.197392, 35.520275, 43.871567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383327, 35.670998, 43.853954>,  <39.693222, 35.922203, 43.824600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383327, 35.670998, 43.853954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065071, 0.036250, 0.997222,
		-0.628932, 0.777355, 0.012781,
		-0.774732, -0.628016, 0.073382,
		39.150909, 35.482594, 43.875969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827358, 36.593525, 43.962639>,  <39.693222, 35.922203, 43.824600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827358, 36.593525, 43.962639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223396, 36.607475, 43.908234>,  <40.461018, 36.615845, 43.875591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223396, 36.607475, 43.908234>,  <39.827358, 36.593525, 43.962639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223396, 36.607475, 43.908234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140074, 0.178185, -0.973976,
		-0.009729, 0.983379, 0.181305,
		0.990093, 0.034872, -0.136012,
		40.520424, 36.617935, 43.867432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848282, 37.022968, 43.418228>,  <39.827358, 36.593525, 43.962639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848282, 37.022968, 43.418228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214565, 36.862469, 43.427002>,  <40.434334, 36.766167, 43.432266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214565, 36.862469, 43.427002>,  <39.848282, 37.022968, 43.418228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214565, 36.862469, 43.427002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078962, 0.126140, -0.988865,
		0.394016, 0.907241, 0.147191,
		0.915706, -0.401251, 0.021936,
		40.489277, 36.742092, 43.433582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455753, 37.440144, 43.091560>,  <39.848282, 37.022968, 43.418228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455753, 37.440144, 43.091560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588409, 37.062927, 43.080982>,  <40.668003, 36.836597, 43.074635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588409, 37.062927, 43.080982>,  <40.455753, 37.440144, 43.091560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588409, 37.062927, 43.080982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003327, 0.026867, -0.999633,
		0.943401, 0.331603, 0.005773,
		0.331637, -0.943036, -0.026450,
		40.687901, 36.780018, 43.073048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970879, 37.454502, 42.518341>,  <40.455753, 37.440144, 43.091560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970879, 37.454502, 42.518341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917290, 37.062569, 42.577652>,  <40.885136, 36.827408, 42.613239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917290, 37.062569, 42.577652>,  <40.970879, 37.454502, 42.518341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917290, 37.062569, 42.577652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137309, -0.129832, -0.981982,
		0.981427, -0.151915, -0.117146,
		-0.133968, -0.979829, 0.148280,
		40.877098, 36.768620, 42.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479858, 37.108425, 42.102810>,  <40.970879, 37.454502, 42.518341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479858, 37.108425, 42.102810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.217018, 36.812122, 42.158676>,  <41.059315, 36.634342, 42.192196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.217018, 36.812122, 42.158676>,  <41.479858, 37.108425, 42.102810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217018, 36.812122, 42.158676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079961, -0.115739, -0.990056,
		0.749551, -0.661733, 0.016820,
		-0.657099, -0.740753, 0.139665,
		41.019890, 36.589897, 42.200577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726070, 36.564724, 41.598904>,  <41.479858, 37.108425, 42.102810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726070, 36.564724, 41.598904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347401, 36.507622, 41.714436>,  <41.120197, 36.473362, 41.783756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347401, 36.507622, 41.714436>,  <41.726070, 36.564724, 41.598904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347401, 36.507622, 41.714436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272669, -0.122564, -0.954269,
		0.171626, -0.982140, 0.077104,
		-0.946676, -0.142754, 0.288834,
		41.063396, 36.464794, 41.801086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417995, 35.894260, 41.301708>,  <41.726070, 36.564724, 41.598904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417995, 35.894260, 41.301708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091782, 36.116989, 41.364777>,  <40.896053, 36.250626, 41.402618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091782, 36.116989, 41.364777>,  <41.417995, 35.894260, 41.301708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091782, 36.116989, 41.364777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323530, -0.212786, -0.921982,
		-0.479829, -0.802915, 0.353682,
		-0.815532, 0.556821, 0.157667,
		40.847122, 36.284035, 41.412075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853420, 35.603317, 40.942177>,  <41.417995, 35.894260, 41.301708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853420, 35.603317, 40.942177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756195, 35.987850, 40.993969>,  <40.697861, 36.218571, 41.025043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756195, 35.987850, 40.993969>,  <40.853420, 35.603317, 40.942177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756195, 35.987850, 40.993969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205846, 0.079321, -0.975364,
		-0.947917, -0.263730, 0.178606,
		-0.243066, 0.961330, 0.129478,
		40.683277, 36.276249, 41.032814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340965, 35.677853, 40.465908>,  <40.853420, 35.603317, 40.942177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340965, 35.677853, 40.465908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434715, 36.053730, 40.565536>,  <40.490963, 36.279259, 40.625313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434715, 36.053730, 40.565536>,  <40.340965, 35.677853, 40.465908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434715, 36.053730, 40.565536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103632, 0.278902, -0.954712,
		-0.966608, 0.197944, 0.162749,
		0.234370, 0.939698, 0.249075,
		40.505028, 36.335640, 40.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788948, 36.026379, 40.327366>,  <40.340965, 35.677853, 40.465908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788948, 36.026379, 40.327366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087082, 36.293045, 40.325016>,  <40.265961, 36.453045, 40.323605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087082, 36.293045, 40.325016>,  <39.788948, 36.026379, 40.327366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087082, 36.293045, 40.325016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177267, 0.189668, -0.965713,
		-0.642695, 0.720819, 0.259544,
		0.745332, 0.666667, -0.005879,
		40.310680, 36.493046, 40.323254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548225, 36.572018, 40.022858>,  <39.788948, 36.026379, 40.327366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548225, 36.572018, 40.022858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943737, 36.596394, 39.968300>,  <40.181046, 36.611019, 39.935566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943737, 36.596394, 39.968300>,  <39.548225, 36.572018, 40.022858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943737, 36.596394, 39.968300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146284, 0.209725, -0.966756,
		-0.030306, 0.975860, 0.216285,
		0.988778, 0.060938, -0.136397,
		40.240372, 36.614674, 39.927380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566223, 37.045189, 39.467506>,  <39.548225, 36.572018, 40.022858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566223, 37.045189, 39.467506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.934204, 36.891068, 39.496418>,  <40.154995, 36.798595, 39.513763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.934204, 36.891068, 39.496418>,  <39.566223, 37.045189, 39.467506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934204, 36.891068, 39.496418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044221, -0.081193, -0.995717,
		0.389523, 0.919211, -0.057655,
		0.919955, -0.385305, 0.072274,
		40.210190, 36.775475, 39.518101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063591, 37.387821, 38.976967>,  <39.566223, 37.045189, 39.467506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063591, 37.387821, 38.976967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.231361, 37.028046, 39.026112>,  <40.332024, 36.812180, 39.055599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.231361, 37.028046, 39.026112>,  <40.063591, 37.387821, 38.976967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231361, 37.028046, 39.026112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003837, -0.137101, -0.990550,
		0.907783, 0.414988, -0.060955,
		0.419423, -0.899438, 0.122865,
		40.357189, 36.758213, 39.062973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548729, 37.331322, 38.514393>,  <40.063591, 37.387821, 38.976967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548729, 37.331322, 38.514393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.462532, 36.956635, 38.624752>,  <40.410816, 36.731823, 38.690968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.462532, 36.956635, 38.624752>,  <40.548729, 37.331322, 38.514393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462532, 36.956635, 38.624752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120467, -0.305879, -0.944418,
		0.969047, -0.170274, 0.178757,
		-0.215488, -0.936720, 0.275898,
		40.397884, 36.675617, 38.707523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.649622, 42.215660, 32.650841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591286, 42.092300, 32.274837>,  <30.556284, 42.018284, 32.049236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591286, 42.092300, 32.274837>,  <30.649622, 42.215660, 32.650841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591286, 42.092300, 32.274837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599700, -0.728135, 0.331933,
		-0.786823, 0.612134, -0.078757,
		-0.145841, -0.308403, -0.940010,
		30.547533, 41.999779, 31.992834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882786, 42.092560, 32.484425>,  <30.649622, 42.215660, 32.650841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882786, 42.092560, 32.484425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088123, 41.873932, 32.219776>,  <30.211325, 41.742756, 32.060989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088123, 41.873932, 32.219776>,  <29.882786, 42.092560, 32.484425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088123, 41.873932, 32.219776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585567, -0.786683, 0.195555,
		-0.627369, 0.287034, -0.723892,
		0.513343, -0.546572, -0.661618,
		30.242126, 41.709961, 32.021290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452225, 41.769619, 32.104961>,  <29.882786, 42.092560, 32.484425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452225, 41.769619, 32.104961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759180, 41.530647, 32.011848>,  <29.943354, 41.387264, 31.955980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759180, 41.530647, 32.011848>,  <29.452225, 41.769619, 32.104961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759180, 41.530647, 32.011848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585816, -0.800869, 0.124216,
		-0.260637, 0.041045, -0.964564,
		0.767391, -0.597432, -0.232781,
		29.989397, 41.351418, 31.942015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196989, 41.295601, 31.640709>,  <29.452225, 41.769619, 32.104961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196989, 41.295601, 31.640709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515898, 41.143093, 31.827896>,  <29.707243, 41.051590, 31.940208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515898, 41.143093, 31.827896>,  <29.196989, 41.295601, 31.640709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515898, 41.143093, 31.827896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475711, -0.874090, 0.098318,
		0.371560, -0.301003, -0.878260,
		0.797272, -0.381267, 0.467968,
		29.755079, 41.028713, 31.968287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298439, 40.680523, 31.361799>,  <29.196989, 41.295601, 31.640709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298439, 40.680523, 31.361799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491337, 40.629177, 31.708433>,  <29.607075, 40.598370, 31.916412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491337, 40.629177, 31.708433>,  <29.298439, 40.680523, 31.361799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491337, 40.629177, 31.708433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422907, -0.900418, 0.101970,
		0.767197, -0.415658, -0.488504,
		0.482243, -0.128361, 0.866583,
		29.636009, 40.590668, 31.968409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486294, 39.981678, 31.298552>,  <29.298439, 40.680523, 31.361799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486294, 39.981678, 31.298552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550446, 40.061653, 31.685188>,  <29.588936, 40.109638, 31.917171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550446, 40.061653, 31.685188>,  <29.486294, 39.981678, 31.298552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550446, 40.061653, 31.685188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403398, -0.880477, 0.249060,
		0.900860, -0.429866, -0.060553,
		0.160378, 0.199941, 0.966593,
		29.598558, 40.121635, 31.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832722, 39.350803, 31.621307>,  <29.486294, 39.981678, 31.298552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832722, 39.350803, 31.621307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679180, 39.584923, 31.906988>,  <29.587055, 39.725395, 32.078396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679180, 39.584923, 31.906988>,  <29.832722, 39.350803, 31.621307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679180, 39.584923, 31.906988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458284, -0.792226, 0.402931,
		0.801643, -0.172640, 0.572333,
		-0.383855, 0.585297, 0.714201,
		29.564024, 39.760513, 32.121250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000120, 39.002529, 32.222652>,  <29.832722, 39.350803, 31.621307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000120, 39.002529, 32.222652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711231, 39.257595, 32.329823>,  <29.537897, 39.410633, 32.394123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711231, 39.257595, 32.329823>,  <30.000120, 39.002529, 32.222652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711231, 39.257595, 32.329823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459696, -0.731959, 0.502907,
		0.516793, 0.240048, 0.821768,
		-0.722222, 0.637663, 0.267922,
		29.494564, 39.448895, 32.410198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855072, 38.828850, 32.831238>,  <30.000120, 39.002529, 32.222652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855072, 38.828850, 32.831238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527979, 39.032043, 32.722965>,  <29.331724, 39.153961, 32.658001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527979, 39.032043, 32.722965>,  <29.855072, 38.828850, 32.831238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527979, 39.032043, 32.722965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563515, -0.610665, 0.556362,
		0.117330, 0.607486, 0.785618,
		-0.817731, 0.507985, -0.270678,
		29.282660, 39.184441, 32.641762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424654, 38.919083, 33.461323>,  <29.855072, 38.828850, 32.831238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424654, 38.919083, 33.461323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161800, 38.960270, 33.162640>,  <29.004087, 38.984982, 32.983429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161800, 38.960270, 33.162640>,  <29.424654, 38.919083, 33.461323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161800, 38.960270, 33.162640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620980, -0.635476, 0.458861,
		-0.427265, 0.765224, 0.481535,
		-0.657136, 0.102969, -0.746706,
		28.964659, 38.991161, 32.938629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725449, 39.057087, 33.793911>,  <29.424654, 38.919083, 33.461323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725449, 39.057087, 33.793911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671373, 38.899055, 33.430454>,  <28.638929, 38.804237, 33.212379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671373, 38.899055, 33.430454>,  <28.725449, 39.057087, 33.793911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671373, 38.899055, 33.430454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491483, -0.769548, 0.407725,
		-0.860330, 0.501703, -0.090144,
		-0.135187, -0.395082, -0.908644,
		28.630817, 38.780529, 33.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083796, 38.895546, 33.779667>,  <28.725449, 39.057087, 33.793911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083796, 38.895546, 33.779667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203323, 38.671417, 33.470669>,  <28.275040, 38.536942, 33.285271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203323, 38.671417, 33.470669>,  <28.083796, 38.895546, 33.779667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203323, 38.671417, 33.470669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678459, -0.694003, 0.240941,
		-0.671119, 0.452109, -0.587535,
		0.298819, -0.560318, -0.772496,
		28.292969, 38.503323, 33.238918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479597, 38.676792, 33.480438>,  <28.083796, 38.895546, 33.779667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479597, 38.676792, 33.480438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773651, 38.422871, 33.385273>,  <27.950085, 38.270519, 33.328175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773651, 38.422871, 33.385273>,  <27.479597, 38.676792, 33.480438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773651, 38.422871, 33.385273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589161, -0.771859, 0.239005,
		-0.335357, -0.035531, -0.941421,
		0.735136, -0.634800, -0.237915,
		27.994192, 38.232430, 33.313900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142069, 38.242020, 32.941040>,  <27.479597, 38.676792, 33.480438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142069, 38.242020, 32.941040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464384, 38.034328, 33.054958>,  <27.657774, 37.909714, 33.123310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464384, 38.034328, 33.054958>,  <27.142069, 38.242020, 32.941040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464384, 38.034328, 33.054958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529251, -0.847159, -0.047067,
		0.265703, -0.112801, -0.957433,
		0.805789, -0.519229, 0.284793,
		27.706121, 37.878559, 33.140396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992542, 37.576824, 32.663441>,  <27.142069, 38.242020, 32.941040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992542, 37.576824, 32.663441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289425, 37.496140, 32.919079>,  <27.467554, 37.447727, 33.072460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289425, 37.496140, 32.919079>,  <26.992542, 37.576824, 32.663441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289425, 37.496140, 32.919079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357159, -0.925972, 0.122525,
		0.567067, -0.319197, -0.759308,
		0.742208, -0.201714, 0.639092,
		27.512087, 37.435627, 33.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254801, 36.802219, 32.495525>,  <26.992542, 37.576824, 32.663441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254801, 36.802219, 32.495525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311703, 36.925575, 32.871750>,  <27.345844, 36.999588, 33.097485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311703, 36.925575, 32.871750>,  <27.254801, 36.802219, 32.495525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311703, 36.925575, 32.871750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365993, -0.866497, 0.339457,
		0.919681, -0.392530, -0.010397,
		0.142256, 0.308387, 0.940564,
		27.354380, 37.018093, 33.153919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557636, 36.284485, 32.762119>,  <27.254801, 36.802219, 32.495525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557636, 36.284485, 32.762119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427500, 36.479893, 33.085972>,  <27.349417, 36.597137, 33.280281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427500, 36.479893, 33.085972>,  <27.557636, 36.284485, 32.762119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427500, 36.479893, 33.085972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365209, -0.854690, 0.368956,
		0.872224, -0.175646, 0.456480,
		-0.325343, 0.488523, 0.809628,
		27.329897, 36.626450, 33.328861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770187, 35.839333, 33.235165>,  <27.557636, 36.284485, 32.762119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770187, 35.839333, 33.235165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488506, 36.071011, 33.399426>,  <27.319498, 36.210018, 33.497982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488506, 36.071011, 33.399426>,  <27.770187, 35.839333, 33.235165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488506, 36.071011, 33.399426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449226, -0.811365, 0.374010,
		0.549814, 0.078902, 0.831552,
		-0.704202, 0.579191, 0.410654,
		27.277246, 36.244766, 33.522621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784143, 35.676979, 33.925488>,  <27.770187, 35.839333, 33.235165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784143, 35.676979, 33.925488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427555, 35.843822, 33.854721>,  <27.213602, 35.943928, 33.812263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427555, 35.843822, 33.854721>,  <27.784143, 35.676979, 33.925488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427555, 35.843822, 33.854721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447880, -0.752313, 0.483145,
		0.068430, 0.509946, 0.857480,
		-0.891471, 0.417110, -0.176914,
		27.160114, 35.968956, 33.801647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313913, 35.839020, 34.524357>,  <27.784143, 35.676979, 33.925488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313913, 35.839020, 34.524357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139605, 35.717598, 34.185429>,  <27.035019, 35.644745, 33.982071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139605, 35.717598, 34.185429>,  <27.313913, 35.839020, 34.524357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139605, 35.717598, 34.185429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301268, -0.837915, 0.455123,
		-0.848139, 0.453602, 0.273691,
		-0.435774, -0.303553, -0.847323,
		27.008873, 35.626534, 33.931232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465633, 35.539288, 35.236927>,  <27.313913, 35.839020, 34.524357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465633, 35.539288, 35.236927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832729, 35.381035, 35.222931>,  <28.052986, 35.286083, 35.214531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832729, 35.381035, 35.222931>,  <27.465633, 35.539288, 35.236927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832729, 35.381035, 35.222931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385563, 0.866279, 0.317651,
		-0.095362, -0.305013, 0.947562,
		0.917740, -0.395636, -0.034992,
		28.108051, 35.262344, 35.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669863, 35.627102, 35.894344>,  <27.465633, 35.539288, 35.236927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669863, 35.627102, 35.894344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994385, 35.594757, 35.662743>,  <28.189098, 35.575352, 35.523781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994385, 35.594757, 35.662743>,  <27.669863, 35.627102, 35.894344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994385, 35.594757, 35.662743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368451, 0.839661, 0.399015,
		0.453900, -0.537057, 0.711017,
		0.811307, -0.080861, -0.579001,
		28.237778, 35.570499, 35.489040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172220, 35.807896, 36.403625>,  <27.669863, 35.627102, 35.894344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172220, 35.807896, 36.403625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334522, 35.842556, 36.039680>,  <28.431904, 35.863350, 35.821312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334522, 35.842556, 36.039680>,  <28.172220, 35.807896, 36.403625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334522, 35.842556, 36.039680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458183, 0.842090, 0.284521,
		0.790842, -0.532331, 0.301982,
		0.405755, 0.086648, -0.909865,
		28.456249, 35.868549, 35.766720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849073, 36.011795, 36.527908>,  <28.172220, 35.807896, 36.403625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849073, 36.011795, 36.527908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.780546, 36.093128, 36.142307>,  <28.739429, 36.141930, 35.910946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.780546, 36.093128, 36.142307>,  <28.849073, 36.011795, 36.527908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780546, 36.093128, 36.142307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481728, 0.870816, 0.098067,
		0.859412, -0.447589, -0.247135,
		-0.171316, 0.203332, -0.964006,
		28.729151, 36.154129, 35.853104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486458, 36.140427, 36.241020>,  <28.849073, 36.011795, 36.527908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486458, 36.140427, 36.241020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.213760, 36.336437, 36.023727>,  <29.050142, 36.454044, 35.893353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.213760, 36.336437, 36.023727>,  <29.486458, 36.140427, 36.241020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213760, 36.336437, 36.023727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576546, 0.816955, 0.013391,
		0.450357, -0.304068, -0.839477,
		-0.681743, 0.490028, -0.543230,
		29.009237, 36.483444, 35.860760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925682, 36.479008, 35.816452>,  <29.486458, 36.140427, 36.241020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925682, 36.479008, 35.816452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572741, 36.666851, 35.804352>,  <29.360975, 36.779556, 35.797092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572741, 36.666851, 35.804352>,  <29.925682, 36.479008, 35.816452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572741, 36.666851, 35.804352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470548, 0.879653, -0.069248,
		-0.005910, -0.075335, -0.997141,
		-0.882355, 0.469612, -0.030251,
		29.308035, 36.807735, 35.795277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050575, 36.908020, 35.226696>,  <29.925682, 36.479008, 35.816452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050575, 36.908020, 35.226696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681295, 37.041771, 35.302475>,  <29.459726, 37.122021, 35.347942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681295, 37.041771, 35.302475>,  <30.050575, 36.908020, 35.226696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681295, 37.041771, 35.302475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294816, 0.932410, -0.209034,
		-0.246543, -0.137127, -0.959381,
		-0.923201, 0.334377, 0.189452,
		29.404335, 37.142082, 35.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727787, 37.282429, 34.697105>,  <30.050575, 36.908020, 35.226696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727787, 37.282429, 34.697105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539972, 37.438545, 35.013889>,  <29.427284, 37.532215, 35.203960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539972, 37.438545, 35.013889>,  <29.727787, 37.282429, 34.697105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539972, 37.438545, 35.013889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282113, 0.916288, -0.284305,
		-0.836629, 0.089932, -0.540337,
		-0.469536, 0.390294, 0.791964,
		29.399111, 37.555634, 35.251480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209436, 37.892647, 34.422493>,  <29.727787, 37.282429, 34.697105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209436, 37.892647, 34.422493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328722, 37.926495, 34.802788>,  <29.400293, 37.946804, 35.030964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328722, 37.926495, 34.802788>,  <29.209436, 37.892647, 34.422493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328722, 37.926495, 34.802788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258281, 0.951750, -0.165721,
		-0.918891, 0.294978, 0.261968,
		0.298212, 0.084618, 0.950741,
		29.418186, 37.951881, 35.088009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041775, 38.511738, 34.570400>,  <29.209436, 37.892647, 34.422493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041775, 38.511738, 34.570400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306295, 38.450352, 34.864101>,  <29.465008, 38.413521, 35.040321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306295, 38.450352, 34.864101>,  <29.041775, 38.511738, 34.570400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306295, 38.450352, 34.864101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273793, 0.960698, -0.045790,
		-0.698369, 0.231315, 0.677328,
		0.661300, -0.153469, 0.734254,
		29.504684, 38.404312, 35.084377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919456, 39.053913, 35.028603>,  <29.041775, 38.511738, 34.570400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919456, 39.053913, 35.028603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.286438, 38.950306, 35.149391>,  <29.506628, 38.888142, 35.221863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.286438, 38.950306, 35.149391>,  <28.919456, 39.053913, 35.028603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286438, 38.950306, 35.149391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246367, 0.965872, 0.079972,
		-0.312378, 0.001025, 0.949957,
		0.917455, -0.259019, 0.301970,
		29.561674, 38.872601, 35.239983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046856, 39.510162, 35.629128>,  <28.919456, 39.053913, 35.028603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046856, 39.510162, 35.629128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390532, 39.388874, 35.464275>,  <29.596737, 39.316101, 35.365364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390532, 39.388874, 35.464275>,  <29.046856, 39.510162, 35.629128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390532, 39.388874, 35.464275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373844, 0.921972, 0.101033,
		0.349340, -0.240879, 0.905505,
		0.859187, -0.303223, -0.412133,
		29.648287, 39.297909, 35.340637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578939, 39.753189, 36.091610>,  <29.046856, 39.510162, 35.629128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578939, 39.753189, 36.091610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735048, 39.699852, 35.727211>,  <29.828712, 39.667850, 35.508572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735048, 39.699852, 35.727211>,  <29.578939, 39.753189, 36.091610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735048, 39.699852, 35.727211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287113, 0.957742, -0.017185,
		0.874788, -0.254852, 0.412064,
		0.390272, -0.133342, -0.910993,
		29.852129, 39.659851, 35.453915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147661, 40.082474, 36.036083>,  <29.578939, 39.753189, 36.091610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147661, 40.082474, 36.036083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128162, 40.017689, 35.641846>,  <30.116463, 39.978817, 35.405304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128162, 40.017689, 35.641846>,  <30.147661, 40.082474, 36.036083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128162, 40.017689, 35.641846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442144, 0.881317, -0.166700,
		0.895618, -0.443900, 0.028651,
		-0.048747, -0.161967, -0.985591,
		30.113539, 39.969097, 35.346169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774567, 40.265285, 35.767170>,  <30.147661, 40.082474, 36.036083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774567, 40.265285, 35.767170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.536327, 40.283665, 35.446384>,  <30.393385, 40.294693, 35.253914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.536327, 40.283665, 35.446384>,  <30.774567, 40.265285, 35.767170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536327, 40.283665, 35.446384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426574, 0.864053, -0.267295,
		0.680660, -0.501299, -0.534229,
		-0.595597, 0.045951, -0.801968,
		30.357649, 40.297451, 35.205795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191402, 40.542416, 35.248779>,  <30.774567, 40.265285, 35.767170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191402, 40.542416, 35.248779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829714, 40.622849, 35.098072>,  <30.612701, 40.671108, 35.007648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829714, 40.622849, 35.098072>,  <31.191402, 40.542416, 35.248779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829714, 40.622849, 35.098072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348874, 0.856628, -0.380099,
		0.246321, -0.475138, -0.844731,
		-0.904219, 0.201079, -0.376769,
		30.558449, 40.683170, 34.985043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307150, 40.717697, 34.466072>,  <31.191402, 40.542416, 35.248779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307150, 40.717697, 34.466072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977022, 40.878609, 34.624573>,  <30.778946, 40.975155, 34.719673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977022, 40.878609, 34.624573>,  <31.307150, 40.717697, 34.466072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977022, 40.878609, 34.624573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241313, 0.885715, -0.396582,
		-0.510506, -0.231685, -0.828074,
		-0.825319, 0.402282, 0.396253,
		30.729425, 40.999294, 34.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038536, 41.135025, 33.881073>,  <31.307150, 40.717697, 34.466072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038536, 41.135025, 33.881073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846714, 41.270916, 34.204704>,  <30.731621, 41.352451, 34.398884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846714, 41.270916, 34.204704>,  <31.038536, 41.135025, 33.881073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846714, 41.270916, 34.204704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006158, 0.920692, -0.390240,
		-0.877489, -0.192125, -0.439432,
		-0.479557, 0.339725, 0.809081,
		30.702847, 41.372833, 34.447430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555582, 41.553207, 33.659111>,  <31.038536, 41.135025, 33.881073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555582, 41.553207, 33.659111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578602, 41.666203, 34.042130>,  <30.592413, 41.734001, 34.271938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578602, 41.666203, 34.042130>,  <30.555582, 41.553207, 33.659111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578602, 41.666203, 34.042130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090815, 0.953674, -0.286807,
		-0.994204, 0.103465, 0.029227,
		0.057548, 0.282490, 0.957542,
		30.595865, 41.750950, 34.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046886, 42.081497, 33.720028>,  <30.555582, 41.553207, 33.659111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046886, 42.081497, 33.720028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264654, 42.138718, 34.050636>,  <30.395315, 42.173050, 34.249001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264654, 42.138718, 34.050636>,  <30.046886, 42.081497, 33.720028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264654, 42.138718, 34.050636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132756, 0.987626, -0.083493,
		-0.828241, -0.064271, 0.556674,
		0.544420, 0.143054, 0.826524,
		30.427980, 42.181633, 34.298595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717903, 42.617100, 33.973057>,  <30.046886, 42.081497, 33.720028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717903, 42.617100, 33.973057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063047, 42.610210, 34.175117>,  <30.270134, 42.606075, 34.296352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063047, 42.610210, 34.175117>,  <29.717903, 42.617100, 33.973057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063047, 42.610210, 34.175117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055192, 0.996654, -0.060290,
		-0.502422, 0.079902, 0.860923,
		0.862859, -0.017225, 0.505150,
		30.321905, 42.605042, 34.326664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687525, 43.081917, 34.645866>,  <29.717903, 42.617100, 33.973057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687525, 43.081917, 34.645866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058664, 43.076786, 34.496773>,  <30.281349, 43.073708, 34.407318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058664, 43.076786, 34.496773>,  <29.687525, 43.081917, 34.645866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058664, 43.076786, 34.496773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042369, 0.989312, -0.139523,
		0.370539, 0.145248, 0.917390,
		0.927850, -0.012830, -0.372733,
		30.337019, 43.072937, 34.384953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.973488, 35.408379, 44.669369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.677567, 35.141483, 44.703953>,  <43.500011, 34.981346, 44.724705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.677567, 35.141483, 44.703953>,  <43.973488, 35.408379, 44.669369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677567, 35.141483, 44.703953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058965, 0.063710, 0.996225,
		-0.670230, 0.742113, -0.007789,
		-0.739807, -0.667241, 0.086459,
		43.455624, 34.941311, 44.729889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555714, 35.658390, 45.126667>,  <43.973488, 35.408379, 44.669369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555714, 35.658390, 45.126667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415668, 35.283710, 45.127674>,  <43.331642, 35.058903, 45.128277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415668, 35.283710, 45.127674>,  <43.555714, 35.658390, 45.126667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415668, 35.283710, 45.127674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024906, -0.006625, 0.999668,
		-0.936375, 0.350062, 0.025649,
		-0.350116, -0.936703, 0.002515,
		43.310635, 35.002701, 45.128429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102173, 35.645100, 45.679729>,  <43.555714, 35.658390, 45.126667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102173, 35.645100, 45.679729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.196796, 35.261322, 45.618404>,  <43.253571, 35.031055, 45.581612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.196796, 35.261322, 45.618404>,  <43.102173, 35.645100, 45.679729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196796, 35.261322, 45.618404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042194, -0.167784, 0.984920,
		-0.970700, -0.226523, -0.080174,
		0.236559, -0.959445, -0.153310,
		43.267765, 34.973488, 45.572411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534138, 35.186745, 46.002140>,  <43.102173, 35.645100, 45.679729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534138, 35.186745, 46.002140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.849186, 34.942783, 45.967106>,  <43.038216, 34.796406, 45.946087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.849186, 34.942783, 45.967106>,  <42.534138, 35.186745, 46.002140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849186, 34.942783, 45.967106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073965, -0.234708, 0.969248,
		-0.611702, -0.756924, -0.229973,
		0.787624, -0.609900, -0.087586,
		43.085472, 34.759815, 45.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445717, 34.686871, 46.533943>,  <42.534138, 35.186745, 46.002140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445717, 34.686871, 46.533943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.823959, 34.613422, 46.426521>,  <43.050903, 34.569355, 46.362068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.823959, 34.613422, 46.426521>,  <42.445717, 34.686871, 46.533943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823959, 34.613422, 46.426521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192054, -0.351217, 0.916385,
		-0.262583, -0.918113, -0.296848,
		0.945603, -0.183617, -0.268551,
		43.107639, 34.558338, 46.345955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599190, 33.955132, 46.792381>,  <42.445717, 34.686871, 46.533943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599190, 33.955132, 46.792381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.946613, 34.153107, 46.782253>,  <43.155067, 34.271893, 46.776176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.946613, 34.153107, 46.782253>,  <42.599190, 33.955132, 46.792381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946613, 34.153107, 46.782253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210021, -0.321327, 0.923385,
		0.448882, -0.807333, -0.383039,
		0.868560, 0.494937, -0.025319,
		43.207180, 34.301586, 46.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986118, 33.498363, 47.153481>,  <42.599190, 33.955132, 46.792381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986118, 33.498363, 47.153481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.149445, 33.862904, 47.132622>,  <43.247440, 34.081627, 47.120106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.149445, 33.862904, 47.132622>,  <42.986118, 33.498363, 47.153481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149445, 33.862904, 47.132622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159724, -0.015086, 0.987046,
		0.898759, -0.411354, -0.151724,
		0.408315, 0.911351, -0.052144,
		43.271938, 34.136311, 47.116978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577015, 33.445889, 47.630016>,  <42.986118, 33.498363, 47.153481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577015, 33.445889, 47.630016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.490112, 33.834797, 47.595406>,  <43.437969, 34.068142, 47.574638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.490112, 33.834797, 47.595406>,  <43.577015, 33.445889, 47.630016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490112, 33.834797, 47.595406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101398, 0.110646, 0.988674,
		0.970834, 0.206021, -0.122625,
		-0.217255, 0.972272, -0.086529,
		43.424934, 34.126480, 47.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120338, 33.863182, 47.986862>,  <43.577015, 33.445889, 47.630016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120338, 33.863182, 47.986862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.779152, 34.071018, 47.966980>,  <43.574440, 34.195721, 47.955051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.779152, 34.071018, 47.966980>,  <44.120338, 33.863182, 47.986862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779152, 34.071018, 47.966980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033208, 0.041013, 0.998607,
		0.520905, 0.853430, -0.017728,
		-0.852968, 0.519591, -0.049704,
		43.523262, 34.226894, 47.952068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113483, 34.280323, 48.628666>,  <44.120338, 33.863182, 47.986862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113483, 34.280323, 48.628666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735043, 34.289932, 48.499470>,  <43.507980, 34.295696, 48.421951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735043, 34.289932, 48.499470>,  <44.113483, 34.280323, 48.628666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735043, 34.289932, 48.499470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298280, 0.323958, 0.897820,
		0.126200, 0.945766, -0.299332,
		-0.946099, 0.024021, -0.322987,
		43.451214, 34.297138, 48.402573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883217, 34.902924, 48.896664>,  <44.113483, 34.280323, 48.628666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883217, 34.902924, 48.896664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.542679, 34.701073, 48.839314>,  <43.338356, 34.579964, 48.804901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.542679, 34.701073, 48.839314>,  <43.883217, 34.902924, 48.896664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542679, 34.701073, 48.839314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297484, 0.239277, 0.924257,
		-0.432096, 0.829518, -0.353826,
		-0.851350, -0.504625, -0.143378,
		43.287273, 34.549686, 48.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325958, 35.358147, 49.220833>,  <43.883217, 34.902924, 48.896664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325958, 35.358147, 49.220833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.169613, 34.992317, 49.179295>,  <43.075806, 34.772820, 49.154373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.169613, 34.992317, 49.179295>,  <43.325958, 35.358147, 49.220833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169613, 34.992317, 49.179295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222784, -0.015468, 0.974745,
		-0.893081, 0.404126, -0.197707,
		-0.390862, -0.914573, -0.103847,
		43.052353, 34.717945, 49.148140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711342, 35.406223, 49.643867>,  <43.325958, 35.358147, 49.220833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711342, 35.406223, 49.643867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.822372, 35.024715, 49.597786>,  <42.888992, 34.795811, 49.570137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.822372, 35.024715, 49.597786>,  <42.711342, 35.406223, 49.643867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822372, 35.024715, 49.597786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178915, -0.169140, 0.969217,
		-0.943897, -0.248419, -0.217593,
		0.277576, -0.953771, -0.115205,
		42.905643, 34.738583, 49.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404446, 36.016659, 49.756008>,  <42.711342, 35.406223, 49.643867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404446, 36.016659, 49.756008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.008453, 35.973560, 49.792511>,  <41.770859, 35.947701, 49.814411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.008453, 35.973560, 49.792511>,  <42.404446, 36.016659, 49.756008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008453, 35.973560, 49.792511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097647, 0.055623, -0.993666,
		0.101985, -0.992622, -0.065586,
		-0.989982, -0.107743, 0.091254,
		41.711460, 35.941238, 49.819889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248337, 35.751053, 49.128757>,  <42.404446, 36.016659, 49.756008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248337, 35.751053, 49.128757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.879063, 35.829128, 49.261204>,  <41.657497, 35.875973, 49.340672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.879063, 35.829128, 49.261204>,  <42.248337, 35.751053, 49.128757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879063, 35.829128, 49.261204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278325, 0.254665, -0.926111,
		-0.265091, -0.947126, -0.180776,
		-0.923180, 0.195189, 0.331118,
		41.602108, 35.887684, 49.360538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701866, 35.343647, 48.744991>,  <42.248337, 35.751053, 49.128757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701866, 35.343647, 48.744991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.585369, 35.708420, 48.860615>,  <41.515472, 35.927284, 48.929989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.585369, 35.708420, 48.860615>,  <41.701866, 35.343647, 48.744991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585369, 35.708420, 48.860615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400702, 0.158088, -0.902467,
		-0.868687, -0.378662, 0.319372,
		-0.291241, 0.911934, 0.289060,
		41.497997, 35.981998, 48.947334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037956, 35.375103, 48.566505>,  <41.701866, 35.343647, 48.744991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037956, 35.375103, 48.566505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.129082, 35.763325, 48.597820>,  <41.183758, 35.996258, 48.616608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.129082, 35.763325, 48.597820>,  <41.037956, 35.375103, 48.566505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129082, 35.763325, 48.597820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340950, 0.154823, -0.927245,
		-0.912060, 0.184548, 0.366181,
		0.227815, 0.970552, 0.078286,
		41.197426, 36.054489, 48.621307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405231, 35.766880, 48.399700>,  <41.037956, 35.375103, 48.566505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405231, 35.766880, 48.399700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.712433, 36.019348, 48.356262>,  <40.896755, 36.170830, 48.330200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.712433, 36.019348, 48.356262>,  <40.405231, 35.766880, 48.399700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712433, 36.019348, 48.356262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395111, 0.333500, -0.855958,
		-0.504043, 0.700284, 0.505513,
		0.768002, 0.631174, -0.108591,
		40.942833, 36.208702, 48.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200100, 36.385796, 48.051579>,  <40.405231, 35.766880, 48.399700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200100, 36.385796, 48.051579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594826, 36.396320, 47.987694>,  <40.831661, 36.402637, 47.949364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594826, 36.396320, 47.987694>,  <40.200100, 36.385796, 48.051579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594826, 36.396320, 47.987694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153072, 0.472558, -0.867904,
		0.052637, 0.880907, 0.470354,
		0.986812, 0.026315, -0.159716,
		40.890869, 36.404213, 47.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234730, 36.986320, 47.766445>,  <40.200100, 36.385796, 48.051579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234730, 36.986320, 47.766445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565014, 36.782162, 47.670364>,  <40.763184, 36.659668, 47.612717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565014, 36.782162, 47.670364>,  <40.234730, 36.986320, 47.766445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565014, 36.782162, 47.670364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025904, 0.459680, -0.887707,
		0.563496, 0.726768, 0.392785,
		0.825713, -0.510394, -0.240201,
		40.812729, 36.629044, 47.598305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536663, 37.437000, 47.290833>,  <40.234730, 36.986320, 47.766445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536663, 37.437000, 47.290833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752640, 37.107052, 47.223831>,  <40.882225, 36.909084, 47.183628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752640, 37.107052, 47.223831>,  <40.536663, 37.437000, 47.290833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752640, 37.107052, 47.223831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242440, 0.342987, -0.907514,
		0.806032, 0.449393, 0.385174,
		0.539940, -0.824867, -0.167508,
		40.914623, 36.859592, 47.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224495, 37.577492, 46.959999>,  <40.536663, 37.437000, 47.290833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224495, 37.577492, 46.959999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.109512, 37.210403, 46.850342>,  <41.040524, 36.990150, 46.784546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.109512, 37.210403, 46.850342>,  <41.224495, 37.577492, 46.959999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109512, 37.210403, 46.850342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150732, 0.239311, -0.959172,
		0.945857, -0.317046, 0.069537,
		-0.287461, -0.917721, -0.274143,
		41.023273, 36.935085, 46.768101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664738, 37.383591, 46.364010>,  <41.224495, 37.577492, 46.959999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664738, 37.383591, 46.364010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.381382, 37.101547, 46.351257>,  <41.211369, 36.932323, 46.343605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.381382, 37.101547, 46.351257>,  <41.664738, 37.383591, 46.364010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381382, 37.101547, 46.351257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108274, -0.063920, -0.992064,
		0.697472, -0.706215, 0.121625,
		-0.708385, -0.705106, -0.031882,
		41.168865, 36.890015, 46.341694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931801, 36.844856, 45.911572>,  <41.664738, 37.383591, 46.364010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931801, 36.844856, 45.911572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539482, 36.767136, 45.918232>,  <41.304089, 36.720505, 45.922226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539482, 36.767136, 45.918232>,  <41.931801, 36.844856, 45.911572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539482, 36.767136, 45.918232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051044, -0.338180, -0.939696,
		0.188214, -0.920805, 0.341605,
		-0.980801, -0.194301, 0.016649,
		41.245243, 36.708847, 45.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806946, 36.145596, 45.696301>,  <41.931801, 36.844856, 45.911572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806946, 36.145596, 45.696301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.500946, 36.388451, 45.610363>,  <41.317345, 36.534164, 45.558800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.500946, 36.388451, 45.610363>,  <41.806946, 36.145596, 45.696301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500946, 36.388451, 45.610363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011472, -0.320692, -0.947114,
		-0.643927, -0.727008, 0.238365,
		-0.765001, 0.607138, -0.214843,
		41.271446, 36.570591, 45.545910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447739, 35.769382, 45.086250>,  <41.806946, 36.145596, 45.696301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447739, 35.769382, 45.086250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277500, 36.131344, 45.084831>,  <41.175358, 36.348522, 45.083981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277500, 36.131344, 45.084831>,  <41.447739, 35.769382, 45.086250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277500, 36.131344, 45.084831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023279, -0.014872, -0.999618,
		-0.904614, -0.425350, 0.027395,
		-0.425595, 0.904907, -0.003551,
		41.149822, 36.402817, 45.083767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725212, 35.690186, 44.810287>,  <41.447739, 35.769382, 45.086250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725212, 35.690186, 44.810287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850540, 36.063622, 44.740730>,  <40.925739, 36.287682, 44.698997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850540, 36.063622, 44.740730>,  <40.725212, 35.690186, 44.810287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850540, 36.063622, 44.740730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280190, -0.084077, -0.956256,
		-0.907371, 0.348339, 0.235240,
		0.313322, 0.933591, -0.173890,
		40.944538, 36.343700, 44.688564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107738, 36.031639, 44.460285>,  <40.725212, 35.690186, 44.810287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107738, 36.031639, 44.460285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452446, 36.217289, 44.378372>,  <40.659271, 36.328678, 44.329224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452446, 36.217289, 44.378372>,  <40.107738, 36.031639, 44.460285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452446, 36.217289, 44.378372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161501, -0.131673, -0.978049,
		-0.480904, 0.875927, -0.038515,
		0.861771, 0.464127, -0.204785,
		40.710976, 36.356525, 44.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353191, 36.101566, 44.420479>,  <40.107738, 36.031639, 44.460285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353191, 36.101566, 44.420479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184471, 35.740334, 44.388161>,  <39.083241, 35.523594, 44.368771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184471, 35.740334, 44.388161>,  <39.353191, 36.101566, 44.420479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184471, 35.740334, 44.388161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097895, -0.043234, 0.994257,
		-0.901388, 0.427290, -0.070171,
		-0.421802, -0.903081, -0.080800,
		39.057930, 35.469410, 44.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859428, 36.175488, 44.867123>,  <39.353191, 36.101566, 44.420479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859428, 36.175488, 44.867123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907055, 35.780914, 44.821918>,  <38.935631, 35.544170, 44.794796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907055, 35.780914, 44.821918>,  <38.859428, 36.175488, 44.867123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907055, 35.780914, 44.821918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184499, -0.133816, 0.973680,
		-0.975593, -0.095086, -0.197929,
		0.119069, -0.986434, -0.113007,
		38.942776, 35.484985, 44.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366051, 35.904835, 45.237865>,  <38.859428, 36.175488, 44.867123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366051, 35.904835, 45.237865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621456, 35.599926, 45.195446>,  <38.774700, 35.416981, 45.169994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621456, 35.599926, 45.195446>,  <38.366051, 35.904835, 45.237865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621456, 35.599926, 45.195446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034789, -0.166237, 0.985472,
		-0.768826, -0.625546, -0.132662,
		0.638511, -0.762271, -0.106045,
		38.813011, 35.371246, 45.163631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056038, 35.321358, 45.391464>,  <38.366051, 35.904835, 45.237865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056038, 35.321358, 45.391464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447945, 35.259750, 45.442593>,  <38.683090, 35.222786, 45.473270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447945, 35.259750, 45.442593>,  <38.056038, 35.321358, 45.391464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447945, 35.259750, 45.442593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153833, -0.170945, 0.973197,
		-0.128036, -0.973169, -0.191178,
		0.979766, -0.154014, 0.127819,
		38.741875, 35.213543, 45.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039150, 34.712460, 45.850594>,  <38.056038, 35.321358, 45.391464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039150, 34.712460, 45.850594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413464, 34.849846, 45.882420>,  <38.638054, 34.932278, 45.901516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413464, 34.849846, 45.882420>,  <38.039150, 34.712460, 45.850594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413464, 34.849846, 45.882420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004681, -0.213549, 0.976921,
		0.352534, -0.914563, -0.198229,
		0.935787, 0.343470, 0.079564,
		38.694199, 34.952888, 45.906288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404282, 34.173813, 46.178005>,  <38.039150, 34.712460, 45.850594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404282, 34.173813, 46.178005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641953, 34.490078, 46.237061>,  <38.784557, 34.679836, 46.272495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641953, 34.490078, 46.237061>,  <38.404282, 34.173813, 46.178005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641953, 34.490078, 46.237061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019319, -0.169470, 0.985346,
		0.804099, -0.588326, -0.085421,
		0.594181, 0.790665, 0.147637,
		38.820206, 34.727276, 46.281353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909466, 33.973328, 46.617798>,  <38.404282, 34.173813, 46.178005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909466, 33.973328, 46.617798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940712, 34.370274, 46.655983>,  <38.959461, 34.608440, 46.678894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940712, 34.370274, 46.655983>,  <38.909466, 33.973328, 46.617798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940712, 34.370274, 46.655983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080237, -0.089191, 0.992777,
		0.993710, -0.085213, 0.072657,
		0.078117, 0.992363, 0.095467,
		38.964146, 34.667984, 46.684624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183739, 33.229919, 46.733482>,  <38.909466, 33.973328, 46.617798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183739, 33.229919, 46.733482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.997795, 32.879158, 46.782383>,  <38.886227, 32.668701, 46.811726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.997795, 32.879158, 46.782383>,  <39.183739, 33.229919, 46.733482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997795, 32.879158, 46.782383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007877, -0.133979, -0.990953,
		0.885348, -0.461620, 0.055374,
		-0.464863, -0.876902, 0.122254,
		38.858337, 32.616089, 46.819057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551975, 32.755424, 46.217422>,  <39.183739, 33.229919, 46.733482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551975, 32.755424, 46.217422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182354, 32.637356, 46.314590>,  <38.960583, 32.566517, 46.372890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182354, 32.637356, 46.314590>,  <39.551975, 32.755424, 46.217422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182354, 32.637356, 46.314590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169131, -0.254204, -0.952248,
		0.342824, -0.921008, 0.184975,
		-0.924049, -0.295169, 0.242918,
		38.905140, 32.548805, 46.387466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455208, 32.124554, 45.889923>,  <39.551975, 32.755424, 46.217422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455208, 32.124554, 45.889923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088543, 32.268871, 45.958694>,  <38.868546, 32.355461, 45.999958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088543, 32.268871, 45.958694>,  <39.455208, 32.124554, 45.889923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088543, 32.268871, 45.958694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286295, -0.292611, -0.912367,
		-0.278852, -0.885561, 0.371516,
		-0.916666, 0.360779, 0.171936,
		38.813545, 32.377110, 46.010273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918411, 31.647257, 45.619694>,  <39.455208, 32.124554, 45.889923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918411, 31.647257, 45.619694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.730255, 31.998953, 45.649796>,  <38.617359, 32.209972, 45.667858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.730255, 31.998953, 45.649796>,  <38.918411, 31.647257, 45.619694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730255, 31.998953, 45.649796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466805, -0.175551, -0.866761,
		-0.748880, -0.442851, 0.493012,
		-0.470395, 0.879241, 0.075259,
		38.589138, 32.262726, 45.672375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266674, 31.526363, 45.417728>,  <38.918411, 31.647257, 45.619694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266674, 31.526363, 45.417728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268349, 31.923885, 45.373310>,  <38.269356, 32.162399, 45.346661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268349, 31.923885, 45.373310>,  <38.266674, 31.526363, 45.417728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268349, 31.923885, 45.373310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552953, -0.090223, -0.828314,
		-0.833202, 0.064874, 0.549150,
		0.004191, 0.993806, -0.111046,
		38.269608, 32.222027, 45.339996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586948, 31.585394, 45.282200>,  <38.266674, 31.526363, 45.417728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586948, 31.585394, 45.282200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791664, 31.911255, 45.173088>,  <37.914494, 32.106770, 45.107620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791664, 31.911255, 45.173088>,  <37.586948, 31.585394, 45.282200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791664, 31.911255, 45.173088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562473, 0.077737, -0.823153,
		-0.649377, 0.574718, 0.498005,
		0.511794, 0.814651, -0.272783,
		37.945202, 32.155651, 45.091255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097691, 32.010868, 44.978386>,  <37.586948, 31.585394, 45.282200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097691, 32.010868, 44.978386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446476, 32.144855, 44.835567>,  <37.655746, 32.225246, 44.749878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446476, 32.144855, 44.835567>,  <37.097691, 32.010868, 44.978386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446476, 32.144855, 44.835567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366942, -0.035631, -0.929561,
		-0.324096, 0.941555, 0.091845,
		0.871961, 0.334969, -0.357044,
		37.708065, 32.245346, 44.728455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.991955, 31.698997, 49.533337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.253815, 31.967562, 49.394402>,  <42.410931, 32.128700, 49.311043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.253815, 31.967562, 49.394402>,  <41.991955, 31.698997, 49.533337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253815, 31.967562, 49.394402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442355, -0.032340, -0.896257,
		-0.612989, 0.740380, 0.275830,
		0.654650, 0.671410, -0.347334,
		42.450211, 32.168983, 49.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627346, 32.105259, 49.059582>,  <41.991955, 31.698997, 49.533337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627346, 32.105259, 49.059582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.998886, 32.217739, 48.963112>,  <42.221809, 32.285229, 48.905231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.998886, 32.217739, 48.963112>,  <41.627346, 32.105259, 49.059582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998886, 32.217739, 48.963112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238710, -0.043527, -0.970115,
		-0.283298, 0.958660, 0.026696,
		0.928849, 0.281204, -0.241173,
		42.277542, 32.302101, 48.890759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538338, 32.636456, 48.605629>,  <41.627346, 32.105259, 49.059582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538338, 32.636456, 48.605629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.893997, 32.466042, 48.538803>,  <42.107391, 32.363792, 48.498707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.893997, 32.466042, 48.538803>,  <41.538338, 32.636456, 48.605629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893997, 32.466042, 48.538803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221765, -0.081810, -0.971662,
		0.400291, 0.901002, -0.167220,
		0.889150, -0.426031, -0.167063,
		42.160744, 32.338234, 48.488686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860546, 32.901100, 47.968178>,  <41.538338, 32.636456, 48.605629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860546, 32.901100, 47.968178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.037769, 32.547050, 48.025116>,  <42.144104, 32.334621, 48.059277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.037769, 32.547050, 48.025116>,  <41.860546, 32.901100, 47.968178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037769, 32.547050, 48.025116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027861, -0.172293, -0.984652,
		0.896060, 0.432292, -0.100996,
		0.443058, -0.885121, 0.142341,
		42.170685, 32.281513, 48.067818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463463, 32.823063, 47.463268>,  <41.860546, 32.901100, 47.968178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463463, 32.823063, 47.463268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.320496, 32.469368, 47.583515>,  <42.234715, 32.257149, 47.655663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.320496, 32.469368, 47.583515>,  <42.463463, 32.823063, 47.463268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320496, 32.469368, 47.583515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066428, -0.296998, -0.952565,
		0.931580, -0.360431, 0.047414,
		-0.357416, -0.884241, 0.300621,
		42.213272, 32.204098, 47.673702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899406, 32.416435, 46.995129>,  <42.463463, 32.823063, 47.463268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899406, 32.416435, 46.995129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.596432, 32.183926, 47.114056>,  <42.414646, 32.044418, 47.185413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.596432, 32.183926, 47.114056>,  <42.899406, 32.416435, 46.995129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596432, 32.183926, 47.114056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097017, -0.350125, -0.931666,
		0.645655, -0.734527, 0.208805,
		-0.757441, -0.581277, 0.297321,
		42.369198, 32.009544, 47.203251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164921, 31.862839, 46.846203>,  <42.899406, 32.416435, 46.995129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164921, 31.862839, 46.846203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.768204, 31.812506, 46.855228>,  <42.530174, 31.782305, 46.860641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.768204, 31.812506, 46.855228>,  <43.164921, 31.862839, 46.846203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768204, 31.812506, 46.855228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043957, -0.501380, -0.864110,
		0.120047, -0.856028, 0.502797,
		-0.991795, -0.125835, 0.022561,
		42.470665, 31.774755, 46.861996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008331, 31.188517, 46.634789>,  <43.164921, 31.862839, 46.846203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008331, 31.188517, 46.634789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.644032, 31.346882, 46.587814>,  <42.425453, 31.441900, 46.559631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.644032, 31.346882, 46.587814>,  <43.008331, 31.188517, 46.634789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644032, 31.346882, 46.587814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091514, -0.470787, -0.877488,
		-0.402690, -0.788426, 0.465000,
		-0.910750, 0.395910, -0.117429,
		42.370808, 31.465656, 46.552586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507618, 30.697243, 46.316830>,  <43.008331, 31.188517, 46.634789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507618, 30.697243, 46.316830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.351776, 31.057446, 46.239582>,  <42.258270, 31.273567, 46.193233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.351776, 31.057446, 46.239582>,  <42.507618, 30.697243, 46.316830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351776, 31.057446, 46.239582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269064, -0.311828, -0.911245,
		-0.880803, -0.303065, 0.363783,
		-0.389604, 0.900508, -0.193115,
		42.234894, 31.327599, 46.181648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034939, 30.480171, 45.831444>,  <42.507618, 30.697243, 46.316830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034939, 30.480171, 45.831444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.075443, 30.876755, 45.798565>,  <42.099747, 31.114704, 45.778839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.075443, 30.876755, 45.798565>,  <42.034939, 30.480171, 45.831444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075443, 30.876755, 45.798565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207030, -0.059809, -0.976505,
		-0.973080, 0.115898, 0.199205,
		0.101261, 0.991459, -0.082193,
		42.105820, 31.174192, 45.773907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403625, 30.785955, 45.538185>,  <42.034939, 30.480171, 45.831444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403625, 30.785955, 45.538185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.715797, 31.022215, 45.456158>,  <41.903103, 31.163971, 45.406940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.715797, 31.022215, 45.456158>,  <41.403625, 30.785955, 45.538185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715797, 31.022215, 45.456158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155449, -0.134388, -0.978660,
		-0.605605, 0.795658, -0.013065,
		0.780434, 0.590651, -0.205071,
		41.949928, 31.199409, 45.394638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169815, 31.116756, 44.976162>,  <41.403625, 30.785955, 45.538185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169815, 31.116756, 44.976162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.566570, 31.166782, 44.967068>,  <41.804623, 31.196798, 44.961613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.566570, 31.166782, 44.967068>,  <41.169815, 31.116756, 44.976162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566570, 31.166782, 44.967068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000211, -0.177214, -0.984172,
		-0.127113, 0.976194, -0.175750,
		0.991888, 0.125064, -0.022732,
		41.864136, 31.204302, 44.960247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452881, 31.065483, 45.007820>,  <41.169815, 31.116756, 44.976162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452881, 31.065483, 45.007820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.169144, 30.801380, 44.909111>,  <39.998901, 30.642918, 44.849884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.169144, 30.801380, 44.909111>,  <40.452881, 31.065483, 45.007820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169144, 30.801380, 44.909111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076828, -0.275594, 0.958199,
		-0.700667, 0.698648, 0.144764,
		-0.709340, -0.660257, -0.246775,
		39.956341, 30.603304, 44.835079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884205, 31.274874, 45.348545>,  <40.452881, 31.065483, 45.007820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884205, 31.274874, 45.348545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.867359, 30.879196, 45.292374>,  <39.857250, 30.641788, 45.258671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.867359, 30.879196, 45.292374>,  <39.884205, 31.274874, 45.348545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867359, 30.879196, 45.292374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014371, -0.141135, 0.989886,
		-0.999009, 0.039671, 0.020159,
		-0.042115, -0.989195, -0.140425,
		39.854725, 30.582438, 45.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517551, 31.077135, 45.916809>,  <39.884205, 31.274874, 45.348545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517551, 31.077135, 45.916809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.648678, 30.712471, 45.817684>,  <39.727352, 30.493671, 45.758209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.648678, 30.712471, 45.817684>,  <39.517551, 31.077135, 45.916809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648678, 30.712471, 45.817684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022403, -0.254730, 0.966753,
		-0.944476, -0.322469, -0.063081,
		0.327816, -0.911661, -0.247811,
		39.747025, 30.438972, 45.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105148, 30.633293, 46.255569>,  <39.517551, 31.077135, 45.916809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105148, 30.633293, 46.255569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.415440, 30.397533, 46.165371>,  <39.601616, 30.256077, 46.111252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.415440, 30.397533, 46.165371>,  <39.105148, 30.633293, 46.255569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415440, 30.397533, 46.165371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000874, -0.358329, 0.933595,
		-0.631063, -0.724022, -0.278482,
		0.775731, -0.589400, -0.225495,
		39.648159, 30.220713, 46.097721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924751, 30.054596, 46.499352>,  <39.105148, 30.633293, 46.255569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924751, 30.054596, 46.499352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.323673, 30.043459, 46.472218>,  <39.563026, 30.036777, 46.455936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.323673, 30.043459, 46.472218>,  <38.924751, 30.054596, 46.499352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323673, 30.043459, 46.472218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052126, -0.381501, 0.922898,
		-0.051575, -0.923949, -0.379023,
		0.997308, -0.027841, -0.067837,
		39.622864, 30.035107, 46.451866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071968, 29.451349, 46.805740>,  <38.924751, 30.054596, 46.499352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071968, 29.451349, 46.805740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.437408, 29.613981, 46.807953>,  <39.656673, 29.711561, 46.809280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.437408, 29.613981, 46.807953>,  <39.071968, 29.451349, 46.805740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437408, 29.613981, 46.807953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157068, -0.365429, 0.917492,
		0.375056, -0.837350, -0.397716,
		0.913599, 0.406580, 0.005536,
		39.711487, 29.735954, 46.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562649, 28.944820, 46.959736>,  <39.071968, 29.451349, 46.805740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562649, 28.944820, 46.959736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.769119, 29.275190, 47.050430>,  <39.893002, 29.473413, 47.104847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.769119, 29.275190, 47.050430>,  <39.562649, 28.944820, 46.959736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769119, 29.275190, 47.050430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118808, -0.331220, 0.936044,
		0.848204, -0.456222, -0.269094,
		0.516173, 0.825926, 0.226739,
		39.923973, 29.522968, 47.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119869, 28.676109, 47.453434>,  <39.562649, 28.944820, 46.959736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119869, 28.676109, 47.453434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.077621, 29.071318, 47.498436>,  <40.052273, 29.308443, 47.525436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.077621, 29.071318, 47.498436>,  <40.119869, 28.676109, 47.453434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077621, 29.071318, 47.498436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358014, -0.067773, 0.931253,
		0.927724, 0.138633, -0.346567,
		-0.105615, 0.988022, 0.112508,
		40.045937, 29.367723, 47.532188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703812, 28.917988, 47.902622>,  <40.119869, 28.676109, 47.453434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703812, 28.917988, 47.902622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.436947, 29.212711, 47.946449>,  <40.276829, 29.389545, 47.972748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.436947, 29.212711, 47.946449>,  <40.703812, 28.917988, 47.902622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436947, 29.212711, 47.946449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227398, 0.061376, 0.971866,
		0.709356, 0.673308, -0.208497,
		-0.667162, 0.736810, 0.109572,
		40.236797, 29.433754, 47.979321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063824, 29.480585, 48.363400>,  <40.703812, 28.917988, 47.902622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063824, 29.480585, 48.363400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.666897, 29.524628, 48.385941>,  <40.428741, 29.551052, 48.399464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.666897, 29.524628, 48.385941>,  <41.063824, 29.480585, 48.363400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666897, 29.524628, 48.385941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051353, -0.047691, 0.997541,
		0.112522, 0.992775, 0.041671,
		-0.992321, 0.110105, 0.056348,
		40.369202, 29.557659, 48.402843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955841, 30.043350, 48.893539>,  <41.063824, 29.480585, 48.363400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955841, 30.043350, 48.893539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.580887, 29.904058, 48.890701>,  <40.355915, 29.820484, 48.889000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.580887, 29.904058, 48.890701>,  <40.955841, 30.043350, 48.893539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580887, 29.904058, 48.890701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003261, -0.011591, 0.999928,
		-0.348285, 0.937339, 0.009729,
		-0.937383, -0.348228, -0.007094,
		40.299671, 29.799591, 48.888573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511360, 30.540939, 49.074326>,  <40.955841, 30.043350, 48.893539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511360, 30.540939, 49.074326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.336727, 30.190540, 49.156319>,  <40.231945, 29.980301, 49.205513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.336727, 30.190540, 49.156319>,  <40.511360, 30.540939, 49.074326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336727, 30.190540, 49.156319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022503, 0.217141, 0.975881,
		-0.899381, 0.430668, -0.075088,
		-0.436586, -0.875999, 0.204984,
		40.205753, 29.927740, 49.217815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999825, 30.757784, 49.373074>,  <40.511360, 30.540939, 49.074326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999825, 30.757784, 49.373074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.024509, 30.379995, 49.502174>,  <40.039322, 30.153322, 49.579636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.024509, 30.379995, 49.502174>,  <39.999825, 30.757784, 49.373074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024509, 30.379995, 49.502174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234382, 0.300611, 0.924499,
		-0.970183, -0.132703, -0.202814,
		0.061715, -0.944469, 0.322751,
		40.043026, 30.096655, 49.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400158, 30.627661, 49.794586>,  <39.999825, 30.757784, 49.373074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400158, 30.627661, 49.794586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.659355, 30.343081, 49.903358>,  <39.814873, 30.172333, 49.968620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.659355, 30.343081, 49.903358>,  <39.400158, 30.627661, 49.794586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659355, 30.343081, 49.903358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201918, 0.183785, 0.962004,
		-0.734393, -0.678280, -0.024562,
		0.647994, -0.711449, 0.271927,
		39.853752, 30.129646, 49.984936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070389, 31.306477, 49.592480>,  <39.400158, 30.627661, 49.794586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070389, 31.306477, 49.592480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.920212, 31.661289, 49.699974>,  <38.830105, 31.874178, 49.764469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.920212, 31.661289, 49.699974>,  <39.070389, 31.306477, 49.592480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920212, 31.661289, 49.699974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404728, 0.103938, -0.908511,
		-0.833811, -0.449855, 0.319985,
		-0.375439, 0.887033, 0.268734,
		38.807579, 31.927399, 49.780594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377403, 31.398092, 49.242401>,  <39.070389, 31.306477, 49.592480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377403, 31.398092, 49.242401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.532406, 31.760328, 49.311394>,  <38.625408, 31.977669, 49.352787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.532406, 31.760328, 49.311394>,  <38.377403, 31.398092, 49.242401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532406, 31.760328, 49.311394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054993, 0.209471, -0.976267,
		-0.920226, 0.368824, 0.130972,
		0.387505, 0.905589, 0.172478,
		38.648659, 32.032005, 49.363136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786976, 31.893942, 48.984680>,  <38.377403, 31.398092, 49.242401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786976, 31.893942, 48.984680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158352, 32.042393, 48.991119>,  <38.381180, 32.131462, 48.994984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158352, 32.042393, 48.991119>,  <37.786976, 31.893942, 48.984680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158352, 32.042393, 48.991119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099858, 0.291080, -0.951473,
		-0.357803, 0.881781, 0.307311,
		0.928443, 0.371127, 0.016097,
		38.436886, 32.153732, 48.995949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725769, 32.559685, 48.770958>,  <37.786976, 31.893942, 48.984680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725769, 32.559685, 48.770958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110107, 32.474735, 48.699772>,  <38.340710, 32.423767, 48.657063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110107, 32.474735, 48.699772>,  <37.725769, 32.559685, 48.770958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110107, 32.474735, 48.699772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075159, 0.418429, -0.905134,
		0.266688, 0.883072, 0.386085,
		0.960848, -0.212371, -0.177961,
		38.398361, 32.411022, 48.646385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868198, 32.958961, 48.238670>,  <37.725769, 32.559685, 48.770958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868198, 32.958961, 48.238670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.236042, 32.803745, 48.214191>,  <38.456749, 32.710613, 48.199505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.236042, 32.803745, 48.214191>,  <37.868198, 32.958961, 48.238670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236042, 32.803745, 48.214191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001336, 0.158859, -0.987300,
		0.392836, 0.907847, 0.146606,
		0.919607, -0.388043, -0.061193,
		38.511925, 32.687332, 48.195835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310299, 33.454006, 47.824646>,  <37.868198, 32.958961, 48.238670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310299, 33.454006, 47.824646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452431, 33.081818, 47.788952>,  <38.537708, 32.858505, 47.767536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452431, 33.081818, 47.788952>,  <38.310299, 33.454006, 47.824646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452431, 33.081818, 47.788952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052781, 0.075342, -0.995760,
		0.933249, 0.358534, -0.022340,
		0.355331, -0.930471, -0.089237,
		38.559029, 32.802677, 47.762180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864056, 33.462120, 47.337887>,  <38.310299, 33.454006, 47.824646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864056, 33.462120, 47.337887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.785213, 33.070496, 47.317520>,  <38.737907, 32.835522, 47.305302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.785213, 33.070496, 47.317520>,  <38.864056, 33.462120, 47.337887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785213, 33.070496, 47.317520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126919, 0.026011, -0.991572,
		0.972132, -0.201908, 0.119134,
		-0.197107, -0.979059, -0.050912,
		38.726082, 32.776779, 47.302246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328625, 34.133381, 47.228992>,  <38.864056, 33.462120, 47.337887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328625, 34.133381, 47.228992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.160236, 34.493683, 47.186245>,  <39.059204, 34.709866, 47.160595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.160236, 34.493683, 47.186245>,  <39.328625, 34.133381, 47.228992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160236, 34.493683, 47.186245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081255, 0.079896, 0.993486,
		0.903427, 0.426913, 0.039557,
		-0.420972, 0.900756, -0.106869,
		39.033943, 34.763908, 47.154182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589985, 34.494694, 47.772530>,  <39.328625, 34.133381, 47.228992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589985, 34.494694, 47.772530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.254925, 34.687061, 47.668945>,  <39.053890, 34.802483, 47.606792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.254925, 34.687061, 47.668945>,  <39.589985, 34.494694, 47.772530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254925, 34.687061, 47.668945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044000, 0.413159, 0.909595,
		0.544431, 0.773317, -0.324923,
		-0.837651, 0.480915, -0.258963,
		39.003628, 34.831337, 47.591255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651134, 35.114052, 48.087746>,  <39.589985, 34.494694, 47.772530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651134, 35.114052, 48.087746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.257805, 35.088692, 48.019573>,  <39.021805, 35.073475, 47.978668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.257805, 35.088692, 48.019573>,  <39.651134, 35.114052, 48.087746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257805, 35.088692, 48.019573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181680, 0.382727, 0.905821,
		0.007798, 0.921683, -0.387865,
		-0.983327, -0.063404, -0.170436,
		38.962807, 35.069672, 47.968441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508739, 35.683609, 48.463055>,  <39.651134, 35.114052, 48.087746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508739, 35.683609, 48.463055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.194912, 35.441616, 48.408714>,  <39.006615, 35.296421, 48.376110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.194912, 35.441616, 48.408714>,  <39.508739, 35.683609, 48.463055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194912, 35.441616, 48.408714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194418, 0.031978, 0.980398,
		-0.588775, 0.795600, -0.142707,
		-0.784567, -0.604978, -0.135851,
		38.959541, 35.260124, 48.367958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026394, 35.915207, 48.868942>,  <39.508739, 35.683609, 48.463055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026394, 35.915207, 48.868942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895164, 35.542965, 48.804028>,  <38.816425, 35.319618, 48.765079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895164, 35.542965, 48.804028>,  <39.026394, 35.915207, 48.868942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895164, 35.542965, 48.804028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064313, -0.149391, 0.986684,
		-0.942461, 0.334142, -0.010839,
		-0.328073, -0.930608, -0.162284,
		38.796741, 35.263783, 48.755341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489555, 35.852886, 49.325111>,  <39.026394, 35.915207, 48.868942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489555, 35.852886, 49.325111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615868, 35.482529, 49.242157>,  <38.691654, 35.260315, 49.192383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615868, 35.482529, 49.242157>,  <38.489555, 35.852886, 49.325111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615868, 35.482529, 49.242157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118014, -0.178549, 0.976828,
		-0.941464, -0.332939, 0.052886,
		0.315781, -0.925890, -0.207389,
		38.710602, 35.204762, 49.179939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058441, 35.352242, 49.737911>,  <38.489555, 35.852886, 49.325111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058441, 35.352242, 49.737911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.402195, 35.164757, 49.656170>,  <38.608448, 35.052265, 49.607124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.402195, 35.164757, 49.656170>,  <38.058441, 35.352242, 49.737911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402195, 35.164757, 49.656170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129975, -0.186282, 0.973861,
		-0.494528, -0.863486, -0.099168,
		0.859388, -0.468713, -0.204354,
		38.660011, 35.024143, 49.594864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069855, 34.608818, 50.082150>,  <38.058441, 35.352242, 49.737911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069855, 34.608818, 50.082150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450638, 34.710793, 50.014290>,  <38.679108, 34.771976, 49.973572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450638, 34.710793, 50.014290>,  <38.069855, 34.608818, 50.082150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450638, 34.710793, 50.014290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247553, -0.314556, 0.916391,
		0.180258, -0.914364, -0.362555,
		0.951958, 0.254938, -0.169653,
		38.736225, 34.787273, 49.963394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531837, 34.144775, 50.455059>,  <38.069855, 34.608818, 50.082150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531837, 34.144775, 50.455059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792892, 34.446362, 50.425137>,  <38.949528, 34.627312, 50.407185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792892, 34.446362, 50.425137>,  <38.531837, 34.144775, 50.455059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792892, 34.446362, 50.425137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346422, -0.209135, 0.914470,
		0.673835, -0.622734, -0.397680,
		0.652640, 0.753967, -0.074806,
		38.988686, 34.672550, 50.402695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.644173, 35.032486, 34.706959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043766, 35.038071, 34.689812>,  <37.283524, 35.041420, 34.679523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043766, 35.038071, 34.689812>,  <36.644173, 35.032486, 34.706959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043766, 35.038071, 34.689812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036840, 0.295180, 0.954731,
		0.025983, -0.955340, 0.294365,
		0.998983, 0.013963, -0.042865,
		37.343460, 35.042259, 34.676952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937229, 34.650738, 35.321907>,  <36.644173, 35.032486, 34.706959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937229, 34.650738, 35.321907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214653, 34.923573, 35.229183>,  <37.381107, 35.087273, 35.173550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214653, 34.923573, 35.229183>,  <36.937229, 34.650738, 35.321907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214653, 34.923573, 35.229183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149267, 0.178729, 0.972510,
		0.704770, -0.709090, 0.022145,
		0.693555, 0.682090, -0.231807,
		37.422718, 35.128201, 35.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529934, 34.476597, 35.700642>,  <36.937229, 34.650738, 35.321907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529934, 34.476597, 35.700642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526447, 34.863106, 35.597691>,  <37.524353, 35.095013, 35.535919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526447, 34.863106, 35.597691>,  <37.529934, 34.476597, 35.700642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526447, 34.863106, 35.597691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019495, 0.257502, 0.966081,
		0.999772, 0.003407, -0.021083,
		-0.008720, 0.966272, -0.257377,
		37.523830, 35.152988, 35.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032475, 34.811344, 36.049843>,  <37.529934, 34.476597, 35.700642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032475, 34.811344, 36.049843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745827, 35.073463, 35.954311>,  <37.573837, 35.230736, 35.896992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745827, 35.073463, 35.954311>,  <38.032475, 34.811344, 36.049843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745827, 35.073463, 35.954311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217758, 0.115093, 0.969193,
		0.662596, 0.746553, 0.060218,
		-0.716623, 0.655296, -0.238828,
		37.530838, 35.270054, 35.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198807, 35.460381, 36.472851>,  <38.032475, 34.811344, 36.049843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198807, 35.460381, 36.472851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815857, 35.481831, 36.359318>,  <37.586086, 35.494701, 36.291199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815857, 35.481831, 36.359318>,  <38.198807, 35.460381, 36.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815857, 35.481831, 36.359318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256999, 0.290462, 0.921728,
		0.131873, 0.955383, -0.264298,
		-0.957372, 0.053627, -0.283837,
		37.528645, 35.497917, 36.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019543, 36.057655, 36.700508>,  <38.198807, 35.460381, 36.472851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019543, 36.057655, 36.700508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647758, 35.928894, 36.628414>,  <37.424690, 35.851635, 36.585159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647758, 35.928894, 36.628414>,  <38.019543, 36.057655, 36.700508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647758, 35.928894, 36.628414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271389, 0.265655, 0.925081,
		-0.249909, 0.908738, -0.334277,
		-0.929459, -0.321905, -0.180232,
		37.368919, 35.832321, 36.574345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491943, 36.652634, 36.924492>,  <38.019543, 36.057655, 36.700508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491943, 36.652634, 36.924492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315571, 36.293659, 36.930004>,  <37.209747, 36.078274, 36.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315571, 36.293659, 36.930004>,  <37.491943, 36.652634, 36.924492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315571, 36.293659, 36.930004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244315, 0.134778, 0.960284,
		-0.863650, 0.420052, -0.278685,
		-0.440929, -0.897436, 0.013776,
		37.183292, 36.024429, 36.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865078, 36.749969, 37.147385>,  <37.491943, 36.652634, 36.924492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865078, 36.749969, 37.147385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904026, 36.364944, 37.248573>,  <36.927395, 36.133930, 37.309288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904026, 36.364944, 37.248573>,  <36.865078, 36.749969, 37.147385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904026, 36.364944, 37.248573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367865, 0.201372, 0.907813,
		-0.924768, -0.181451, -0.334485,
		0.097368, -0.962562, 0.252971,
		36.933235, 36.076176, 37.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270615, 36.490593, 37.675976>,  <36.865078, 36.749969, 37.147385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270615, 36.490593, 37.675976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544426, 36.199139, 37.666870>,  <36.708714, 36.024265, 37.661407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544426, 36.199139, 37.666870>,  <36.270615, 36.490593, 37.675976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544426, 36.199139, 37.666870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079262, -0.105436, 0.991262,
		-0.724667, -0.676740, -0.129926,
		0.684525, -0.728633, -0.022766,
		36.749783, 35.980549, 37.660042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026123, 35.779594, 38.012814>,  <36.270615, 36.490593, 37.675976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026123, 35.779594, 38.012814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424885, 35.790249, 38.042397>,  <36.664143, 35.796642, 38.060146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424885, 35.790249, 38.042397>,  <36.026123, 35.779594, 38.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424885, 35.790249, 38.042397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071068, -0.096599, 0.992783,
		0.033591, -0.994967, -0.094407,
		0.996906, 0.026639, 0.073955,
		36.723957, 35.798241, 38.064583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168793, 35.275284, 38.408085>,  <36.026123, 35.779594, 38.012814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168793, 35.275284, 38.408085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506516, 35.486679, 38.443504>,  <36.709148, 35.613518, 38.464756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506516, 35.486679, 38.443504>,  <36.168793, 35.275284, 38.408085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506516, 35.486679, 38.443504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088178, -0.025970, 0.995766,
		0.528553, -0.848541, 0.024675,
		0.844308, 0.528491, 0.088549,
		36.759808, 35.645226, 38.470070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511253, 34.959099, 38.923222>,  <36.168793, 35.275284, 38.408085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511253, 34.959099, 38.923222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704643, 35.309242, 38.922504>,  <36.820675, 35.519329, 38.922073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704643, 35.309242, 38.922504>,  <36.511253, 34.959099, 38.923222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704643, 35.309242, 38.922504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135020, -0.072554, 0.988183,
		0.864885, -0.477998, -0.153269,
		0.483470, 0.875359, -0.001788,
		36.849686, 35.571850, 38.921967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666893, 34.279083, 38.981712>,  <36.511253, 34.959099, 38.923222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666893, 34.279083, 38.981712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318523, 34.134789, 39.115200>,  <36.109501, 34.048214, 39.195293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318523, 34.134789, 39.115200>,  <36.666893, 34.279083, 38.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318523, 34.134789, 39.115200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244657, -0.270664, -0.931066,
		0.426193, -0.892531, 0.147471,
		-0.870920, -0.360734, 0.333719,
		36.057247, 34.026569, 39.215317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444592, 33.758919, 38.545368>,  <36.666893, 34.279083, 38.981712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444592, 33.758919, 38.545368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080650, 33.800140, 38.706139>,  <35.862286, 33.824875, 38.802601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080650, 33.800140, 38.706139>,  <36.444592, 33.758919, 38.545368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080650, 33.800140, 38.706139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412160, -0.112721, -0.904112,
		-0.047867, -0.988268, 0.145034,
		-0.909853, 0.103055, 0.401929,
		35.807693, 33.831059, 38.826717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992474, 33.298344, 38.122391>,  <36.444592, 33.758919, 38.545368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992474, 33.298344, 38.122391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709946, 33.493561, 38.327499>,  <35.540428, 33.610691, 38.450565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709946, 33.493561, 38.327499>,  <35.992474, 33.298344, 38.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709946, 33.493561, 38.327499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574413, 0.028214, -0.818080,
		-0.413725, -0.872364, 0.260410,
		-0.706316, 0.488043, 0.512769,
		35.498051, 33.639973, 38.481331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375896, 32.940773, 37.972050>,  <35.992474, 33.298344, 38.122391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375896, 32.940773, 37.972050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302128, 33.316467, 38.087856>,  <35.257866, 33.541885, 38.157341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302128, 33.316467, 38.087856>,  <35.375896, 32.940773, 37.972050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302128, 33.316467, 38.087856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731556, 0.065542, -0.678624,
		-0.656366, -0.336946, 0.675019,
		-0.184417, 0.939240, 0.289514,
		35.246803, 33.598240, 38.174709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655472, 32.946846, 38.206844>,  <35.375896, 32.940773, 37.972050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655472, 32.946846, 38.206844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772579, 33.313931, 38.099445>,  <34.842842, 33.534184, 38.035004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772579, 33.313931, 38.099445>,  <34.655472, 32.946846, 38.206844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772579, 33.313931, 38.099445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768725, 0.058905, -0.636862,
		-0.568640, 0.392852, 0.722714,
		0.292764, 0.917713, -0.268500,
		34.860409, 33.589245, 38.018894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968777, 33.240852, 38.014473>,  <34.655472, 32.946846, 38.206844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968777, 33.240852, 38.014473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235676, 33.493561, 37.856663>,  <34.395817, 33.645184, 37.761974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235676, 33.493561, 37.856663>,  <33.968777, 33.240852, 38.014473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235676, 33.493561, 37.856663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515206, 0.008946, -0.857019,
		-0.537907, 0.775106, 0.331460,
		0.667246, 0.631767, -0.394528,
		34.435848, 33.683090, 37.738304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682850, 33.862129, 37.886570>,  <33.968777, 33.240852, 38.014473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682850, 33.862129, 37.886570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995087, 33.838631, 37.637657>,  <34.182426, 33.824532, 37.488312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995087, 33.838631, 37.637657>,  <33.682850, 33.862129, 37.886570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995087, 33.838631, 37.637657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615535, 0.100759, -0.781642,
		0.108618, 0.993175, 0.042491,
		0.780588, -0.058746, -0.622278,
		34.229263, 33.821007, 37.450974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593464, 34.332138, 37.316170>,  <33.682850, 33.862129, 37.886570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593464, 34.332138, 37.316170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887466, 34.111656, 37.158211>,  <34.063869, 33.979366, 37.063435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887466, 34.111656, 37.158211>,  <33.593464, 34.332138, 37.316170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887466, 34.111656, 37.158211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432518, 0.067397, -0.899103,
		0.522201, 0.831646, -0.188867,
		0.735007, -0.551201, -0.394896,
		34.107967, 33.946297, 37.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743317, 34.685616, 36.660595>,  <33.593464, 34.332138, 37.316170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743317, 34.685616, 36.660595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850376, 34.300568, 36.644001>,  <33.914612, 34.069538, 36.634045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850376, 34.300568, 36.644001>,  <33.743317, 34.685616, 36.660595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850376, 34.300568, 36.644001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535394, -0.112788, -0.837038,
		0.801074, 0.246237, -0.545570,
		0.267644, -0.962625, -0.041482,
		33.930668, 34.011780, 36.631557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747887, 34.534794, 35.932053>,  <33.743317, 34.685616, 36.660595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747887, 34.534794, 35.932053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746040, 34.162830, 36.079163>,  <33.744930, 33.939651, 36.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746040, 34.162830, 36.079163>,  <33.747887, 34.534794, 35.932053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746040, 34.162830, 36.079163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589242, -0.294615, -0.752327,
		0.807943, -0.220181, -0.546578,
		-0.004618, -0.929904, 0.367772,
		33.744656, 33.883858, 36.189495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910179, 34.145573, 35.396690>,  <33.747887, 34.534794, 35.932053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910179, 34.145573, 35.396690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773708, 33.846844, 35.625023>,  <33.691826, 33.667606, 35.762024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773708, 33.846844, 35.625023>,  <33.910179, 34.145573, 35.396690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773708, 33.846844, 35.625023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311182, -0.483295, -0.818286,
		0.886998, -0.456812, -0.067511,
		-0.341175, -0.746826, 0.570834,
		33.671356, 33.622795, 35.796272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208855, 33.523701, 35.132862>,  <33.910179, 34.145573, 35.396690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208855, 33.523701, 35.132862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876259, 33.429321, 35.334042>,  <33.676701, 33.372692, 35.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876259, 33.429321, 35.334042>,  <34.208855, 33.523701, 35.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876259, 33.429321, 35.334042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352197, -0.476253, -0.805692,
		0.429632, -0.847060, 0.312898,
		-0.831488, -0.235950, 0.502946,
		33.626812, 33.358536, 35.484924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035164, 32.793358, 34.916302>,  <34.208855, 33.523701, 35.132862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035164, 32.793358, 34.916302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702618, 32.947521, 35.076450>,  <33.503090, 33.040020, 35.172539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702618, 32.947521, 35.076450>,  <34.035164, 32.793358, 34.916302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702618, 32.947521, 35.076450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485484, -0.153084, -0.860738,
		-0.270452, -0.909956, 0.314381,
		-0.831361, 0.385416, 0.400368,
		33.453209, 33.063145, 35.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579666, 32.857998, 35.291252>,  <34.035164, 32.793358, 34.916302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579666, 32.857998, 35.291252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666634, 32.497871, 35.140430>,  <34.718815, 32.281796, 35.049938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666634, 32.497871, 35.140430>,  <34.579666, 32.857998, 35.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666634, 32.497871, 35.140430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603809, -0.179453, 0.776667,
		-0.766906, -0.396527, 0.504600,
		0.217417, -0.900313, -0.377050,
		34.731857, 32.227779, 35.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604385, 32.412666, 35.795307>,  <34.579666, 32.857998, 35.291252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604385, 32.412666, 35.795307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832314, 32.214703, 35.532898>,  <34.969070, 32.095924, 35.375450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832314, 32.214703, 35.532898>,  <34.604385, 32.412666, 35.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832314, 32.214703, 35.532898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554989, -0.356982, 0.751366,
		-0.606047, -0.792232, 0.071252,
		0.569820, -0.494907, -0.656028,
		35.003258, 32.066231, 35.336090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811810, 31.699329, 36.076187>,  <34.604385, 32.412666, 35.795307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811810, 31.699329, 36.076187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065891, 31.761982, 35.773670>,  <35.218342, 31.799574, 35.592159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065891, 31.761982, 35.773670>,  <34.811810, 31.699329, 36.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065891, 31.761982, 35.773670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690253, -0.554447, 0.464909,
		-0.346506, -0.817347, -0.460302,
		0.635204, 0.156630, -0.756295,
		35.256454, 31.808971, 35.546783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042130, 31.097672, 35.796192>,  <34.811810, 31.699329, 36.076187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042130, 31.097672, 35.796192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331886, 31.370640, 35.757092>,  <35.505741, 31.534422, 35.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331886, 31.370640, 35.757092>,  <35.042130, 31.097672, 35.796192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331886, 31.370640, 35.757092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676867, -0.677147, 0.288657,
		0.130795, -0.275265, -0.952429,
		0.724392, 0.682423, -0.097751,
		35.549206, 31.575367, 35.727768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686218, 30.634388, 35.679958>,  <35.042130, 31.097672, 35.796192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686218, 30.634388, 35.679958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823353, 30.987539, 35.808327>,  <35.905632, 31.199430, 35.885345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823353, 30.987539, 35.808327>,  <35.686218, 30.634388, 35.679958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823353, 30.987539, 35.808327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747657, -0.463275, 0.475800,
		0.568747, 0.076815, -0.818918,
		0.342836, 0.882879, 0.320917,
		35.926205, 31.252403, 35.904602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362507, 30.633482, 35.548721>,  <35.686218, 30.634388, 35.679958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362507, 30.633482, 35.548721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293579, 30.864298, 35.868053>,  <36.252220, 31.002787, 36.059654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293579, 30.864298, 35.868053>,  <36.362507, 30.633482, 35.548721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293579, 30.864298, 35.868053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549572, -0.616273, 0.564073,
		0.817481, 0.535942, -0.210926,
		-0.172322, 0.577038, 0.798331,
		36.241882, 31.037409, 36.107552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976273, 30.561125, 35.834049>,  <36.362507, 30.633482, 35.548721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976273, 30.561125, 35.834049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769173, 30.740862, 36.125259>,  <36.644913, 30.848705, 36.299988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769173, 30.740862, 36.125259>,  <36.976273, 30.561125, 35.834049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769173, 30.740862, 36.125259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468729, -0.562895, 0.680766,
		0.715703, 0.693713, 0.080817,
		-0.517748, 0.449345, 0.728029,
		36.613850, 30.875666, 36.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531727, 30.856325, 36.444790>,  <36.976273, 30.561125, 35.834049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531727, 30.856325, 36.444790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165287, 30.796541, 36.593609>,  <36.945423, 30.760672, 36.682899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165287, 30.796541, 36.593609>,  <37.531727, 30.856325, 36.444790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165287, 30.796541, 36.593609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399655, -0.266041, 0.877210,
		-0.032127, 0.952305, 0.303452,
		-0.916102, -0.149459, 0.372047,
		36.890457, 30.751703, 36.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582016, 31.079662, 37.132088>,  <37.531727, 30.856325, 36.444790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582016, 31.079662, 37.132088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246883, 30.861607, 37.143803>,  <37.045803, 30.730772, 37.150833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246883, 30.861607, 37.143803>,  <37.582016, 31.079662, 37.132088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246883, 30.861607, 37.143803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268660, -0.365015, 0.891395,
		-0.475246, 0.754709, 0.452279,
		-0.837832, -0.545142, 0.029289,
		36.995533, 30.698065, 37.152588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216755, 31.184719, 37.778435>,  <37.582016, 31.079662, 37.132088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216755, 31.184719, 37.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096928, 30.819624, 37.667316>,  <37.025032, 30.600567, 37.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096928, 30.819624, 37.667316>,  <37.216755, 31.184719, 37.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096928, 30.819624, 37.667316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087461, -0.316213, 0.944648,
		-0.950058, 0.258689, 0.174556,
		-0.299567, -0.912737, -0.277796,
		37.007057, 30.545803, 37.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800621, 31.065434, 38.315559>,  <37.216755, 31.184719, 37.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800621, 31.065434, 38.315559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897469, 30.728596, 38.122787>,  <36.955578, 30.526493, 38.007122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897469, 30.728596, 38.122787>,  <36.800621, 31.065434, 38.315559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897469, 30.728596, 38.122787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295729, -0.409029, 0.863273,
		-0.924081, -0.351533, 0.149999,
		0.242114, -0.842093, -0.481934,
		36.970104, 30.475967, 37.978207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590492, 30.506357, 38.708359>,  <36.800621, 31.065434, 38.315559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590492, 30.506357, 38.708359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860535, 30.333996, 38.468842>,  <37.022560, 30.230579, 38.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860535, 30.333996, 38.468842>,  <36.590492, 30.506357, 38.708359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860535, 30.333996, 38.468842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388451, -0.482405, 0.785106,
		-0.627166, -0.762632, -0.158289,
		0.675106, -0.430904, -0.598793,
		37.063068, 30.204725, 38.289204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665981, 29.749424, 38.974495>,  <36.590492, 30.506357, 38.708359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665981, 29.749424, 38.974495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992943, 29.831436, 38.759159>,  <37.189121, 29.880644, 38.629959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992943, 29.831436, 38.759159>,  <36.665981, 29.749424, 38.974495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992943, 29.831436, 38.759159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573366, -0.379853, 0.725922,
		-0.055653, -0.902039, -0.428053,
		0.817408, 0.205031, -0.538338,
		37.238167, 29.892946, 38.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015465, 29.169802, 38.916286>,  <36.665981, 29.749424, 38.974495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015465, 29.169802, 38.916286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271614, 29.472927, 38.866264>,  <37.425304, 29.654802, 38.836250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271614, 29.472927, 38.866264>,  <37.015465, 29.169802, 38.916286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271614, 29.472927, 38.866264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541302, -0.329784, 0.773456,
		0.544895, -0.562994, -0.621392,
		0.640376, 0.757813, -0.125052,
		37.463726, 29.700272, 38.828751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554497, 28.843681, 39.252193>,  <37.015465, 29.169802, 38.916286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554497, 28.843681, 39.252193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661663, 29.226006, 39.203785>,  <37.725964, 29.455400, 39.174740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661663, 29.226006, 39.203785>,  <37.554497, 28.843681, 39.252193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661663, 29.226006, 39.203785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585640, -0.061824, 0.808210,
		0.765013, -0.287411, -0.576325,
		0.267919, 0.955810, -0.121024,
		37.742039, 29.512749, 39.167477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311760, 28.854286, 39.384453>,  <37.554497, 28.843681, 39.252193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311760, 28.854286, 39.384453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 29.225758, 39.451698>,  <38.100178, 29.448641, 39.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 29.225758, 39.451698>,  <38.311760, 28.854286, 39.384453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179520, 29.225758, 39.451698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618936, 0.078872, 0.781471,
		0.712477, 0.362401, -0.600868,
		-0.330597, 0.928679, 0.168109,
		38.080341, 29.504362, 39.502132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857372, 29.290413, 39.439251>,  <38.311760, 28.854286, 39.384453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857372, 29.290413, 39.439251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573544, 29.493023, 39.635189>,  <38.403248, 29.614588, 39.752750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573544, 29.493023, 39.635189>,  <38.857372, 29.290413, 39.439251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573544, 29.493023, 39.635189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659545, 0.232736, 0.714727,
		0.248021, 0.830222, -0.499217,
		-0.709567, 0.506524, 0.489845,
		38.360672, 29.644979, 39.782143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274788, 29.709190, 39.823055>,  <38.857372, 29.290413, 39.439251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274788, 29.709190, 39.823055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920959, 29.759979, 40.002571>,  <38.708664, 29.790453, 40.110283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920959, 29.759979, 40.002571>,  <39.274788, 29.709190, 39.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920959, 29.759979, 40.002571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464578, 0.325038, 0.823722,
		-0.041283, 0.937138, -0.346508,
		-0.884569, 0.126974, 0.448793,
		38.655590, 29.798071, 40.137207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320396, 30.285540, 40.035896>,  <39.274788, 29.709190, 39.823055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320396, 30.285540, 40.035896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039745, 30.115969, 40.264984>,  <38.871353, 30.014227, 40.402435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039745, 30.115969, 40.264984>,  <39.320396, 30.285540, 40.035896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039745, 30.115969, 40.264984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472460, 0.324886, 0.819287,
		-0.533384, 0.845421, -0.027661,
		-0.701629, -0.423926, 0.572716,
		38.829258, 29.988791, 40.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053883, 30.776085, 40.527706>,  <39.320396, 30.285540, 40.035896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053883, 30.776085, 40.527706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962158, 30.423277, 40.692364>,  <38.907124, 30.211592, 40.791157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962158, 30.423277, 40.692364>,  <39.053883, 30.776085, 40.527706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962158, 30.423277, 40.692364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338191, 0.324367, 0.883410,
		-0.912711, 0.341793, 0.223910,
		-0.229314, -0.882022, 0.411645,
		38.893364, 30.158670, 40.815857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773075, 30.959740, 41.196377>,  <39.053883, 30.776085, 40.527706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773075, 30.959740, 41.196377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811729, 30.565805, 41.254009>,  <38.834923, 30.329445, 41.288589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811729, 30.565805, 41.254009>,  <38.773075, 30.959740, 41.196377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811729, 30.565805, 41.254009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254226, 0.164376, 0.953074,
		-0.962305, -0.055473, 0.266256,
		0.096635, -0.984837, 0.144077,
		38.840721, 30.270355, 41.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398926, 30.712276, 41.868130>,  <38.773075, 30.959740, 41.196377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398926, 30.712276, 41.868130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669552, 30.430731, 41.781563>,  <38.831928, 30.261803, 41.729622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669552, 30.430731, 41.781563>,  <38.398926, 30.712276, 41.868130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669552, 30.430731, 41.781563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239638, -0.067450, 0.968517,
		-0.696304, -0.707123, 0.123039,
		0.676562, -0.703866, -0.216419,
		38.872520, 30.219570, 41.716637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324730, 30.216949, 42.374313>,  <38.398926, 30.712276, 41.868130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324730, 30.216949, 42.374313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696205, 30.172272, 42.232861>,  <38.919090, 30.145466, 42.147991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696205, 30.172272, 42.232861>,  <38.324730, 30.216949, 42.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696205, 30.172272, 42.232861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358662, 0.028058, 0.933046,
		-0.094295, -0.993346, 0.066118,
		0.928692, -0.111695, -0.353630,
		38.974812, 30.138763, 42.126770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592377, 29.699938, 42.686718>,  <38.324730, 30.216949, 42.374313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592377, 29.699938, 42.686718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918098, 29.896559, 42.563244>,  <39.113533, 30.014530, 42.489159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918098, 29.896559, 42.563244>,  <38.592377, 29.699938, 42.686718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918098, 29.896559, 42.563244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388178, -0.065789, 0.919233,
		0.431542, -0.868360, -0.244381,
		0.814303, 0.491551, -0.308687,
		39.162388, 30.044024, 42.470638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139336, 29.344673, 43.097244>,  <38.592377, 29.699938, 42.686718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139336, 29.344673, 43.097244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285004, 29.690731, 42.959312>,  <39.372406, 29.898365, 42.876553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285004, 29.690731, 42.959312>,  <39.139336, 29.344673, 43.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285004, 29.690731, 42.959312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293015, 0.245019, 0.924180,
		0.884038, -0.437597, -0.164272,
		0.364168, 0.865144, -0.344828,
		39.394253, 29.950274, 42.855865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772633, 29.400064, 43.471355>,  <39.139336, 29.344673, 43.097244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772633, 29.400064, 43.471355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712418, 29.773521, 43.341339>,  <39.676289, 29.997595, 43.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712418, 29.773521, 43.341339>,  <39.772633, 29.400064, 43.471355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712418, 29.773521, 43.341339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353696, 0.357892, 0.864183,
		0.923167, 0.015128, -0.384102,
		-0.150540, 0.933640, -0.325044,
		39.667255, 30.053614, 43.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454540, 29.826691, 43.519360>,  <39.772633, 29.400064, 43.471355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454540, 29.826691, 43.519360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161507, 30.098948, 43.522083>,  <39.985687, 30.262302, 43.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161507, 30.098948, 43.522083>,  <40.454540, 29.826691, 43.519360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161507, 30.098948, 43.522083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284991, 0.297626, 0.911153,
		0.618142, 0.669437, -0.412013,
		-0.732585, 0.680642, 0.006809,
		39.941730, 30.303141, 43.524124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744678, 30.380741, 43.699127>,  <40.454540, 29.826691, 43.519360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744678, 30.380741, 43.699127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361103, 30.417501, 43.806454>,  <40.130959, 30.439558, 43.870850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361103, 30.417501, 43.806454>,  <40.744678, 30.380741, 43.699127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361103, 30.417501, 43.806454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283185, 0.362269, 0.888013,
		-0.015592, 0.927532, -0.373419,
		-0.958938, 0.091901, 0.268312,
		40.073421, 30.445072, 43.886948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730751, 30.852079, 44.275875>,  <40.744678, 30.380741, 43.699127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730751, 30.852079, 44.275875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369328, 30.684151, 44.310135>,  <40.152473, 30.583393, 44.330692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369328, 30.684151, 44.310135>,  <40.730751, 30.852079, 44.275875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369328, 30.684151, 44.310135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038084, 0.277794, 0.959885,
		-0.426771, 0.864050, -0.266991,
		-0.903557, -0.419819, 0.085648,
		40.098259, 30.558205, 44.335831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274868, 31.439907, 44.250332>,  <40.730751, 30.852079, 44.275875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274868, 31.439907, 44.250332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644756, 31.334341, 44.360050>,  <41.866688, 31.271002, 44.425880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644756, 31.334341, 44.360050>,  <41.274868, 31.439907, 44.250332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644756, 31.334341, 44.360050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268220, -0.059540, -0.961516,
		0.270090, 0.962707, 0.015729,
		0.924721, -0.263915, 0.274298,
		41.922173, 31.255167, 44.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864552, 31.899635, 43.959583>,  <41.274868, 31.439907, 44.250332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864552, 31.899635, 43.959583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037819, 31.546337, 44.031410>,  <42.141777, 31.334358, 44.074505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037819, 31.546337, 44.031410>,  <41.864552, 31.899635, 43.959583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037819, 31.546337, 44.031410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237946, -0.080094, -0.967970,
		0.869339, 0.462018, 0.175471,
		0.433165, -0.883247, 0.179564,
		42.167770, 31.281363, 44.085278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521446, 31.989773, 43.681553>,  <41.864552, 31.899635, 43.959583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521446, 31.989773, 43.681553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463428, 31.594463, 43.700630>,  <42.428619, 31.357277, 43.712078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463428, 31.594463, 43.700630>,  <42.521446, 31.989773, 43.681553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463428, 31.594463, 43.700630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287976, -0.088285, -0.953559,
		0.946590, -0.124572, 0.297404,
		-0.145043, -0.988275, 0.047696,
		42.419914, 31.297981, 43.714939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082882, 31.539373, 43.308437>,  <42.521446, 31.989773, 43.681553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082882, 31.539373, 43.308437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782970, 31.274725, 43.304512>,  <42.603024, 31.115936, 43.302158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782970, 31.274725, 43.304512>,  <43.082882, 31.539373, 43.308437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782970, 31.274725, 43.304512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131368, -0.134306, -0.982194,
		0.648523, -0.737712, 0.187615,
		-0.749774, -0.661622, -0.009811,
		42.558037, 31.076239, 43.301567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330311, 31.058277, 43.002476>,  <43.082882, 31.539373, 43.308437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330311, 31.058277, 43.002476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938942, 30.981930, 42.970825>,  <42.704121, 30.936121, 42.951836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938942, 30.981930, 42.970825>,  <43.330311, 31.058277, 43.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938942, 30.981930, 42.970825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115881, -0.189854, -0.974950,
		0.171067, -0.963080, 0.207876,
		-0.978421, -0.190871, -0.079125,
		42.645416, 30.924669, 42.947086>
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
